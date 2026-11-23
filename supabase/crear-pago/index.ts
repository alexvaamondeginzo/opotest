// Supabase Edge Function: crear-pago
// Crea una sesión de Stripe Checkout para la oposición y el plan que elige el usuario.
// El precio sale de la tabla "precios" (nunca de la web), así que no se puede manipular.
// Secretos necesarios (Supabase → Edge Functions → Secrets):
//   STRIPE_SECRET_KEY → clave secreta de Stripe (sk_test_... para probar, sk_live_... para cobrar)
// SUPABASE_URL, SUPABASE_ANON_KEY y SUPABASE_SERVICE_ROLE_KEY ya los pone Supabase.
import Stripe from "npm:stripe@17";
import { createClient } from "npm:@supabase/supabase-js@2";

// Webs desde las que se puede pagar (a ellas vuelve Stripe al terminar)
const ORIGENES = [/^https:\/\/opotest-app\.netlify\.app$/, /^https:\/\/oponota\.netlify\.app$/, /^https:\/\/([\w-]+\.)?oponota\.(es|com)$/, /^http:\/\/localhost(:\d+)?$/];
const OPO_NOMBRE: Record<string, string> = { "aux-cm": "Auxiliar Administrativo de la Comunidad de Madrid", "aux-age": "Auxiliar Administrativo del Estado" };
const PLAN_NOMBRE: Record<string, string> = { legislacion: "Plan Legislación", completo: "Plan Completo", premium: "Plan Premium" };
// En el Estado los planes van por niveles: teoría, + ofimática, + psicotécnicos
const PLAN_NOMBRE_OPO: Record<string, Record<string, string>> = {
  "aux-age": { legislacion: "Plan Teoría", completo: "Plan Teoría + Ofimática", premium: "Plan Completo (con psicotécnicos)" },
};

function cors(origen: string) {
  return {
    "Access-Control-Allow-Origin": origen || "*",
    "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Vary": "Origin",
  };
}
const json = (o: unknown, status: number, h: Record<string, string>) =>
  new Response(JSON.stringify(o), { status, headers: { ...h, "Content-Type": "application/json" } });

Deno.serve(async (req) => {
  const origen = req.headers.get("origin") ?? "";
  const h = cors(ORIGENES.some((r) => r.test(origen)) ? origen : "");
  if (req.method === "OPTIONS") return new Response("ok", { headers: h });
  if (req.method !== "POST") return json({ error: "Método no permitido" }, 405, h);
  if (!ORIGENES.some((r) => r.test(origen))) return json({ error: "Origen no permitido" }, 403, h);

  // Quién paga: el usuario de la sesión (el token lo manda la web)
  const usr = createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_ANON_KEY")!, {
    global: { headers: { Authorization: req.headers.get("Authorization") ?? "" } },
    auth: { persistSession: false },
  });
  const { data: u } = await usr.auth.getUser();
  const user = u?.user;
  if (!user?.email) return json({ error: "Inicia sesión para pagar" }, 401, h);

  let body: { oposicion?: string; plan?: string } = {};
  try { body = await req.json(); } catch (_e) { /* cuerpo vacío */ }
  const oposicion = String(body.oposicion ?? ""), plan = String(body.plan ?? "");

  const supa = createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!, { auth: { persistSession: false } });
  const { data: beta } = await supa.rpc("modo_beta");
  // En modo pruebas solo pueden pagar los administradores (para probar el pago con tarjetas de prueba)
  if (beta) {
    const { data: admin } = await usr.rpc("es_admin");
    if (!admin) return json({ error: "La web está en fase de pruebas: ahora mismo no se puede pagar." }, 409, h);
  }

  const { data: precio } = await supa.from("precios").select("*").eq("oposicion", oposicion).eq("plan", plan).eq("activo", true).maybeSingle();
  if (!precio) return json({ error: "Este plan todavía no está a la venta." }, 404, h);

  const clave = Deno.env.get("STRIPE_SECRET_KEY");
  if (!clave) return json({ error: "Los pagos todavía no están configurados." }, 503, h);
  const stripe = new Stripe(clave, { httpClient: Stripe.createFetchHttpClient() });
  const sesion = await stripe.checkout.sessions.create({
    mode: "payment",
    locale: "es",
    customer_email: user.email,
    client_reference_id: `${user.id}__${oposicion}`,
    line_items: [{
      quantity: 1,
      price_data: {
        currency: "eur",
        unit_amount: precio.importe_cent,
        product_data: {
          name: `OpoNota · ${OPO_NOMBRE[oposicion] ?? oposicion} · ${PLAN_NOMBRE_OPO[oposicion]?.[plan] ?? PLAN_NOMBRE[plan] ?? plan}`,
          description: `Acceso hasta el ${new Date(precio.hasta).toLocaleDateString("es-ES", { timeZone: "Europe/Madrid" })}. Pago único, sin suscripción.`,
        },
      },
    }],
    metadata: { user_id: user.id, oposicion, plan, hasta: new Date(precio.hasta).toISOString() },
    payment_intent_data: { metadata: { user_id: user.id, oposicion, plan } },
    allow_promotion_codes: true,
    success_url: `${origen}/?pago=ok#/o/${oposicion}`,
    cancel_url: `${origen}/?pago=cancelado#/o/${oposicion}`,
  });
  return json({ url: sesion.url }, 200, h);
});
