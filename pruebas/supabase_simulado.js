// Supabase simulado para las pruebas automáticas (pruebas/probar_web.py).
// No se conecta a nada: guarda el estado en localStorage («mock-state») y sirve las
// preguntas que inyecta el script (__ROWS__). No se publica: build.py no lo copia a web/.
(function(){
const ROWS=__ROWS__;

function S(){try{return JSON.parse(localStorage.getItem('mock-state'))||{}}catch(e){return {}}}
function W(s){localStorage.setItem('mock-state',JSON.stringify(s))}
let cb=null;
function mx(){const p=(S().acc||{}).plan;return {beta:999,prueba:999,completo:999,premium:999,legislacion:15}[p]||0}
function qb(table){
  let OPF=null;
  const b={_r:null,select(){return b},eq(k,v){if(k==='oposicion')OPF=v;return b},order(){return b},
    maybeSingle(){const s=S(),p=(s.prog||{})[s.user&&s.user.id];return Promise.resolve({data:p?{datos:p}:null,error:null})},
    upsert(r){const s=S();s.prog=s.prog||{};s.prog[r.user_id]=r.datos;W(s);return Promise.resolve({error:null})},
    range(a,z){window.__fetches=(window.__fetches||0)+1;
      if(+localStorage.getItem('mock-down')){return Promise.resolve({data:null,error:{message:'TypeError: Failed to fetch'}})}
      const f=+localStorage.getItem('mock-fail')||0;if(f>0){localStorage.setItem('mock-fail',f-1);return Promise.resolve({data:null,error:{message:'fallo temporal simulado'}})}
      const rows=ROWS.filter(r=>r.tema<=mx()&&(!OPF||(r.oposicion||'aux-cm')===OPF));return Promise.resolve({data:rows.slice(a,z+1),error:null})},
    then(res,rej){if(table==='compras')return Promise.resolve({data:S().compras||[],error:null}).then(res,rej);return Promise.resolve({count:ROWS.filter(r=>r.tema<=mx()).length,data:null,error:null}).then(res,rej)},
    limit(){return Promise.resolve({data:[],error:null})}};
  return b;
}
function login(email){const u={id:'u-'+email,email};const s=S();s.user=u;if(!s.acc)s.acc={plan:'prueba',hasta:new Date(Date.now()+47*3600e3).toISOString()};W(s);localStorage.setItem('sb-mock-auth-token','1');setTimeout(()=>cb&&cb('SIGNED_IN',{user:u}),0);return u}
window.supabase={createClient(){return{
  auth:{onAuthStateChange(f){cb=f;return{data:{subscription:{unsubscribe(){}}}}},
    getSession(){const u=S().user;return Promise.resolve({data:{session:u?{user:u}:null}})},
    signUp({email}){const d=email.split('@')[1];if(DOMS.has(d))return Promise.resolve({data:{},error:{message:'No se admiten emails temporales. Usa tu correo habitual (servidor).'}});const u=login(email);return Promise.resolve({data:{session:{user:u}},error:null})},
    signInWithPassword({email}){const u=login(email);return Promise.resolve({data:{session:{user:u}},error:null})},
    signOut(){const s=S();s.user=null;W(s);localStorage.removeItem('sb-mock-auth-token');cb&&cb('SIGNED_OUT',null);return Promise.resolve({})},
    resetPasswordForEmail(){return Promise.resolve({})},updateUser(){return Promise.resolve({error:null})}},
  rpc(n,args){const s=S();window.__rpc=(window.__rpc||[]);window.__rpc.push([n,args]);
    if(n==='registrar_error'){window.__errs=(window.__errs||[]);window.__errs.push(args);return Promise.resolve({error:null})}
    if(n==='admin_errores')return Promise.resolve({data:(window.__errs||[]).map(e=>({creado:new Date().toISOString(),email:'pepe@gmail.com',mensaje:e.m,contexto:e.c,agente:e.a})),error:null});
    if(+localStorage.getItem('mock-down'))return Promise.resolve({data:null,error:{message:'TypeError: Failed to fetch'}});
    if(n==='percentil_aciertos')return Promise.resolve({data:[{percentil:62,usuarios:8}],error:null});
    if(n==='estado_web')return Promise.resolve({data:{beta:!!s.beta},error:null});
    if(n==='mi_acceso'||n==='mi_acceso_op'){let a=s.acc||{plan:null};if(s.beta&&!a.plan&&s.user)a={plan:'beta'};return Promise.resolve({data:a,error:null})}
    if(n==='admin_resumen')return Promise.resolve({data:{beta:!!s.beta,usuarios:12,confirmados:10,nuevos_7d:12,activos_7d:7,en_prueba:0,con_plan:1,ventas:0,ingresos_cent:0},error:null});
    if(n==='admin_usuarios')return Promise.resolve({data:[{email:'admin@gmail.com',registrado:'2026-11-23T05:00:00Z',confirmado:true,estado:'admin',hasta:null,respuestas:120,ultima_actividad:'2026-11-23T05:30:00Z'},{email:'ana<script>@gmail.com',registrado:'2026-11-23T06:00:00Z',confirmado:false,estado:'pruebas',hasta:null,respuestas:0,ultima_actividad:null},{email:'luis@outlook.es',registrado:'2026-11-22T06:00:00Z',confirmado:true,estado:'completo',hasta:'2027-12-31T22:59:59Z',respuestas:340,ultima_actividad:'2026-11-23T01:00:00Z'}],error:null});
    if(n==='admin_visitas')return Promise.resolve({data:[{dia:'2026-11-23',visitas:85,sin_sesion:60,registros:12},{dia:'2026-11-22',visitas:40,sin_sesion:30,registros:5}],error:null});
    if(n==='admin_compras')return Promise.resolve({data:[{creado:'2026-11-23T05:40:00Z',email:'luis@outlook.es',plan:'completo',importe_cent:0,tipo:'acceso dado a mano',hasta:'2027-12-31T22:59:59Z'}],error:null});
    if(n==='admin_modo_beta'){s.beta=args.activar;W(s);return Promise.resolve({error:null})}
    if(n==='admin_revocar')return Promise.resolve({data:1,error:null});
    window.__rpcExtra=(window.__rpcExtra||[]).concat([n]);return Promise.resolve({error:null})},
  from:qb}}};
})();