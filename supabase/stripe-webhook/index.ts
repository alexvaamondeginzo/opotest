// Supabase Edge Function: stripe-webhook
// Recibe el aviso de Stripe cuando alguien paga y activa su plan en la tabla "compras".
// Secretos necesarios (Supabase → Edge Functions → Secrets):
//   STRIPE_SECRET_KEY        → clave secreta de Stripe (sk_live_... o sk_test_...)
//   STRIPE_WEBHOOK_SECRET    → secreto de firma del webhook (whsec_...)
// SUPABASE_URL y SUPABASE_SERVICE_ROLE_KEY ya los pone Supabase automáticamente.
import Stripe from "npm:stripe@17";
import { createClient } from "npm:@supabase/supabase-js@2";

// Precio (en céntimos, ANTES de descuentos: los códigos promocionales no afectan) → plan
const PLAN_POR_IMPORTE: Record<number, string> = {
  1499: "legislacion", // 14,99 €
  2499: "completo",    // 24,99 €
};
// Hasta cuándo dura el acceso comprado (cubre el examen de 2027 y posibles retrasos)
const ACCESO_HASTA = "2027-12-31T22:59:59Z"; // 31/12/2027 a las 23:59 en Madrid

const stripe = new Stripe(Deno.env.get("STRIPE_SECRET_KEY") ?? "", { httpClient: Stripe.createFetchHttpClient() });
const crypto = Stripe.createSubtleCryptoProvider();
const UUID = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;

function normalizar(e: string): string {
  e = (e || "").trim().toLowerCase();
  let [u, d] = e.split("@");
  u = (u || "").split("+")[0];
  if (d === "gmail.com" || d === "googlemail.com") { u = u.replaceAll(".", ""); d = "gmail.com"; }
  return `${u}@${d}`;
}

Deno.serve(async (req) => {
  if (req.method !== "POST") return new Response("Método no permitido", { status: 405 });
  const firma = req.headers.get("stripe-signature");
  const cuerpo = await req.text();
  let evento: Stripe.Event;
  try {
    evento = await stripe.webhooks.constructEventAsync(cuerpo, firma ?? "", Deno.env.get("STRIPE_WEBHOOK_SECRET") ?? "", undefined, crypto);
  } catch (_e) {
    return new Response("Firma no válida", { status: 400 });
  }

  if (evento.type !== "checkout.session.completed" && evento.type !== "checkout.session.async_payment_succeeded") {
    return new Response("Ignorado", { status: 200 });
  }
  const s = evento.data.object as Stripe.Checkout.Session;
  if (s.payment_status !== "paid") return new Response("Pago pendiente", { status: 200 });

  const plan = PLAN_POR_IMPORTE[s.amount_subtotal ?? -1];
  if (!plan) {
    console.error("Importe sin plan asociado:", s.amount_subtotal, s.id);
    return new Response("Importe desconocido", { status: 200 });
  }

  const supa = createClient(Deno.env.get("SUPABASE_URL")!, Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!, { auth: { persistSession: false } });
  const email = s.customer_details?.email ?? s.customer_email ?? "";
  // client_reference_id = "<id del usuario>__<oposición>" (la web lo añade al enlace de pago)
  const [refUser, refOp] = (s.client_reference_id ?? "").split("__");
  const OPOSICIONES = ["aux-cm", "aux-age", "adm-cm", "aux-ayto-mad"];
  const oposicion = OPOSICIONES.includes(refOp) ? refOp : "aux-cm";
  let userId: string | null = refUser && UUID.test(refUser) ? refUser : null;
  if (!userId && email) {
    const { data } = await supa.rpc("usuario_por_email", { e: email });
    userId = (data as string) ?? null;
  }

  const { error } = await supa.from("compras").upsert({
    user_id: userId,
    email_norm: email ? normalizar(email) : null,
    plan,
    oposicion,
    importe_cent: s.amount_total,
    moneda: s.currency,
    stripe_session: s.id,
    hasta: ACCESO_HASTA,
  }, { onConflict: "stripe_session", ignoreDuplicates: true });

  if (error) {
    console.error("Error guardando la compra:", error);
    return new Response("Error", { status: 500 }); // Stripe lo reintentará
  }
  return new Response("OK", { status: 200 });
});
