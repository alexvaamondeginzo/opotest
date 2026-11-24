// Service worker de OpoNota: permite abrir la web sin conexión.
// - La página se pide siempre a la red primero (así nunca se queda una versión vieja)
//   y solo se usa la copia guardada si no hay conexión.
// - Fuentes e iconos se sirven desde la copia guardada.
// - Nada de Supabase ni de otros dominios pasa por aquí: las preguntas ya se guardan
//   en el navegador (localStorage) y el progreso se sincroniza al volver la conexión.
const CACHE = 'oponota-v1';
const FIJOS = ['./', 'oponota.png', 'logo-192.png', 'Barlow-Regular.woff', 'Barlow-Medium.woff',
  'Barlow-SemiBold.woff', 'BarlowCondensed-SemiBold.woff', 'BarlowCondensed-Bold.woff', 'BarlowCondensed-ExtraBold.woff'];

self.addEventListener('install', e => {
  e.waitUntil(caches.open(CACHE).then(c => c.addAll(FIJOS)).then(() => self.skipWaiting()));
});
self.addEventListener('activate', e => {
  e.waitUntil(caches.keys().then(ks => Promise.all(ks.filter(k => k !== CACHE).map(k => caches.delete(k))))
    .then(() => self.clients.claim()));
});
self.addEventListener('fetch', e => {
  const r = e.request, u = new URL(r.url);
  if (r.method !== 'GET' || u.origin !== location.origin) return;
  if (r.mode === 'navigate') {
    e.respondWith(fetch(r).then(res => {
      const copia = res.clone(); caches.open(CACHE).then(c => c.put('./', copia)); return res;
    }).catch(() => caches.match('./')));
    return;
  }
  if (/\.(woff|png)$/.test(u.pathname)) {
    e.respondWith(caches.match(r).then(x => x || fetch(r)));
  }
});
