/* OpoTest · plataforma de tests multi-oposición (versión de demostración, sin backend).
   En producción: preguntas servidas desde la API tras comprobar el pago, login y Stripe Checkout. */
(() => {
"use strict";
const $ = (s, el = document) => el.querySelector(s);
const app = $("#app");
const LET = ["A", "B", "C", "D"];
const esc = s => String(s).replace(/[&<>"']/g, c => ({ "&": "&amp;", "<": "&lt;", ">": "&gt;", '"': "&quot;", "'": "&#39;" }[c]));
const fmt = n => n.toLocaleString("es-ES", { maximumFractionDigits: 2 });
const store = {
  get(k, d) { try { const v = localStorage.getItem("opotest:" + k); return v ? JSON.parse(v) : d; } catch { return d; } },
  set(k, v) { try { localStorage.setItem("opotest:" + k, JSON.stringify(v)); } catch {} }
};
const hash = s => { let h = 5381; for (let i = 0; i < s.length; i++) h = ((h << 5) + h + s.charCodeAt(i)) | 0; return (h >>> 0).toString(36); };
const shuffle = a => { a = a.slice(); for (let i = a.length - 1; i > 0; i--) { const j = Math.floor(Math.random() * (i + 1)); [a[i], a[j]] = [a[j], a[i]]; } return a; };
const cat = id => window.CATALOG.find(c => c.id === id);
const data = id => (window.OPO || {})[id];

// ───────── Acceso (demo: localStorage; producción: tabla de compras en el servidor) ─────────
const access = {
  has: id => !!store.get("access", {})[id],
  grant(id) { const a = store.get("access", {}); a[id] = { at: Date.now(), hasta: "Examen de la convocatoria en curso" }; store.set("access", a); },
  revoke(id) { const a = store.get("access", {}); delete a[id]; store.set("access", a); }
};
const temaAbierto = (id, t) => access.has(id) || (cat(id).gratis || []).includes(t);

// ───────── Estadísticas ─────────
const stats = {
  load: id => store.get("stats:" + id, { q: {}, marks: [], hist: [] }),
  save: (id, s) => store.set("stats:" + id, s),
  record(id, q, ok) {
    const s = stats.load(id), k = qid(q), r = s.q[k] || { s: 0, c: 0, w: 0, last: null };
    r.s++; ok ? r.c++ : r.w++; r.last = ok ? 1 : 0; r.t = Date.now(); s.q[k] = r; stats.save(id, s);
  },
  toggleMark(id, q) {
    const s = stats.load(id), k = qid(q), i = s.marks.indexOf(k);
    i >= 0 ? s.marks.splice(i, 1) : s.marks.push(k); stats.save(id, s); return i < 0;
  },
  hist(id, h) { const s = stats.load(id); s.hist.unshift(h); s.hist = s.hist.slice(0, 50); stats.save(id, s); }
};
const qid = q => hash(q[1]);

// ───────── Enlaces al BOE ─────────
const NORMAS = [
  [/CE$|CE\b/, "BOE-A-1978-31229"], [/EA$|LO 3\/1983|LO 5\/1998/, "BOE-A-1983-6317"],
  [/Ley 1\/1983/, "BOE-A-1984-2926"], [/Ley 39\/2015/, "BOE-A-2015-10565"],
  [/Código Civil/, "BOE-A-1889-4763"], [/Ley 50\/1997/, "BOE-A-1997-25336"]
];
function fuente(ref) {
  for (const [re, id] of NORMAS) if (re.test(ref)) {
    const m = ref.match(/Arts?\.\s*(\d+)/);
    return { url: `https://www.boe.es/buscar/act.php?id=${id}${m ? "#a" + m[1] : ""}`, txt: "Ver el artículo en el BOE" };
  }
  if (/Word|Excel|Windows|Access|Outlook|Teams|Microsoft|Power BI/.test(ref)) return { url: "https://support.microsoft.com/es-es", txt: "Documentación de Microsoft" };
  return null;
}

// ───────── Utilidades de interfaz ─────────
let toastT;
function toast(msg) {
  let t = $(".toast"); if (!t) { t = document.createElement("div"); t.className = "toast"; t.setAttribute("role", "status"); document.body.appendChild(t); }
  t.textContent = msg; t.classList.remove("hidden"); clearTimeout(toastT); toastT = setTimeout(() => t.classList.add("hidden"), 4200);
}
const dlg = $("#dlg"), dlgForm = $("#dlg-form");
function modal(html, onSubmit) {
  dlgForm.innerHTML = html;
  dlgForm.onsubmit = e => {
    const btn = e.submitter;
    if (btn && btn.value === "cancel") return;
    e.preventDefault();
    if (onSubmit && onSubmit(new FormData(dlgForm)) !== false) dlg.close();
  };
  dlg.showModal();
}
async function submitForm(name, fields) {
  const body = new URLSearchParams({ "form-name": name, ...fields });
  try {
    const r = await fetch("/", { method: "POST", headers: { "Content-Type": "application/x-www-form-urlencoded" }, body });
    if (r.ok && /netlify/.test(r.headers.get("server") || location.hostname)) return true;
  } catch {}
  const out = store.get("outbox", []); out.push({ name, fields, at: new Date().toISOString() }); store.set("outbox", out);
  return false;
}
function waitlist(opoId) {
  const c = cat(opoId);
  modal(`<h2>Avísame cuando esté lista</h2>
    <p class="note">${esc(c.nombre)} · ${esc(c.organismo)}. Te escribimos solo para avisarte del lanzamiento, con descuento para los primeros.</p>
    <label class="f">Email<input type="email" name="email" required autocomplete="email"></label>
    <div class="row"><button class="ghost" value="cancel" formnovalidate>Cancelar</button><button class="primary">Apuntarme</button></div>`,
    fd => { submitForm("lista-espera", { email: fd.get("email"), oposicion: c.id }).then(ok => toast(ok ? "Apuntado. Te avisaremos." : "Apuntado (demo: guardado en este navegador; en Netlify llega al panel de formularios).")); });
}
function report(opoId, q) {
  modal(`<h2>Reportar esta pregunta</h2>
    <p class="note">${esc(q[1])}</p>
    <label class="f">¿Qué está mal?<textarea name="mensaje" required placeholder="Por ejemplo: la ley cambió, la opción B también es correcta…"></textarea></label>
    <label class="f">Email (opcional, para responderte)<input type="email" name="email" autocomplete="email"></label>
    <div class="row"><button class="ghost" value="cancel" formnovalidate>Cancelar</button><button class="primary">Enviar</button></div>`,
    fd => { submitForm("reporte", { oposicion: opoId, pregunta: q[1], referencia: q[4], mensaje: fd.get("mensaje"), email: fd.get("email") || "" }).then(ok => toast(ok ? "Gracias. Lo revisamos contra el BOE." : "Gracias (demo: guardado en este navegador).")); });
}
function paywall(opoId) {
  const c = cat(opoId);
  modal(`<h2>Desbloquea ${esc(c.nombre)}</h2>
    <p class="note">${esc(c.organismo)} · ${esc(c.convocatoria)}</p>
    <ul style="margin:0;padding-left:20px"><li>Todos los temas y simulacros cronometrados</li><li>Estadísticas por tema y repaso de fallos</li><li>Acceso hasta el examen de esta convocatoria</li></ul>
    <p style="margin:0"><b style="font:800 30px var(--display)">${window.PRICE.importe}</b> <span class="note">pago único, IVA incluido</span></p>
    <div class="row"><button class="ghost" value="cancel" formnovalidate>Ahora no</button><button class="primary">Desbloquear</button></div>`,
    () => { location.hash = `#/pago/${opoId}`; });
}
function daysTo(dateStr) { return Math.max(0, Math.ceil((new Date(dateStr + "T09:00:00") - new Date()) / 864e5)); }

// ───────── Router ─────────
let quiz = null; // estado del test en curso
function stopQuiz() { if (quiz && quiz.tick) clearInterval(quiz.tick); quiz = null; }
function route() {
  stopQuiz();
  const parts = location.hash.replace(/^#\/?/, "").split("/").filter(Boolean);
  window.scrollTo({ top: 0 });
  if (parts[0] === "o" && cat(parts[1]) && data(parts[1])) return viewOpo(parts[1], parts[2] || "practicar");
  if (parts[0] === "o" && cat(parts[1])) return waitlist(parts[1]), viewHome();
  if (parts[0] === "pago" && cat(parts[1])) return viewCheckout(parts[1]);
  viewHome();
  if (parts[0] === "precio") setTimeout(() => $("#precio")?.scrollIntoView({ behavior: "smooth" }), 30);
}
window.addEventListener("hashchange", route);

// ───────── Portada ─────────
function viewHome() {
  document.title = "OpoTest · Tests de oposiciones con el artículo exacto del BOE";
  const cards = window.CATALOG.map(c => {
    const on = c.estado === "disponible", paid = on && access.has(c.id);
    return `<button class="card opo" data-id="${c.id}" data-on="${on}">
      <span class="badge ${paid ? "paid" : on ? "on" : "soon"}">${paid ? "Desbloqueada" : on ? "Disponible" : "Próximamente"}</span>
      <h3>${esc(c.nombre)}</h3><span class="org">${esc(c.organismo)} · ${esc(c.grupo)}</span>
      <span class="facts"><span>${esc(c.plazas)}</span><span>${esc(c.convocatoria)}</span></span>
      <span class="link">${on ? "Empezar a practicar gratis →" : "Avísame cuando esté →"}</span></button>`;
  }).join("");
  app.innerHTML = `
  <header class="page"><span class="eyebrow">Tests de oposiciones</span>
    <h1>Practica con el examen real y el artículo exacto del BOE</h1>
    <p class="sub">Preguntas tipo test revisadas contra la ley consolidada, simulacros cronometrados con la misma penalización que el examen y un repaso automático de tus fallos.</p></header>
  <div class="props">
    <div class="prop"><b>El artículo, siempre</b><p>Cada respuesta cita su artículo y enlaza al texto consolidado del BOE.</p></div>
    <div class="prop"><b>Simulacros reales</b><p>Mismo número de preguntas, tiempo y penalización que la convocatoria.</p></div>
    <div class="prop"><b>Repaso de fallos</b><p>Tus fallos y tus preguntas marcadas se guardan para repasarlos.</p></div>
    <div class="prop"><b>Un solo pago</b><p>${window.PRICE.importe} por oposición, hasta el examen. Sin suscripciones.</p></div>
  </div>
  <section class="narrow" style="max-width:none"><h2>Elige tu oposición</h2><div class="grid">${cards}</div></section>
  <section id="precio" class="card price">
    <span class="eyebrow">Precio</span>
    <div class="row" style="align-items:flex-end"><div><span class="big">${window.PRICE.importe}</span> <span class="note">pago único por oposición, IVA incluido</span></div></div>
    <ul><li>Todos los temas de tu oposición y simulacros de cada ejercicio</li><li>Acceso hasta el examen de la convocatoria en curso</li><li>Segunda oposición por ${window.PRICE.segunda}</li><li>Gratis sin registrarte: el Tema 1 y el primer tema de ofimática</li></ul>
  </section>
  <section class="narrow" style="max-width:none"><h2>Preguntas frecuentes</h2>
    <details><summary>¿De dónde salen las preguntas?</summary><p>Se redactan a partir del programa oficial de la convocatoria y se comprueban una a una contra el texto consolidado del BOE. Si una ley cambia, revisamos las preguntas afectadas.</p></details>
    <details><summary>¿Qué incluye «hasta el examen»?</summary><p>Acceso completo a tu oposición hasta la celebración del examen de la convocatoria en curso, incluidas las actualizaciones del banco de preguntas.</p></details>
    <details><summary>¿Y si encuentro un error?</summary><p>Cada pregunta tiene un botón para reportarla. Lo revisamos contra el BOE y lo corregimos.</p></details>
  </section>`;
  app.querySelectorAll(".opo").forEach(b => b.addEventListener("click", () => {
    b.dataset.on === "true" ? (location.hash = `#/o/${b.dataset.id}`) : waitlist(b.dataset.id);
  }));
}

// ───────── Página de oposición ─────────
function viewOpo(id, tab) {
  const c = cat(id), d = data(id), paid = access.has(id);
  document.title = `${c.nombre} · ${c.organismo} · OpoTest`;
  const dias = daysTo(c.examDate);
  app.innerHTML = `
  <div class="narrow">
  <header class="page"><span class="eyebrow">${esc(c.nombre)} · ${esc(c.organismo)} · ${esc(c.grupo)}</span>
    <h1>Tests de ${esc(c.nombre)}</h1>
    <p class="sub">${esc(c.convocatoria)} · ${esc(c.plazas)}. ${c.ejercicios.map(e => `${e.nombre}: ${e.n} preguntas en ${e.min} minutos`).join("; ")}. Cada fallo resta un tercio de acierto.</p>
    <div class="meta"><span class="countdown"><b>${dias}</b> días</span><span>hasta el examen (aprox.: ${esc(c.examen.toLowerCase())})</span></div>
  </header>
  ${paid ? "" : `<div class="banner"><span>Estás en la versión gratuita: Tema 1 y Windows 11. Desbloquea todos los temas y los simulacros por ${window.PRICE.importe}.</span><a class="btn primary small" href="#/pago/${id}">Desbloquear</a></div>`}
  <nav class="tabs" role="tablist">
    ${[["practicar", "Practicar"], ["simulacro", "Simulacros"], ["progreso", "Mi progreso"], ["oficiales", "Exámenes oficiales"]].map(([k, l]) => `<button role="tab" aria-selected="${k === tab}" data-tab="${k}">${l}</button>`).join("")}
  </nav>
  <div id="pane"></div>
  </div>`;
  app.querySelectorAll("[data-tab]").forEach(b => b.addEventListener("click", () => location.hash = `#/o/${id}/${b.dataset.tab}`));
  ({ practicar: panePractice, simulacro: paneSim, progreso: paneProgress, oficiales: paneOfficial }[tab] || panePractice)(id);
}

function poolFor(id, temas, filtro) {
  const d = data(id), s = stats.load(id);
  return d.Q.filter(q => temas.includes(q[0])).filter(q => {
    const r = s.q[qid(q)];
    if (filtro === "nuevas") return !r;
    if (filtro === "falladas") return r && r.last === 0;
    if (filtro === "marcadas") return s.marks.includes(qid(q));
    return true;
  });
}

function panePractice(id) {
  const c = cat(id), d = data(id), pane = $("#pane");
  const count = t => d.Q.filter(q => q[0] === t).length;
  const chip = t => {
    const n = count(t), open = temaAbierto(id, t), dis = n === 0;
    return `<label class="chip"><input type="checkbox" value="${t}" data-locked="${!open}" ${dis ? "disabled" : ""} ${open && !dis ? "checked" : ""}>
      <span>${!open && !dis ? '<span class="lock" aria-label="Bloqueado">🔒</span>' : ""}${t} · ${esc(d.temas[t])} <small>${dis ? "en preparación" : n}</small></span></label>`;
  };
  const s = stats.load(id), fall = Object.values(s.q).filter(r => r.last === 0).length;
  pane.innerHTML = `<section class="card">
    <h2>Prepara tu test</h2>
    <fieldset><legend>Bloque I · Organización política</legend><div class="chips" id="temas1">${d.bloque1.map(chip).join("")}</div></fieldset>
    <fieldset><legend>Bloque II · Ofimática</legend><div class="chips" id="temas2">${d.bloque2.map(chip).join("")}</div></fieldset>
    <div class="row" style="justify-content:flex-start"><button class="link" id="all">Marcar todos</button><button class="link" id="none">Ninguno</button></div>
    <fieldset><legend>Preguntas</legend><div class="chips">
      ${[["todas", "Todas"], ["nuevas", "Solo nuevas"], ["falladas", `Solo falladas (${fall})`], ["marcadas", `Solo marcadas (${s.marks.length})`]].map(([v, l], i) => `<label class="chip"><input type="radio" name="filtro" value="${v}" ${i ? "" : "checked"}><span>${l}</span></label>`).join("")}
    </div></fieldset>
    <fieldset><legend>Número de preguntas</legend><div class="chips">
      ${[[10, "10"], [20, "20"], [40, "40"], [0, "Todas"]].map(([v, l]) => `<label class="chip"><input type="radio" name="num" value="${v}" ${v === 20 ? "checked" : ""}><span>${l}</span></label>`).join("")}
    </div></fieldset>
    <fieldset><legend>Corrección</legend><div class="chips">
      <label class="chip"><input type="radio" name="modo" value="practica" checked><span>Al momento, con el artículo</span></label>
      <label class="chip"><input type="radio" name="modo" value="final"><span>Al final, con cronómetro</span></label>
    </div><p class="note" id="mode-note"></p></fieldset>
    <div class="row"><span class="meta" id="pool-info"></span><button class="primary" id="start">Empezar test</button></div>
  </section>`;
  const sel = () => {
    const temas = [...pane.querySelectorAll("#temas1 input:checked, #temas2 input:checked")].map(i => +i.value);
    return { temas, filtro: $("input[name=filtro]:checked", pane).value, num: +$("input[name=num]:checked", pane).value, modo: $("input[name=modo]:checked", pane).value };
  };
  const refresh = () => {
    const { temas, filtro, num, modo } = sel(), pool = poolFor(id, temas, filtro).length, n = num ? Math.min(num, pool) : pool;
    $("#pool-info").textContent = pool ? `${n} preguntas de ${pool} disponibles` : "No hay preguntas con esta selección";
    $("#start").disabled = !pool;
    $("#mode-note").textContent = modo === "practica" ? "Ves si aciertas y la explicación con el enlace al BOE después de cada pregunta." : `Como el examen: corriges al final y tienes ${fmt(Math.ceil(n * 45 / 40))} minutos (el ritmo del primer ejercicio).`;
  };
  pane.addEventListener("change", e => {
    const i = e.target;
    if (i.type === "checkbox" && i.dataset.locked === "true" && i.checked) { i.checked = false; paywall(id); }
    refresh();
  });
  $("#all").onclick = () => { pane.querySelectorAll("#temas1 input, #temas2 input").forEach(i => { if (!i.disabled && i.dataset.locked !== "true") i.checked = true; }); if (!access.has(id)) toast("Los temas con candado se desbloquean con el acceso completo."); refresh(); };
  $("#none").onclick = () => { pane.querySelectorAll("#temas1 input, #temas2 input").forEach(i => i.checked = false); refresh(); };
  $("#start").onclick = () => {
    const { temas, filtro, num, modo } = sel();
    let qs = shuffle(poolFor(id, temas, filtro)); if (num) qs = qs.slice(0, num);
    startQuiz(id, [{ id: "practica", nombre: "Test de práctica", qs, modo, min: modo === "final" ? Math.ceil(qs.length * 45 / 40) : 0 }]);
  };
  refresh();
}

function buildExercise(id, ej) {
  const d = data(id), temas = d[ej.bloque].filter(t => d.Q.some(q => q[0] === t));
  // Reparto equilibrado entre temas, como indica la convocatoria
  const byTema = Object.fromEntries(temas.map(t => [t, shuffle(d.Q.filter(q => q[0] === t))]));
  const qs = []; let k = 0;
  while (qs.length < ej.n && temas.some(t => byTema[t].length)) { const t = temas[k++ % temas.length]; if (byTema[t].length) qs.push(byTema[t].pop()); }
  return { id: ej.id, nombre: ej.nombre, qs: shuffle(qs), modo: "final", min: ej.min, n: ej.n };
}

function paneSim(id) {
  const c = cat(id), d = data(id), pane = $("#pane"), paid = access.has(id);
  const avail = ej => d.Q.filter(q => d[ej.bloque].includes(q[0])).length;
  const temasCon = ej => d[ej.bloque].filter(t => d.Q.some(q => q[0] === t)).length;
  pane.innerHTML = `<section class="card">
    <h2>Simulacros como el examen</h2>
    <p class="note">Mismo número de preguntas, tiempo y penalización que la convocatoria. Las preguntas se reparten de forma equilibrada entre los temas, como indican las bases. Si se acaba el tiempo, el ejercicio se entrega solo.</p>
    ${c.ejercicios.map(ej => `<div class="card" style="padding:16px">
      <div class="row"><div><h3>${esc(ej.nombre)}</h3><p class="note">${esc(ej.detalle)} · ${ej.n} preguntas · ${ej.min} minutos · nota de 0 a ${c.escala}, se supera con ${c.aprobado}</p>
      <p class="note">Banco actual: ${avail(ej)} preguntas de ${temasCon(ej)} temas${avail(ej) < ej.n ? " (aún no llega al número del examen)" : ""}.</p></div>
      <button class="primary" data-ej="${ej.id}">${paid ? "Empezar" : "🔒 Empezar"}</button></div></div>`).join("")}
    <div class="card" style="padding:16px;border-color:var(--accent)">
      <div class="row"><div><h3>Examen completo</h3><p class="note">Los dos ejercicios seguidos. Ambos son eliminatorios: hay que sacar al menos ${c.aprobado} en cada uno. Nota final sobre ${c.escala * 2}.</p></div>
      <button class="primary" data-ej="completo">${paid ? "Empezar" : "🔒 Empezar"}</button></div></div>
  </section>`;
  pane.querySelectorAll("[data-ej]").forEach(b => b.addEventListener("click", () => {
    if (!paid) return paywall(id);
    const e = b.dataset.ej;
    const parts = e === "completo" ? c.ejercicios.map(ej => buildExercise(id, ej)) : [buildExercise(id, c.ejercicios.find(x => x.id === e))];
    startQuiz(id, parts, e === "completo" ? "Examen completo" : null);
  }));
}

function paneProgress(id) {
  const c = cat(id), d = data(id), s = stats.load(id), pane = $("#pane");
  const recs = Object.values(s.q), vistas = recs.length, aciertos = recs.reduce((a, r) => a + r.c, 0), resp = recs.reduce((a, r) => a + r.s, 0);
  const fall = recs.filter(r => r.last === 0).length;
  const sims = s.hist.filter(h => h.tipo !== "Test de práctica"), mejor = sims.length ? Math.max(...sims.map(h => h.nota)) : null;
  const filas = [...d.bloque1, ...d.bloque2].map(t => {
    const qs = d.Q.filter(q => q[0] === t); if (!qs.length) return "";
    const rs = qs.map(q => s.q[qid(q)]).filter(Boolean), c2 = rs.reduce((a, r) => a + r.c, 0), n2 = rs.reduce((a, r) => a + r.s, 0);
    const pct = n2 ? Math.round(c2 / n2 * 100) : null;
    return `<div class="temabar"><span>${t} · ${esc(d.temas[t])}</span><span class="bar" title="Preguntas vistas"><i style="width:${rs.length / qs.length * 100}%"></i></span><span class="meta">${rs.length}/${qs.length} vistas · ${pct === null ? "—" : pct + " % acierto"}</span></div>`;
  }).join("");
  pane.innerHTML = `<section class="card">
    <h2>Mi progreso</h2>
    <div class="score">
      <div class="tile"><span>Preguntas vistas</span><b>${vistas}/${d.Q.length}</b></div>
      <div class="tile"><span>Acierto global</span><b>${resp ? Math.round(aciertos / resp * 100) + " %" : "—"}</b></div>
      <div class="tile"><span>Simulacros hechos</span><b>${sims.length}</b></div>
      <div class="tile"><span>Mejor simulacro</span><b>${mejor === null ? "—" : fmt(mejor)}</b></div>
    </div>
    <div class="row" style="justify-content:flex-start">
      <button class="primary" id="rep-f" ${fall ? "" : "disabled"}>Repasar mis fallos (${fall})</button>
      <button class="ghost" id="rep-m" ${s.marks.length ? "" : "disabled"}>Repasar marcadas (${s.marks.length})</button>
    </div>
    <h3>Por tema</h3><div style="display:flex;flex-direction:column;gap:10px">${filas}</div>
    <h3>Historial</h3>
    ${s.hist.length ? `<table><thead><tr><th>Fecha</th><th>Tipo</th><th>Nota</th><th>Aciertos</th><th>Fallos</th><th>Blanco</th></tr></thead><tbody>${s.hist.slice(0, 15).map(h => `<tr><td>${new Date(h.d).toLocaleDateString("es-ES")}</td><td>${esc(h.tipo)}</td><td>${fmt(h.nota)} / ${h.escala}</td><td>${h.a}</td><td>${h.f}</td><td>${h.b}</td></tr>`).join("")}</tbody></table>` : `<p class="note">Aún no has terminado ningún test.</p>`}
    <div class="row"><span class="note">Tus datos se guardan en este navegador.</span><button class="link" id="reset">Borrar mi progreso</button></div>
  </section>`;
  const repaso = filtro => {
    const temas = Object.keys(d.temas).map(Number).filter(t => temaAbierto(id, t));
    const qs = shuffle(poolFor(id, temas, filtro));
    if (!qs.length) return toast("No hay preguntas que repasar en los temas que tienes abiertos.");
    startQuiz(id, [{ id: "practica", nombre: "Test de práctica", qs, modo: "practica", min: 0 }]);
  };
  $("#rep-f").onclick = () => repaso("falladas");
  $("#rep-m").onclick = () => repaso("marcadas");
  $("#reset").onclick = () => modal(`<h2>¿Borrar tu progreso?</h2><p class="note">Se eliminan tus estadísticas, fallos, marcadas e historial de esta oposición en este navegador.</p><div class="row"><button class="ghost" value="cancel" formnovalidate>Cancelar</button><button class="primary">Borrar</button></div>`,
    () => { stats.save(id, { q: {}, marks: [], hist: [] }); paneProgress(id); toast("Progreso borrado."); });
}

function paneOfficial(id) {
  const c = cat(id);
  $("#pane").innerHTML = `<section class="card">
    <h2>Exámenes oficiales</h2>
    <p>La Comunidad de Madrid publica los cuestionarios y plantillas correctoras de convocatorias anteriores. Los estamos convirtiendo en simulacros interactivos con la corrección oficial y el artículo de cada respuesta.</p>
    <p class="note">Mientras tanto, puedes descargarlos en la web oficial de la convocatoria.</p>
    <div class="row" style="justify-content:flex-start">
      <a class="btn ghost" href="${c.urlOficial}" target="_blank" rel="noopener">Página oficial de la convocatoria ↗</a>
      <a class="btn ghost" href="${c.urlConvocatoria}" target="_blank" rel="noopener">Bases en el BOCM (PDF) ↗</a>
    </div>
  </section>`;
}

// ───────── Motor del test ─────────
function startQuiz(id, parts, titulo) {
  stopQuiz();
  quiz = { id, parts, titulo, p: 0, results: [] };
  startPart();
}
function startPart() {
  const part = quiz.parts[quiz.p];
  quiz.st = { i: 0, ans: new Array(part.qs.length).fill(null), order: part.qs.map(() => shuffle([0, 1, 2, 3])), locked: false };
  if (part.min) quiz.end = Date.now() + part.min * 60e3; else quiz.end = 0;
  const c = cat(quiz.id);
  app.innerHTML = `<div class="narrow">
    <header class="page"><span class="eyebrow">${esc(c.nombre)} · ${esc(c.organismo)}</span><h1>${esc(quiz.titulo ? `${quiz.titulo}: ${part.nombre.toLowerCase()}` : part.nombre)}</h1></header>
    <section class="card" id="quiz">
      <div class="progress">
        <div class="row"><span class="meta" id="count"></span><span class="meta"><span id="tally"></span><span class="timer ${quiz.end ? "" : "hidden"}" id="timer" aria-label="Tiempo restante"></span></span></div>
        <div class="bar"><i id="bar"></i></div>
      </div>
      <div class="row"><span class="tag" id="qtema"></span><span class="qtools"><button class="link star" id="mark" aria-pressed="false">☆ Marcar</button><button class="link" id="rep">Reportar</button></span></div>
      <p class="q" id="qtext"></p>
      <div class="opts" id="opts"></div>
      <div id="feedback"></div>
      <div class="row"><button class="ghost" id="quit">${part.modo === "final" ? "Entregar ahora" : "Terminar"}</button>
        <div class="row" style="gap:10px"><button class="ghost" id="prev">Anterior</button><button class="ghost" id="skip">Dejar en blanco</button><button class="primary" id="next">Siguiente</button></div></div>
    </section></div>`;
  $("#next").onclick = next; $("#skip").onclick = skip; $("#quit").onclick = () => confirmEnd(); $("#prev").onclick = prev;
  $("#mark").onclick = () => { const q = cur(); const on = stats.toggleMark(quiz.id, q); markBtn(on); toast(on ? "Pregunta marcada para repasar." : "Marca quitada."); };
  $("#rep").onclick = () => report(quiz.id, cur());
  if (quiz.end) { quiz.tick = setInterval(tick, 1000); tick(); }
  render();
}
const part = () => quiz.parts[quiz.p];
const cur = () => part().qs[quiz.st.i];
function tick() {
  if (!quiz || !quiz.end) return;
  const left = Math.max(0, quiz.end - Date.now()), m = Math.floor(left / 60e3), s = Math.floor(left % 60e3 / 1e3);
  const t = $("#timer"); if (t) { t.textContent = `${m}:${String(s).padStart(2, "0")}`; t.classList.toggle("low", left < 5 * 60e3); }
  if (left <= 0) { clearInterval(quiz.tick); toast("Se acabó el tiempo. Ejercicio entregado."); finishPart(); }
}
function markBtn(on) { const b = $("#mark"); b.setAttribute("aria-pressed", on); b.textContent = on ? "★ Marcada" : "☆ Marcar"; }
function render() {
  const P = part(), st = quiz.st, q = cur(), d = data(quiz.id);
  $("#count").textContent = `Pregunta ${st.i + 1} de ${P.qs.length}`;
  $("#bar").style.width = (st.i / P.qs.length * 100) + "%";
  tally();
  $("#qtema").textContent = `Tema ${q[0]} · ${d.temas[q[0]]}`;
  $("#qtext").textContent = q[1];
  $("#feedback").innerHTML = "";
  markBtn(stats.load(quiz.id).marks.includes(qid(q)));
  st.locked = false;
  const o = $("#opts"); o.innerHTML = "";
  st.order[st.i].forEach((orig, pos) => {
    const b = document.createElement("button");
    b.className = "opt"; b.dataset.orig = orig;
    b.innerHTML = `<b>${LET[pos]}</b><span></span>`; b.querySelector("span").textContent = q[2][orig];
    b.addEventListener("click", () => choose(orig));
    o.appendChild(b);
  });
  const a = st.ans[st.i];
  if (P.modo === "practica" && a !== null) reveal(a, true);
  else if (a !== null && a >= 0) markSel(a);
  $("#next").textContent = st.i === P.qs.length - 1 ? (P.modo === "final" ? "Entregar" : "Ver resultado") : "Siguiente";
  $("#next").disabled = P.modo === "practica" && a === null;
  $("#skip").classList.toggle("hidden", P.modo === "practica" && a !== null);
  $("#prev").classList.toggle("hidden", P.modo === "practica" || st.i === 0);
}
function tally() {
  const P = part(), st = quiz.st;
  if (P.modo === "practica") {
    const a = st.ans.filter((x, k) => x !== null && x === P.qs[k][3]).length, f = st.ans.filter((x, k) => x !== null && x !== -1 && x !== P.qs[k][3]).length;
    $("#tally").textContent = `${a} aciertos · ${f} fallos`;
  } else $("#tally").textContent = `${quiz.st.ans.filter(x => x !== null && x >= 0).length} respondidas`;
}
function markSel(orig) { document.querySelectorAll(".opt").forEach(b => b.classList.toggle("sel", +b.dataset.orig === orig)); }
function choose(orig) {
  const st = quiz.st; if (st.locked) return;
  if (part().modo === "final") { st.ans[st.i] = orig; markSel(orig); tally(); return; }
  st.ans[st.i] = orig; stats.record(quiz.id, cur(), orig === cur()[3]); reveal(orig);
}
function reveal(orig, replay) {
  const q = cur(), st = quiz.st; st.locked = true;
  document.querySelectorAll(".opt").forEach(b => { const o = +b.dataset.orig; b.disabled = true; if (o === q[3]) b.classList.add("ok"); else if (o === orig) b.classList.add("bad"); });
  const ok = orig === q[3], letra = LET[st.order[st.i].indexOf(q[3])], f = fuente(q[4]);
  $("#feedback").innerHTML = `<div class="expl ${ok ? "" : "no"}"><strong></strong><span></span>${f ? `<a href="${f.url}" target="_blank" rel="noopener">${f.txt} ↗</a>` : ""}</div>`;
  $("#feedback strong").textContent = orig === -1 ? `En blanco. Correcta: ${letra} · ${q[4]}` : ok ? `Correcta · ${q[4]}` : `Incorrecta. Era la ${letra} · ${q[4]}`;
  $("#feedback span").textContent = q[5];
  $("#next").disabled = false; $("#skip").classList.add("hidden");
  tally();
}
function next() {
  const P = part(), st = quiz.st;
  if (P.modo === "practica" && st.ans[st.i] === null) return;
  if (st.i < P.qs.length - 1) { st.i++; render(); window.scrollTo({ top: 0 }); } else if (P.modo === "final") confirmEnd(); else finishPart();
}
function prev() { if (quiz.st.i > 0) { quiz.st.i--; render(); } }
function skip() {
  const st = quiz.st;
  if (part().modo === "practica") { st.ans[st.i] = -1; stats.record(quiz.id, cur(), false); reveal(-1); return; }
  st.ans[st.i] = -1; next();
}
function confirmEnd() {
  const P = part(), st = quiz.st, sinResp = st.ans.filter(x => x === null || x === -1).length;
  if (P.modo === "practica") return finishPart();
  modal(`<h2>¿Entregar el ejercicio?</h2><p class="note">${sinResp ? `Tienes ${sinResp} preguntas sin responder: cuentan como en blanco (ni suman ni restan).` : "Has respondido todas las preguntas."}</p>
    <div class="row"><button class="ghost" value="cancel" formnovalidate>Seguir</button><button class="primary">Entregar</button></div>`, () => finishPart());
}
function finishPart() {
  if (!quiz || quiz.st.done) return;
  quiz.st.done = true;
  if (quiz.tick) clearInterval(quiz.tick);
  if (dlg.open) dlg.close();
  const P = part(), st = quiz.st, c = cat(quiz.id);
  let a = 0, f = 0, b = 0; const wrong = [], porTema = {};
  P.qs.forEach((q, k) => {
    const x = st.ans[k], t = porTema[q[0]] = porTema[q[0]] || { a: 0, n: 0 }; t.n++;
    if (x === null || x === -1) { b++; wrong.push(k); }
    else if (x === q[3]) { a++; t.a++; }
    else { f++; wrong.push(k); }
    if (P.modo === "final") stats.record(quiz.id, q, x === q[3]);
  });
  const n = P.n || P.qs.length, nota = Math.round(Math.max(0, a - f * c.penalizacion) / n * c.escala * 100) / 100;
  const res = { part: P, a, f, b, nota, wrong, porTema, ans: st.ans.slice(), order: st.order };
  quiz.results.push(res);
  stats.hist(quiz.id, { d: Date.now(), tipo: quiz.titulo ? `${quiz.titulo} · ${P.nombre}` : P.nombre, nota, escala: c.escala, a, f, b });
  if (quiz.p < quiz.parts.length - 1) {
    quiz.p++;
    app.innerHTML = `<div class="narrow"><section class="card"><h2>${esc(P.nombre)} entregado</h2>
      <p>Nota: <b>${fmt(nota)}</b> sobre ${c.escala}. ${nota >= c.aprobado ? "Superado." : `En el examen real no pasarías al siguiente ejercicio (hace falta ${c.aprobado}). Puedes seguir para practicar.`}</p>
      <p class="note">Siguiente: ${esc(quiz.parts[quiz.p].nombre)}, ${quiz.parts[quiz.p].qs.length} preguntas en ${quiz.parts[quiz.p].min} minutos. El cronómetro empieza al pulsar.</p>
      <div class="row"><button class="ghost" id="stop">Terminar aquí</button><button class="primary" id="go">Empezar ${esc(quiz.parts[quiz.p].nombre.toLowerCase())}</button></div></section></div>`;
    $("#go").onclick = startPart; $("#stop").onclick = showResults;
    return;
  }
  showResults();
}
function showResults() {
  const c = cat(quiz.id), d = data(quiz.id), R = quiz.results, id = quiz.id;
  const total = R.reduce((s, r) => s + r.nota, 0), multi = R.length > 1, isSim = R.some(r => r.part.modo === "final" && r.part.id !== "practica");
  const pasa = R.every(r => r.nota >= c.aprobado);
  const tiles = R.map(r => `<div class="tile"><span>${esc(r.part.nombre)}</span><b>${fmt(r.nota)}</b><span>sobre ${c.escala} · ${r.a} aciertos · ${r.f} fallos · ${r.b} en blanco</span></div>`).join("");
  const porTema = {}; R.forEach(r => Object.entries(r.porTema).forEach(([t, v]) => { const x = porTema[t] = porTema[t] || { a: 0, n: 0 }; x.a += v.a; x.n += v.n; }));
  const temasHtml = Object.entries(porTema).sort((x, y) => x[1].a / x[1].n - y[1].a / y[1].n).map(([t, v]) =>
    `<div class="temabar"><span>${t} · ${esc(d.temas[t])}</span><span class="bar"><i style="width:${v.a / v.n * 100}%"></i></span><span class="meta">${v.a}/${v.n}</span></div>`).join("");
  const wrongQs = [];
  const review = R.map(r => r.wrong.map(k => {
    const q = r.part.qs[k], x = r.ans[k], ord = r.order[k], f = fuente(q[4]); wrongQs.push(q);
    return `<div class="rev"><span class="tag">Tema ${q[0]} · ${esc(q[4])}</span><strong>${esc(q[1])}</strong>
      <span class="your">${x === null || x === -1 ? "La dejaste en blanco" : `Marcaste ${LET[ord.indexOf(x)]}: ${esc(q[2][x])}`}</span>
      <span class="right">Correcta ${LET[ord.indexOf(q[3])]}: ${esc(q[2][q[3]])}</span><span>${esc(q[5])}</span>
      ${f ? `<a href="${f.url}" target="_blank" rel="noopener" style="font-size:14px;font-weight:600">${f.txt} ↗</a>` : ""}</div>`;
  }).join("")).join("");
  app.innerHTML = `<div class="narrow">
    <header class="page"><span class="eyebrow">${esc(c.nombre)} · ${esc(c.organismo)}</span><h1>Resultado</h1></header>
    <section class="card">
      <div class="score">${tiles}${multi ? `<div class="tile"><span>Nota final</span><b>${fmt(total)}</b><span>sobre ${c.escala * R.length}</span></div>` : ""}</div>
      <p>${isSim || R[0].part.modo === "final" ? `<span class="pill ${pasa ? "ok" : "bad"}">${pasa ? "Aprobado" : "Suspenso"}</span> ` : ""}Cada fallo resta un tercio de acierto y las preguntas en blanco no puntúan. ${multi ? `Los dos ejercicios son eliminatorios: hace falta ${c.aprobado} en cada uno.` : `Se supera con ${c.aprobado} sobre ${c.escala}.`}</p>
      <div class="row" style="justify-content:flex-start">
        <a class="btn primary" href="#/o/${id}/${isSim ? "simulacro" : "practicar"}">Hacer otro</a>
        ${wrongQs.length ? `<button class="ghost" id="retry">Repetir solo los fallos (${wrongQs.length})</button>` : ""}
        <a class="btn ghost" href="#/o/${id}/progreso">Ver mi progreso</a>
      </div>
      ${temasHtml ? `<h3>Por tema, de peor a mejor</h3><div style="display:flex;flex-direction:column;gap:8px">${temasHtml}</div>` : ""}
      ${review ? `<h2>Repaso de fallos y preguntas en blanco</h2><div class="review">${review}</div>` : `<p>Sin fallos ni preguntas en blanco.</p>`}
    </section></div>`;
  const rt = $("#retry"); if (rt) rt.onclick = () => startQuiz(id, [{ id: "practica", nombre: "Test de práctica", qs: shuffle(wrongQs), modo: "practica", min: 0 }]);
  if (quiz.tick) clearInterval(quiz.tick);
  window.scrollTo({ top: 0 });
}

// ───────── Pago (simulado) ─────────
function viewCheckout(id) {
  const c = cat(id), paid = access.has(id);
  document.title = `Desbloquear ${c.nombre} · OpoTest`;
  app.innerHTML = `<div class="narrow" style="max-width:560px">
    <header class="page"><span class="eyebrow">Pago único</span><h1>Desbloquear ${esc(c.nombre)}</h1><p class="sub">${esc(c.organismo)} · ${esc(c.convocatoria)}</p></header>
    <section class="card">
      <div class="row"><h2>Acceso completo</h2><b style="font:800 30px var(--display)">${window.PRICE.importe}</b></div>
      <ul style="margin:0;padding-left:20px;display:flex;flex-direction:column;gap:4px">
        <li>Los ${Object.keys(data(id).temas).length} temas del programa a medida que se publican</li>
        <li>Simulacros de cada ejercicio y del examen completo, con cronómetro</li>
        <li>Estadísticas por tema, repaso de fallos y preguntas marcadas</li>
        <li>Acceso hasta el examen de la convocatoria en curso</li></ul>
      <p class="note">IVA incluido. Al confirmar aceptas las <a href="condiciones.html">condiciones de venta</a> y el acceso inmediato al contenido digital, con lo que se pierde el derecho de desistimiento.</p>
      ${paid ? `<p><span class="pill ok">Ya tienes acceso</span></p><a class="btn primary" href="#/o/${id}">Ir a mis tests</a><button class="link" id="revoke">Quitar el acceso (para probar la demo)</button>`
        : `<button class="primary" id="pay">Pagar ${window.PRICE.importe}</button><p class="note">Demo: no se cobra nada. En producción este botón abre Stripe Checkout.</p>`}
    </section></div>`;
  const pay = $("#pay");
  if (pay) pay.onclick = () => { pay.disabled = true; pay.textContent = "Procesando…"; setTimeout(() => { access.grant(id); toast("Pago completado (simulado). Ya tienes acceso completo."); location.hash = `#/o/${id}`; }, 900); };
  const rv = $("#revoke"); if (rv) rv.onclick = () => { access.revoke(id); toast("Acceso quitado."); viewCheckout(id); };
}

route();
})();
