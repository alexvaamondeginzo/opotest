# OpoTest

Plataforma de tests de oposiciones en la que cada respuesta se justifica con el artículo exacto del BOE. El alumno paga una sola vez 4,99 € por oposición y tiene acceso hasta el examen de la convocatoria en curso.

**Estado:** versión de demostración. El pago es simulado y el progreso se guarda en el navegador (localStorage).

## Qué incluye

- Catálogo de oposiciones. Auxiliar Administrativo de la Comunidad de Madrid (C2) está disponible; las demás aparecen como «Próximamente» con lista de espera.
- Tests de práctica por tema: corrección al momento con enlace al BOE, o corrección al final con cronómetro.
- Simulacros del primer ejercicio (40 preguntas, 45 min), del segundo (30 preguntas, 35 min) y del examen completo. Cada fallo resta 1/3 y se aprueba con 25 sobre 50 en cada ejercicio.
- Progreso por tema, historial, banco de fallos, preguntas marcadas y cuenta atrás hasta el examen.
- Botón para reportar preguntas y lista de espera (Netlify Forms).
- Plantillas de aviso legal, privacidad y condiciones de venta. Los huecos están marcados en amarillo.

## Estructura

```
index.html          Estructura de la página y estilos
app.js              Lógica: rutas, test, simulacros, estadísticas, pago simulado
data/catalog.js     Catálogo de oposiciones, precio y configuración de cada examen
data/madrid-aux.js  Banco de preguntas de Auxiliar Administrativo de la Comunidad de Madrid
*.html              Páginas legales (plantillas)
netlify.toml        Publicación en Netlify (sitio estático, sin compilación)
```

## Probar en local

No necesita instalación. Basta con abrir `index.html` o servir la carpeta:

```
npx serve .
```

## Publicar

Conectad este repositorio en Netlify (Add new site → Import from Git). Cada push a `main` publica la web. Cada pull request genera una URL de vista previa.
