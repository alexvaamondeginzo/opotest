// Catálogo de oposiciones de la plataforma.
// estado: "disponible" (con banco de preguntas) o "proximamente" (lista de espera).
window.CATALOG = [
  {
    id: "madrid-aux", estado: "disponible",
    nombre: "Auxiliar Administrativo", organismo: "Comunidad de Madrid", grupo: "C2",
    plazas: "673 plazas de acceso libre",
    convocatoria: "Orden 1628/2026 · BOCM 13/07/2026",
    examen: "Primer ejercicio previsto en junio de 2027",
    examDate: "2027-06-01",
    urlOficial: "https://www.comunidad.madrid/empleo/auxiliares-administracion-general-c2-16282026",
    urlConvocatoria: "https://bocm.es/boletin/CM_Orden_BOCM/2026/07/13/BOCM-20260713-2.PDF",
    ejercicios: [
      { id: "ej1", nombre: "Primer ejercicio", detalle: "Bloque I · Organización política", n: 40, min: 45, bloque: "bloque1" },
      { id: "ej2", nombre: "Segundo ejercicio", detalle: "Bloque II · Ofimática (Windows 11 y Microsoft 365)", n: 30, min: 35, bloque: "bloque2" }
    ],
    // Nota de cada ejercicio de 0 a 50; se supera con 25. Cada error resta 1/3.
    escala: 50, aprobado: 25, penalizacion: 1/3,
    gratis: [1, 16] // temas abiertos sin pagar
  },
  { id: "tcae-sermas", estado: "proximamente", nombre: "TCAE", organismo: "Servicio Madrileño de Salud", grupo: "C2", plazas: "1.878 plazas", convocatoria: "BOCM 31/07/2025" },
  { id: "tcai-ics", estado: "proximamente", nombre: "TCAI (Auxiliar de Enfermería)", organismo: "Institut Català de la Salut", grupo: "C2", plazas: "757 plazas", convocatoria: "DOGC 26/06/2025 · examen desde enero de 2027" },
  { id: "tcae-sergas", estado: "proximamente", nombre: "TCAE", organismo: "Servizo Galego de Saúde", grupo: "C2", plazas: "1.306 plazas", convocatoria: "DOG 04/09/2025" },
  { id: "admin-navarra", estado: "proximamente", nombre: "Administrativo", organismo: "Gobierno de Navarra", grupo: "C", plazas: "585 plazas en la última", convocatoria: "BON 22/05/2025 · OPE 2026 en camino" },
  { id: "aux-canarias", estado: "proximamente", nombre: "Auxiliar Administrativo", organismo: "Gobierno de Canarias", grupo: "C2", plazas: "296 plazas", convocatoria: "BOC 24/03/2026" },
  { id: "osakidetza-aux-enf", estado: "proximamente", nombre: "Auxiliar de Enfermería", organismo: "Osakidetza", grupo: "C2", plazas: "OPE 2023-2025 y 2026", convocatoria: "BOPV 20/03/2026" }
];
window.PRICE = { importe: "4,99 €", segunda: "2,99 €" };
