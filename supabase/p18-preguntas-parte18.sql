-- Banco de preguntas, parte 18 de 21. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('admin-navarra:26-327b8c9321','admin-navarra',26,'En Excel, Ctrl + Inicio lleva a:','["La última celda con datos", "La hoja anterior", "La primera celda de la fila actual", "La celda A1"]'::jsonb,3,'Excel · Navegación','Ctrl+Fin lleva a la última celda utilizada.',null),
('admin-navarra:26-5f90cdfb2b','admin-navarra',26,'La función CONTAR de Excel cuenta:','["Las celdas vacías", "Todas las celdas que no están vacías", "Las celdas que contienen números", "Las celdas con texto"]'::jsonb,2,'Excel · Funciones','Para contar celdas no vacías de cualquier tipo se usa CONTARA.',null),
('admin-navarra:26-3bb71d0c7c','admin-navarra',26,'La función BUSCARV de Excel busca un valor:','["En la primera columna de un rango y devuelve un valor de la misma fila en otra columna", "Solo en tablas dinámicas", "En la primera fila de un rango y devuelve un valor de la misma columna en otra fila", "En cualquier celda y devuelve su posición"]'::jsonb,0,'Excel · Funciones','BUSCARH busca en la primera fila; BUSCARX es la función moderna que sustituye a ambas.',null),
('admin-navarra:26-7e88317214','admin-navarra',26,'La función SI.ERROR de Excel:','["Muestra siempre un mensaje de error personalizado, aunque la fórmula no contenga ningún error", "Cuenta los errores de un rango", "Corrige automáticamente las fórmulas que devuelven un error y muestra el resultado corregido", "Devuelve un valor alternativo si la fórmula da error y, si no, el resultado de la fórmula"]'::jsonb,3,'Excel · Funciones','Ejemplo: =SI.ERROR(A1/B1;0).',null),
('admin-navarra:26-70ec1ea7ba','admin-navarra',26,'El error #¡REF! en Excel aparece cuando:','["Se usa texto en una operación matemática", "Se divide entre cero", "Falta un valor en una búsqueda de BUSCARV o de COINCIDIR y no se encuentra la coincidencia", "Una fórmula hace referencia a una celda que no es válida, por ejemplo porque se ha eliminado"]'::jsonb,3,'Excel · Errores','#¡VALOR! aparece cuando se usa un tipo de dato incorrecto.',null),
('admin-navarra:26-18fe01cfe0','admin-navarra',26,'En Excel, al editar una fórmula, la tecla F4 sobre una referencia:','["Repite la fórmula", "Recalcula la hoja", "Alterna entre referencia relativa, absoluta y mixta", "Abre el asistente de funciones con los argumentos de la fórmula"]'::jsonb,2,'Excel · Referencias','Recorre A1 → $A$1 → A$1 → $A1.',null),
('admin-navarra:26-e18a4a70a7','admin-navarra',26,'Si una celda muestra ##### en Excel, normalmente significa que:','["La columna no es lo bastante ancha para mostrar el valor", "La fórmula contiene una referencia circular o un error de sintaxis", "La celda está protegida y bloqueada con contraseña por el autor", "El valor es un texto demasiado largo"]'::jsonb,0,'Excel · Errores','Basta con ensanchar la columna.',null),
('admin-navarra:26-cd0cb225d1','admin-navarra',26,'La opción Inmovilizar paneles de Excel sirve para:','["Proteger la hoja con contraseña para que no se modifiquen los paneles", "Mantener visibles filas o columnas al desplazarse por la hoja", "Impedir que se impriman las filas y columnas seleccionadas", "Ocultar filas o columnas para que no se vean al desplazarse por la hoja"]'::jsonb,1,'Excel · Vista','Se encuentra en la pestaña Vista.',null),
('admin-navarra:26-9ef6a5fab0','admin-navarra',26,'En Excel, Alt + Entrar dentro de una celda:','["Abre el cuadro Formato de celdas", "Inserta una fila nueva encima de la celda activa", "Confirma la entrada y baja a la siguiente celda", "Inserta un salto de línea en la misma celda"]'::jsonb,3,'Excel · Atajos','Permite escribir varias líneas en una celda.',null),
('admin-navarra:26-c7b8028652','admin-navarra',26,'La herramienta de Excel que resume grandes cantidades de datos permitiendo reorganizar filas y columnas arrastrando campos es:','["El filtro avanzado", "La validación de datos", "La tabla dinámica", "El formato condicional"]'::jsonb,2,'Excel · Análisis','Se inserta desde Insertar > Tabla dinámica.',null),
('admin-navarra:26-2222b8a99f','admin-navarra',26,'En Excel, ¿qué referencia permanece fija al copiar una fórmula a otras celdas?','["$A$1", "A1", "$A1", "A$1"]'::jsonb,0,'Excel · Referencias','$A$1 es absoluta; A$1 y $A1 son mixtas; A1 es relativa.',null),
('admin-navarra:26-c14ab5b7c1','admin-navarra',26,'En Excel, la tecla F2 sirve para:','["Insertar un gráfico", "Editar la celda activa", "Abrir el cuadro Ir a", "Guardar como"]'::jsonb,1,'Excel · Atajos','F5 abre el cuadro Ir a.',null),
('admin-navarra:26-567c39f8db','admin-navarra',26,'¿Cuántas filas tiene como máximo una hoja de cálculo de Excel actual (formato .xlsx)?','["1.000.000", "1.048.576", "65.536", "16.384"]'::jsonb,1,'Excel · Especificaciones','65.536 era el límite del antiguo formato .xls.',null),
('admin-navarra:26-0ea30e70c6','admin-navarra',26,'¿Qué error muestra Excel al dividir un número entre cero?','["#N/A", "#¡DIV/0!", "#¡REF!", "#¿NOMBRE?"]'::jsonb,1,'Excel · Errores','#N/A indica valor no disponible, por ejemplo en una búsqueda sin coincidencia.',null),
('admin-navarra:26-ba6ec9d7e7','admin-navarra',26,'¿Qué devuelve la función HOY() de Excel?','["El año actual", "La fecha y la hora actuales", "La fecha actual", "El día de la semana"]'::jsonb,2,'Excel · Funciones','AHORA() devuelve fecha y hora.',null),
('admin-navarra:26-655074ebb8','admin-navarra',26,'El error #¿NOMBRE? en Excel suele indicar que:','["Excel no reconoce un texto de la fórmula, por ejemplo una función mal escrita", "La columna es demasiado estrecha para mostrar el resultado", "Se divide entre cero", "Una referencia no es válida porque se ha eliminado la celda o la hoja a la que apunta"]'::jsonb,0,'Excel · Errores','#¡REF! aparece cuando una fórmula apunta a una celda eliminada.',null),
('admin-navarra:26-a499c01035','admin-navarra',26,'El formato condicional de Excel sirve para:','["Combinar automáticamente las celdas que tienen el mismo valor en una columna o fila", "Proteger la hoja", "Ordenar y filtrar automáticamente los datos de una tabla según los valores de una columna", "Aplicar formato automáticamente a las celdas que cumplen determinadas condiciones"]'::jsonb,3,'Excel · Inicio','Por ejemplo, colorear en rojo los valores negativos.',null),
('admin-navarra:26-63f6ea3f20','admin-navarra',26,'En Excel, Mayús + F11:','["Cierra el libro activo sin guardar", "Crea un gráfico con los datos seleccionados", "Inserta una hoja de cálculo nueva", "Inserta una fila"]'::jsonb,2,'Excel · Atajos','Es un atajo independiente del idioma.',null),
('admin-navarra:26-e479a7948e','admin-navarra',26,'¿Qué operador de Excel une textos de varias celdas?','["%", "&", "#", "+"]'::jsonb,1,'Excel · Operadores','Ejemplo: =A1&" "&B1. También pueden usarse CONCAT o UNIRCADENAS.',null),
('admin-navarra:26-5fe8d322f0','admin-navarra',26,'¿Qué extensión tiene un libro de Excel que contiene macros?','[".xlsm", ".csv", ".xltx", ".xlsx"]'::jsonb,0,'Excel · Formatos','.xlsx no admite macros y .xltx es una plantilla.',null),
('admin-navarra:26-a440b730b1','admin-navarra',26,'En Excel, la tecla F11 con datos seleccionados:','["Crea un gráfico en una hoja de gráfico nueva", "Guarda el libro", "Abre el editor de Visual Basic", "Crea una hoja de cálculo nueva a la izquierda"]'::jsonb,0,'Excel · Gráficos','Alt+F1 crea un gráfico incrustado en la hoja actual.',null),
('admin-navarra:26-08267b0b86','admin-navarra',26,'¿Cuál es la última columna de una hoja de Excel actual?','["XFZ", "IV", "ZZZ", "XFD"]'::jsonb,3,'Excel · Especificaciones','Corresponde a 16.384 columnas; IV era el límite del formato .xls.',null),
('admin-navarra:26-4a6e19256c','admin-navarra',26,'La validación de datos de Excel permite:','["Eliminar automáticamente los valores duplicados y las celdas vacías de un rango", "Restringir el tipo de datos o los valores que se pueden introducir en una celda", "Comprobar que las fórmulas no contienen errores", "Resaltar con colores las celdas cuyo valor no cumple las condiciones indicadas, sin impedir que se introduzcan"]'::jsonb,1,'Excel · Datos','Por ejemplo, crear una lista desplegable.',null),
('admin-navarra:26-9faf48c445','admin-navarra',26,'En Excel, la fórmula =2+3*4 devuelve:','["14", "9", "24", "20"]'::jsonb,0,'Excel · Operadores','La multiplicación se calcula antes que la suma.',null),
('admin-navarra:26-6e98bc27ef','admin-navarra',26,'¿Qué función de Excel suma los valores de un rango que cumplen un criterio?','["SUMAPRODUCTO", "SUMAR.SI", "CONTAR.SI", "SUBTOTALES"]'::jsonb,1,'Excel · Funciones','SUMAR.SI.CONJUNTO admite varios criterios.',null),
('admin-navarra:26-afe5bf9cbd','admin-navarra',26,'¿Qué función de Excel devuelve un valor si una condición es verdadera y otro si es falsa?','["Y", "SI.ERROR", "SI", "O"]'::jsonb,2,'Excel · Funciones','Sintaxis: =SI(prueba_lógica;valor_si_verdadero;valor_si_falso).',null),
('admin-navarra:26-3013343c22','admin-navarra',26,'En Excel, ¿qué operador eleva un número a una potencia?','["&", "**", "^", "*"]'::jsonb,2,'Excel · Operadores','Ejemplo: =2^3 devuelve 8.',null),
('admin-navarra:26-2c43c9a6cc','admin-navarra',26,'El controlador de relleno de Excel (cuadrado pequeño en la esquina de la celda) sirve para:','["Cambiar el color de la celda", "Insertar comentarios", "Copiar contenido o completar series al arrastrarlo", "Mover la celda a otra posición sin copiar su contenido"]'::jsonb,2,'Excel · Edición','Por ejemplo, completar días de la semana o números consecutivos.',null),
('admin-navarra:26-7992599305','admin-navarra',26,'En Excel, la combinación Ctrl + 1 abre:','["El cuadro de diálogo Formato de celdas", "La vista Diseño de página", "El primer libro abierto", "El cuadro de diálogo Insertar función"]'::jsonb,0,'Excel · Atajos','Permite cambiar número, alineación, fuente, bordes, relleno y protección.',null),
('admin-navarra:26-5e58b09d3d','admin-navarra',26,'¿Qué función de Excel cuenta las celdas de un rango que cumplen un criterio?','["SUMAR.SI", "CONTARA", "CONTAR.BLANCO", "CONTAR.SI"]'::jsonb,3,'Excel · Funciones','Ejemplo: =CONTAR.SI(A1:A10;">5").',null),
('admin-navarra:26-1f0975b1fb','admin-navarra',26,'En Excel, Alt + = (signo igual) inserta:','["Una tabla dinámica", "Un filtro", "Un gráfico", "Una Autosuma"]'::jsonb,3,'Excel · Atajos','Inserta la función SUMA sobre el rango adyacente.',null),
('admin-navarra:26-2b0da7282d','admin-navarra',26,'La función CONTARA de Excel cuenta:','["Solo las celdas vacías", "Las celdas que no están vacías", "Las celdas que cumplen un criterio", "Solo las celdas con números"]'::jsonb,1,'Excel · Funciones','CONTAR cuenta números, CONTAR.BLANCO cuenta vacías y CONTAR.SI aplica un criterio.',null),
('admin-navarra:26-811d716c13','admin-navarra',26,'Si en B2 escribes =A$1*A2 y la copias hasta B5, ¿qué parte de la referencia A$1 permanece fija?','["La fila 1", "Nada", "La columna A", "La fila y la columna"]'::jsonb,0,'Excel · Referencias','El signo $ delante del número fija la fila.',null),
('admin-navarra:26-00e0551c6b','admin-navarra',26,'En Excel, ¿qué símbolo se escribe al principio para introducir una fórmula?','["#", "$", "=", "@"]'::jsonb,2,'Excel · Fórmulas','El $ se usa para fijar referencias.',null),
('admin-navarra:26-7a51fc8d40','admin-navarra',26,'En Excel de Microsoft 365, un pequeño triángulo rojo en la esquina superior derecha de una celda indica que:','["La fórmula tiene un error", "Tiene una falta de ortografía", "Tiene una nota", "Contiene un hipervínculo"]'::jsonb,2,'Excel · Revisar','Los comentarios modernos se marcan con un indicador de otro color.',null),
('admin-navarra:26-61d90f3de8','admin-navarra',26,'La opción Organizar todo > Horizontal (pestaña Vista) en Excel:','["Gira el texto de las celdas", "Coloca una debajo de otra las ventanas de los libros abiertos", "Ordena las hojas del libro", "Divide la hoja actual en dos paneles que se desplazan de forma independiente"]'::jsonb,1,'Excel · Vista','Para dividir una hoja se usa Dividir.',null),
('admin-navarra:26-bd06b97df9','admin-navarra',26,'Un hipervínculo en Excel es:','["Un acceso a otra ubicación: otra hoja, otro archivo, una carpeta de red o una página web", "Un tipo de gráfico", "Una celda oculta que contiene la ruta de otro archivo, una carpeta de red o una página web", "Una fórmula que devuelve un error cuando el archivo de origen no está disponible o se ha movido a otra carpeta de red"]'::jsonb,0,'Excel · Insertar','Se inserta desde Insertar > Vínculo.',null),
('admin-navarra:26-495395857d','admin-navarra',26,'Con el estilo de referencia F1C1 activado (R1C1 en inglés), la celda E34 se muestra como:','["34E", "F34C5", "E5F34", "F5C34"]'::jsonb,1,'Excel · Referencias','F indica la fila y C la columna, en número.',null),
('admin-navarra:26-4b0a17ac7d','admin-navarra',26,'En Excel con configuración regional española, ¿cuál de estas fórmulas está bien escrita?','["=SI(A1=A2 Y A4=A3;C1+D1;C4-B4)", "=SI(A1=A2 Y A4=A3,C1+D1,C4-B4)", "=SI(Y(A1=A2,A4=A3),C1+D1,C4-B4)", "=SI(Y(A1=A2;A4=A3);C1+D1;C4-B4)"]'::jsonb,3,'Excel · Funciones lógicas','En español los argumentos se separan con punto y coma y la condición múltiple se hace con la función Y.',null),
('admin-navarra:26-2911f23b87','admin-navarra',26,'Si cambias los datos de origen de una tabla dinámica:','["Se elimina", "Se actualiza en tiempo real y de forma automática", "La tabla no se actualiza sola; hay que actualizarla", "Se actualiza al guardar el libro"]'::jsonb,2,'Excel · Tablas dinámicas','Se usa Actualizar (o Actualizar todo) en la pestaña de la tabla dinámica.',null),
('admin-navarra:26-1e19d8cf6e','admin-navarra',26,'¿Qué diferencia hay entre el formato condicional y la validación de datos en Excel?','["La validación cambia el color de las celdas según su valor; el formato condicional muestra un mensaje de error cuando el valor no cumple la regla", "El formato condicional impide introducir valores", "Hacen lo mismo, pero el formato condicional está en la pestaña Inicio y la validación de datos en la pestaña Datos", "El formato condicional cambia el aspecto según el valor; la validación restringe qué valores se pueden introducir"]'::jsonb,3,'Excel · Datos','Pueden combinarse.',null),
('admin-navarra:26-a3d69ec77b','admin-navarra',26,'En Excel, el contenido real de la celda activa (por ejemplo, la fórmula y no su resultado) se ve en:','["La barra de fórmulas", "La cinta de opciones", "El cuadro de nombres", "La barra de estado"]'::jsonb,0,'Excel · Interfaz','El cuadro de nombres muestra la dirección de la celda activa.',null),
('admin-navarra:26-51286e7e45','admin-navarra',26,'¿Cuántas hojas puede tener como máximo un libro de Excel?','["255 hojas por libro", "No hay un número fijo; depende de la memoria disponible", "16", "1"]'::jsonb,1,'Excel · Especificaciones','Un libro nuevo se crea con una hoja, pero se pueden añadir muchas más.',null),
('admin-navarra:26-61fef8836a','admin-navarra',26,'En Excel, una celda es:','["Un archivo", "Una hoja", "Un formato aplicado a un rango", "La intersección de una fila y una columna"]'::jsonb,3,'Excel · Conceptos','Se identifica por la letra de columna y el número de fila, como B3.',null),
('admin-navarra:26-65317bf5f0','admin-navarra',26,'En Excel en español, ¿cuál es la sintaxis correcta de la función que devuelve caracteres desde el final de un texto?','["FIN(texto;núm)", "STRR(texto;[núm])", "DERECHA(núm_de_caracteres;texto)", "DERECHA(texto;[núm_de_caracteres])"]'::jsonb,3,'Excel · Funciones de texto','IZQUIERDA devuelve caracteres desde el principio y EXTRAE desde una posición intermedia.',null),
('admin-navarra:27-e77874dcd1','admin-navarra',27,'En Access, el objeto pensado principalmente para introducir, ver y modificar datos de forma cómoda en pantalla es:','["El formulario", "El módulo", "La macro", "El informe de datos"]'::jsonb,0,'Access · Formularios','El informe está pensado sobre todo para imprimir o presentar datos.',null),
('admin-navarra:27-fac71a76ba','admin-navarra',27,'En Access, los datos se almacenan en:','["Las macros", "Las tablas", "Los formularios", "Los informes"]'::jsonb,1,'Access · Tablas','Consultas, formularios e informes trabajan con los datos guardados en las tablas.',null),
('admin-navarra:27-18a4cdc031','admin-navarra',27,'Una consulta de selección en Access:','["Actualiza los valores de los registros que cumplen unos criterios en una o varias tablas", "Crea una tabla nueva con los registros de una o varias tablas que cumplen unos criterios", "Muestra datos de una o varias tablas que cumplen unos criterios, sin modificarlos", "Elimina registros"]'::jsonb,2,'Access · Consultas','Las consultas de acción sí modifican datos.',null),
('admin-navarra:27-aa01de4ab7','admin-navarra',27,'La vista de Access que permite definir los campos de una tabla y sus tipos de datos es:','["Vista Hoja de datos", "Vista Formulario", "Vista Diseño", "Vista preliminar"]'::jsonb,2,'Access · Vistas','La vista Hoja de datos muestra los registros en filas y columnas.',null),
('admin-navarra:27-cb21b526eb','admin-navarra',27,'¿Cuál de los siguientes NO es un objeto de una base de datos de Access?','["Diapositivas", "Tablas vinculadas", "Informes y macros", "Consultas"]'::jsonb,0,'Access · Objetos','Los objetos de Access son tablas, consultas, formularios, informes, macros y módulos.',null),
('admin-navarra:27-a28ee698eb','admin-navarra',27,'El tipo de datos de Access que asigna automáticamente un número único a cada registro nuevo es:','["Autonumeración", "Moneda", "Número entero largo", "Texto corto"]'::jsonb,0,'Access · Tipos de datos','Se usa habitualmente como clave principal.',null),
('admin-navarra:27-fe465a7254','admin-navarra',27,'En Access, el objeto pensado para presentar e imprimir datos con formato, agrupaciones y totales es:','["La consulta de acción", "El formulario", "La tabla", "El informe"]'::jsonb,3,'Access · Informes','Los informes no permiten editar los datos.',null),
('admin-navarra:27-f7ed56ca52','admin-navarra',27,'¿Qué extensión tienen las bases de datos de Access desde la versión 2007?','[".xlsm", ".pbix", ".mdbx", ".accdb"]'::jsonb,3,'Access · Formatos','.mdb era el formato de versiones anteriores.',null),
('admin-navarra:27-b32eba53d0','admin-navarra',27,'Una consulta de parámetros en Access:','["Exporta los datos a Excel", "Pide al usuario un valor al ejecutarse para usarlo como criterio", "Elimina los registros duplicados que cumplen los criterios indicados", "Crea un formulario a partir de los valores que el usuario introduce en la tabla"]'::jsonb,1,'Access · Consultas','El parámetro se escribe entre corchetes en la fila Criterios.',null),
('admin-navarra:27-476b6d713f','admin-navarra',27,'¿Cuál de las siguientes es una consulta de acción en Access?','["Consulta de selección", "Consulta de parámetros", "Consulta de resumen", "Consulta de eliminación"]'::jsonb,3,'Access · Consultas','Las consultas de acción son de creación de tabla, anexar, actualización y eliminación.',null),
('admin-navarra:27-4f57ca9868','admin-navarra',27,'¿Cuántos caracteres admite como máximo un campo de tipo Texto corto en Access?','["65.535", "64", "1.024", "255"]'::jsonb,3,'Access · Tipos de datos','Para textos más largos se usa Texto largo.',null),
('admin-navarra:27-e1bbdd5ac4','admin-navarra',27,'La clave principal de una tabla de Access:','["Identifica de forma única cada registro y no admite valores duplicados ni nulos", "Sirve para dar formato a la tabla y ordenar sus registros alfabéticamente por el campo elegido como clave", "Puede repetirse en varios registros", "Es siempre un campo de texto"]'::jsonb,0,'Access · Tablas','Suele usarse un campo Autonumeración.',null),
('admin-navarra:27-be1406c745','admin-navarra',27,'La integridad referencial en las relaciones de Access:','["Permite borrar cualquier registro de la tabla principal aunque tenga registros relacionados en otras tablas, sin ningún control", "Ordena los registros alfabéticamente", "Impide crear registros relacionados huérfanos, garantizando que exista el registro de la tabla principal", "Solo sirve para dar formato"]'::jsonb,2,'Access · Relaciones','Puede completarse con actualización y eliminación en cascada.',null),
('admin-navarra:27-a896d83abe','admin-navarra',27,'El tipo de datos Sí/No de Access almacena:','["Imágenes y objetos OLE incrustados", "Valores booleanos (verdadero/falso)", "Fechas y horas", "Textos de hasta 255 caracteres"]'::jsonb,1,'Access · Tipos de datos','Se muestra normalmente como una casilla de verificación.',null),
('admin-navarra:27-e355d33c17','admin-navarra',27,'La consulta de Access que añade registros de una tabla a otra existente es:','["Consulta de datos anexados", "Consulta de actualización", "Consulta de referencias cruzadas", "Consulta de creación de tabla"]'::jsonb,0,'Access · Consultas','La de creación de tabla crea una tabla nueva.',null),
('admin-navarra:27-ad4c5a5c9d','admin-navarra',27,'En Access, cada fila de una tabla se denomina:','["Consulta", "Formulario", "Registro", "Campo"]'::jsonb,2,'Access · Tablas','Cada columna es un campo.',null),
('admin-navarra:27-bca7331dd8','admin-navarra',27,'La relación más habitual entre dos tablas de Access es:','["Varios a varios directa", "Uno a varios", "Uno a ninguno", "Todos con todos"]'::jsonb,1,'Access · Relaciones','Una relación varios a varios se resuelve con una tabla intermedia.',null),
('admin-navarra:27-9fbc8f1e00','admin-navarra',27,'La asociación lógica entre campos comunes de dos tablas de Access se llama:','["Relación", "Registro", "Formulario", "Informe"]'::jsonb,0,'Access · Relaciones','Se gestiona desde Herramientas de base de datos > Relaciones.',null),
('admin-navarra:27-bcd0854bcb','admin-navarra',27,'En Access, la Vista Presentación de un informe permite, a diferencia de la Vista Informe:','["Imprimir sin vista preliminar", "Exportar el informe a PDF o a Excel sin abrir la vista preliminar", "Modificar el diseño mientras se ven los datos reales", "Cambiar las tablas y consultas de origen del informe abierto"]'::jsonb,2,'Access · Informes','La Vista Diseño muestra la estructura sin datos reales.',null),
('admin-navarra:27-3c772374af','admin-navarra',27,'La opción «Guardar pasos de importación» de Access sirve para:','["Exportar los datos al origen", "Convertir la tabla en vinculada", "Deshacer la importación y restaurar la tabla al estado anterior a la operación", "Guardar la configuración para repetir la misma importación más adelante"]'::jsonb,3,'Access · Datos externos','Las importaciones guardadas se pueden volver a ejecutar.',null),
('admin-navarra:27-07c0fd63b2','admin-navarra',27,'En una consulta de actualización de Access, el nuevo valor que se quiere asignar se escribe en la fila:','["Actualizar a", "Criterios de actualización", "Total o Criterios", "Orden"]'::jsonb,0,'Access · Consultas','La fila Criterios indica qué registros se actualizan.',null),
('admin-navarra:27-938a56825f','admin-navarra',27,'¿Cuántas bases de datos puede tener abiertas a la vez una misma instancia (ventana) de Access?','["Las que permita la memoria", "Cuatro", "Una", "Tres"]'::jsonb,2,'Access · Conceptos','Para trabajar con otra a la vez hay que abrir otra instancia de Access.',null),
('admin-navarra:27-144c17d6d2','admin-navarra',27,'Si intentas eliminar un registro de la tabla principal que tiene registros relacionados, con integridad referencial exigida y sin eliminación en cascada:','["Se eliminan también los relacionados", "Access impide la eliminación y muestra un mensaje", "Se elimina y la clave externa de los relacionados queda vacía", "Se elimina sin aviso junto con los registros relacionados"]'::jsonb,1,'Access · Relaciones','Con eliminación en cascada sí se borrarían los relacionados.',null),
('admin-navarra:27-bcd02186d2','admin-navarra',27,'En Access, Formato, Título, Máscara de entrada y Valor predeterminado son:','["Objetos de la base de datos", "Vistas de un formulario", "Tipos de consulta", "Propiedades de un campo"]'::jsonb,3,'Access · Tablas','Se configuran en la Vista Diseño de la tabla.',null),
('admin-navarra:27-03aab0e979','admin-navarra',27,'«Importar datos» en Access significa:','["Vincular una tabla externa sin copiar sus datos en la base de datos, de modo que siga en Excel o en el archivo de texto", "Traer a la base de datos datos procedentes de un origen externo, como Excel o un archivo de texto", "Proteger los datos contra escritura", "Exportar los datos de la base de datos a un archivo externo, como Excel o un archivo de texto, para enviarlos"]'::jsonb,1,'Access · Datos externos','También se pueden vincular datos sin copiarlos.',null),
('admin-navarra:27-b942cb3f63','admin-navarra',27,'En Access, un campo es:','["Una información concreta de cada registro, como el nombre o el correo", "Una fila completa de la tabla con todos los datos de un mismo elemento", "Una consulta guardada", "Un formulario con los datos de un registro concreto de la tabla abierta"]'::jsonb,0,'Access · Tablas','Cada columna de la tabla es un campo.',null),
('admin-navarra:28-51fbe29cd5','admin-navarra',28,'¿Qué número continúa la serie? 8, 20, 32, 44, 56, …','["80", "70", "66", "68"]'::jsonb,3,'Psicotécnicos','Cada término suma 12 al anterior: 56 + 12 = 68.',null),
('admin-navarra:28-5fe23f8b3d','admin-navarra',28,'¿Qué número continúa la serie? 27, 33, 39, 45, 51, …','["57", "51", "55", "58"]'::jsonb,0,'Psicotécnicos','Cada término suma 6 al anterior: 51 + 6 = 57.',null),
('admin-navarra:28-431ea630b0','admin-navarra',28,'¿Qué número continúa la serie? 23, 31, 39, 47, 55, …','["71", "72", "63", "65"]'::jsonb,2,'Psicotécnicos','Cada término suma 8 al anterior: 55 + 8 = 63.',null),
('admin-navarra:28-0f30278324','admin-navarra',28,'¿Qué número continúa la serie? 12, 21, 30, 39, 48, …','["59", "48", "55", "57"]'::jsonb,3,'Psicotécnicos','Cada término suma 9 al anterior: 48 + 9 = 57.',null),
('admin-navarra:28-9db9088977','admin-navarra',28,'¿Qué número continúa la serie? 12, 24, 36, 48, 60, …','["72", "84", "74", "73"]'::jsonb,0,'Psicotécnicos','Cada término suma 12 al anterior: 60 + 12 = 72.',null),
('admin-navarra:28-6beedbe99d','admin-navarra',28,'¿Qué número continúa la serie? 22, 34, 46, 58, 70, …','["82", "94", "83", "80"]'::jsonb,0,'Psicotécnicos','Cada término suma 12 al anterior: 70 + 12 = 82.',null),
('admin-navarra:28-d8de888f4b','admin-navarra',28,'¿Qué número continúa la serie? 38, 42, 46, 50, 54, …','["60", "56", "58", "59"]'::jsonb,2,'Psicotécnicos','Cada término suma 4 al anterior: 54 + 4 = 58.',null),
('admin-navarra:28-fb7ae6235b','admin-navarra',28,'¿Qué número continúa la serie? 6, 18, 30, 42, 54, …','["65", "64", "66", "67"]'::jsonb,2,'Psicotécnicos','Cada término suma 12 al anterior: 54 + 12 = 66.',null),
('admin-navarra:28-5bde7fc118','admin-navarra',28,'¿Qué número continúa la serie? 36, 39, 42, 45, 48, …','["50", "51", "55", "52"]'::jsonb,1,'Psicotécnicos','Cada término suma 3 al anterior: 48 + 3 = 51.',null),
('admin-navarra:28-4ace178cf8','admin-navarra',28,'¿Qué número continúa la serie? 2, 8, 14, 20, 26, …','["32", "30", "33", "38"]'::jsonb,0,'Psicotécnicos','Cada término suma 6 al anterior: 26 + 6 = 32.',null),
('admin-navarra:28-2561560504','admin-navarra',28,'¿Qué número continúa la serie? 34, 45, 56, 67, 78, …','["78", "91", "89", "88"]'::jsonb,2,'Psicotécnicos','Cada término suma 11 al anterior: 78 + 11 = 89.',null),
('admin-navarra:28-4b32c4aaaa','admin-navarra',28,'¿Qué número continúa la serie? 2, 6, 18, 54, 162, …','["486", "405", "483", "648"]'::jsonb,0,'Psicotécnicos','Cada término se multiplica por 3: 162 × 3 = 486.',null),
('admin-navarra:28-7604f47895','admin-navarra',28,'¿Qué número continúa la serie? 4, 12, 36, 108, 324, …','["969", "1.296", "975", "972"]'::jsonb,3,'Psicotécnicos','Cada término se multiplica por 3: 324 × 3 = 972.',null),
('admin-navarra:28-5507183533','admin-navarra',28,'¿Qué número continúa la serie? 2, 4, 8, 16, 32, …','["62", "48", "66", "64"]'::jsonb,3,'Psicotécnicos','Cada término se multiplica por 2: 32 × 2 = 64.',null),
('admin-navarra:28-30b33e6190','admin-navarra',28,'¿Qué número continúa la serie? 4, 8, 16, 32, 64, …','["126", "96", "128", "192"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 2: 64 × 2 = 128.',null),
('admin-navarra:28-4be880c1e7','admin-navarra',28,'¿Qué número continúa la serie? 3, 9, 27, 81, 243, …','["726", "608", "729", "972"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 3: 243 × 3 = 729.',null),
('admin-navarra:28-c37c15b870','admin-navarra',28,'¿Qué número continúa la serie? 5, 15, 45, 135, 405, …','["1.212", "1.218", "1.215", "1.013"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 3: 405 × 3 = 1.215.',null),
('admin-navarra:28-7c214611ff','admin-navarra',28,'¿Qué número continúa la serie? 15, 17, 22, 30, 41, 55, …','["73", "66", "69", "72"]'::jsonb,3,'Psicotécnicos','Las diferencias entre términos aumentan de 3 en 3 (2, 5, 8, 11, 14…); la siguiente diferencia es 17: 55 + 17 = 72.',null),
('admin-navarra:28-3d7fa122a6','admin-navarra',28,'¿Qué número continúa la serie? 7, 10, 15, 22, 31, 42, …','["55", "51", "54", "53"]'::jsonb,0,'Psicotécnicos','Las diferencias entre términos aumentan de 2 en 2 (3, 5, 7, 9, 11…); la siguiente diferencia es 13: 42 + 13 = 55.',null),
('admin-navarra:28-7e76fa1c9e','admin-navarra',28,'¿Qué número continúa la serie? 9, 11, 14, 18, 23, 29, …','["37", "36", "38", "34"]'::jsonb,1,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (2, 3, 4, 5, 6…); la siguiente diferencia es 7: 29 + 7 = 36.',null),
('admin-navarra:28-d30b1e3e2c','admin-navarra',28,'¿Qué número continúa la serie? 14, 15, 17, 20, 24, 29, …','["37", "36", "35", "34"]'::jsonb,2,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (1, 2, 3, 4, 5…); la siguiente diferencia es 6: 29 + 6 = 35.',null),
('admin-navarra:28-12c4a7c06c','admin-navarra',28,'¿Qué número continúa la serie? 1, 5, 12, 22, 35, 51, …','["71", "64", "70", "67"]'::jsonb,2,'Psicotécnicos','Las diferencias entre términos aumentan de 3 en 3 (4, 7, 10, 13, 16…); la siguiente diferencia es 19: 51 + 19 = 70.',null),
('admin-navarra:28-ae1b8f1fee','admin-navarra',28,'¿Qué número continúa la serie? 18, 22, 27, 33, 40, 48, …','["59", "55", "58", "57"]'::jsonb,3,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (4, 5, 6, 7, 8…); la siguiente diferencia es 9: 48 + 9 = 57.',null),
('admin-navarra:28-d33fa72d25','admin-navarra',28,'¿Qué número continúa la serie? 5, 24, 8, 27, 11, 30, 14, …','["17", "33", "34", "36"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +3 cada vez (24, 27, 30…), así que el siguiente es 33.',null),
('admin-navarra:28-d59439ec0b','admin-navarra',28,'¿Qué número continúa la serie? 3, 25, 6, 27, 9, 29, 12, …','["33", "31", "29", "15"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +2 cada vez (25, 27, 29…), así que el siguiente es 31.',null),
('admin-navarra:28-0b75c523f0','admin-navarra',28,'¿Qué número continúa la serie? 12, 23, 15, 20, 18, 17, 21, …','["17", "11", "14", "24"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (23, 20, 17…), así que el siguiente es 14.',null),
('admin-navarra:28-5f8f8cab77','admin-navarra',28,'¿Qué número continúa la serie? 4, 31, 8, 28, 12, 25, 16, …','["20", "21", "22", "25"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (31, 28, 25…), así que el siguiente es 22.',null),
('admin-navarra:28-a512e41c66','admin-navarra',28,'¿Qué número continúa la serie? 2, 41, 5, 38, 8, 35, 11, …','["35", "31", "14", "32"]'::jsonb,3,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (41, 38, 35…), así que el siguiente es 32.',null),
('admin-navarra:28-e2b3063d41','admin-navarra',28,'¿Qué número continúa la serie? 13, 53, 16, 56, 19, 59, 22, …','["61", "62", "59", "65"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +3 cada vez (53, 56, 59…), así que el siguiente es 62.',null),
('admin-navarra:28-d436835133','admin-navarra',28,'¿Qué número continúa la serie? 4, 10, 22, 46, 94, …','["195", "190", "191", "192"]'::jsonb,1,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 2: 94 × 2 + 2 = 190.',null),
('admin-navarra:28-d095fbf4fb','admin-navarra',28,'¿Qué número continúa la serie? 2, 5, 11, 23, 47, …','["97", "96", "98", "95"]'::jsonb,3,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 1: 47 × 2 + 1 = 95.',null),
('admin-navarra:28-eb7aa1b0da','admin-navarra',28,'¿Qué número continúa la serie? 2, 6, 14, 30, 62, …','["126", "128", "124", "131"]'::jsonb,0,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 2: 62 × 2 + 2 = 126.',null),
('admin-navarra:28-1a759ddc13','admin-navarra',28,'¿Qué número continúa la serie? 4, 11, 25, 53, 109, …','["219", "221", "222", "218"]'::jsonb,1,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 3: 109 × 2 + 3 = 221.',null),
('admin-navarra:28-af975c3225','admin-navarra',28,'¿Qué número continúa la serie? 9, 16, 25, 36, 49, …','["63", "67", "64", "62"]'::jsonb,2,'Psicotécnicos','Son los cuadrados de números consecutivos: 8² = 64.',null),
('admin-navarra:28-c153b697db','admin-navarra',28,'¿Qué número continúa la serie? 15, 24, 35, 48, 63, …','["78", "80", "63", "81"]'::jsonb,1,'Psicotécnicos','Son los cuadrados menos 1 de números consecutivos: 9² − 1 = 80.',null),
('admin-navarra:28-f0c47c976e','admin-navarra',28,'¿Qué número continúa la serie? 1, 4, 9, 16, 25, …','["39", "25", "36", "37"]'::jsonb,2,'Psicotécnicos','Son los cuadrados de números consecutivos: 6² = 36.',null),
('admin-navarra:28-79e926a2f0','admin-navarra',28,'¿Qué número continúa la serie? 11, 18, 27, 38, 51, …','["65", "69", "66", "64"]'::jsonb,2,'Psicotécnicos','Son los cuadrados más 2 de números consecutivos: 8² + 2 = 66.',null),
('admin-navarra:28-6466b06aaf','admin-navarra',28,'¿Qué número continúa la serie? 3, 7, 10, 17, 27, 44, 71, …','["142", "113", "115", "114"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 44 + 71 = 115.',null),
('admin-navarra:28-b4697b1613','admin-navarra',28,'¿Qué número continúa la serie? 3, 2, 5, 7, 12, 19, 31, …','["62", "48", "50", "51"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 19 + 31 = 50.',null),
('admin-navarra:28-6dfc34b56a','admin-navarra',28,'¿Qué número continúa la serie? 4, 5, 9, 14, 23, 37, 60, …','["96", "98", "97", "120"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 37 + 60 = 97.',null),
('admin-navarra:28-3f2d3465e1','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, F, I, L, Ñ, …','["Q", "R", "T", "O"]'::jsonb,0,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la Ñ viene la Q. Recuerda contar la Ñ.',null),
('admin-navarra:28-a876e839d2','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? K, N, P, S, V, …','["X", "Z", "A", "Y"]'::jsonb,3,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la V viene la Y. Recuerda contar la Ñ.',null),
('admin-navarra:28-8a56836d2c','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? A, C, E, G, I, …','["J", "I", "M", "K"]'::jsonb,3,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la I viene la K. Recuerda contar la Ñ.',null),
('admin-navarra:28-926afc3d93','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, F, J, N, Q, …','["Y", "S", "U", "V"]'::jsonb,2,'Psicotécnicos','Se avanza de 4 en 4 letras (saltando 3): tras la Q viene la U. Recuerda contar la Ñ.',null),
('admin-navarra:28-741d99ee35','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? K, M, Ñ, P, R, …','["T", "R", "S", "V"]'::jsonb,0,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la R viene la T. Recuerda contar la Ñ.',null),
('admin-navarra:28-a32f438e07','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? E, I, M, P, T, …','["Y", "Z", "X", "W"]'::jsonb,2,'Psicotécnicos','Se avanza de 4 en 4 letras (saltando 3): tras la T viene la X. Recuerda contar la Ñ.',null),
('admin-navarra:28-b14ef0aa25','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? G, I, K, M, Ñ, …','["Q", "O", "Ñ", "P"]'::jsonb,3,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la Ñ viene la P. Recuerda contar la Ñ.',null),
('admin-navarra:28-706679ecbd','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, I, L, Ñ, Q, …','["T", "S", "V", "U"]'::jsonb,0,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la Q viene la T. Recuerda contar la Ñ.',null),
('admin-navarra:28-10ddfce910','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? H, K, N, P, S, …','["T", "Y", "V", "U"]'::jsonb,2,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la S viene la V. Recuerda contar la Ñ.',null),
('admin-navarra:28-27d779a432','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, E, G, I, K, …','["M", "Ñ", "K", "N"]'::jsonb,0,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la K viene la M. Recuerda contar la Ñ.',null),
('admin-navarra:28-dc9fce63c3','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, E, H, K, N, …','["S", "P", "Ñ", "O"]'::jsonb,1,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la N viene la P. Recuerda contar la Ñ.',null),
('admin-navarra:28-e57796b49e','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, Y, G, W, H, U, …','["H", "S", "I", "J"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la Y. Toca la primera: I.',null),
('admin-navarra:28-04d41718ba','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, T, E, S, G, R, …','["H", "J", "Q", "I"]'::jsonb,3,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la C (C, E, G…) y otra retrocede 1 desde la T. Toca la primera: I.',null),
('admin-navarra:28-e701503d64','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, S, G, Q, H, O, …','["I", "H", "N", "J"]'::jsonb,0,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la S. Toca la primera: I.',null),
('admin-navarra:28-e06e59db88','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, Z, G, X, H, V, …','["H", "T", "I", "J"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la Z. Toca la primera: I.',null),
('admin-navarra:28-e1583d3b12','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, X, F, V, H, T, …','["J", "K", "L", "I"]'::jsonb,0,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la D (D, F, H…) y otra retrocede 2 desde la X. Toca la primera: J.',null),
('admin-navarra:28-4dd60ec891','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, T, D, S, F, R, …','["G", "H", "J", "Q"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la B (B, D, F…) y otra retrocede 1 desde la T. Toca la primera: H.',null),
('admin-navarra:28-d33b212780','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, Y, F, W, H, U, …','["S", "K", "J", "I"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la D (D, F, H…) y otra retrocede 2 desde la Y. Toca la primera: J.',null),
('admin-navarra:28-2ab5034f08','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? G, Y, H, X, I, W, …','["I", "J", "K", "V"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la G (G, H, I…) y otra retrocede 1 desde la Y. Toca la primera: J.',null),
('admin-navarra:28-dc8f23f9f5','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, S, E, Q, F, O, …','["H", "G", "F", "N"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la D (D, E, F…) y otra retrocede 2 desde la S. Toca la primera: G.',null),
('admin-navarra:28-d58d2f8979','admin-navarra',28,'¿Cuánto es el 35 % de 160?','["52", "56", "51,2", "64"]'::jsonb,1,'Psicotécnicos','160 × 35 / 100 = 56.',null),
('admin-navarra:28-b3b0a7197f','admin-navarra',28,'¿Cuánto es el 25 % de 160?','["35,2", "40", "48", "36"]'::jsonb,1,'Psicotécnicos','160 × 25 / 100 = 40.',null),
('admin-navarra:28-6af9e0b542','admin-navarra',28,'¿Cuánto es el 18 % de 640?','["115,2", "96", "99,2", "147,2"]'::jsonb,0,'Psicotécnicos','640 × 18 / 100 = 115,2.',null),
('admin-navarra:28-82707d4080','admin-navarra',28,'¿Cuánto es el 25 % de 720?','["216", "180", "162", "158,4"]'::jsonb,1,'Psicotécnicos','720 × 25 / 100 = 180.',null),
('admin-navarra:28-5faa0b8824','admin-navarra',28,'¿Cuánto es el 12 % de 240?','["28,8", "22,8", "21,6", "40,8"]'::jsonb,0,'Psicotécnicos','240 × 12 / 100 = 28,8.',null),
('admin-navarra:28-44b8896a17','admin-navarra',28,'¿Cuánto es el 35 % de 240?','["76,8", "78", "96", "84"]'::jsonb,3,'Psicotécnicos','240 × 35 / 100 = 84.',null),
('admin-navarra:28-e11c1d1a5b','admin-navarra',28,'¿Cuánto es el 5 % de 420?','["42", "21", "11", "8,4"]'::jsonb,1,'Psicotécnicos','420 × 5 / 100 = 21.',null),
('admin-navarra:28-3e10188301','admin-navarra',28,'¿Cuánto es el 25 % de 80?','["24", "20", "18", "17,6"]'::jsonb,1,'Psicotécnicos','80 × 25 / 100 = 20.',null),
('admin-navarra:28-04dc75bd84','admin-navarra',28,'¿Cuánto es el 40 % de 480?','["180", "177,6", "216", "192"]'::jsonb,3,'Psicotécnicos','480 × 40 / 100 = 192.',null),
('admin-navarra:28-433a31554a','admin-navarra',28,'¿Cuánto es el 35 % de 420?','["168", "134,4", "147", "137"]'::jsonb,2,'Psicotécnicos','420 × 35 / 100 = 147.',null),
('admin-navarra:28-34906776f5','admin-navarra',28,'Un producto cuesta 120 €. Si su precio sube un 30 %, ¿cuál es el nuevo precio?','["161 €", "84 €", "153 €", "156 €"]'::jsonb,3,'Psicotécnicos','120 × 1,30 = 156 €.',null),
('admin-navarra:28-adce75d767','admin-navarra',28,'Un producto cuesta 200 €. Si su precio baja un 25 %, ¿cuál es el nuevo precio?','["155 €", "150 €", "147 €", "250 €"]'::jsonb,1,'Psicotécnicos','200 × 0,75 = 150 €.',null),
('admin-navarra:28-71e57891ca','admin-navarra',28,'Un producto cuesta 200 €. Si su precio baja un 20 %, ¿cuál es el nuevo precio?','["160 €", "157 €", "165 €", "240 €"]'::jsonb,0,'Psicotécnicos','200 × 0,80 = 160 €.',null),
('admin-navarra:28-f5870fc3e0','admin-navarra',28,'Un producto cuesta 150 €. Si su precio sube un 20 %, ¿cuál es el nuevo precio?','["177 €", "120 €", "185 €", "180 €"]'::jsonb,3,'Psicotécnicos','150 × 1,20 = 180 €.',null),
('admin-navarra:28-6886f2eb34','admin-navarra',28,'En una oficina hay 400 expedientes y se han resuelto 240. ¿Qué porcentaje se ha resuelto?','["60 %", "55 %", "70 %", "65 %"]'::jsonb,0,'Psicotécnicos','240 / 400 × 100 = 60 %.',null),
('admin-navarra:28-cf7fc207de','admin-navarra',28,'En una oficina hay 50 expedientes y se han resuelto 20. ¿Qué porcentaje se ha resuelto?','["35 %", "45 %", "40 %", "50 %"]'::jsonb,2,'Psicotécnicos','20 / 50 × 100 = 40 %.',null),
('admin-navarra:28-9b2aba5f7a','admin-navarra',28,'En una oficina hay 400 expedientes y se han resuelto 80. ¿Qué porcentaje se ha resuelto?','["20 %", "15 %", "30 %", "25 %"]'::jsonb,0,'Psicotécnicos','80 / 400 × 100 = 20 %.',null),
('admin-navarra:28-df9c47e4c9','admin-navarra',28,'En una oficina hay 50 expedientes y se han resuelto 15. ¿Qué porcentaje se ha resuelto?','["25 %", "35 %", "40 %", "30 %"]'::jsonb,3,'Psicotécnicos','15 / 50 × 100 = 30 %.',null),
('admin-navarra:28-56fa38fa12','admin-navarra',28,'En una oficina hay 80 expedientes y se han resuelto 16. ¿Qué porcentaje se ha resuelto?','["15 %", "30 %", "20 %", "25 %"]'::jsonb,2,'Psicotécnicos','16 / 80 × 100 = 20 %.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('admin-navarra:28-595d025e96','admin-navarra',28,'Si 4 cuadernos cuestan 24 €, ¿cuánto cuestan 10 cuadernos?','["62 €", "66 €", "60 €", "54 €"]'::jsonb,2,'Psicotécnicos','Cada cuaderno cuesta 6 €; 10 × 6 = 60 €.',null),
('admin-navarra:28-1375e55c88','admin-navarra',28,'Si 3 cuadernos cuestan 12 €, ¿cuánto cuestan 9 cuadernos?','["36 €", "38 €", "32 €", "40 €"]'::jsonb,0,'Psicotécnicos','Cada cuaderno cuesta 4 €; 9 × 4 = 36 €.',null),
('admin-navarra:28-e41858b866','admin-navarra',28,'Si 3 cuadernos cuestan 12 €, ¿cuánto cuestan 12 cuadernos?','["50 €", "52 €", "48 €", "44 €"]'::jsonb,2,'Psicotécnicos','Cada cuaderno cuesta 4 €; 12 × 4 = 48 €.',null),
('admin-navarra:28-8c66908d6d','admin-navarra',28,'6 personas tardan 10 días en tramitar unos expedientes. Al mismo ritmo, ¿cuántos días tardarían 4 personas?','["17 días", "14 días", "18 días", "15 días"]'::jsonb,3,'Psicotécnicos','Es una proporción inversa: 6 × 10 = 60 días-persona; 60 / 4 = 15 días.',null),
('admin-navarra:28-987fcee4e7','admin-navarra',28,'Un vehículo circula a velocidad constante de 60 km/h. ¿Qué distancia recorre en 2 horas?','["140 km", "150 km", "120 km", "105 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 60 × 2 = 120 km.',null),
('admin-navarra:28-2c8a202646','admin-navarra',28,'Un vehículo circula a velocidad constante de 90 km/h. ¿Qué distancia recorre en 3 horas?','["315 km", "270 km", "248 km", "300 km"]'::jsonb,1,'Psicotécnicos','Distancia = velocidad × tiempo = 90 × 3 = 270 km.',null),
('admin-navarra:28-de6feb616d','admin-navarra',28,'Un vehículo circula a velocidad constante de 72 km/h. ¿Qué distancia recorre en 3 horas?','["216 km", "252 km", "198 km", "240 km"]'::jsonb,0,'Psicotécnicos','Distancia = velocidad × tiempo = 72 × 3 = 216 km.',null),
('admin-navarra:28-a027a9fdf4','admin-navarra',28,'Un vehículo circula a velocidad constante de 100 km/h. ¿Qué distancia recorre en 2 horas?','["233 km", "250 km", "200 km", "175 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 100 × 2 = 200 km.',null),
('admin-navarra:28-426bd2535b','admin-navarra',28,'Un vehículo circula a velocidad constante de 80 km/h. ¿Qué distancia recorre en 2 horas?','["200 km", "140 km", "160 km", "186 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 80 × 2 = 160 km.',null),
('admin-navarra:28-b4f8acb964','admin-navarra',28,'Un padre tiene 3 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 5 años?','["41 años", "51 años", "36 años", "43 años"]'::jsonb,0,'Psicotécnicos','Hoy el padre tiene 12 × 3 = 36 años; dentro de 5 años tendrá 41.',null),
('admin-navarra:28-be07995649','admin-navarra',28,'Un padre tiene 4 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 12 años?','["48 años", "96 años", "60 años", "62 años"]'::jsonb,2,'Psicotécnicos','Hoy el padre tiene 12 × 4 = 48 años; dentro de 12 años tendrá 60.',null),
('admin-navarra:28-377f818029','admin-navarra',28,'Un padre tiene 3 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 10 años?','["66 años", "36 años", "48 años", "46 años"]'::jsonb,3,'Psicotécnicos','Hoy el padre tiene 12 × 3 = 36 años; dentro de 10 años tendrá 46.',null),
('admin-navarra:28-596120de8b','admin-navarra',28,'Un padre tiene 4 veces la edad de su hijo, que tiene 8 años. ¿Cuántos años tendrá el padre dentro de 10 años?','["44 años", "42 años", "32 años", "72 años"]'::jsonb,1,'Psicotécnicos','Hoy el padre tiene 8 × 4 = 32 años; dentro de 10 años tendrá 42.',null),
('admin-navarra:28-d44e437811','admin-navarra',28,'Un opositor obtiene en cuatro simulacros estas notas: 5, 9, 4, 6. ¿Cuál es su nota media?','["5", "7", "8", "6"]'::jsonb,3,'Psicotécnicos','(5 + 9 + 4 + 6) / 4 = 24 / 4 = 6.',null),
('admin-navarra:28-16192e4a9e','admin-navarra',28,'Un opositor obtiene en cuatro simulacros estas notas: 4, 4, 4, 4. ¿Cuál es su nota media?','["5", "4", "5,33", "3"]'::jsonb,1,'Psicotécnicos','(4 + 4 + 4 + 4) / 4 = 16 / 4 = 4.',null),
('admin-navarra:28-7db79b7fc8','admin-navarra',28,'Un opositor obtiene en cuatro simulacros estas notas: 9, 5, 5, 9. ¿Cuál es su nota media?','["6", "9,33", "8", "7"]'::jsonb,3,'Psicotécnicos','(9 + 5 + 5 + 9) / 4 = 28 / 4 = 7.',null),
('admin-navarra:28-d2f79cd1d0','admin-navarra',28,'Un opositor obtiene en cuatro simulacros estas notas: 9, 8, 5, 10. ¿Cuál es su nota media?','["8", "7", "10,67", "9"]'::jsonb,0,'Psicotécnicos','(9 + 8 + 5 + 10) / 4 = 32 / 4 = 8.',null),
('admin-navarra:28-54f72f83aa','admin-navarra',28,'¿Cuánto son los 4/5 de 40?','["32", "24", "50", "40"]'::jsonb,0,'Psicotécnicos','40 / 5 × 4 = 32.',null),
('admin-navarra:28-a63935399c','admin-navarra',28,'¿Cuánto son los 3/4 de 76?','["57", "76", "60", "38"]'::jsonb,0,'Psicotécnicos','76 / 4 × 3 = 57.',null),
('admin-navarra:28-372eb47e3e','admin-navarra',28,'¿Cuánto son los 4/5 de 135?','["112", "108", "81", "135"]'::jsonb,1,'Psicotécnicos','135 / 5 × 4 = 108.',null),
('admin-navarra:28-49f68cf183','admin-navarra',28,'¿Cuánto son los 3/5 de 40?','["24", "27", "32", "16"]'::jsonb,0,'Psicotécnicos','40 / 5 × 3 = 24.',null),
('admin-navarra:28-1dac65c5cd','admin-navarra',28,'¿Cuánto son los 2/3 de 48?','["72", "16", "48", "32"]'::jsonb,3,'Psicotécnicos','48 / 3 × 2 = 32.',null),
('admin-navarra:28-242b587fb1','admin-navarra',28,'¿Cuánto son los 3/4 de 120?','["120", "90", "60", "160"]'::jsonb,1,'Psicotécnicos','120 / 4 × 3 = 90.',null),
('admin-navarra:28-675ea298c0','admin-navarra',28,'¿Cuál es el resultado de 48 × 24?','["1.128", "1.200", "1.162", "1.152"]'::jsonb,3,'Psicotécnicos','48 × 24 = 1.152.',null),
('admin-navarra:28-ba5a6f87b0','admin-navarra',28,'¿Cuál es el resultado de 99 × 32?','["3.168", "3.136", "3.267", "3.178"]'::jsonb,0,'Psicotécnicos','99 × 32 = 3.168.',null),
('admin-navarra:28-901e647b84','admin-navarra',28,'¿Cuál es el resultado de 125 × 16?','["1.984", "2.125", "2.010", "2.000"]'::jsonb,3,'Psicotécnicos','125 × 16 = 2.000.',null),
('admin-navarra:28-dbcb37d26b','admin-navarra',28,'¿Cuál es el resultado de 125 × 44?','["5.510", "5.456", "5.500", "5.625"]'::jsonb,2,'Psicotécnicos','125 × 44 = 5.500.',null),
('admin-navarra:28-82e20950ad','admin-navarra',28,'¿Cuál es el resultado de 75 × 24?','["1.875", "1.776", "1.800", "1.810"]'::jsonb,2,'Psicotécnicos','75 × 24 = 1.800.',null),
('admin-navarra:28-f42f9bcc57','admin-navarra',28,'¿Cuál es el resultado de 99 × 44?','["4.366", "4.312", "4.455", "4.356"]'::jsonb,3,'Psicotécnicos','99 × 44 = 4.356.',null),
('admin-navarra:28-7e8c122e7c','admin-navarra',28,'¿Cuál es la raíz cuadrada de 576?','["25", "23", "26", "24"]'::jsonb,3,'Psicotécnicos','24 × 24 = 576.',null),
('admin-navarra:28-d52e57931f','admin-navarra',28,'¿Cuál es la raíz cuadrada de 841?','["28", "31", "29", "30"]'::jsonb,2,'Psicotécnicos','29 × 29 = 841.',null),
('admin-navarra:28-4a5ad892bd','admin-navarra',28,'¿Cuál es la raíz cuadrada de 144?','["12", "11", "13", "14"]'::jsonb,0,'Psicotécnicos','12 × 12 = 144.',null),
('admin-navarra:28-f9e0df5d96','admin-navarra',28,'Calcula: 5 × 2 + 17 − 3 × 2','["23", "48", "89", "21"]'::jsonb,3,'Psicotécnicos','Primero las multiplicaciones: 10 + 17 − 6 = 21.',null),
('admin-navarra:28-989d3f261f','admin-navarra',28,'Calcula: 8 × 7 + 17 − 6 × 2','["61", "134", "63", "180"]'::jsonb,0,'Psicotécnicos','Primero las multiplicaciones: 56 + 17 − 12 = 61.',null),
('admin-navarra:28-a496ccfb91','admin-navarra',28,'Calcula: 7 × 4 + 15 − 4 × 2','["37", "125", "35", "78"]'::jsonb,2,'Psicotécnicos','Primero las multiplicaciones: 28 + 15 − 8 = 35.',null),
('admin-navarra:28-88a65fc91b','admin-navarra',28,'Calcula: 5 × 9 + 11 − 3 × 2','["94", "50", "106", "52"]'::jsonb,1,'Psicotécnicos','Primero las multiplicaciones: 45 + 11 − 6 = 50.',null),
('admin-navarra:28-20a23cafcd','admin-navarra',28,'Señala el sinónimo de «efímero»:','["Pasajero", "Esencial", "Eficaz", "Duradero"]'::jsonb,0,'Psicotécnicos','Efímero es lo que dura poco: pasajero, fugaz.',null),
('admin-navarra:28-323f0be97d','admin-navarra',28,'Señala el sinónimo de «exhaustivo»:','["Superficial", "Minucioso", "Agotado", "Excesivo"]'::jsonb,1,'Psicotécnicos','Exhaustivo es lo que se hace con todo detalle.',null),
('admin-navarra:28-0a0f9109f7','admin-navarra',28,'Señala el sinónimo de «inherente»:','["Accesorio", "Heredado", "Consustancial", "Inerte"]'::jsonb,2,'Psicotécnicos','Inherente es lo que por su naturaleza está unido a algo.',null),
('admin-navarra:28-723ac5fb00','admin-navarra',28,'Señala el sinónimo de «diligente»:','["Lento", "Directivo", "Delicado", "Cuidadoso"]'::jsonb,3,'Psicotécnicos','Diligente es quien actúa con cuidado, prontitud y esmero.',null),
('admin-navarra:28-03e3d4a0ea','admin-navarra',28,'Señala el sinónimo de «prolijo»:','["Prolífico", "Extenso", "Breve", "Limpio"]'::jsonb,1,'Psicotécnicos','Prolijo significa largo, dilatado en exceso. Prolífico es «que produce mucho».',null),
('admin-navarra:28-1d753f19b7','admin-navarra',28,'Señala el sinónimo de «subsanar»:','["Corregir", "Sanear", "Sustituir", "Suspender"]'::jsonb,0,'Psicotécnicos','Subsanar es reparar o remediar un defecto.',null),
('admin-navarra:28-5e26faf336','admin-navarra',28,'Señala el sinónimo de «perentorio»:','["Urgente", "Aplazable", "Perpetuo", "Pertinente"]'::jsonb,0,'Psicotécnicos','Perentorio es lo urgente o apremiante.',null),
('admin-navarra:28-a4145f92cd','admin-navarra',28,'Señala el sinónimo de «ecuánime»:','["Arbitrario", "Imparcial", "Equivalente", "Unánime"]'::jsonb,1,'Psicotécnicos','Ecuánime es quien actúa con equidad e imparcialidad.',null),
('admin-navarra:28-720e76cb01','admin-navarra',28,'Señala el sinónimo de «exiguo»:','["Exigente", "Escaso", "Abundante", "Excesivo"]'::jsonb,1,'Psicotécnicos','Exiguo es insuficiente, escaso.',null),
('admin-navarra:28-a63707c560','admin-navarra',28,'Señala el sinónimo de «dilucidar»:','["Dilatar", "Diluir", "Aclarar", "Complicar"]'::jsonb,2,'Psicotécnicos','Dilucidar es aclarar y explicar un asunto.',null),
('admin-navarra:28-d342672910','admin-navarra',28,'Señala el antónimo de «prolijo»:','["Conciso", "Extenso", "Detallado", "Minucioso"]'::jsonb,0,'Psicotécnicos','Lo contrario de prolijo (largo, excesivo) es conciso o breve.',null),
('admin-navarra:28-9bf6cd9f3a','admin-navarra',28,'Señala el antónimo de «escaso»:','["Limitado", "Insuficiente", "Exiguo", "Abundante"]'::jsonb,3,'Psicotécnicos','Las otras tres palabras son sinónimos de escaso.',null),
('admin-navarra:28-2f8613bf03','admin-navarra',28,'Señala el antónimo de «efímero»:','["Breve", "Fugaz", "Transitorio", "Perdurable"]'::jsonb,3,'Psicotécnicos','Las otras tres palabras son sinónimos de efímero.',null),
('admin-navarra:28-1030baa436','admin-navarra',28,'Señala el antónimo de «diáfano»:','["Claro", "Nítido", "Transparente", "Opaco"]'::jsonb,3,'Psicotécnicos','Diáfano es claro o transparente; su contrario es opaco.',null),
('admin-navarra:28-359aa8c141','admin-navarra',28,'Señala el antónimo de «sosegado»:','["Sereno", "Inquieto", "Tranquilo", "Calmado"]'::jsonb,1,'Psicotécnicos','Sosegado es tranquilo; su contrario es inquieto.',null),
('admin-navarra:28-21a104fab0','admin-navarra',28,'Señala el antónimo de «pródigo»:','["Tacaño", "Espléndido", "Generoso", "Derrochador"]'::jsonb,0,'Psicotécnicos','Pródigo es quien gasta o da con generosidad; su contrario es tacaño.',null),
('admin-navarra:28-ca3ed8cd7a','admin-navarra',28,'¿Qué palabra está escrita correctamente?','["Absorber", "Absorver", "Abzorber", "Avsorber"]'::jsonb,0,'Psicotécnicos','Absorber se escribe con b en ambas sílabas («absorción» con c).',null),
('admin-navarra:28-db56e590b9','admin-navarra',28,'¿Cuál de estas palabras está bien escrita?','["Exhaustivo", "Eshaustivo", "Exhaustibo", "Exaustivo"]'::jsonb,0,'Psicotécnicos','Exhaustivo se escribe con h intercalada y con v.',null),
('admin-navarra:28-9f53e5feda','admin-navarra',28,'Indica la palabra correctamente escrita:','["Adecuádo", "Hadecuado", "Adequado", "Adecuado"]'::jsonb,3,'Psicotécnicos','Adecuado se escribe con c y sin tilde (palabra llana terminada en vocal).',null),
('admin-navarra:28-b22845ad9c','admin-navarra',28,'¿Cuál de las siguientes palabras está escrita sin faltas?','["Desahucio", "Desaucio", "Deshaucio", "Desahúcio"]'::jsonb,0,'Psicotécnicos','Desahucio lleva h intercalada entre la a y la u, y no lleva tilde.',null),
('admin-navarra:28-cc82f5c3f2','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Martillo, destornillador, alicates, pincel, llave inglesa','["Alicates", "Destornillador", "Martillo", "Pincel"]'::jsonb,3,'Psicotécnicos','Todas son herramientas de bricolaje o mecánica salvo el pincel, que es un útil de pintura.',null),
('admin-navarra:28-256f425878','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Ley, reglamento, orden ministerial, sentencia, real decreto','["Real decreto", "Reglamento", "Sentencia", "Orden ministerial"]'::jsonb,2,'Psicotécnicos','Todas son normas jurídicas salvo la sentencia, que es una resolución judicial.',null),
('admin-navarra:28-10d72cf2d6','admin-navarra',28,'Libro es a biblioteca como cuadro es a:','["Pintor", "Museo", "Marco", "Pincel"]'::jsonb,1,'Psicotécnicos','Los libros se guardan y exponen en bibliotecas; los cuadros, en museos.',null),
('admin-navarra:28-bcd0bd6c81','admin-navarra',28,'Juez es a sentencia como legislador es a:','["Tribunal", "Ley", "Parlamento", "Juicio"]'::jsonb,1,'Psicotécnicos','El juez dicta sentencias; el legislador aprueba leyes.',null),
('admin-navarra:28-f5c2cbff66','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿Cuántos expedientes más tramitó Registro en marzo que en abril?','["99", "79", "84", "78"]'::jsonb,1,'Psicotécnicos','196 − 117 = 79.',null),
('admin-navarra:28-1ca5dae077','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿Cuántos expedientes tramitó Información en total entre marzo y junio?','["479", "499", "488", "468"]'::jsonb,0,'Psicotécnicos','121 + 65 + 207 + 86 = 479.',null),
('admin-navarra:28-bc37acdc72','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Marzo", "Abril", "Junio", "Mayo"]'::jsonb,2,'Psicotécnicos','Totales por mes: marzo, 491; abril, 482; mayo, 485; junio, 705.',null),
('admin-navarra:28-4411978b94','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes registró Sede D en total entre febrero y mayo?','["748", "738", "757", "627"]'::jsonb,0,'Psicotécnicos','121 + 223 + 192 + 212 = 748.',null),
('admin-navarra:28-8a6c2000d9','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes más registró Sede C en febrero que en marzo?','["21", "32", "22", "17"]'::jsonb,2,'Psicotécnicos','107 − 85 = 22.',null),
('admin-navarra:28-db30ed5d2b','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes hubo en total en mayo?','["578", "587", "596", "607"]'::jsonb,1,'Psicotécnicos','108 + 183 + 84 + 212 = 587.',null),
('admin-navarra:28-3b7a9edf38','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Cuántas personas hubo en total en mayo?','["795", "785", "775", "805"]'::jsonb,1,'Psicotécnicos','234 + 141 + 170 + 240 = 785.',null),
('admin-navarra:28-662d729be4','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Qué porcentaje del total de personas de junio corresponde a Ventanilla 1, redondeado a la unidad?','["21 %", "16 %", "22 %", "13 %"]'::jsonb,1,'Psicotécnicos','98 / 623 × 100 = 15,7 %, que redondeado es 16 %.',null),
('admin-navarra:28-8f8212c08c','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Cuántas personas atendió Ventanilla 3 en total entre marzo y junio?','["571", "601", "581", "464"]'::jsonb,2,'Psicotécnicos','117 + 102 + 170 + 192 = 581.',null),
('admin-navarra:28-c84b9525ad','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
Sumando los cuatro meses, ¿qué auxiliar digitalizó más documentos?','["Luis", "Ana", "Jorge", "Marta"]'::jsonb,0,'Psicotécnicos','Totales: Ana, 581; Luis, 712; Marta, 607; Jorge, 669.',null),
('admin-navarra:28-dc883c25fd','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
¿Cuántos documentos más digitalizó Jorge en marzo que en abril?','["3", "13", "18", "23"]'::jsonb,1,'Psicotécnicos','163 − 150 = 13.',null),
('admin-navarra:28-7c7163bc9e','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
¿Cuántos documentos hubo en total en junio?','["595", "624", "604", "613"]'::jsonb,2,'Psicotécnicos','83 + 202 + 120 + 199 = 604.',null),
('admin-navarra:28-e32decceae','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes más tramitó Registro en mayo que en febrero?','["58", "38", "39", "37"]'::jsonb,1,'Psicotécnicos','214 − 176 = 38.',null),
('admin-navarra:28-bada7f57e0','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes hubo en total en mayo?','["705", "715", "685", "696"]'::jsonb,0,'Psicotécnicos','214 + 198 + 93 + 200 = 705.',null),
('admin-navarra:28-819b3c9547','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes tramitó Personal en total entre febrero y mayo?','["595", "586", "438", "575"]'::jsonb,1,'Psicotécnicos','148 + 97 + 143 + 198 = 586.',null),
('admin-navarra:28-08ec8246e0','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
¿Cuántas solicitudes registró Sede D en total entre enero y abril?','["543", "438", "583", "563"]'::jsonb,3,'Psicotécnicos','125 + 135 + 174 + 129 = 563.',null),
('admin-navarra:28-be1d8ca1b8','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Enero", "Marzo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: enero, 460; febrero, 603; marzo, 491; abril, 405.',null),
('admin-navarra:28-a0b799f879','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede A", "Sede B", "Sede D", "Sede C"]'::jsonb,0,'Psicotécnicos','Totales: Sede A, 384; Sede B, 558; Sede C, 454; Sede D, 563.',null),
('admin-navarra:28-3b91af77ae','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
¿Qué porcentaje del total de personas de abril corresponde a Ventanilla 3, redondeado a la unidad?','["19 %", "11 %", "10 %", "16 %"]'::jsonb,3,'Psicotécnicos','70 / 433 × 100 = 16,2 %, que redondeado es 16 %.',null),
('admin-navarra:28-ffc8c3a7fa','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
Sumando los cuatro meses, ¿qué ventanilla atendió más personas?','["Ventanilla 3", "Ventanilla 4", "Ventanilla 2", "Ventanilla 1"]'::jsonb,3,'Psicotécnicos','Totales: Ventanilla 1, 604; Ventanilla 2, 575; Ventanilla 3, 456; Ventanilla 4, 592.',null),
('admin-navarra:28-bf8e84dbe0','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
¿Cuántas personas atendió Ventanilla 4 en total entre marzo y junio?','["602", "592", "581", "406"]'::jsonb,1,'Psicotécnicos','186 + 73 + 123 + 210 = 592.',null),
('admin-navarra:28-b24b514544','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿En qué mes hubo más documentos sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Junio"]'::jsonb,1,'Psicotécnicos','Totales por mes: marzo, 711; abril, 431; mayo, 493; junio, 597.',null),
('admin-navarra:28-996053545b','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Cuántos documentos digitalizó Jorge en total entre marzo y junio?','["616", "606", "445", "596"]'::jsonb,3,'Psicotécnicos','151 + 187 + 139 + 119 = 596.',null),
('admin-navarra:28-4f4e58eaf8','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Cuántos documentos más digitalizó Jorge en abril que en mayo?','["53", "43", "48", "58"]'::jsonb,2,'Psicotécnicos','187 − 139 = 48.',null),
('admin-navarra:28-d1cfcc644c','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Qué porcentaje del total de documentos de abril corresponde a Marta, redondeado a la unidad?','["17 %", "15 %", "26 %", "20 %"]'::jsonb,3,'Psicotécnicos','87 / 431 × 100 = 20,2 %, que redondeado es 20 %.',null),
('admin-navarra:28-b51daede4b','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Abril", "Mayo", "Febrero", "Marzo"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 597; marzo, 649; abril, 482; mayo, 466.',null),
('admin-navarra:28-02a3ef22a9','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿Qué porcentaje del total de expedientes de febrero corresponde a Personal, redondeado a la unidad?','["14 %", "23 %", "17 %", "20 %"]'::jsonb,2,'Psicotécnicos','103 / 597 × 100 = 17,3 %, que redondeado es 17 %.',null),
('admin-navarra:28-6a591aba48','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿Cuántos expedientes tramitó Registro en total entre febrero y mayo?','["621", "423", "601", "630"]'::jsonb,0,'Psicotécnicos','198 + 154 + 73 + 196 = 621.',null),
('admin-navarra:28-6294a933f9','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
Sumando los cuatro meses, ¿qué unidad tramitó menos expedientes?','["Personal", "Información", "Registro", "Contratación"]'::jsonb,0,'Psicotécnicos','Totales: Registro, 621; Personal, 471; Contratación, 583; Información, 519.',null),
('admin-navarra:28-ed5961649b','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
¿Cuántas solicitudes hubo en total en marzo?','["564", "584", "573", "555"]'::jsonb,0,'Psicotécnicos','174 + 170 + 149 + 71 = 564.',null),
('admin-navarra:28-2350a07ff1','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede D", "Sede A", "Sede B", "Sede C"]'::jsonb,3,'Psicotécnicos','Totales: Sede A, 775; Sede B, 762; Sede C, 429; Sede D, 587.',null),
('admin-navarra:28-e81be73b69','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 725; marzo, 564; abril, 658; mayo, 606.',null),
('admin-navarra:28-310ffcb56a','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas más atendió Ventanilla 2 en abril que en marzo?','["88", "108", "87", "98"]'::jsonb,0,'Psicotécnicos','182 − 94 = 88.',null),
('admin-navarra:28-a92bbcef95','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 4", "Ventanilla 2", "Ventanilla 3", "Ventanilla 1"]'::jsonb,2,'Psicotécnicos','Totales: Ventanilla 1, 675; Ventanilla 2, 561; Ventanilla 3, 429; Ventanilla 4, 576.',null),
('admin-navarra:28-b8cae3f6ac','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas hubo en total en mayo?','["492", "502", "483", "501"]'::jsonb,0,'Psicotécnicos','215 + 65 + 82 + 130 = 492.',null),
('admin-navarra:28-1a03f51338','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas atendió Ventanilla 1 en total entre febrero y mayo?','["675", "521", "685", "664"]'::jsonb,0,'Psicotécnicos','154 + 88 + 218 + 215 = 675.',null),
('admin-navarra:28-eec4d91d8b','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿Cuántos documentos digitalizó Marta en total entre marzo y junio?','["687", "667", "676", "530"]'::jsonb,1,'Psicotécnicos','137 + 91 + 227 + 212 = 667.',null),
('admin-navarra:28-c9bb986b93','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿Cuántos documentos más digitalizó Luis en mayo que en marzo?','["135", "125", "136", "134"]'::jsonb,0,'Psicotécnicos','222 − 87 = 135.',null),
('admin-navarra:28-57edc96197','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿En qué mes hubo más documentos sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Junio"]'::jsonb,0,'Psicotécnicos','Totales por mes: marzo, 564; abril, 571; mayo, 711; junio, 499.',null),
('admin-navarra:28-0caf60a709','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
Sumando los cuatro meses, ¿qué auxiliar digitalizó menos documentos?','["Marta", "Luis", "Jorge", "Ana"]'::jsonb,3,'Psicotécnicos','Totales: Ana, 361; Luis, 632; Marta, 667; Jorge, 685.',null),
('admin-navarra:28-4ef2b64f3f','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿Cuántos expedientes hubo en total en mayo?','["543", "533", "523", "553"]'::jsonb,0,'Psicotécnicos','116 + 217 + 122 + 88 = 543.',null),
('admin-navarra:28-883272714e','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Marzo", "Mayo", "Abril", "Junio"]'::jsonb,2,'Psicotécnicos','Totales por mes: marzo, 614; abril, 725; mayo, 543; junio, 613.',null),
('admin-navarra:28-26fdfa0b1d','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿Cuántos expedientes más tramitó Registro en abril que en mayo?','["87", "108", "78", "88"]'::jsonb,3,'Psicotécnicos','204 − 116 = 88.',null),
('admin-navarra:28-9c50733745','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿Cuántas solicitudes registró Sede C en total entre febrero y mayo?','["523", "532", "513", "503"]'::jsonb,0,'Psicotécnicos','69 + 186 + 147 + 121 = 523.',null),
('admin-navarra:28-426745c33b','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Marzo", "Mayo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 744; marzo, 483; abril, 562; mayo, 524.',null),
('admin-navarra:28-833b7fb619','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede D", "Sede A", "Sede C", "Sede B"]'::jsonb,0,'Psicotécnicos','Totales: Sede A, 574; Sede B, 724; Sede C, 523; Sede D, 492.',null),
('admin-navarra:28-3e2e661b6b','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿Cuántas solicitudes más registró Sede C en abril que en mayo?','["27", "16", "26", "21"]'::jsonb,2,'Psicotécnicos','147 − 121 = 26.',null),
('admin-navarra:28-c1b336bd7a','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
¿Cuántas personas más atendió Ventanilla 1 en marzo que en mayo?','["100", "102", "101", "106"]'::jsonb,2,'Psicotécnicos','183 − 82 = 101.',null),
('admin-navarra:28-d742f99359','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 3", "Ventanilla 4", "Ventanilla 1", "Ventanilla 2"]'::jsonb,3,'Psicotécnicos','Totales: Ventanilla 1, 547; Ventanilla 2, 359; Ventanilla 3, 731; Ventanilla 4, 630.',null),
('admin-navarra:28-a432f92446','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
¿Cuántas personas hubo en total en mayo?','["400", "409", "380", "420"]'::jsonb,0,'Psicotécnicos','82 + 77 + 176 + 65 = 400.',null),
('admin-navarra:28-750d9c8fb8','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Cuántos documentos hubo en total en marzo?','["412", "402", "421", "432"]'::jsonb,0,'Psicotécnicos','142 + 100 + 79 + 91 = 412.',null),
('admin-navarra:28-5f55221c3d','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Qué porcentaje del total de documentos de abril corresponde a Ana, redondeado a la unidad?','["10 %", "13 %", "19 %", "16 %"]'::jsonb,3,'Psicotécnicos','106 / 661 × 100 = 16,0 %, que redondeado es 16 %.',null),
('admin-navarra:28-ddba7292d9','admin-navarra',28,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Cuántos documentos digitalizó Marta en total entre febrero y mayo?','["636", "616", "617", "627"]'::jsonb,3,'Psicotécnicos','180 + 79 + 231 + 137 = 627.',null),
('admin-navarra:28-126e336319','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Febrero", "Abril", "Enero", "Marzo"]'::jsonb,2,'Psicotécnicos','Totales por mes: enero, 649; febrero, 643; marzo, 621; abril, 608.',null),
('admin-navarra:28-0fcfaee0b1','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿Qué porcentaje del total de expedientes de marzo corresponde a Registro, redondeado a la unidad?','["21 %", "30 %", "27 %", "22 %"]'::jsonb,2,'Psicotécnicos','169 / 621 × 100 = 27,2 %, que redondeado es 27 %.',null),
('admin-navarra:28-8efbf32170','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿Cuántos expedientes más tramitó Registro en enero que en febrero?','["124", "154", "135", "134"]'::jsonb,3,'Psicotécnicos','209 − 75 = 134.',null),
('admin-navarra:28-c4253dc0e9','admin-navarra',28,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
Sumando los cuatro meses, ¿qué unidad tramitó más expedientes?','["Información", "Contratación", "Registro", "Personal"]'::jsonb,1,'Psicotécnicos','Totales: Registro, 614; Personal, 654; Contratación, 682; Información, 571.',null),
('admin-navarra:28-cb2ce17cd6','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿Cuántas solicitudes registró Sede A en total entre enero y abril?','["568", "588", "579", "569"]'::jsonb,2,'Psicotécnicos','116 + 100 + 225 + 138 = 579.',null),
('admin-navarra:28-e1a22e99a4','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿Cuántas solicitudes más registró Sede D en febrero que en abril?','["34", "35", "36", "30"]'::jsonb,1,'Psicotécnicos','222 − 187 = 35.',null),
('admin-navarra:28-597363cb4d','admin-navarra',28,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Abril", "Enero", "Marzo", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: enero, 419; febrero, 707; marzo, 673; abril, 704.',null),
('admin-navarra:28-d6a75fd093','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 210 | 179 | 159 | 178
Ventanilla 2 | 88 | 90 | 137 | 214
Ventanilla 3 | 201 | 198 | 224 | 78
Ventanilla 4 | 141 | 121 | 82 | 101
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 4", "Ventanilla 2", "Ventanilla 1", "Ventanilla 3"]'::jsonb,0,'Psicotécnicos','Totales: Ventanilla 1, 726; Ventanilla 2, 529; Ventanilla 3, 701; Ventanilla 4, 445.',null),
('admin-navarra:28-c66cdc1765','admin-navarra',28,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 210 | 179 | 159 | 178
Ventanilla 2 | 88 | 90 | 137 | 214
Ventanilla 3 | 201 | 198 | 224 | 78
Ventanilla 4 | 141 | 121 | 82 | 101
¿Cuántas personas atendió Ventanilla 1 en total entre marzo y junio?','["726", "716", "736", "516"]'::jsonb,0,'Psicotécnicos','210 + 179 + 159 + 178 = 726.',null),
('admin-navarra:28-00c9b070ad','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Gascón, Garrido, Garcés, Garzón, Gallego, Gálvez','["Gallego", "Garzón", "Garrido", "Gascón"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Gallego, Gálvez, Garcés, Garrido, Garzón, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-24fca88a85','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Martín, Marco, Mata, Matas, Marín, Mas','["Marco", "Marín", "Mas", "Martín"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Marco, Marín, Martín, Mas, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-610b9dbeac','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Pereira, Perea, Pena, Peña, Pérez, Peral','["Pena", "Perea", "Peral", "Peña"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Pena, Peña, Peral, Perea, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-346299c1c7','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Salinas, Saez, Sánchez, Salas, Sandoval, Sainz','["Sandoval", "Salas", "Salinas", "Sánchez"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sánchez, Sandoval. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-53e232412f','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Román, Rosa, Romero, Rubio, Rojas, Rojo','["Rosa", "Román", "Rojo", "Rojas"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Rojas, Rojo, Román, Romero, Rosa, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-c2afe4e95c','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Nogales, Noguera, Núñez, Nava, Naranjo, Nieto','["Nava", "Nieto", "Núñez", "Naranjo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Naranjo, Nava, Nieto, Nogales, Noguera, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-72cf125b5f','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Calvo, Castro, Camacho, Campos, Casas, Casado','["Casas", "Casado", "Calvo", "Castro"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Campos, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-134441b275','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Olmedo, Osorio, Orozco, Olmo, Oliver, Oliva','["Orozco", "Oliver", "Olmedo", "Oliva"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Oliva, Oliver, Olmedo, Olmo, Orozco, Osorio. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-2d95b9d217','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Garcés, Gallardo, Gamero, Galán, Gascón, García','["Galán", "Garcés", "Gallardo", "Gamero"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Galán, Gallardo, Gamero, Garcés, García, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-2e7729c89a','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Mata, Márquez, Marco, Mariño, Matas, Martínez','["Márquez", "Mariño", "Mata", "Martínez"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Marco, Mariño, Márquez, Martínez, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-f71922d7fb','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Pelayo, Pereira, Penalva, Peñalver, Perea, Peña','["Pelayo", "Peña", "Peñalver", "Penalva"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Pelayo, Penalva, Peña, Peñalver, Perea, Pereira. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-7746b8311e','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Sanz, Sainz, Saez, Salinas, Salas, Sandoval','["Sainz", "Saez", "Salinas", "Salas"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sandoval, Sanz. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-6fb2d5a85e','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Rubio, Rojo, Roldán, Rosales, Rosa, Romo','["Romo", "Rosa", "Roldán", "Rubio"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Rojo, Roldán, Romo, Rosa, Rosales, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-57a52c2ac8','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Núñez, Nadal, Navas, Nogales, Naranjo, Nava','["Navas", "Nava", "Nogales", "Naranjo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Nadal, Naranjo, Nava, Navas, Nogales, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-e2571178c4','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Cantero, Castillo, Cano, Castaño, Camacho, Casado','["Cantero", "Cano", "Casado", "Castillo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Camacho, Cano, Cantero, Casado, Castaño, Castillo. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-d7144ae306','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Oliver, Osorio, Olmo, Olmedo, Otero, Orozco','["Oliver", "Olmo", "Olmedo", "Osorio"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Oliver, Olmedo, Olmo, Orozco, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-f76ddf899f','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Garcés, Galán, Gallego, Garzón, Gascón, García','["Galán", "Garcés", "Garzón", "Gallego"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Galán, Gallego, Garcés, García, Garzón, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-0af5b505f9','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Martínez, Mas, Matas, Marín, Marco, Mármol','["Marco", "Martínez", "Marín", "Mármol"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Marco, Marín, Mármol, Martínez, Mas, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-e839f466ad','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Penalva, Peñalver, Pérez, Pena, Pereira, Perea','["Peñalver", "Pereira", "Pérez", "Perea"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Pena, Penalva, Peñalver, Perea, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-52953b0184','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Sanz, Sainz, Salas, Sandoval, Saez, Salinas','["Sandoval", "Saez", "Sanz", "Salinas"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sandoval, Sanz. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-40c926f8d8','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Rojo, Rosa, Romero, Rubio, Román, Rojas','["Román", "Rojo", "Rojas", "Rosa"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Rojas, Rojo, Román, Romero, Rosa, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-f7079b0e6c','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Noguera, Nava, Navas, Nadal, Núñez, Nieto','["Noguera", "Nava", "Núñez", "Nieto"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Nadal, Nava, Navas, Nieto, Noguera, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-269df9fa13','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Casas, Casado, Campos, Camacho, Calvo, Castro','["Campos", "Casas", "Casado", "Castro"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Campos, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-b7348e8aad','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Osorio, Otero, Ortiz, Olmo, Ortuño, Ortega','["Ortuño", "Ortiz", "Ortega", "Olmo"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Olmo, Ortega, Ortiz, Ortuño, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-b5e68467a4','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Gallardo, Gascón, Gamero, Garcés, Gallego, Garrido','["Gascón", "Garrido", "Gamero", "Garcés"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Gallardo, Gallego, Gamero, Garcés, Garrido, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-2b8c00356f','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Matas, Mármol, Marco, Mata, Mariño, Mas','["Marco", "Mas", "Mármol", "Mata"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Marco, Mariño, Mármol, Mas, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-cecd5adbaa','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Pereira, Penalva, Pérez, Peral, Pedraza, Pena','["Penalva", "Pena", "Pereira", "Pedraza"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Pedraza, Pena, Penalva, Peral, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-bfa4a160c8','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Salinas, Sanz, Sánchez, Sandoval, Sanjuán, Sainz','["Sandoval", "Sánchez", "Sanjuán", "Salinas"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Sainz, Salinas, Sánchez, Sandoval, Sanjuán, Sanz. La tilde no cuenta y la Ñ va después de la N.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('admin-navarra:28-0c211e215e','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Rosa, Ruano, Román, Rojo, Roldán, Romero','["Román", "Ruano", "Roldán", "Romero"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Rojo, Roldán, Román, Romero, Rosa, Ruano. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-aa85420164','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Naranjo, Nieto, Nogales, Nava, Núñez, Nadal','["Nadal", "Nieto", "Naranjo", "Nava"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Nadal, Naranjo, Nava, Nieto, Nogales, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-9527a73fa7','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Casas, Camacho, Calvo, Castro, Cano, Casado','["Casado", "Casas", "Camacho", "Cano"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Cano, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-9526ab77a3','admin-navarra',28,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Otero, Ortiz, Olmo, Oliver, Olmedo, Osorio','["Otero", "Osorio", "Ortiz", "Olmo"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Oliver, Olmedo, Olmo, Ortiz, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('admin-navarra:28-4d155e41e8','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Gallardo Sánchez, Javier; Gallardo Salinas, Pablo; Gascón Salas, Óscar; Gallardo Sanz, Sara; Gascón Salas, Carmen','["Gallardo Sanz, Sara", "Gascón Salas, Óscar", "Gallardo Sánchez, Javier", "Gascón Salas, Carmen"]'::jsonb,0,'Psicotécnicos','Orden: Gallardo Salinas, Pablo; Gallardo Sánchez, Javier; Gallardo Sanz, Sara; Gascón Salas, Carmen; Gascón Salas, Óscar. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-fcc0328c87','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Márquez Rubio, Raúl; Mármol Román, Luis; Mármol Román, Irene; Márquez Román, Elena; Mármol Rosales, Javier','["Mármol Rosales, Javier", "Mármol Román, Luis", "Márquez Román, Elena", "Márquez Rubio, Raúl"]'::jsonb,2,'Psicotécnicos','Orden: Mármol Román, Irene; Mármol Román, Luis; Mármol Rosales, Javier; Márquez Román, Elena; Márquez Rubio, Raúl. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-905063807c','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Pérez Nieto, Pablo; Pelayo Navarro, Ana; Pelayo Nava, Óscar; Pena Núñez, Irene; Pelayo Nogales, Sara','["Pelayo Navarro, Ana", "Pena Núñez, Irene", "Pelayo Nogales, Sara", "Pelayo Nava, Óscar"]'::jsonb,1,'Psicotécnicos','Orden: Pelayo Nava, Óscar; Pelayo Navarro, Ana; Pelayo Nogales, Sara; Pena Núñez, Irene; Pérez Nieto, Pablo. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-af8f122999','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Salas Camacho, Sara; Sanz Campos, Óscar; Salas Camacho, Ana; Sancho Castro, Pablo; Salas Castaño, Lucía','["Sanz Campos, Óscar", "Sancho Castro, Pablo", "Salas Castaño, Lucía", "Salas Camacho, Ana"]'::jsonb,2,'Psicotécnicos','Orden: Salas Camacho, Ana; Salas Camacho, Sara; Salas Castaño, Lucía; Sancho Castro, Pablo; Sanz Campos, Óscar. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-6d1810e545','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Román Oliver, Javier; Rojo Ortega, Raúl; Rojo Ortega, Lucía; Román Olmedo, Ana; Rojo Olmo, Pablo','["Rojo Ortega, Raúl", "Rojo Olmo, Pablo", "Román Olmedo, Ana", "Rojo Ortega, Lucía"]'::jsonb,0,'Psicotécnicos','Orden: Rojo Olmo, Pablo; Rojo Ortega, Lucía; Rojo Ortega, Raúl; Román Oliver, Javier; Román Olmedo, Ana. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-52a462b07e','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Navarro Gamero, Diego; Nava Gascón, Sara; Nava Gamero, Javier; Nava Galán, Lucía; Navarro Garrido, Carmen','["Nava Gamero, Javier", "Nava Galán, Lucía", "Navarro Gamero, Diego", "Nava Gascón, Sara"]'::jsonb,0,'Psicotécnicos','Orden: Nava Galán, Lucía; Nava Gamero, Javier; Nava Gascón, Sara; Navarro Gamero, Diego; Navarro Garrido, Carmen. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-dd502d6b65','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Casas Matas, Lucía; Casado Martínez, Carmen; Casas Mata, Lucía; Cano Márquez, Ana; Casado Marín, Raúl','["Casado Martínez, Carmen", "Casas Mata, Lucía", "Cano Márquez, Ana", "Casado Marín, Raúl"]'::jsonb,1,'Psicotécnicos','Orden: Cano Márquez, Ana; Casado Marín, Raúl; Casado Martínez, Carmen; Casas Mata, Lucía; Casas Matas, Lucía. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-b11b0d12b1','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Osorio Peñalver, Óscar; Osorio Pedraza, Irene; Ortuño Peral, Óscar; Osorio Perea, Javier; Otero Pedraza, Javier','["Osorio Pedraza, Irene", "Osorio Peñalver, Óscar", "Otero Pedraza, Javier", "Ortuño Peral, Óscar"]'::jsonb,1,'Psicotécnicos','Orden: Ortuño Peral, Óscar; Osorio Pedraza, Irene; Osorio Peñalver, Óscar; Osorio Perea, Javier; Otero Pedraza, Javier. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-171b02857b','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Gálvez Santos, Sara; Gálvez Sanjuán, Pablo; Gálvez Sainz, Óscar; Garcés Salas, Javier; Garcés Santos, Irene','["Gálvez Santos, Sara", "Gálvez Sainz, Óscar", "Garcés Santos, Irene", "Gálvez Sanjuán, Pablo"]'::jsonb,3,'Psicotécnicos','Orden: Gálvez Sainz, Óscar; Gálvez Sanjuán, Pablo; Gálvez Santos, Sara; Garcés Salas, Javier; Garcés Santos, Irene. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-24a41f1d48','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Matas Roldán, Irene; Mas Rojo, Luis; Matas Rosales, Raúl; Mas Román, Luis; Matas Román, Ana','["Matas Román, Ana", "Mas Román, Luis", "Mas Rojo, Luis", "Matas Rosales, Raúl"]'::jsonb,0,'Psicotécnicos','Orden: Mas Rojo, Luis; Mas Román, Luis; Matas Roldán, Irene; Matas Román, Ana; Matas Rosales, Raúl. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-d504a5b9a7','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Pérez Navarro, Sara; Peña Nieves, Raúl; Pérez Navarro, Pablo; Pereira Noguera, Elena; Peña Nieves, Sara','["Peña Nieves, Sara", "Pereira Noguera, Elena", "Peña Nieves, Raúl", "Pérez Navarro, Sara"]'::jsonb,1,'Psicotécnicos','Orden: Peña Nieves, Raúl; Peña Nieves, Sara; Pereira Noguera, Elena; Pérez Navarro, Pablo; Pérez Navarro, Sara. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-bb7922145c','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Sanz Cano, Carmen; Salinas Calvo, Pablo; Salinas Castaño, Pablo; Salinas Calvo, Luis; Sanz Casas, Elena','["Salinas Calvo, Pablo", "Salinas Calvo, Luis", "Sanz Casas, Elena", "Sanz Cano, Carmen"]'::jsonb,0,'Psicotécnicos','Orden: Salinas Calvo, Luis; Salinas Calvo, Pablo; Salinas Castaño, Pablo; Sanz Cano, Carmen; Sanz Casas, Elena. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-492d37cc07','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Roldán Orozco, Javier; Ruano Ortega, Carmen; Ruano Oliver, Lucía; Ruano Otero, Lucía; Romero Ortuño, Luis','["Romero Ortuño, Luis", "Roldán Orozco, Javier", "Ruano Oliver, Lucía", "Ruano Otero, Lucía"]'::jsonb,2,'Psicotécnicos','Orden: Roldán Orozco, Javier; Romero Ortuño, Luis; Ruano Oliver, Lucía; Ruano Ortega, Carmen; Ruano Otero, Lucía. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-d7d50e5f4d','admin-navarra',28,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Navas Gallardo, Sara; Navarro Galán, Carmen; Navarro Garcés, Elena; Núñez Gascón, Luis; Núñez Garzón, Sara','["Núñez Gascón, Luis", "Navas Gallardo, Sara", "Navarro Garcés, Elena", "Núñez Garzón, Sara"]'::jsonb,2,'Psicotécnicos','Orden: Navarro Galán, Carmen; Navarro Garcés, Elena; Navas Gallardo, Sara; Núñez Garzón, Sara; Núñez Gascón, Luis. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('admin-navarra:28-39bad15648','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 23/05/2024, 15/01/2024, 24/10/2025, 08/04/2024, 23/06/2025','["24/10/2025", "23/06/2025", "08/04/2024", "15/01/2024"]'::jsonb,2,'Psicotécnicos','Orden: 15/01/2024, 08/04/2024, 23/05/2024, 23/06/2025, 24/10/2025. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-c94ddea960','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 19/11/2027, 13/12/2026, 11/09/2026, 15/06/2026, 23/09/2027','["19/11/2027", "13/12/2026", "15/06/2026", "11/09/2026"]'::jsonb,3,'Psicotécnicos','Orden: 15/06/2026, 11/09/2026, 13/12/2026, 23/09/2027, 19/11/2027. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-d87e6022fb','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 27/09/2026, 18/05/2025, 25/09/2026, 26/08/2025, 11/03/2025','["25/09/2026", "27/09/2026", "11/03/2025", "26/08/2025"]'::jsonb,0,'Psicotécnicos','Orden: 11/03/2025, 18/05/2025, 26/08/2025, 25/09/2026, 27/09/2026. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-6e1a73c8ce','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 24/09/2027, 10/12/2026, 01/09/2026, 19/06/2026, 25/10/2027','["10/12/2026", "24/09/2027", "19/06/2026", "25/10/2027"]'::jsonb,0,'Psicotécnicos','Orden: 19/06/2026, 01/09/2026, 10/12/2026, 24/09/2027, 25/10/2027. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-7c6666abeb','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 14/07/2025, 14/12/2026, 12/07/2026, 27/06/2026, 10/09/2025','["27/06/2026", "14/07/2025", "12/07/2026", "14/12/2026"]'::jsonb,2,'Psicotécnicos','Orden: 14/07/2025, 10/09/2025, 27/06/2026, 12/07/2026, 14/12/2026. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-e27aaeb9a8','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 15/04/2026, 14/07/2026, 02/02/2026, 04/04/2027, 19/11/2026','["14/07/2026", "15/04/2026", "02/02/2026", "19/11/2026"]'::jsonb,0,'Psicotécnicos','Orden: 02/02/2026, 15/04/2026, 14/07/2026, 19/11/2026, 04/04/2027. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-222c9c44d4','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 15/07/2025, 26/01/2025, 22/12/2025, 15/06/2025, 25/06/2025','["15/06/2025", "25/06/2025", "26/01/2025", "15/07/2025"]'::jsonb,1,'Psicotécnicos','Orden: 26/01/2025, 15/06/2025, 25/06/2025, 15/07/2025, 22/12/2025. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-d959f923ed','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 03/08/2025, 22/09/2024, 22/11/2024, 19/08/2024, 25/05/2024','["03/08/2025", "25/05/2024", "22/11/2024", "22/09/2024"]'::jsonb,2,'Psicotécnicos','Orden: 25/05/2024, 19/08/2024, 22/09/2024, 22/11/2024, 03/08/2025. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-6209bdca7f','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 05/11/2026, 24/04/2025, 23/04/2025, 07/10/2025, 22/02/2026','["23/04/2025", "07/10/2025", "22/02/2026", "24/04/2025"]'::jsonb,2,'Psicotécnicos','Orden: 23/04/2025, 24/04/2025, 07/10/2025, 22/02/2026, 05/11/2026. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-27c7390f61','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 01/11/2025, 24/07/2025, 02/07/2025, 01/04/2025, 05/12/2026','["01/04/2025", "02/07/2025", "24/07/2025", "05/12/2026"]'::jsonb,2,'Psicotécnicos','Orden: 01/04/2025, 02/07/2025, 24/07/2025, 01/11/2025, 05/12/2026. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-3f49eddee7','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 02/02/2026, 20/03/2025, 18/09/2025, 25/02/2025, 02/09/2026','["18/09/2025", "25/02/2025", "02/02/2026", "20/03/2025"]'::jsonb,0,'Psicotécnicos','Orden: 25/02/2025, 20/03/2025, 18/09/2025, 02/02/2026, 02/09/2026. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-eb39b61bf8','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 19/03/2027, 18/02/2026, 07/03/2026, 09/02/2026, 18/07/2026','["09/02/2026", "19/03/2027", "18/07/2026", "18/02/2026"]'::jsonb,2,'Psicotécnicos','Orden: 09/02/2026, 18/02/2026, 07/03/2026, 18/07/2026, 19/03/2027. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-549f71b3f5','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 28/09/2024, 07/12/2024, 15/06/2024, 22/02/2024, 19/04/2024','["19/04/2024", "28/09/2024", "07/12/2024", "15/06/2024"]'::jsonb,0,'Psicotécnicos','Orden: 22/02/2024, 19/04/2024, 15/06/2024, 28/09/2024, 07/12/2024. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-77bcdd05d6','admin-navarra',28,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 14/11/2027, 08/01/2026, 13/06/2026, 20/04/2027, 16/11/2027','["20/04/2027", "16/11/2027", "13/06/2026", "08/01/2026"]'::jsonb,0,'Psicotécnicos','Orden: 08/01/2026, 13/06/2026, 20/04/2027, 14/11/2027, 16/11/2027. Se compara primero el año, luego el mes y por último el día.',null),
('admin-navarra:28-a62f055b6f','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2026/09175, 2026/07159, 2026/05719, 2026/05197, 2026/07591','["2026/05197", "2026/05719", "2026/07591", "2026/09175"]'::jsonb,2,'Psicotécnicos','Orden: 2026/05197, 2026/05719, 2026/07159, 2026/07591, 2026/09175.',null),
('admin-navarra:28-7fa7580072','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2025/08973, 2025/09738, 2025/09873, 2025/03897, 2025/03789','["2025/03789", "2025/09738", "2025/08973", "2025/09873"]'::jsonb,1,'Psicotécnicos','Orden: 2025/03789, 2025/03897, 2025/08973, 2025/09738, 2025/09873.',null),
('admin-navarra:28-4e515ba39b','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2026/05179, 2026/07195, 2026/01759, 2026/09157, 2026/09517','["2026/09157", "2026/07195", "2026/01759", "2026/05179"]'::jsonb,1,'Psicotécnicos','Orden: 2026/09517, 2026/09157, 2026/07195, 2026/05179, 2026/01759.',null),
('admin-navarra:28-cd168d3c30','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/08524, 2025/04528, 2025/02548, 2025/04852, 2025/08425','["2025/08425", "2025/08524", "2025/04852", "2025/04528"]'::jsonb,2,'Psicotécnicos','Orden: 2025/08524, 2025/08425, 2025/04852, 2025/04528, 2025/02548.',null),
('admin-navarra:28-e0a19a449d','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2026/04206, 2026/06420, 2026/06204, 2026/00246, 2026/06240','["2026/00246", "2026/06204", "2026/06240", "2026/06420"]'::jsonb,1,'Psicotécnicos','Orden: 2026/00246, 2026/04206, 2026/06204, 2026/06240, 2026/06420.',null),
('admin-navarra:28-1a5c1a5349','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2025/01597, 2025/01759, 2025/09175, 2025/09751, 2025/09517','["2025/01759", "2025/09175", "2025/09751", "2025/09517"]'::jsonb,1,'Psicotécnicos','Orden: 2025/01597, 2025/01759, 2025/09175, 2025/09517, 2025/09751.',null),
('admin-navarra:28-a0f371ab3b','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2025/09840, 2025/04809, 2025/09084, 2025/00984, 2025/04980','["2025/04809", "2025/04980", "2025/09840", "2025/09084"]'::jsonb,1,'Psicotécnicos','Orden: 2025/00984, 2025/04809, 2025/04980, 2025/09084, 2025/09840.',null),
('admin-navarra:28-2c68cc0c50','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el cuarto lugar? 2025/06028, 2025/06820, 2025/06802, 2025/00682, 2025/00628','["2025/00628", "2025/06028", "2025/00682", "2025/06802"]'::jsonb,2,'Psicotécnicos','Orden: 2025/06820, 2025/06802, 2025/06028, 2025/00682, 2025/00628.',null),
('admin-navarra:28-f54c85226e','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/07591, 2025/05197, 2025/05971, 2025/07915, 2025/09715','["2025/07591", "2025/05971", "2025/09715", "2025/05197"]'::jsonb,0,'Psicotécnicos','Orden: 2025/09715, 2025/07915, 2025/07591, 2025/05971, 2025/05197.',null),
('admin-navarra:28-53bf093379','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/02507, 2025/05027, 2025/07502, 2025/00527, 2025/00572','["2025/07502", "2025/00572", "2025/00527", "2025/02507"]'::jsonb,3,'Psicotécnicos','Orden: 2025/07502, 2025/05027, 2025/02507, 2025/00572, 2025/00527.',null),
('admin-navarra:28-f69d0bfa27','admin-navarra',28,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2026/09412, 2026/02941, 2026/09214, 2026/09124, 2026/09421','["2026/09214", "2026/09124", "2026/09421", "2026/09412"]'::jsonb,3,'Psicotécnicos','Orden: 2026/02941, 2026/09124, 2026/09214, 2026/09412, 2026/09421.',null),
('admin-navarra:28-a0bd0e42b2','admin-navarra',28,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el cuarto lugar? 2025/09135, 2025/05193, 2025/03159, 2025/09351, 2025/05391','["2025/05391", "2025/09351", "2025/05193", "2025/03159"]'::jsonb,2,'Psicotécnicos','Orden: 2025/09351, 2025/09135, 2025/05391, 2025/05193, 2025/03159.',null),
('admin-navarra:28-677828edd0','admin-navarra',28,'Clave:
Z | S | I | O | P | L | A
8 | 3 | 4 | 1 | 6 | 2 | 5
Con esta clave, ¿cómo se escribe la palabra PLAZO?','["62581", "22581", "62851", "64581"]'::jsonb,0,'Psicotécnicos','Letra a letra: P=6, L=2, A=5, Z=8, O=1 → 62581.',null),
('admin-navarra:28-0999d09881','admin-navarra',28,'Clave:
M | R | O | U | N | A | G
9 | 5 | 6 | 1 | 2 | 7 | 0
Con esta clave, ¿qué palabra corresponde al código 26597?','["NORMA", "NOMRA", "NORAA", "NGRMA"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 2=N, 6=O, 5=R, 9=M, 7=A → NORMA.',null),
('admin-navarra:28-6cdf8406fd','admin-navarra',28,'Clave:
I | C | O | H | E | R | S | T
1 | 7 | 5 | 9 | 8 | 2 | 4 | 6
Con esta clave, ¿cómo se escribe la palabra CORTES?','["756284", "752684", "752648", "752644"]'::jsonb,1,'Psicotécnicos','Letra a letra: C=7, O=5, R=2, T=6, E=8, S=4 → 752684.',null),
('admin-navarra:28-7385d36d6b','admin-navarra',28,'Clave:
A | D | E | I | N | S | O | G
8 | 7 | 6 | 2 | 1 | 3 | 5 | 0
Con esta clave, ¿qué palabra corresponde al código 361875?','["SNEADO", "SENADO", "SENAGO", "SENAOD"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 3=S, 6=E, 1=N, 8=A, 7=D, 5=O → SENADO.',null),
('admin-navarra:28-6ecbd0a471','admin-navarra',28,'Clave:
Z | E | D | R | U | O | T | C
6 | 8 | 3 | 2 | 4 | 9 | 7 | 0
Con esta clave, ¿cómo se escribe la palabra DECRETO?','["6802879", "3802879", "3892879", "3802899"]'::jsonb,1,'Psicotécnicos','Letra a letra: D=3, E=8, C=0, R=2, E=8, T=7, O=9 → 3802879.',null),
('admin-navarra:28-dda18e3924','admin-navarra',28,'Clave:
F | A | R | O | I | N | M
3 | 2 | 9 | 6 | 1 | 0 | 7
Con esta clave, ¿qué palabra corresponde al código 31972?','["AIRMA", "FARMA", "FIRMA", "IFRMA"]'::jsonb,2,'Psicotécnicos','Cifra a cifra: 3=F, 1=I, 9=R, 7=M, 2=A → FIRMA.',null),
('admin-navarra:28-babb662aba','admin-navarra',28,'Clave:
P | L | H | E | S | O
4 | 0 | 3 | 5 | 6 | 1
Con esta clave, ¿cómo se escribe la palabra SELLO?','["15001", "65010", "56001", "65001"]'::jsonb,3,'Psicotécnicos','Letra a letra: S=6, E=5, L=0, L=0, O=1 → 65001.',null),
('admin-navarra:28-679b0d8596','admin-navarra',28,'Clave:
E | C | U | T | S | O | D | R
5 | 0 | 8 | 6 | 1 | 2 | 4 | 9
Con esta clave, ¿qué palabra corresponde al código 9508912?','["RDCURSO", "RECURSO", "RECUUSO", "RERURSO"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 9=R, 5=E, 0=C, 8=U, 9=R, 1=S, 2=O → RECURSO.',null),
('admin-navarra:28-4fe4df3e05','admin-navarra',28,'Clave:
T | R | E | I | M | B | A | L
2 | 1 | 8 | 4 | 5 | 6 | 3 | 0
Con esta clave, ¿cómo se escribe la palabra TRAMITE?','["2135482", "2315428", "2153428", "2135428"]'::jsonb,3,'Psicotécnicos','Letra a letra: T=2, R=1, A=3, M=5, I=4, T=2, E=8 → 2135428.',null),
('admin-navarra:28-880bb9d67d','admin-navarra',28,'Clave:
I | R | O | A | H | C | E | V | L
2 | 8 | 7 | 9 | 5 | 0 | 4 | 1 | 3
Con esta clave, ¿qué palabra corresponde al código 9805217?','["ARCHVIO", "ARCIHVO", "ARCHIVO", "AICHIVO"]'::jsonb,2,'Psicotécnicos','Cifra a cifra: 9=A, 8=R, 0=C, 5=H, 2=I, 1=V, 7=O → ARCHIVO.',null),
('admin-navarra:28-191bb8bb52','admin-navarra',28,'Clave:
A | O | S | H | T | C
2 | 9 | 6 | 5 | 4 | 3
Con esta clave, ¿cómo se escribe la palabra ACTAS?','["23426", "25426", "23226", "32426"]'::jsonb,0,'Psicotécnicos','Letra a letra: A=2, C=3, T=4, A=2, S=6 → 23426.',null),
('admin-navarra:28-4a133a1711','admin-navarra',28,'Clave:
S | L | E | Y | I
4 | 8 | 6 | 9 | 2
Con esta clave, ¿qué palabra corresponde al código 869?','["LYY", "LEY", "ELY", "SEY"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 8=L, 6=E, 9=Y → LEY.',null),
('admin-navarra:28-0a276c7e18','admin-navarra',28,'Clave:
N | L | E | O | S | P | C
5 | 2 | 9 | 3 | 0 | 4 | 7
Con esta clave, ¿cómo se escribe la palabra PLENO?','["42593", "24953", "42935", "42953"]'::jsonb,3,'Psicotécnicos','Letra a letra: P=4, L=2, E=9, N=5, O=3 → 42953.',null),
('admin-navarra:28-181a32279b','admin-navarra',28,'Clave:
L | N | I | O | C | U | M
5 | 1 | 8 | 0 | 9 | 2 | 7
Con esta clave, ¿qué palabra corresponde al código 709801?','["MOCION", "MCOION", "MOOION", "UOCION"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 7=M, 0=O, 9=C, 8=I, 0=O, 1=N → MOCION.',null),
('admin-navarra:28-4cb9f8c68d','admin-navarra',28,'Clave:
J | O | S | I | E | C | Z | N
3 | 9 | 5 | 1 | 8 | 0 | 6 | 4
Con esta clave, ¿cómo se escribe la palabra CONSEJO?','["0945839", "6945839", "9045839", "0945819"]'::jsonb,0,'Psicotécnicos','Letra a letra: C=0, O=9, N=4, S=5, E=8, J=3, O=9 → 0945839.',null),
('admin-navarra:28-a8199b6a94','admin-navarra',28,'Clave:
G | O | D | R | N | E | H
5 | 4 | 0 | 6 | 8 | 7 | 2
Con esta clave, ¿qué palabra corresponde al código 46078?','["ORNEN", "ORDNE", "OREDN", "ORDEN"]'::jsonb,3,'Psicotécnicos','Cifra a cifra: 4=O, 6=R, 0=D, 7=E, 8=N → ORDEN.',null),
('admin-navarra:28-cf694da593','admin-navarra',28,'Clave:
O | S | C | D | T | N | E
4 | 5 | 3 | 9 | 8 | 2 | 0
Con esta clave, ¿cómo se escribe la palabra CENSO?','["32054", "30454", "38254", "30254"]'::jsonb,3,'Psicotécnicos','Letra a letra: C=3, E=0, N=2, S=5, O=4 → 30254.',null),
('admin-navarra:28-30aa559c30','admin-navarra',28,'Clave:
S | A | T | F | R
8 | 5 | 0 | 2 | 9
Con esta clave, ¿qué palabra corresponde al código 0585?','["TASA", "ATSA", "SASA", "TAAS"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 0=T, 5=A, 8=S, 5=A → TASA.',null),
('admin-navarra:28-6d3c947719','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, G, I, L, O, …','["R", "U", "T", "S"]'::jsonb,2,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la O viene la T.',null),
('admin-navarra:28-6eec16a56b','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, E, G, J, N, …','["P", "R", "Q", "S"]'::jsonb,1,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la N viene la R.',null),
('admin-navarra:28-2cb3341ab9','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, C, E, H, L, …','["O", "Q", "Ñ", "P"]'::jsonb,3,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la L viene la P.',null),
('admin-navarra:28-ee1440cfac','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? A, B, D, G, K, …','["N", "O", "P", "Ñ"]'::jsonb,1,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la K viene la O.',null),
('admin-navarra:28-d56990f519','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? E, F, H, K, Ñ, …','["Q", "R", "T", "S"]'::jsonb,3,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la Ñ viene la S.',null),
('admin-navarra:28-635e09eb3a','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? X, V, T, R, P, …','["N", "Q", "Ñ", "O"]'::jsonb,2,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la P, contando hacia atrás 2, está la Ñ. Recuerda la Ñ.',null),
('admin-navarra:28-32c64f95d8','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? U, S, Q, O, N, …','["L", "K", "M", "Ñ"]'::jsonb,0,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la N, contando hacia atrás 2, está la L. Recuerda la Ñ.',null),
('admin-navarra:28-286aeb101a','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? W, T, Q, Ñ, L, …','["H", "I", "J", "M"]'::jsonb,1,'Psicotécnicos','Se retroceden 3 letras cada vez: antes de la L, contando hacia atrás 3, está la I. Recuerda la Ñ.',null),
('admin-navarra:28-d229380d85','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? W, U, S, Q, O, …','["M", "N", "P", "Ñ"]'::jsonb,1,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la O, contando hacia atrás 2, está la N. Recuerda la Ñ.',null),
('admin-navarra:28-641e302771','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? R, P, Ñ, M, K, …','["J", "I", "H", "L"]'::jsonb,1,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la K, contando hacia atrás 2, está la I. Recuerda la Ñ.',null),
('admin-navarra:28-0d4bacd040','admin-navarra',28,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? Z, X, V, T, R, …','["S", "O", "Q", "P"]'::jsonb,3,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la R, contando hacia atrás 2, está la P. Recuerda la Ñ.',null),
('admin-navarra:28-8bf57bcb17','admin-navarra',28,'¿Qué número continúa la serie? 6, 12, 17, 34, 39, 78, …','["151", "156", "158", "161"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 5. Tras sumar 5 toca multiplicar: 78 × 2 = 156.',null),
('admin-navarra:28-df74dfd4ee','admin-navarra',28,'¿Qué número continúa la serie? 4, 12, 16, 48, 52, 156, …','["468", "472", "471", "160"]'::jsonb,0,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 4. Tras sumar 4 toca multiplicar: 156 × 3 = 468.',null),
('admin-navarra:28-02bf0f5f50','admin-navarra',28,'¿Qué número continúa la serie? 3, 6, 7, 14, 15, 30, …','["59", "62", "31", "60"]'::jsonb,3,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 1. Tras sumar 1 toca multiplicar: 30 × 2 = 60.',null),
('admin-navarra:28-cd17cef93e','admin-navarra',28,'¿Qué número continúa la serie? 6, 18, 19, 57, 58, 174, …','["525", "522", "523", "521"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 1. Tras sumar 1 toca multiplicar: 174 × 3 = 522.',null),
('admin-navarra:28-21c30ece7c','admin-navarra',28,'¿Qué número continúa la serie? 5, 10, 12, 24, 26, 52, …','["54", "104", "106", "102"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 2. Tras sumar 2 toca multiplicar: 52 × 2 = 104.',null),
('admin-navarra:28-9a94eeba60','admin-navarra',28,'¿Qué número continúa la serie? 1, 3, 5, 15, 17, 51, …','["156", "153", "53", "155"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 2. Tras sumar 2 toca multiplicar: 51 × 3 = 153.',null),
('admin-navarra:28-8df0a8ed12','admin-navarra',28,'¿Qué número continúa la serie? 1, 3, 7, 21, 25, 75, …','["225", "229", "79", "221"]'::jsonb,0,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 4. Tras sumar 4 toca multiplicar: 75 × 3 = 225.',null),
('admin-navarra:28-4ee5d5f2cd','admin-navarra',28,'¿Qué número continúa la serie? 21, 31, 28, 38, 35, 45, 42, …','["55", "51", "39", "52"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 3. Ahora toca sumar: 42 + 10 = 52.',null),
('admin-navarra:28-50f1691a71','admin-navarra',28,'¿Qué número continúa la serie? 26, 37, 31, 42, 36, 47, 41, …','["53", "52", "40", "58"]'::jsonb,1,'Psicotécnicos','Se alterna sumar 11 y restar 6. Ahora toca sumar: 41 + 11 = 52.',null),
('admin-navarra:28-d309c87c33','admin-navarra',28,'¿Qué número continúa la serie? 26, 36, 29, 39, 32, 42, 35, …','["31", "46", "44", "45"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 7. Ahora toca sumar: 35 + 10 = 45.',null),
('admin-navarra:28-b42924cff1','admin-navarra',28,'¿Qué número continúa la serie? 17, 21, 18, 22, 19, 23, 20, …','["18", "23", "17", "24"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 4 y restar 3. Ahora toca sumar: 20 + 4 = 24.',null),
('admin-navarra:28-38f640e669','admin-navarra',28,'¿Qué número continúa la serie? 22, 32, 27, 37, 32, 42, 37, …','["46", "32", "52", "47"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 5. Ahora toca sumar: 37 + 10 = 47.',null),
('admin-navarra:28-24a0a86d47','admin-navarra',28,'¿Qué número continúa la serie? 6, 12, 8, 14, 10, 16, 12, …','["19", "10", "8", "18"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 6 y restar 4. Ahora toca sumar: 12 + 6 = 18.',null),
('admin-navarra:28-8a30534393','admin-navarra',28,'¿Qué número continúa la serie? 21, 26, 25, 30, 29, 34, 33, …','["38", "32", "39", "37"]'::jsonb,0,'Psicotécnicos','Se alterna sumar 5 y restar 1. Ahora toca sumar: 33 + 5 = 38.',null),
('admin-navarra:28-c0ef1d2e67','admin-navarra',28,'¿Qué número continúa la serie? 20, 24, 21, 25, 22, 26, 23, …','["26", "20", "27", "30"]'::jsonb,2,'Psicotécnicos','Se alterna sumar 4 y restar 3. Ahora toca sumar: 23 + 4 = 27.',null),
('admin-navarra:28-da7129edcf','admin-navarra',28,'¿Qué número continúa la serie? 13, 14, 16, 20, 28, 44, …','["77", "76", "60", "84"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 44 + 32 = 76.',null),
('admin-navarra:28-1229befbbb','admin-navarra',28,'¿Qué número continúa la serie? 16, 17, 19, 23, 31, 47, …','["80", "79", "77", "63"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 47 + 32 = 79.',null),
('admin-navarra:28-215233a7a2','admin-navarra',28,'¿Qué número continúa la serie? 12, 15, 21, 33, 57, 105, …','["204", "153", "225", "201"]'::jsonb,3,'Psicotécnicos','Las diferencias se duplican (3, 6, 12, 24, 48…); la siguiente es 96: 105 + 96 = 201.',null),
('admin-navarra:28-2dcd70fd88','admin-navarra',28,'¿Qué número continúa la serie? 13, 16, 22, 34, 58, 106, …','["196", "154", "226", "202"]'::jsonb,3,'Psicotécnicos','Las diferencias se duplican (3, 6, 12, 24, 48…); la siguiente es 96: 106 + 96 = 202.',null),
('admin-navarra:28-d9c2d62e7a','admin-navarra',28,'¿Qué número continúa la serie? 2, 3, 5, 9, 17, 33, …','["73", "66", "65", "49"]'::jsonb,2,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 33 + 32 = 65.',null),
('admin-navarra:28-b118416c23','admin-navarra',28,'¿Qué número continúa la serie? 17, 19, 23, 31, 47, 79, …','["159", "143", "139", "111"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (2, 4, 8, 16, 32…); la siguiente es 64: 79 + 64 = 143.',null),
('admin-navarra:28-6fe69e8a41','admin-navarra',28,'¿Qué número continúa la serie? 1, 8, 27, 64, 125, …','["215", "222", "216", "180"]'::jsonb,2,'Psicotécnicos','Son los cubos de números consecutivos: 6³ = 216.',null),
('admin-navarra:28-2f97460859','admin-navarra',28,'¿Qué número continúa la serie? 27, 64, 125, 216, 343, …','["448", "128", "512", "520"]'::jsonb,2,'Psicotécnicos','Son los cubos de números consecutivos: 8³ = 512.',null),
('admin-navarra:28-dde190f666','admin-navarra',28,'Un artículo cuesta 500 €. Primero sube un 40 % y después baja un 25 %. ¿Cuánto cuesta al final?','["505 €", "550 €", "525 €", "575 €"]'::jsonb,2,'Psicotécnicos','500 × 1,4 = 700; × 0,75 = 525 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-8de7ce7701','admin-navarra',28,'Un artículo cuesta 200 €. Primero sube un 25 % y después baja un 20 %. ¿Cuánto cuesta al final?','["210 €", "180 €", "192 €", "200 €"]'::jsonb,3,'Psicotécnicos','200 × 1,25 = 250; × 0,8 = 200 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-751ad4994f','admin-navarra',28,'Un artículo cuesta 1.000 €. Primero sube un 30 % y después baja un 50 %. ¿Cuánto cuesta al final?','["700 €", "800 €", "650 €", "610 €"]'::jsonb,2,'Psicotécnicos','1.000 × 1,3 = 1.300; × 0,5 = 650 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-fadb7bb7cc','admin-navarra',28,'Un artículo cuesta 500 €. Primero sube un 25 % y después baja un 50 %. ¿Cuánto cuesta al final?','["312,5 €", "292,5 €", "337,5 €", "375 €"]'::jsonb,0,'Psicotécnicos','500 × 1,25 = 625; × 0,5 = 312,5 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-530961bf0c','admin-navarra',28,'Un artículo cuesta 300 €. Primero sube un 30 % y después baja un 20 %. ¿Cuánto cuesta al final?','["327 €", "300 €", "330 €", "312 €"]'::jsonb,3,'Psicotécnicos','300 × 1,3 = 390; × 0,8 = 312 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-3b08a66b86','admin-navarra',28,'Un artículo cuesta 200 €. Primero sube un 40 % y después baja un 25 %. ¿Cuánto cuesta al final?','["220 €", "202 €", "210 €", "230 €"]'::jsonb,2,'Psicotécnicos','200 × 1,4 = 280; × 0,75 = 210 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-8838a67fe7','admin-navarra',28,'Un artículo cuesta 200 €. Primero sube un 20 % y después baja un 25 %. ¿Cuánto cuesta al final?','["180 €", "200 €", "172 €", "190 €"]'::jsonb,0,'Psicotécnicos','200 × 1,2 = 240; × 0,75 = 180 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('admin-navarra:28-c544e7bc2b','admin-navarra',28,'Un equipo cuesta 100 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["121 €", "90,75 €", "96 €", "75 €"]'::jsonb,1,'Psicotécnicos','Con el descuento: 100 × 0,75 = 75 €. Con el IVA: × 1,21 = 90,75 €.',null),
('admin-navarra:28-6afe9d4b51','admin-navarra',28,'Un equipo cuesta 200 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["150 €", "181,5 €", "242 €", "192 €"]'::jsonb,1,'Psicotécnicos','Con el descuento: 200 × 0,75 = 150 €. Con el IVA: × 1,21 = 181,5 €.',null),
('admin-navarra:28-ea42452463','admin-navarra',28,'Un equipo cuesta 400 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["363 €", "300 €", "384 €", "484 €"]'::jsonb,0,'Psicotécnicos','Con el descuento: 400 × 0,75 = 300 €. Con el IVA: × 1,21 = 363 €.',null),
('admin-navarra:28-12d2bd6c93','admin-navarra',28,'Un equipo cuesta 600 € sin IVA y tiene un descuento del 10 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["540 €", "666 €", "653,4 €", "726 €"]'::jsonb,2,'Psicotécnicos','Con el descuento: 600 × 0,9 = 540 €. Con el IVA: × 1,21 = 653,4 €.',null),
('admin-navarra:28-87e1323a2a','admin-navarra',28,'Un equipo cuesta 500 € sin IVA y tiene un descuento del 10 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["605 €", "555 €", "450 €", "544,5 €"]'::jsonb,3,'Psicotécnicos','Con el descuento: 500 × 0,9 = 450 €. Con el IVA: × 1,21 = 544,5 €.',null),
('admin-navarra:28-36b2450fc9','admin-navarra',28,'Un auxiliar tarda 10 horas en ordenar un archivo y otro tarda 15 horas. Trabajando juntos, ¿cuánto tardan?','["12 horas", "6 horas", "5 horas", "7 horas"]'::jsonb,1,'Psicotécnicos','En una hora hacen 1/10 + 1/15 = 1/6 del trabajo, así que tardan 10 × 15 / (10 + 15) = 6 horas.',null),
('admin-navarra:28-87df391486','admin-navarra',28,'Un auxiliar tarda 20 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["13 horas", "12 horas", "11 horas", "25 horas"]'::jsonb,1,'Psicotécnicos','En una hora hacen 1/20 + 1/30 = 1/12 del trabajo, así que tardan 20 × 30 / (20 + 30) = 12 horas.',null),
('admin-navarra:28-3cbc2266b4','admin-navarra',28,'Un auxiliar tarda 14 horas en ordenar un archivo y otro tarda 35 horas. Trabajando juntos, ¿cuánto tardan?','["10 horas", "24 horas", "9 horas", "11 horas"]'::jsonb,0,'Psicotécnicos','En una hora hacen 1/14 + 1/35 = 1/10 del trabajo, así que tardan 14 × 35 / (14 + 35) = 10 horas.',null),
('admin-navarra:28-1fc5176fad','admin-navarra',28,'Un auxiliar tarda 12 horas en ordenar un archivo y otro tarda 24 horas. Trabajando juntos, ¿cuánto tardan?','["18 horas", "9 horas", "7 horas", "8 horas"]'::jsonb,3,'Psicotécnicos','En una hora hacen 1/12 + 1/24 = 1/8 del trabajo, así que tardan 12 × 24 / (12 + 24) = 8 horas.',null),
('admin-navarra:28-e03f3b5f8b','admin-navarra',28,'Un auxiliar tarda 12 horas en ordenar un archivo y otro tarda 36 horas. Trabajando juntos, ¿cuánto tardan?','["9 horas", "24 horas", "8 horas", "10 horas"]'::jsonb,0,'Psicotécnicos','En una hora hacen 1/12 + 1/36 = 1/9 del trabajo, así que tardan 12 × 36 / (12 + 36) = 9 horas.',null),
('admin-navarra:28-869f27add1','admin-navarra',28,'Un auxiliar tarda 15 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["9 horas", "11 horas", "10 horas", "22 horas"]'::jsonb,2,'Psicotécnicos','En una hora hacen 1/15 + 1/30 = 1/10 del trabajo, así que tardan 15 × 30 / (15 + 30) = 10 horas.',null),
('admin-navarra:28-1ec94c9f4d','admin-navarra',28,'Un auxiliar tarda 6 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["18 horas", "6 horas", "4 horas", "5 horas"]'::jsonb,3,'Psicotécnicos','En una hora hacen 1/6 + 1/30 = 1/5 del trabajo, así que tardan 6 × 30 / (6 + 30) = 5 horas.',null),
('admin-navarra:28-909c35faa1','admin-navarra',28,'Un auxiliar tarda 10 horas en ordenar un archivo y otro tarda 40 horas. Trabajando juntos, ¿cuánto tardan?','["25 horas", "7 horas", "8 horas", "9 horas"]'::jsonb,2,'Psicotécnicos','En una hora hacen 1/10 + 1/40 = 1/8 del trabajo, así que tardan 10 × 40 / (10 + 40) = 8 horas.',null),
('admin-navarra:28-fd1dfe8edd','admin-navarra',28,'Se reparten 960 € entre tres unidades, A, B y C, en proporción a 1, 3 y 4. ¿Cuánto recibe C?','["480 €", "420 €", "720 €", "540 €"]'::jsonb,0,'Psicotécnicos','Hay 1 + 3 + 4 = 8 partes; cada parte vale 960 / 8 = 120 €. C recibe 4 × 120 = 480 €.',null),
('admin-navarra:28-f22f42d483','admin-navarra',28,'Se reparten 960 € entre tres unidades, A, B y C, en proporción a 1, 2 y 5. ¿Cuánto recibe C?','["600 €", "840 €", "540 €", "660 €"]'::jsonb,0,'Psicotécnicos','Hay 1 + 2 + 5 = 8 partes; cada parte vale 960 / 8 = 120 €. C recibe 5 × 120 = 600 €.',null),
('admin-navarra:28-9e9a68e309','admin-navarra',28,'Se reparten 2.500 € entre tres unidades, A, B y C, en proporción a 2, 5 y 3. ¿Cuánto recibe C?','["1.000 €", "750 €", "875 €", "500 €"]'::jsonb,1,'Psicotécnicos','Hay 2 + 5 + 3 = 10 partes; cada parte vale 2.500 / 10 = 250 €. C recibe 3 × 250 = 750 €.',null),
('admin-navarra:28-7986a74bef','admin-navarra',28,'Se reparten 400 € entre tres unidades, A, B y C, en proporción a 1, 2 y 5. ¿Cuánto recibe B?','["75 €", "150 €", "125 €", "100 €"]'::jsonb,3,'Psicotécnicos','Hay 1 + 2 + 5 = 8 partes; cada parte vale 400 / 8 = 50 €. B recibe 2 × 50 = 100 €.',null),
('admin-navarra:28-592e117574','admin-navarra',28,'Se reparten 500 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["125 €", "75 €", "150 €", "100 €"]'::jsonb,3,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 500 / 10 = 50 €. A recibe 2 × 50 = 100 €.',null),
('admin-navarra:28-7f6e86390f','admin-navarra',28,'Se reparten 1.200 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["360 €", "180 €", "240 €", "120 €"]'::jsonb,2,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 1.200 / 10 = 120 €. A recibe 2 × 120 = 240 €.',null),
('admin-navarra:28-9a075016a3','admin-navarra',28,'Se reparten 1.000 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["100 €", "200 €", "300 €", "150 €"]'::jsonb,1,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 1.000 / 10 = 100 €. A recibe 2 × 100 = 200 €.',null),
('admin-navarra:28-09027d16a7','admin-navarra',28,'Una sesión de formación empieza a las 09:35 y dura 1 hora y 40 minutos. ¿A qué hora termina?','["10:15", "11:15", "11:05", "11:25"]'::jsonb,1,'Psicotécnicos','09:35 + 1 h = 10:35; + 40 min = 11:15.',null),
('admin-navarra:28-2d62c2ec10','admin-navarra',28,'Una sesión de formación empieza a las 11:05 y dura 3 horas y 45 minutos. ¿A qué hora termina?','["13:50", "14:50", "14:40", "15:00"]'::jsonb,1,'Psicotécnicos','11:05 + 3 h = 14:05; + 45 min = 14:50.',null),
('admin-navarra:28-a2cb511e32','admin-navarra',28,'Una sesión de formación empieza a las 10:35 y dura 1 hora y 40 minutos. ¿A qué hora termina?','["12:25", "12:05", "11:15", "12:15"]'::jsonb,3,'Psicotécnicos','10:35 + 1 h = 11:35; + 40 min = 12:15.',null),
('admin-navarra:28-92fbea5fff','admin-navarra',28,'Una sesión de formación empieza a las 12:40 y dura 3 horas y 25 minutos. ¿A qué hora termina?','["15:05", "15:55", "16:05", "16:15"]'::jsonb,2,'Psicotécnicos','12:40 + 3 h = 15:40; + 25 min = 16:05.',null),
('admin-navarra:28-d87e818b32','admin-navarra',28,'Una sesión de formación empieza a las 11:05 y dura 1 hora y 45 minutos. ¿A qué hora termina?','["11:50", "12:40", "13:00", "12:50"]'::jsonb,3,'Psicotécnicos','11:05 + 1 h = 12:05; + 45 min = 12:50.',null),
('admin-navarra:28-3c34f11bc1','admin-navarra',28,'Una sesión de formación empieza a las 11:45 y dura 3 horas y 25 minutos. ¿A qué hora termina?','["15:00", "14:10", "15:20", "15:10"]'::jsonb,3,'Psicotécnicos','11:45 + 3 h = 14:45; + 25 min = 15:10.',null),
('admin-navarra:28-c654b82edd','admin-navarra',28,'Una sesión de formación empieza a las 08:35 y dura 2 horas y 35 minutos. ¿A qué hora termina?','["11:00", "10:10", "11:10", "11:20"]'::jsonb,2,'Psicotécnicos','08:35 + 2 h = 10:35; + 35 min = 11:10.',null),
('admin-navarra:28-91f16e4977','admin-navarra',28,'Entre dos hermanos suman 38 años y el mayor tiene 2 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["17 años", "18 años", "19 años", "20 años"]'::jsonb,1,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (38 − 2) / 2 = 18 años.',null),
('admin-navarra:28-7251d06783','admin-navarra',28,'Entre dos hermanos suman 42 años y el mayor tiene 10 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["16 años", "21 años", "26 años", "15 años"]'::jsonb,0,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (42 − 10) / 2 = 16 años.',null),
('admin-navarra:28-e7b8fe2caa','admin-navarra',28,'Entre dos hermanos suman 44 años y el mayor tiene 8 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["22 años", "17 años", "18 años", "26 años"]'::jsonb,2,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (44 − 8) / 2 = 18 años.',null),
('admin-navarra:28-b6ea49e932','admin-navarra',28,'Entre dos hermanos suman 39 años y el mayor tiene 3 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["18 años", "17 años", "21 años", "19 años"]'::jsonb,0,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (39 − 3) / 2 = 18 años.',null),
('admin-navarra:28-3627d81c99','admin-navarra',28,'Entre dos hermanos suman 68 años y el mayor tiene 8 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["29 años", "30 años", "34 años", "38 años"]'::jsonb,1,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (68 − 8) / 2 = 30 años.',null),
('admin-navarra:28-fb7772047c','admin-navarra',28,'Entre dos hermanos suman 65 años y el mayor tiene 5 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["32 años", "29 años", "30 años", "35 años"]'::jsonb,2,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (65 − 5) / 2 = 30 años.',null),
('admin-navarra:28-bc12c83b02','admin-navarra',28,'Una impresora se revisa cada 9 días y otra cada 12. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["45 días", "108 días", "36 días", "27 días"]'::jsonb,2,'Psicotécnicos','Es el mínimo común múltiplo de 9 y 12: m.c.m.(9, 12) = 36.',null),
('admin-navarra:28-81effce34f','admin-navarra',28,'Una impresora se revisa cada 12 días y otra cada 18. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["24 días", "48 días", "216 días", "36 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 12 y 18: m.c.m.(12, 18) = 36.',null),
('admin-navarra:28-0fd2089882','admin-navarra',28,'Una impresora se revisa cada 14 días y otra cada 21. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["28 días", "294 días", "56 días", "42 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 14 y 21: m.c.m.(14, 21) = 42.',null),
('admin-navarra:28-c0c83cbc85','admin-navarra',28,'Una impresora se revisa cada 15 días y otra cada 20. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["300 días", "75 días", "60 días", "45 días"]'::jsonb,2,'Psicotécnicos','Es el mínimo común múltiplo de 15 y 20: m.c.m.(15, 20) = 60.',null),
('admin-navarra:28-c17c880128','admin-navarra',28,'Una impresora se revisa cada 6 días y otra cada 10. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["60 días", "36 días", "24 días", "30 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 10: m.c.m.(6, 10) = 30.',null),
('admin-navarra:28-f30dc486c0','admin-navarra',28,'Una impresora se revisa cada 6 días y otra cada 9. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["12 días", "18 días", "54 días", "24 días"]'::jsonb,1,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 9: m.c.m.(6, 9) = 18.',null),
('admin-navarra:28-1a6c59d50e','admin-navarra',28,'Una impresora se revisa cada 8 días y otra cada 12. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["96 días", "32 días", "16 días", "24 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 8 y 12: m.c.m.(8, 12) = 24.',null),
('admin-navarra:28-b924022777','admin-navarra',28,'Un coche recorre 60 km a una velocidad constante de 80 km/h. ¿Cuánto tarda?','["1 h", "1 h 15 min", "45 min", "30 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 60 / 80 = 0,75 h, es decir, 45 min.',null),
('admin-navarra:28-f15fee686b','admin-navarra',28,'Un coche recorre 175 km a una velocidad constante de 100 km/h. ¿Cuánto tarda?','["2 h", "1 h 30 min", "1 h 45 min", "2 h 15 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 175 / 100 = 1,75 h, es decir, 1 h 45 min.',null),
('admin-navarra:28-491a1fdd9b','admin-navarra',28,'Un coche recorre 105 km a una velocidad constante de 60 km/h. ¿Cuánto tarda?','["2 h 15 min", "1 h 45 min", "2 h", "1 h 30 min"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 105 / 60 = 1,75 h, es decir, 1 h 45 min.',null),
('admin-navarra:28-5609cf50e7','admin-navarra',28,'Un coche recorre 150 km a una velocidad constante de 120 km/h. ¿Cuánto tarda?','["1 h 45 min", "1 h 15 min", "1 h 30 min", "1 h"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 150 / 120 = 1,25 h, es decir, 1 h 15 min.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
