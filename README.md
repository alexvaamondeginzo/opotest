# OpoNota

Web de tests de oposiciones en la que cada respuesta cita el artículo exacto y enlaza al texto consolidado del BOE.

**Estado:** en pruebas (modo beta: acceso gratis a todo, sin cobrar). Publicada en https://oponota.pages.dev/

## Qué incluye

- **Dos oposiciones disponibles**, con un selector:
  - Auxiliar Administrativo de la Comunidad de Madrid (C2): 1.265 preguntas de los 21 temas.
  - Auxiliar Administrativo del Estado (C2): 1.441 preguntas de los 28 temas y psicotécnicos.
- **Ocho oposiciones «Próximamente»** con lista de espera (TCAE SERMAS, TCAI ICS, TCAE SERGAS, Administrativo de Navarra, Auxiliar de Canarias, Osakidetza, Administrativo C1 de Madrid y Auxiliar del Ayuntamiento de Madrid).
- **Práctica por temas** con corrección y explicación al momento, y un enlace a la norma en el BOE.
- **Simulacros** con el formato real de cada examen; cada fallo resta 1/3.
- **Repaso** de fallos y de preguntas marcadas con ☆.
- **Progreso** por tema, racha, objetivo diario y cuenta atrás.
- **Cuentas** con Supabase: el progreso se sincroniza entre dispositivos. Las preguntas solo se descargan con sesión iniciada (RLS), nunca van dentro de la web.
- **Pagos** con Stripe Payment Links y webhook (desactivados mientras dure la beta).
- **Reportar una pregunta** y **lista de espera** con Netlify Forms.
- **Panel de administración**: usuarios, visitas, compras, accesos manuales, modo beta y errores.

## Estructura

```
web/                 Lo que se publica en Netlify (generado por build.py; no editar a mano)
template.html        Código de la web (HTML, CSS y JS en un archivo)
oposiciones.json     Configuración de cada oposición: temario, simulacros, planes y enlaces oficiales
all.json             Banco de Auxiliar de la Comunidad de Madrid (aux-cm)
bancos/<id>.json     Bancos del resto de oposiciones (aux-age, …)
age/                 Fuentes del banco del Estado: preguntas nuevas por tema (nNN.json),
                     psicotécnicos generados por código (psico.py) y montaje (montar.py)
supabase/            SQL de la base de datos, banco de preguntas (pNN-*.sql) y webhook de Stripe
build.py             Genera web/index.html a partir de template.html y oposiciones.json
make_sql.py          Genera supabase/pNN-preguntas-*.sql a partir de los bancos
legal_build.py       Genera las páginas legales de web/
og_image.py          Genera la imagen para redes sociales
herramientas/        Medición de pistas de forma (longitud, absolutos) en un banco
assets/logo/         Logo original
INSTRUCCIONES.txt    Puesta en marcha paso a paso (Supabase, Stripe, Netlify)
```

Formato de una pregunta en los bancos:

```
[tema, "enunciado", ["A", "B", "C", "D"], indiceCorrecto, "Art. X Norma", "explicación", "examen oficial o null"]
```

## Flujo de trabajo

1. Edita el banco (`all.json` o `bancos/<id>.json`; para el Estado, `age/nNN.json` y luego `python3 age/montar.py`).
2. Comprueba que no haya pistas de forma: `python3 herramientas/analizar.py bancos/aux-age.json`.
3. `python3 make_sql.py` y ejecuta los `supabase/pNN-*.sql` en el SQL Editor de Supabase.
4. Si cambias la web o `oposiciones.json`: `python3 build.py https://oponota.pages.dev/`.
5. Publica la carpeta `web` en Netlify.

Nunca se suben claves secretas al repositorio. La clave de Supabase que aparece en `build.py` es la publicable, pensada para ir en la web; la de servicio y la secreta de Stripe van solo en Supabase.
