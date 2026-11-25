-- Banco de preguntas, parte 7 de 13. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:22-058eff0e7a','aux-age',22,'En el Explorador de archivos de Windows 11, Ctrl + Mayús + N:','["Crea una carpeta nueva", "Cambia el nombre de la carpeta", "Crea un acceso directo", "Abre una nueva ventana del Explorador"]'::jsonb,0,'Explorador de archivos','Ctrl + Mayús + N crea una carpeta nueva; Ctrl + N abre una nueva ventana.',null),
('aux-age:22-2daa5c93a9','aux-age',22,'En Windows 11, Windows + flecha izquierda:','["Ajusta la ventana activa a la mitad izquierda de la pantalla", "Cambia al escritorio virtual de la izquierda", "Minimiza la ventana activa", "Mueve la ventana activa al monitor que esté situado a la izquierda"]'::jsonb,0,'Ventanas','Windows + flecha izquierda ajusta la ventana a la izquierda; Windows + Ctrl + flecha cambia de escritorio virtual.',null),
('aux-age:22-5762337079','aux-age',22,'En Windows 11, Windows + Ctrl + D:','["Muestra el escritorio", "Duplica la ventana activa", "Cierra el escritorio virtual actual", "Crea un nuevo escritorio virtual"]'::jsonb,3,'Escritorios virtuales','Windows + Ctrl + D crea un escritorio virtual; Windows + Ctrl + F4 cierra el actual.',null),
('aux-age:22-af589a6a4b','aux-age',22,'En Windows 11, pulsar Windows + un número (por ejemplo, Windows + 2):','["Cambia directamente al escritorio virtual que tenga ese mismo número", "Abre esa ficha de la Configuración", "Ajusta la ventana a esa parte de la pantalla", "Abre la aplicación anclada en esa posición de la barra de tareas"]'::jsonb,3,'Barra de tareas','Windows + número abre o cambia a la aplicación que ocupa esa posición en la barra de tareas.',null),
('aux-age:22-7ea8195a5f','aux-age',22,'En Windows 11, Windows + H abre:','["El historial del portapapeles", "La pantalla de inicio", "El dictado o escritura por voz", "La ayuda de Windows"]'::jsonb,2,'Atajos de Windows','Windows + H activa la escritura por voz.',null),
('aux-age:22-e0bab4272b','aux-age',22,'¿Qué sistema de archivos usa Windows 11 en la unidad donde está instalado?','["FAT32", "NTFS", "exFAT", "ext4"]'::jsonb,1,'Sistemas de archivos','Windows se instala en NTFS; FAT32 y exFAT se usan en memorias USB y ext4 es propio de Linux.',null),
('aux-age:22-36433852d4','aux-age',22,'¿Qué función de Windows guarda copias de versiones anteriores de los archivos personales?','["El Desfragmentador", "Restaurar sistema", "El Liberador de espacio en disco", "El Historial de archivos"]'::jsonb,3,'Copias de seguridad','El Historial de archivos guarda versiones de tus archivos; Restaurar sistema vuelve atrás la configuración del sistema.',null),
('aux-age:26-d72e6b9e53','aux-age',26,'En Access, ¿qué tipo de datos es el más adecuado para guardar importes en euros sin errores de redondeo?','["Número de tipo Simple", "Texto corto", "Moneda", "Calculado"]'::jsonb,2,'Tipos de datos','El tipo Moneda usa 4 decimales fijos y evita errores de redondeo en cálculos monetarios.',null),
('aux-age:26-0b91a76453','aux-age',26,'¿Qué tipo de consulta de Access resume datos agrupándolos por filas y columnas, como una tabla dinámica?','["La consulta de datos anexados con agrupación", "La consulta de tabla de referencias cruzadas", "La consulta de eliminación de registros repetidos", "La consulta de creación de tabla con totales"]'::jsonb,1,'Consultas','Muestra valores resumidos (sumas, recuentos, promedios) agrupados por dos conjuntos de datos.',null),
('aux-age:26-76e1823182','aux-age',26,'La consulta de creación de tabla de Access:','["Crea una tabla nueva a partir de los resultados de la consulta", "Añade registros a una tabla ya existente", "Copia la estructura de una tabla sin sus datos", "Diseña una tabla vacía con los campos que indique el usuario"]'::jsonb,0,'Consultas de acción','La que añade registros a una tabla existente es la consulta de datos anexados.',null),
('aux-age:26-2c24836049','aux-age',26,'En el criterio de una consulta de Access, ¿qué comodín representa cualquier número de caracteres?','["El signo más (+)", "La almohadilla (#)", "El asterisco (*)", "La interrogación (?)"]'::jsonb,2,'Criterios','La interrogación representa un solo carácter y la almohadilla, un solo dígito.',null),
('aux-age:26-0608ebb4ed','aux-age',26,'Para obtener en una consulta de Access los registros con fecha entre el 1 y el 31 de enero de 2026, se usa el operador:','["Entre … Y …", "En … Y …", "Como … O …", "Desde … Hasta …"]'::jsonb,0,'Criterios','Por ejemplo: Entre #01/01/2026# Y #31/01/2026#.',null),
('aux-age:26-7882cd40f1','aux-age',26,'¿Qué objeto de Access permite automatizar tareas sin programar, mediante una lista de acciones?','["La tabla", "El informe", "El formulario", "La macro"]'::jsonb,3,'Objetos de Access','Para programar en lenguaje VBA se usan los módulos.',null),
('aux-age:26-9e1b2d7d4f','aux-age',26,'En Access, los módulos contienen:','["Las relaciones entre tablas", "Los datos de las tablas ordenados por su clave principal", "El diseño de los informes y de los formularios de la base", "Código en lenguaje Visual Basic para Aplicaciones (VBA)"]'::jsonb,3,'Objetos de Access','Permiten automatizaciones más complejas que las macros.',null),
('aux-age:26-49058c23b4','aux-age',26,'La opción Compactar y reparar base de datos de Access sirve para:','["Cifrar la base de datos con una contraseña", "Convertir la base de datos a formato Excel para compartirla con otros usuarios", "Eliminar los registros duplicados de todas las tablas", "Reducir el tamaño del archivo y corregir algunos errores"]'::jsonb,3,'Mantenimiento','Conviene usarla periódicamente, porque las bases de datos crecen al borrar y modificar datos.',null),
('aux-age:26-ec6d92bcbb','aux-age',26,'¿Qué tipo de datos de Access permite almacenar textos de más de 255 caracteres?','["Texto largo", "Sí/No", "Texto corto", "Hipervínculo"]'::jsonb,0,'Tipos de datos','El Texto corto admite como máximo 255 caracteres.',null),
('aux-age:26-2570b8c30e','aux-age',26,'En la cuadrícula de diseño de una consulta de Access, la fila Orden sirve para:','["Establecer el orden en que se muestran las columnas en la hoja de resultados", "Elegir el orden en que aparecen las tablas en la ventana Relaciones de la base", "Numerar correlativamente los registros que aparecen en el resultado de la consulta", "Ordenar los resultados de forma ascendente o descendente por ese campo"]'::jsonb,3,'Diseño de consultas','La fila Criterios filtra los registros y la casilla Mostrar indica si el campo aparece en el resultado.',null),
('aux-age:27-049727c75f','aux-age',27,'En Outlook, ¿qué combinación de teclas reenvía el mensaje seleccionado?','["Ctrl + F", "Ctrl + R", "Ctrl + E", "Ctrl + Mayús + R"]'::jsonb,0,'Atajos de Outlook','Ctrl + R responde al remitente y Ctrl + Mayús + R responde a todos.',null),
('aux-age:27-75cb636b35','aux-age',27,'En Outlook, Ctrl + Mayús + R sirve para:','["Marcar como leído", "Responder solo al remitente", "Responder a todos", "Reenviar el mensaje"]'::jsonb,2,'Atajos de Outlook','Ctrl + R responde solo al remitente.',null),
('aux-age:27-b30c11bab0','aux-age',27,'En Outlook clásico, la combinación Ctrl + 3 lleva a:','["Contactos (Personas)", "Notas", "Correo (Bandeja)", "Calendario (Agenda)"]'::jsonb,0,'Atajos de Outlook','Ctrl + 1 lleva a Correo, Ctrl + 2 a Calendario y Ctrl + 4 a Tareas.',null),
('aux-age:27-f36b8ce191','aux-age',27,'¿Qué combinación de teclas crea un mensaje nuevo en Outlook desde cualquier vista?','["Ctrl + Mayús + N", "Ctrl + Alt + Mayús + M", "Alt + N", "Ctrl + Mayús + M"]'::jsonb,3,'Atajos de Outlook','Ctrl + N crea un elemento nuevo del tipo de la vista activa (en Correo, un mensaje).',null),
('aux-age:27-a8d6afb6ed','aux-age',27,'La carpeta Correo no deseado de Outlook recibe:','["Los mensajes enviados sin asunto o sin texto en el cuerpo", "Los mensajes que el filtro de Outlook considera spam", "Los mensajes con archivos adjuntos grandes", "Los mensajes que el usuario ha eliminado de la Bandeja de entrada"]'::jsonb,1,'Organización del correo','El usuario puede añadir remitentes a la lista de remitentes seguros o bloqueados.',null),
('aux-age:28-f799c93abc','aux-age',28,'¿Qué protocolo se usa para transferir páginas web de forma cifrada?','["SMTP", "HTTPS", "HTTP", "FTP"]'::jsonb,1,'Protocolos de internet','HTTPS es HTTP sobre una conexión cifrada con TLS. FTP transfiere archivos y SMTP envía correo.',null),
('aux-age:28-775ff90b44','aux-age',28,'¿Qué función cumple el sistema DNS en internet?','["Asignar una dirección de correo a cada usuario", "Traducir los nombres de dominio en direcciones IP", "Bloquear el acceso a páginas peligrosas", "Cifrar las comunicaciones entre el navegador y el servidor"]'::jsonb,1,'DNS','Gracias al DNS escribimos «boe.es» en lugar de la dirección IP del servidor.',null),
('aux-age:28-6a506d076a','aux-age',28,'En la dirección https://www.boe.es/diario_boe/, ¿cuál es el dominio de primer nivel?','["boe", "diario_boe", ".es", "www"]'::jsonb,2,'Dominios','El dominio de primer nivel es la última parte del nombre: .es, .com, .org, etc.',null),
('aux-age:28-a27ab084c7','aux-age',28,'¿Qué protocolo se utiliza para enviar correo electrónico?','["HTTP", "POP3", "SMTP", "IMAP"]'::jsonb,2,'Correo electrónico','POP3 e IMAP se usan para recibir o consultar el correo.',null),
('aux-age:28-3c1c378bd8','aux-age',28,'¿Quién creó la World Wide Web?','["Bill Gates, en la empresa Microsoft", "Tim Berners-Lee, en el CERN", "Linus Torvalds, en la Universidad de Helsinki", "Vinton Cerf, en el proyecto ARPANET"]'::jsonb,1,'Historia de internet','La propuso en 1989 y desarrolló el primer navegador y servidor web.',null),
('aux-age:28-dd459ff1e1','aux-age',28,'El lenguaje de marcado con el que se escriben las páginas web es:','["HTML", "XML", "CSS", "SQL"]'::jsonb,0,'Lenguajes web','CSS se usa para el diseño o estilo, SQL para bases de datos y XML para intercambio de datos.',null),
('aux-age:28-11bd6d4f2b','aux-age',28,'Una cookie es:','["Un programa malicioso que se instala en el equipo al visitar determinadas páginas web sin que el usuario lo sepa", "Un pequeño archivo que el sitio web guarda en el navegador del usuario para recordar información", "Un buscador alternativo a Google", "Un certificado digital que acredita que la web es segura y que pertenece a la organización que dice ser"]'::jsonb,1,'Navegación','Sirve, por ejemplo, para recordar el idioma, la sesión iniciada o el carrito de compra.',null),
('aux-age:28-50027c1b67','aux-age',28,'La navegación InPrivate o de incógnito:','["Impide que el proveedor de internet vea las páginas visitadas", "No guarda en el equipo el historial, las cookies ni los datos de formularios al cerrar la ventana", "Oculta la dirección IP del usuario a todos los sitios web que visita, de modo que navega de forma anónima", "Protege el equipo frente a cualquier virus"]'::jsonb,1,'Navegación privada','No hace al usuario anónimo frente a los sitios web, su empresa o su proveedor de internet.',null),
('aux-age:28-5051bc3858','aux-age',28,'En Microsoft Edge, ¿qué combinación abre una nueva ventana InPrivate?','["Ctrl + Mayús + I", "Ctrl + Mayús + P", "Ctrl + Mayús + N", "Ctrl + N"]'::jsonb,2,'Atajos del navegador','En Firefox, la ventana privada se abre con Ctrl + Mayús + P.',null),
('aux-age:28-c3a4bb1f61','aux-age',28,'En los navegadores, Ctrl + Mayús + T sirve para:','["Traducir la página al idioma configurado en el navegador", "Cerrar todas las pestañas abiertas salvo la actual", "Abrir una nueva pestaña en blanco junto a la actual", "Volver a abrir la última pestaña cerrada"]'::jsonb,3,'Atajos del navegador','Ctrl + T abre una pestaña nueva y Ctrl + W cierra la actual.',null),
('aux-age:28-b7ac9f0202','aux-age',28,'¿Qué combinación de teclas añade la página actual a Favoritos o Marcadores?','["Ctrl + D", "Ctrl + B", "Ctrl + F", "Ctrl + H"]'::jsonb,0,'Atajos del navegador','Ctrl + F busca en la página y Ctrl + H abre el historial.',null),
('aux-age:28-a5b03dc5db','aux-age',28,'En los navegadores, Ctrl + J abre:','["Las descargas", "Los favoritos", "El historial", "Una pestaña nueva"]'::jsonb,0,'Atajos del navegador','Ctrl + H abre el historial.',null),
('aux-age:28-03a41a72a2','aux-age',28,'La tecla F5 en un navegador sirve para:','["Actualizar o recargar la página", "Ir a la página de inicio configurada en el navegador", "Activar o desactivar el modo de pantalla completa", "Imprimir la página o guardarla como PDF"]'::jsonb,0,'Atajos del navegador','F11 activa la pantalla completa.',null),
('aux-age:28-71c6bb9926','aux-age',28,'Una intranet es:','["La parte de internet que solo puede visitarse con navegadores especiales y que no aparece indexada en los buscadores", "Una red que conecta varias organizaciones entre sí a través de satélites", "Una red privada de una organización que usa las tecnologías de internet y solo es accesible para sus miembros", "Una red pública mundial accesible para cualquier persona"]'::jsonb,2,'Redes','Si se abre a usuarios externos autorizados (proveedores, clientes), se habla de extranet.',null),
('aux-age:28-b50f98d44a','aux-age',28,'¿Qué es una dirección IP?','["El nombre de dominio con el que se identifica una página web en internet", "La contraseña que protege el acceso a la red wifi de una casa u oficina", "Un número que identifica a un dispositivo dentro de una red", "El código de un certificado digital"]'::jsonb,2,'Direccionamiento','Existen direcciones IPv4 (32 bits) e IPv6 (128 bits).',null),
('aux-age:28-390e4ffef6','aux-age',28,'¿Cuántos bits tiene una dirección IPv6?','["256", "128", "64", "32"]'::jsonb,1,'Direccionamiento','Las direcciones IPv4 tienen 32 bits.',null),
('aux-age:28-e847727327','aux-age',28,'La URL es:','["El nombre del programa que se usa para navegar por internet", "El protocolo de cifrado que utilizan las páginas web seguras", "La dirección que identifica un recurso en internet", "El servidor físico en el que se aloja una página web"]'::jsonb,2,'Navegación','Por ejemplo, https://administracion.gob.es.',null),
('aux-age:28-b624fccb76','aux-age',28,'¿Qué indica el candado que aparece junto a la dirección en el navegador?','["Que la conexión con el sitio está cifrada", "Que el sitio es oficial y no puede ser fraudulento", "Que la web está bloqueada", "Que la página no usa cookies"]'::jsonb,0,'Seguridad','Una web fraudulenta también puede tener conexión cifrada; el candado no garantiza que sea legítima.',null),
('aux-age:28-ccf2abaa00','aux-age',28,'Un motor de búsqueda o buscador es:','["La aplicación que muestra las páginas web en pantalla", "Un programa para descargar archivos de forma más rápida", "Un sistema que localiza páginas web según las palabras clave que introduce el usuario", "Un servidor que asigna los nombres de dominio a las organizaciones que los solicitan y pagan por ellos"]'::jsonb,2,'Buscadores','La aplicación que muestra las páginas es el navegador.',null),
('aux-age:28-53dc623c07','aux-age',28,'En la mayoría de buscadores, escribir una frase entre comillas sirve para:','["Excluir esas palabras de la búsqueda", "Buscar exactamente esa frase", "Buscar sinónimos", "Buscar solo imágenes"]'::jsonb,1,'Buscadores','El signo menos delante de una palabra la excluye de los resultados.',null),
('aux-age:28-1bb571663d','aux-age',28,'El protocolo FTP se usa para:','["Cifrar las páginas web que contienen datos personales", "Enviar mensajes de correo electrónico a otros usuarios", "Transferir archivos entre equipos", "Resolver los nombres de dominio en direcciones IP"]'::jsonb,2,'Protocolos de internet','Existe una versión segura llamada SFTP o FTPS.',null),
('aux-age:28-f5c9797a17','aux-age',28,'¿Qué es la caché del navegador?','["La lista de contraseñas y datos de inicio de sesión que el usuario ha decidido guardar en el navegador", "La carpeta del disco duro en la que se guardan por defecto todos los archivos descargados de internet", "Un almacenamiento temporal de elementos de las páginas visitadas para cargarlas más rápido", "El registro de las páginas marcadas como favoritas"]'::jsonb,2,'Navegación','Borrar la caché puede resolver problemas de visualización de algunas páginas.',null),
('aux-age:28-f23056c084','aux-age',28,'¿Qué es un navegador web?','["Una red privada virtual", "Un servidor que almacena páginas web y las envía a los usuarios que las solicitan", "Un protocolo de transferencia de archivos", "Una aplicación que permite acceder a las páginas web y visualizarlas"]'::jsonb,3,'Navegadores','Ejemplos: Microsoft Edge, Google Chrome, Mozilla Firefox o Safari.',null),
('aux-age:28-9052fea49e','aux-age',28,'¿Qué es una VPN?','["Un servidor de correo electrónico seguro", "Una red privada virtual que crea una conexión cifrada a través de internet", "Un tipo de virus que se propaga por la red infectando los equipos conectados a ella", "Un navegador especial que deben usar los empleados públicos para acceder a la sede"]'::jsonb,1,'Redes','Permite, por ejemplo, teletrabajar accediendo a la red interna de la organización.',null),
('aux-age:28-afea40dc7e','aux-age',28,'¿Qué protocolo permite leer el correo manteniendo los mensajes sincronizados en el servidor?','["FTP", "SMTP", "IMAP", "POP3"]'::jsonb,2,'Correo electrónico','IMAP sincroniza con el servidor; POP3 descarga los mensajes y SMTP sirve para enviar.',null),
('aux-age:28-06125fe643','aux-age',28,'¿Cuántos bits tiene una dirección IPv4?','["64", "128", "32", "16"]'::jsonb,2,'Direccionamiento','IPv4 usa 32 bits (cuatro números de 0 a 255); IPv6, 128.',null),
('aux-age:28-4c447bfef7','aux-age',28,'¿Cuál de estos es un dominio de primer nivel genérico?','[".fr", ".es", ".org", ".mx"]'::jsonb,2,'Dominios','.org es genérico; .es, .fr y .mx son dominios territoriales de países.',null),
('aux-age:28-036fb81f69','aux-age',28,'¿Qué puerto usa por defecto el protocolo HTTPS?','["21", "443", "25", "80"]'::jsonb,1,'Protocolos de internet','HTTPS usa el 443; HTTP, el 80; FTP, el 21, y SMTP, el 25.',null),
('aux-age:28-90b91bb783','aux-age',28,'En un correo electrónico, los destinatarios añadidos en CCO:','["Pueden modificar el mensaje antes de leerlo", "Reciben el mensaje solo si lo abre el destinatario principal", "Reciben una copia sin los archivos adjuntos", "No son visibles para el resto de destinatarios"]'::jsonb,3,'Correo electrónico','CCO (copia oculta) envía el mensaje sin mostrar esas direcciones a los demás.',null),
('aux-age:28-4a019f7d78','aux-age',28,'Un router es un dispositivo que:','["Almacena las páginas web que se visitan", "Traduce los nombres de dominio de las páginas a sus direcciones IP numéricas", "Protege el equipo frente a los virus", "Conecta redes distintas y encamina los paquetes de datos entre ellas"]'::jsonb,3,'Redes','El router interconecta redes (por ejemplo, la de casa con internet) y decide por dónde enviar los datos.',null),
('aux-age:28-5dc3a4d858','aux-age',28,'¿Qué entidad pública gestiona el registro de los dominios .es?','["El Ministerio de Hacienda", "Red.es", "El Instituto Nacional de Ciberseguridad", "La ICANN directamente"]'::jsonb,1,'Dominios','El registro de nombres de dominio bajo .es lo gestiona la entidad pública Red.es.',null),
('aux-age:28-ce72e8e12b','aux-age',28,'¿Cuál de los siguientes NO es un navegador web?','["Outlook", "Mozilla Firefox", "Microsoft Edge", "Google Chrome"]'::jsonb,0,'Navegadores','Outlook es un gestor de correo y calendario; los otros tres son navegadores.',null),
('aux-age:28-a32cdb50b5','aux-age',28,'En los navegadores, Ctrl + T sirve para:','["Volver a abrir la última pestaña cerrada", "Abrir una pestaña nueva", "Cerrar la pestaña actual", "Abrir una ventana privada"]'::jsonb,1,'Atajos del navegador','Ctrl + T abre una pestaña; Ctrl + W la cierra y Ctrl + Mayús + T reabre la última cerrada.',null),
('aux-age:28-c4ad096f61','aux-age',28,'En los navegadores, Ctrl + W sirve para:','["Guardar la página", "Abrir el historial", "Cerrar la pestaña actual", "Abrir una pestaña nueva"]'::jsonb,2,'Atajos del navegador','Ctrl + W cierra la pestaña activa.',null),
('aux-age:28-c4e926206f','aux-age',28,'El ancho de banda de una conexión indica:','["La distancia máxima entre el equipo y el router", "La cantidad de datos que puede transmitir por unidad de tiempo", "El número de dispositivos que se pueden conectar", "El tiempo que tarda en cargar por completo una página web concreta"]'::jsonb,1,'Redes','Se mide en bits por segundo (Mbps, Gbps).',null),
('aux-age:28-76dbec5563','aux-age',28,'Un hipervínculo es:','["Un archivo temporal del navegador", "Un elemento que, al pulsarlo, lleva a otra página o recurso", "Un tipo de dirección IP", "Un programa del navegador que bloquea las ventanas emergentes publicitarias"]'::jsonb,1,'Navegación','Los hipervínculos o enlaces conectan páginas y recursos en la web.',null),
('aux-age:29-56db979553','aux-age',29,'¿Qué número continúa la serie? 8, 20, 32, 44, 56, …','["80", "70", "66", "68"]'::jsonb,3,'Psicotécnicos','Cada término suma 12 al anterior: 56 + 12 = 68.',null),
('aux-age:29-d7f2e3695c','aux-age',29,'¿Qué número continúa la serie? 27, 33, 39, 45, 51, …','["57", "51", "55", "58"]'::jsonb,0,'Psicotécnicos','Cada término suma 6 al anterior: 51 + 6 = 57.',null),
('aux-age:29-b5cf144b10','aux-age',29,'¿Qué número continúa la serie? 23, 31, 39, 47, 55, …','["71", "72", "63", "65"]'::jsonb,2,'Psicotécnicos','Cada término suma 8 al anterior: 55 + 8 = 63.',null),
('aux-age:29-a6c8194149','aux-age',29,'¿Qué número continúa la serie? 12, 21, 30, 39, 48, …','["59", "48", "55", "57"]'::jsonb,3,'Psicotécnicos','Cada término suma 9 al anterior: 48 + 9 = 57.',null),
('aux-age:29-1f006010a0','aux-age',29,'¿Qué número continúa la serie? 12, 24, 36, 48, 60, …','["72", "84", "74", "73"]'::jsonb,0,'Psicotécnicos','Cada término suma 12 al anterior: 60 + 12 = 72.',null),
('aux-age:29-61d9c1a57e','aux-age',29,'¿Qué número continúa la serie? 22, 34, 46, 58, 70, …','["82", "94", "83", "80"]'::jsonb,0,'Psicotécnicos','Cada término suma 12 al anterior: 70 + 12 = 82.',null),
('aux-age:29-2a622f88bf','aux-age',29,'¿Qué número continúa la serie? 38, 42, 46, 50, 54, …','["60", "56", "58", "59"]'::jsonb,2,'Psicotécnicos','Cada término suma 4 al anterior: 54 + 4 = 58.',null),
('aux-age:29-ea76575a4d','aux-age',29,'¿Qué número continúa la serie? 6, 18, 30, 42, 54, …','["65", "64", "66", "67"]'::jsonb,2,'Psicotécnicos','Cada término suma 12 al anterior: 54 + 12 = 66.',null),
('aux-age:29-dbf7cea081','aux-age',29,'¿Qué número continúa la serie? 36, 39, 42, 45, 48, …','["50", "51", "55", "52"]'::jsonb,1,'Psicotécnicos','Cada término suma 3 al anterior: 48 + 3 = 51.',null),
('aux-age:29-d6ceda9c06','aux-age',29,'¿Qué número continúa la serie? 2, 8, 14, 20, 26, …','["32", "30", "33", "38"]'::jsonb,0,'Psicotécnicos','Cada término suma 6 al anterior: 26 + 6 = 32.',null),
('aux-age:29-65be495e7c','aux-age',29,'¿Qué número continúa la serie? 34, 45, 56, 67, 78, …','["78", "91", "89", "88"]'::jsonb,2,'Psicotécnicos','Cada término suma 11 al anterior: 78 + 11 = 89.',null),
('aux-age:29-e4d47eb548','aux-age',29,'¿Qué número continúa la serie? 2, 6, 18, 54, 162, …','["486", "405", "483", "648"]'::jsonb,0,'Psicotécnicos','Cada término se multiplica por 3: 162 × 3 = 486.',null),
('aux-age:29-0f83f960c4','aux-age',29,'¿Qué número continúa la serie? 4, 12, 36, 108, 324, …','["969", "1.296", "975", "972"]'::jsonb,3,'Psicotécnicos','Cada término se multiplica por 3: 324 × 3 = 972.',null),
('aux-age:29-3d6edadac1','aux-age',29,'¿Qué número continúa la serie? 2, 4, 8, 16, 32, …','["62", "48", "66", "64"]'::jsonb,3,'Psicotécnicos','Cada término se multiplica por 2: 32 × 2 = 64.',null),
('aux-age:29-eba57330b9','aux-age',29,'¿Qué número continúa la serie? 4, 8, 16, 32, 64, …','["126", "96", "128", "192"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 2: 64 × 2 = 128.',null),
('aux-age:29-05d0028ce1','aux-age',29,'¿Qué número continúa la serie? 3, 9, 27, 81, 243, …','["726", "608", "729", "972"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 3: 243 × 3 = 729.',null),
('aux-age:29-1290ccc957','aux-age',29,'¿Qué número continúa la serie? 5, 15, 45, 135, 405, …','["1.212", "1.218", "1.215", "1.013"]'::jsonb,2,'Psicotécnicos','Cada término se multiplica por 3: 405 × 3 = 1.215.',null),
('aux-age:29-f949e584b1','aux-age',29,'¿Qué número continúa la serie? 15, 17, 22, 30, 41, 55, …','["73", "66", "69", "72"]'::jsonb,3,'Psicotécnicos','Las diferencias entre términos aumentan de 3 en 3 (2, 5, 8, 11, 14…); la siguiente diferencia es 17: 55 + 17 = 72.',null),
('aux-age:29-6ca736df3d','aux-age',29,'¿Qué número continúa la serie? 7, 10, 15, 22, 31, 42, …','["55", "51", "54", "53"]'::jsonb,0,'Psicotécnicos','Las diferencias entre términos aumentan de 2 en 2 (3, 5, 7, 9, 11…); la siguiente diferencia es 13: 42 + 13 = 55.',null),
('aux-age:29-82e33b10a6','aux-age',29,'¿Qué número continúa la serie? 9, 11, 14, 18, 23, 29, …','["37", "36", "38", "34"]'::jsonb,1,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (2, 3, 4, 5, 6…); la siguiente diferencia es 7: 29 + 7 = 36.',null),
('aux-age:29-fb568258e4','aux-age',29,'¿Qué número continúa la serie? 14, 15, 17, 20, 24, 29, …','["37", "36", "35", "34"]'::jsonb,2,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (1, 2, 3, 4, 5…); la siguiente diferencia es 6: 29 + 6 = 35.',null),
('aux-age:29-bb8d92cf83','aux-age',29,'¿Qué número continúa la serie? 1, 5, 12, 22, 35, 51, …','["71", "64", "70", "67"]'::jsonb,2,'Psicotécnicos','Las diferencias entre términos aumentan de 3 en 3 (4, 7, 10, 13, 16…); la siguiente diferencia es 19: 51 + 19 = 70.',null),
('aux-age:29-77b32019d7','aux-age',29,'¿Qué número continúa la serie? 18, 22, 27, 33, 40, 48, …','["59", "55", "58", "57"]'::jsonb,3,'Psicotécnicos','Las diferencias entre términos aumentan de 1 en 1 (4, 5, 6, 7, 8…); la siguiente diferencia es 9: 48 + 9 = 57.',null),
('aux-age:29-ac4c36a51e','aux-age',29,'¿Qué número continúa la serie? 5, 24, 8, 27, 11, 30, 14, …','["17", "33", "34", "36"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +3 cada vez (24, 27, 30…), así que el siguiente es 33.',null),
('aux-age:29-139990ac5e','aux-age',29,'¿Qué número continúa la serie? 3, 25, 6, 27, 9, 29, 12, …','["33", "31", "29", "15"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +2 cada vez (25, 27, 29…), así que el siguiente es 31.',null),
('aux-age:29-f37daf5914','aux-age',29,'¿Qué número continúa la serie? 12, 23, 15, 20, 18, 17, 21, …','["17", "11", "14", "24"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (23, 20, 17…), así que el siguiente es 14.',null),
('aux-age:29-9165cd88b7','aux-age',29,'¿Qué número continúa la serie? 4, 31, 8, 28, 12, 25, 16, …','["20", "21", "22", "25"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (31, 28, 25…), así que el siguiente es 22.',null),
('aux-age:29-e9d2d44ca2','aux-age',29,'¿Qué número continúa la serie? 2, 41, 5, 38, 8, 35, 11, …','["35", "31", "14", "32"]'::jsonb,3,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía -3 cada vez (41, 38, 35…), así que el siguiente es 32.',null),
('aux-age:29-0437aed1a3','aux-age',29,'¿Qué número continúa la serie? 13, 53, 16, 56, 19, 59, 22, …','["61", "62", "59", "65"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: en las posiciones pares el término varía +3 cada vez (53, 56, 59…), así que el siguiente es 62.',null),
('aux-age:29-8ae8438e59','aux-age',29,'¿Qué número continúa la serie? 4, 10, 22, 46, 94, …','["195", "190", "191", "192"]'::jsonb,1,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 2: 94 × 2 + 2 = 190.',null),
('aux-age:29-7a912c5b77','aux-age',29,'¿Qué número continúa la serie? 2, 5, 11, 23, 47, …','["97", "96", "98", "95"]'::jsonb,3,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 1: 47 × 2 + 1 = 95.',null),
('aux-age:29-c14a8734fb','aux-age',29,'¿Qué número continúa la serie? 2, 6, 14, 30, 62, …','["126", "128", "124", "131"]'::jsonb,0,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 2: 62 × 2 + 2 = 126.',null),
('aux-age:29-2ad14d2392','aux-age',29,'¿Qué número continúa la serie? 4, 11, 25, 53, 109, …','["219", "221", "222", "218"]'::jsonb,1,'Psicotécnicos','Cada término es el anterior multiplicado por 2 más 3: 109 × 2 + 3 = 221.',null),
('aux-age:29-4ba2fee2cc','aux-age',29,'¿Qué número continúa la serie? 9, 16, 25, 36, 49, …','["63", "67", "64", "62"]'::jsonb,2,'Psicotécnicos','Son los cuadrados de números consecutivos: 8² = 64.',null),
('aux-age:29-0d09e43028','aux-age',29,'¿Qué número continúa la serie? 15, 24, 35, 48, 63, …','["78", "80", "63", "81"]'::jsonb,1,'Psicotécnicos','Son los cuadrados menos 1 de números consecutivos: 9² − 1 = 80.',null),
('aux-age:29-1334cee91f','aux-age',29,'¿Qué número continúa la serie? 1, 4, 9, 16, 25, …','["39", "25", "36", "37"]'::jsonb,2,'Psicotécnicos','Son los cuadrados de números consecutivos: 6² = 36.',null),
('aux-age:29-9fc0c9038d','aux-age',29,'¿Qué número continúa la serie? 11, 18, 27, 38, 51, …','["65", "69", "66", "64"]'::jsonb,2,'Psicotécnicos','Son los cuadrados más 2 de números consecutivos: 8² + 2 = 66.',null),
('aux-age:29-9002f5257c','aux-age',29,'¿Qué número continúa la serie? 3, 7, 10, 17, 27, 44, 71, …','["142", "113", "115", "114"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 44 + 71 = 115.',null),
('aux-age:29-9f6904d471','aux-age',29,'¿Qué número continúa la serie? 3, 2, 5, 7, 12, 19, 31, …','["62", "48", "50", "51"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 19 + 31 = 50.',null),
('aux-age:29-b6b6561ec6','aux-age',29,'¿Qué número continúa la serie? 4, 5, 9, 14, 23, 37, 60, …','["96", "98", "97", "120"]'::jsonb,2,'Psicotécnicos','Cada término es la suma de los dos anteriores: 37 + 60 = 97.',null),
('aux-age:29-89e5a3a3ce','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, F, I, L, Ñ, …','["Q", "R", "T", "O"]'::jsonb,0,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la Ñ viene la Q. Recuerda contar la Ñ.',null),
('aux-age:29-6ab276470e','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? K, N, P, S, V, …','["X", "Z", "A", "Y"]'::jsonb,3,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la V viene la Y. Recuerda contar la Ñ.',null),
('aux-age:29-2a1cc296b2','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? A, C, E, G, I, …','["J", "I", "M", "K"]'::jsonb,3,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la I viene la K. Recuerda contar la Ñ.',null),
('aux-age:29-2e7e708448','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, F, J, N, Q, …','["Y", "S", "U", "V"]'::jsonb,2,'Psicotécnicos','Se avanza de 4 en 4 letras (saltando 3): tras la Q viene la U. Recuerda contar la Ñ.',null),
('aux-age:29-82ac1afe25','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? K, M, Ñ, P, R, …','["T", "R", "S", "V"]'::jsonb,0,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la R viene la T. Recuerda contar la Ñ.',null),
('aux-age:29-0091d53061','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? E, I, M, P, T, …','["Y", "Z", "X", "W"]'::jsonb,2,'Psicotécnicos','Se avanza de 4 en 4 letras (saltando 3): tras la T viene la X. Recuerda contar la Ñ.',null),
('aux-age:29-0cef79d190','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? G, I, K, M, Ñ, …','["Q", "O", "Ñ", "P"]'::jsonb,3,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la Ñ viene la P. Recuerda contar la Ñ.',null),
('aux-age:29-6040b4a7c4','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, I, L, Ñ, Q, …','["T", "S", "V", "U"]'::jsonb,0,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la Q viene la T. Recuerda contar la Ñ.',null),
('aux-age:29-1c8846f09a','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? H, K, N, P, S, …','["T", "Y", "V", "U"]'::jsonb,2,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la S viene la V. Recuerda contar la Ñ.',null),
('aux-age:29-bf1705898c','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, E, G, I, K, …','["M", "Ñ", "K", "N"]'::jsonb,0,'Psicotécnicos','Se avanza de 2 en 2 letras (saltando 1): tras la K viene la M. Recuerda contar la Ñ.',null),
('aux-age:29-fe252e6105','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, E, H, K, N, …','["S", "P", "Ñ", "O"]'::jsonb,1,'Psicotécnicos','Se avanza de 3 en 3 letras (saltando 2): tras la N viene la P. Recuerda contar la Ñ.',null),
('aux-age:29-cac46df4bd','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, Y, G, W, H, U, …','["H", "S", "I", "J"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la Y. Toca la primera: I.',null),
('aux-age:29-dc3eda0b8a','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? C, T, E, S, G, R, …','["H", "J", "Q", "I"]'::jsonb,3,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la C (C, E, G…) y otra retrocede 1 desde la T. Toca la primera: I.',null),
('aux-age:29-9b8c5053f1','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, S, G, Q, H, O, …','["I", "H", "N", "J"]'::jsonb,0,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la S. Toca la primera: I.',null),
('aux-age:29-ec538760d3','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, Z, G, X, H, V, …','["H", "T", "I", "J"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la F (F, G, H…) y otra retrocede 2 desde la Z. Toca la primera: I.',null),
('aux-age:29-fec0640514','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, X, F, V, H, T, …','["J", "K", "L", "I"]'::jsonb,0,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la D (D, F, H…) y otra retrocede 2 desde la X. Toca la primera: J.',null),
('aux-age:29-9338e856aa','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, T, D, S, F, R, …','["G", "H", "J", "Q"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la B (B, D, F…) y otra retrocede 1 desde la T. Toca la primera: H.',null),
('aux-age:29-32d3f81a14','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, Y, F, W, H, U, …','["S", "K", "J", "I"]'::jsonb,2,'Psicotécnicos','Son dos series intercaladas: una avanza 2 desde la D (D, F, H…) y otra retrocede 2 desde la Y. Toca la primera: J.',null),
('aux-age:29-e2b919829b','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? G, Y, H, X, I, W, …','["I", "J", "K", "V"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la G (G, H, I…) y otra retrocede 1 desde la Y. Toca la primera: J.',null),
('aux-age:29-51c920e377','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, S, E, Q, F, O, …','["H", "G", "F", "N"]'::jsonb,1,'Psicotécnicos','Son dos series intercaladas: una avanza 1 desde la D (D, E, F…) y otra retrocede 2 desde la S. Toca la primera: G.',null),
('aux-age:29-68da2cdc55','aux-age',29,'¿Cuánto es el 35 % de 160?','["52", "56", "51,2", "64"]'::jsonb,1,'Psicotécnicos','160 × 35 / 100 = 56.',null),
('aux-age:29-34c36a8bd8','aux-age',29,'¿Cuánto es el 25 % de 160?','["35,2", "40", "48", "36"]'::jsonb,1,'Psicotécnicos','160 × 25 / 100 = 40.',null),
('aux-age:29-506b7de0d7','aux-age',29,'¿Cuánto es el 18 % de 640?','["115,2", "96", "99,2", "147,2"]'::jsonb,0,'Psicotécnicos','640 × 18 / 100 = 115,2.',null),
('aux-age:29-4f01be668d','aux-age',29,'¿Cuánto es el 25 % de 720?','["216", "180", "162", "158,4"]'::jsonb,1,'Psicotécnicos','720 × 25 / 100 = 180.',null),
('aux-age:29-28983e4457','aux-age',29,'¿Cuánto es el 12 % de 240?','["28,8", "22,8", "21,6", "40,8"]'::jsonb,0,'Psicotécnicos','240 × 12 / 100 = 28,8.',null),
('aux-age:29-e036a8d26e','aux-age',29,'¿Cuánto es el 35 % de 240?','["76,8", "78", "96", "84"]'::jsonb,3,'Psicotécnicos','240 × 35 / 100 = 84.',null),
('aux-age:29-6612ba94e2','aux-age',29,'¿Cuánto es el 5 % de 420?','["42", "21", "11", "8,4"]'::jsonb,1,'Psicotécnicos','420 × 5 / 100 = 21.',null),
('aux-age:29-100b00d6a5','aux-age',29,'¿Cuánto es el 25 % de 80?','["24", "20", "18", "17,6"]'::jsonb,1,'Psicotécnicos','80 × 25 / 100 = 20.',null),
('aux-age:29-2c8859a172','aux-age',29,'¿Cuánto es el 40 % de 480?','["180", "177,6", "216", "192"]'::jsonb,3,'Psicotécnicos','480 × 40 / 100 = 192.',null),
('aux-age:29-46488fabb7','aux-age',29,'¿Cuánto es el 35 % de 420?','["168", "134,4", "147", "137"]'::jsonb,2,'Psicotécnicos','420 × 35 / 100 = 147.',null),
('aux-age:29-f1188d012d','aux-age',29,'Un producto cuesta 120 €. Si su precio sube un 30 %, ¿cuál es el nuevo precio?','["161 €", "84 €", "153 €", "156 €"]'::jsonb,3,'Psicotécnicos','120 × 1,30 = 156 €.',null),
('aux-age:29-35049309f0','aux-age',29,'Un producto cuesta 200 €. Si su precio baja un 25 %, ¿cuál es el nuevo precio?','["155 €", "150 €", "147 €", "250 €"]'::jsonb,1,'Psicotécnicos','200 × 0,75 = 150 €.',null),
('aux-age:29-44e42c9d16','aux-age',29,'Un producto cuesta 200 €. Si su precio baja un 20 %, ¿cuál es el nuevo precio?','["160 €", "157 €", "165 €", "240 €"]'::jsonb,0,'Psicotécnicos','200 × 0,80 = 160 €.',null),
('aux-age:29-051443680a','aux-age',29,'Un producto cuesta 150 €. Si su precio sube un 20 %, ¿cuál es el nuevo precio?','["177 €", "120 €", "185 €", "180 €"]'::jsonb,3,'Psicotécnicos','150 × 1,20 = 180 €.',null),
('aux-age:29-7faf0c5e52','aux-age',29,'En una oficina hay 400 expedientes y se han resuelto 240. ¿Qué porcentaje se ha resuelto?','["60 %", "55 %", "70 %", "65 %"]'::jsonb,0,'Psicotécnicos','240 / 400 × 100 = 60 %.',null),
('aux-age:29-4dbf0d8454','aux-age',29,'En una oficina hay 50 expedientes y se han resuelto 20. ¿Qué porcentaje se ha resuelto?','["35 %", "45 %", "40 %", "50 %"]'::jsonb,2,'Psicotécnicos','20 / 50 × 100 = 40 %.',null),
('aux-age:29-a9d31d6140','aux-age',29,'En una oficina hay 400 expedientes y se han resuelto 80. ¿Qué porcentaje se ha resuelto?','["20 %", "15 %", "30 %", "25 %"]'::jsonb,0,'Psicotécnicos','80 / 400 × 100 = 20 %.',null),
('aux-age:29-db49105cf2','aux-age',29,'En una oficina hay 50 expedientes y se han resuelto 15. ¿Qué porcentaje se ha resuelto?','["25 %", "35 %", "40 %", "30 %"]'::jsonb,3,'Psicotécnicos','15 / 50 × 100 = 30 %.',null),
('aux-age:29-0814fef9f9','aux-age',29,'En una oficina hay 80 expedientes y se han resuelto 16. ¿Qué porcentaje se ha resuelto?','["15 %", "30 %", "20 %", "25 %"]'::jsonb,2,'Psicotécnicos','16 / 80 × 100 = 20 %.',null),
('aux-age:29-73cd3634d5','aux-age',29,'Si 4 cuadernos cuestan 24 €, ¿cuánto cuestan 10 cuadernos?','["62 €", "66 €", "60 €", "54 €"]'::jsonb,2,'Psicotécnicos','Cada cuaderno cuesta 6 €; 10 × 6 = 60 €.',null),
('aux-age:29-be37891ec2','aux-age',29,'Si 3 cuadernos cuestan 12 €, ¿cuánto cuestan 9 cuadernos?','["36 €", "38 €", "32 €", "40 €"]'::jsonb,0,'Psicotécnicos','Cada cuaderno cuesta 4 €; 9 × 4 = 36 €.',null),
('aux-age:29-1e71dd0f2d','aux-age',29,'Si 3 cuadernos cuestan 12 €, ¿cuánto cuestan 12 cuadernos?','["50 €", "52 €", "48 €", "44 €"]'::jsonb,2,'Psicotécnicos','Cada cuaderno cuesta 4 €; 12 × 4 = 48 €.',null),
('aux-age:29-ae11ac7465','aux-age',29,'6 personas tardan 10 días en tramitar unos expedientes. Al mismo ritmo, ¿cuántos días tardarían 4 personas?','["17 días", "14 días", "18 días", "15 días"]'::jsonb,3,'Psicotécnicos','Es una proporción inversa: 6 × 10 = 60 días-persona; 60 / 4 = 15 días.',null),
('aux-age:29-eec6b5e7f5','aux-age',29,'Un vehículo circula a velocidad constante de 60 km/h. ¿Qué distancia recorre en 2 horas?','["140 km", "150 km", "120 km", "105 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 60 × 2 = 120 km.',null),
('aux-age:29-cf016bbd87','aux-age',29,'Un vehículo circula a velocidad constante de 90 km/h. ¿Qué distancia recorre en 3 horas?','["315 km", "270 km", "248 km", "300 km"]'::jsonb,1,'Psicotécnicos','Distancia = velocidad × tiempo = 90 × 3 = 270 km.',null),
('aux-age:29-b5f6afcab8','aux-age',29,'Un vehículo circula a velocidad constante de 72 km/h. ¿Qué distancia recorre en 3 horas?','["216 km", "252 km", "198 km", "240 km"]'::jsonb,0,'Psicotécnicos','Distancia = velocidad × tiempo = 72 × 3 = 216 km.',null),
('aux-age:29-968e1b4dc6','aux-age',29,'Un vehículo circula a velocidad constante de 100 km/h. ¿Qué distancia recorre en 2 horas?','["233 km", "250 km", "200 km", "175 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 100 × 2 = 200 km.',null),
('aux-age:29-6c53878254','aux-age',29,'Un vehículo circula a velocidad constante de 80 km/h. ¿Qué distancia recorre en 2 horas?','["200 km", "140 km", "160 km", "186 km"]'::jsonb,2,'Psicotécnicos','Distancia = velocidad × tiempo = 80 × 2 = 160 km.',null),
('aux-age:29-e59ce67632','aux-age',29,'Un padre tiene 3 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 5 años?','["41 años", "51 años", "36 años", "43 años"]'::jsonb,0,'Psicotécnicos','Hoy el padre tiene 12 × 3 = 36 años; dentro de 5 años tendrá 41.',null),
('aux-age:29-5d380b4b9f','aux-age',29,'Un padre tiene 4 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 12 años?','["48 años", "96 años", "60 años", "62 años"]'::jsonb,2,'Psicotécnicos','Hoy el padre tiene 12 × 4 = 48 años; dentro de 12 años tendrá 60.',null),
('aux-age:29-c4abebfc03','aux-age',29,'Un padre tiene 3 veces la edad de su hijo, que tiene 12 años. ¿Cuántos años tendrá el padre dentro de 10 años?','["66 años", "36 años", "48 años", "46 años"]'::jsonb,3,'Psicotécnicos','Hoy el padre tiene 12 × 3 = 36 años; dentro de 10 años tendrá 46.',null),
('aux-age:29-dd15d089ab','aux-age',29,'Un padre tiene 4 veces la edad de su hijo, que tiene 8 años. ¿Cuántos años tendrá el padre dentro de 10 años?','["44 años", "42 años", "32 años", "72 años"]'::jsonb,1,'Psicotécnicos','Hoy el padre tiene 8 × 4 = 32 años; dentro de 10 años tendrá 42.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:29-3b67ae2ce9','aux-age',29,'Un opositor obtiene en cuatro simulacros estas notas: 5, 9, 4, 6. ¿Cuál es su nota media?','["5", "7", "8", "6"]'::jsonb,3,'Psicotécnicos','(5 + 9 + 4 + 6) / 4 = 24 / 4 = 6.',null),
('aux-age:29-f7feee8551','aux-age',29,'Un opositor obtiene en cuatro simulacros estas notas: 4, 4, 4, 4. ¿Cuál es su nota media?','["5", "4", "5,33", "3"]'::jsonb,1,'Psicotécnicos','(4 + 4 + 4 + 4) / 4 = 16 / 4 = 4.',null),
('aux-age:29-23f710cd49','aux-age',29,'Un opositor obtiene en cuatro simulacros estas notas: 9, 5, 5, 9. ¿Cuál es su nota media?','["6", "9,33", "8", "7"]'::jsonb,3,'Psicotécnicos','(9 + 5 + 5 + 9) / 4 = 28 / 4 = 7.',null),
('aux-age:29-53f69dbe32','aux-age',29,'Un opositor obtiene en cuatro simulacros estas notas: 9, 8, 5, 10. ¿Cuál es su nota media?','["8", "7", "10,67", "9"]'::jsonb,0,'Psicotécnicos','(9 + 8 + 5 + 10) / 4 = 32 / 4 = 8.',null),
('aux-age:29-44975ad8b5','aux-age',29,'¿Cuánto son los 4/5 de 40?','["32", "24", "50", "40"]'::jsonb,0,'Psicotécnicos','40 / 5 × 4 = 32.',null),
('aux-age:29-0be71b8905','aux-age',29,'¿Cuánto son los 3/4 de 76?','["57", "76", "60", "38"]'::jsonb,0,'Psicotécnicos','76 / 4 × 3 = 57.',null),
('aux-age:29-e0e0ad4045','aux-age',29,'¿Cuánto son los 4/5 de 135?','["112", "108", "81", "135"]'::jsonb,1,'Psicotécnicos','135 / 5 × 4 = 108.',null),
('aux-age:29-4c1754ff67','aux-age',29,'¿Cuánto son los 3/5 de 40?','["24", "27", "32", "16"]'::jsonb,0,'Psicotécnicos','40 / 5 × 3 = 24.',null),
('aux-age:29-7f7f179e5c','aux-age',29,'¿Cuánto son los 2/3 de 48?','["72", "16", "48", "32"]'::jsonb,3,'Psicotécnicos','48 / 3 × 2 = 32.',null),
('aux-age:29-350c489019','aux-age',29,'¿Cuánto son los 3/4 de 120?','["120", "90", "60", "160"]'::jsonb,1,'Psicotécnicos','120 / 4 × 3 = 90.',null),
('aux-age:29-e1b306aa1d','aux-age',29,'¿Cuál es el resultado de 48 × 24?','["1.128", "1.200", "1.162", "1.152"]'::jsonb,3,'Psicotécnicos','48 × 24 = 1.152.',null),
('aux-age:29-9df86b9c29','aux-age',29,'¿Cuál es el resultado de 99 × 32?','["3.168", "3.136", "3.267", "3.178"]'::jsonb,0,'Psicotécnicos','99 × 32 = 3.168.',null),
('aux-age:29-09dc3b114c','aux-age',29,'¿Cuál es el resultado de 125 × 16?','["1.984", "2.125", "2.010", "2.000"]'::jsonb,3,'Psicotécnicos','125 × 16 = 2.000.',null),
('aux-age:29-7b439ee89c','aux-age',29,'¿Cuál es el resultado de 125 × 44?','["5.510", "5.456", "5.500", "5.625"]'::jsonb,2,'Psicotécnicos','125 × 44 = 5.500.',null),
('aux-age:29-129e84fbd9','aux-age',29,'¿Cuál es el resultado de 75 × 24?','["1.875", "1.776", "1.800", "1.810"]'::jsonb,2,'Psicotécnicos','75 × 24 = 1.800.',null),
('aux-age:29-bab16a0316','aux-age',29,'¿Cuál es el resultado de 99 × 44?','["4.366", "4.312", "4.455", "4.356"]'::jsonb,3,'Psicotécnicos','99 × 44 = 4.356.',null),
('aux-age:29-07de447aec','aux-age',29,'¿Cuál es la raíz cuadrada de 576?','["25", "23", "26", "24"]'::jsonb,3,'Psicotécnicos','24 × 24 = 576.',null),
('aux-age:29-82dd021061','aux-age',29,'¿Cuál es la raíz cuadrada de 841?','["28", "31", "29", "30"]'::jsonb,2,'Psicotécnicos','29 × 29 = 841.',null),
('aux-age:29-bed3f1e008','aux-age',29,'¿Cuál es la raíz cuadrada de 144?','["12", "11", "13", "14"]'::jsonb,0,'Psicotécnicos','12 × 12 = 144.',null),
('aux-age:29-f2bb39a00a','aux-age',29,'Calcula: 5 × 2 + 17 − 3 × 2','["23", "48", "89", "21"]'::jsonb,3,'Psicotécnicos','Primero las multiplicaciones: 10 + 17 − 6 = 21.',null),
('aux-age:29-6d4f796224','aux-age',29,'Calcula: 8 × 7 + 17 − 6 × 2','["61", "134", "63", "180"]'::jsonb,0,'Psicotécnicos','Primero las multiplicaciones: 56 + 17 − 12 = 61.',null),
('aux-age:29-83502dbcf2','aux-age',29,'Calcula: 7 × 4 + 15 − 4 × 2','["37", "125", "35", "78"]'::jsonb,2,'Psicotécnicos','Primero las multiplicaciones: 28 + 15 − 8 = 35.',null),
('aux-age:29-ab91adf34c','aux-age',29,'Calcula: 5 × 9 + 11 − 3 × 2','["94", "50", "106", "52"]'::jsonb,1,'Psicotécnicos','Primero las multiplicaciones: 45 + 11 − 6 = 50.',null),
('aux-age:29-d1437736d6','aux-age',29,'Señala el sinónimo de «efímero»:','["Pasajero", "Esencial", "Eficaz", "Duradero"]'::jsonb,0,'Psicotécnicos','Efímero es lo que dura poco: pasajero, fugaz.',null),
('aux-age:29-570f0d299b','aux-age',29,'Señala el sinónimo de «exhaustivo»:','["Superficial", "Minucioso", "Agotado", "Excesivo"]'::jsonb,1,'Psicotécnicos','Exhaustivo es lo que se hace con todo detalle.',null),
('aux-age:29-5112b81476','aux-age',29,'Señala el sinónimo de «inherente»:','["Accesorio", "Heredado", "Consustancial", "Inerte"]'::jsonb,2,'Psicotécnicos','Inherente es lo que por su naturaleza está unido a algo.',null),
('aux-age:29-0172eea8ec','aux-age',29,'Señala el sinónimo de «diligente»:','["Lento", "Directivo", "Delicado", "Cuidadoso"]'::jsonb,3,'Psicotécnicos','Diligente es quien actúa con cuidado, prontitud y esmero.',null),
('aux-age:29-c3125eac1c','aux-age',29,'Señala el sinónimo de «prolijo»:','["Prolífico", "Extenso", "Breve", "Limpio"]'::jsonb,1,'Psicotécnicos','Prolijo significa largo, dilatado en exceso. Prolífico es «que produce mucho».',null),
('aux-age:29-50374bce3a','aux-age',29,'Señala el sinónimo de «subsanar»:','["Corregir", "Sanear", "Sustituir", "Suspender"]'::jsonb,0,'Psicotécnicos','Subsanar es reparar o remediar un defecto.',null),
('aux-age:29-efb39eb1ad','aux-age',29,'Señala el sinónimo de «perentorio»:','["Urgente", "Aplazable", "Perpetuo", "Pertinente"]'::jsonb,0,'Psicotécnicos','Perentorio es lo urgente o apremiante.',null),
('aux-age:29-f8f071f99b','aux-age',29,'Señala el sinónimo de «ecuánime»:','["Arbitrario", "Imparcial", "Equivalente", "Unánime"]'::jsonb,1,'Psicotécnicos','Ecuánime es quien actúa con equidad e imparcialidad.',null),
('aux-age:29-5b6efa2b4b','aux-age',29,'Señala el sinónimo de «exiguo»:','["Exigente", "Escaso", "Abundante", "Excesivo"]'::jsonb,1,'Psicotécnicos','Exiguo es insuficiente, escaso.',null),
('aux-age:29-f12c193ffa','aux-age',29,'Señala el sinónimo de «dilucidar»:','["Dilatar", "Diluir", "Aclarar", "Complicar"]'::jsonb,2,'Psicotécnicos','Dilucidar es aclarar y explicar un asunto.',null),
('aux-age:29-db7a3298ea','aux-age',29,'Señala el antónimo de «prolijo»:','["Conciso", "Extenso", "Detallado", "Minucioso"]'::jsonb,0,'Psicotécnicos','Lo contrario de prolijo (largo, excesivo) es conciso o breve.',null),
('aux-age:29-64116e9073','aux-age',29,'Señala el antónimo de «escaso»:','["Limitado", "Insuficiente", "Exiguo", "Abundante"]'::jsonb,3,'Psicotécnicos','Las otras tres palabras son sinónimos de escaso.',null),
('aux-age:29-cdb695033d','aux-age',29,'Señala el antónimo de «efímero»:','["Breve", "Fugaz", "Transitorio", "Perdurable"]'::jsonb,3,'Psicotécnicos','Las otras tres palabras son sinónimos de efímero.',null),
('aux-age:29-1c6ccdfa8f','aux-age',29,'Señala el antónimo de «diáfano»:','["Claro", "Nítido", "Transparente", "Opaco"]'::jsonb,3,'Psicotécnicos','Diáfano es claro o transparente; su contrario es opaco.',null),
('aux-age:29-ec99757ab2','aux-age',29,'Señala el antónimo de «sosegado»:','["Sereno", "Inquieto", "Tranquilo", "Calmado"]'::jsonb,1,'Psicotécnicos','Sosegado es tranquilo; su contrario es inquieto.',null),
('aux-age:29-f4feee53a9','aux-age',29,'Señala el antónimo de «pródigo»:','["Tacaño", "Espléndido", "Generoso", "Derrochador"]'::jsonb,0,'Psicotécnicos','Pródigo es quien gasta o da con generosidad; su contrario es tacaño.',null),
('aux-age:29-7961b24cef','aux-age',29,'¿Qué palabra está escrita correctamente?','["Absorber", "Absorver", "Abzorber", "Avsorber"]'::jsonb,0,'Psicotécnicos','Absorber se escribe con b en ambas sílabas («absorción» con c).',null),
('aux-age:29-636ae085ec','aux-age',29,'¿Cuál de estas palabras está bien escrita?','["Exhaustivo", "Eshaustivo", "Exhaustibo", "Exaustivo"]'::jsonb,0,'Psicotécnicos','Exhaustivo se escribe con h intercalada y con v.',null),
('aux-age:29-33a80fdff6','aux-age',29,'Indica la palabra correctamente escrita:','["Adecuádo", "Hadecuado", "Adequado", "Adecuado"]'::jsonb,3,'Psicotécnicos','Adecuado se escribe con c y sin tilde (palabra llana terminada en vocal).',null),
('aux-age:29-59d9abed35','aux-age',29,'¿Cuál de las siguientes palabras está escrita sin faltas?','["Desahucio", "Desaucio", "Deshaucio", "Desahúcio"]'::jsonb,0,'Psicotécnicos','Desahucio lleva h intercalada entre la a y la u, y no lleva tilde.',null),
('aux-age:29-e95f5ef49a','aux-age',29,'¿Qué palabra NO pertenece al grupo? Martillo, destornillador, alicates, pincel, llave inglesa','["Alicates", "Destornillador", "Martillo", "Pincel"]'::jsonb,3,'Psicotécnicos','Todas son herramientas de bricolaje o mecánica salvo el pincel, que es un útil de pintura.',null),
('aux-age:29-f3c1744f0f','aux-age',29,'¿Qué palabra NO pertenece al grupo? Ley, reglamento, orden ministerial, sentencia, real decreto','["Real decreto", "Reglamento", "Sentencia", "Orden ministerial"]'::jsonb,2,'Psicotécnicos','Todas son normas jurídicas salvo la sentencia, que es una resolución judicial.',null),
('aux-age:29-6494c83f8b','aux-age',29,'Libro es a biblioteca como cuadro es a:','["Pintor", "Museo", "Marco", "Pincel"]'::jsonb,1,'Psicotécnicos','Los libros se guardan y exponen en bibliotecas; los cuadros, en museos.',null),
('aux-age:29-8ac2c96a23','aux-age',29,'Juez es a sentencia como legislador es a:','["Tribunal", "Ley", "Parlamento", "Juicio"]'::jsonb,1,'Psicotécnicos','El juez dicta sentencias; el legislador aprueba leyes.',null),
('aux-age:29-529a62c474','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿Cuántos expedientes más tramitó Registro en marzo que en abril?','["99", "79", "84", "78"]'::jsonb,1,'Psicotécnicos','196 − 117 = 79.',null),
('aux-age:29-e052c7590d','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿Cuántos expedientes tramitó Información en total entre marzo y junio?','["479", "499", "488", "468"]'::jsonb,0,'Psicotécnicos','121 + 65 + 207 + 86 = 479.',null),
('aux-age:29-df69b13a9e','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 196 | 117 | 125 | 226
Personal | 67 | 191 | 85 | 187
Contratación | 107 | 109 | 68 | 206
Información | 121 | 65 | 207 | 86
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Marzo", "Abril", "Junio", "Mayo"]'::jsonb,2,'Psicotécnicos','Totales por mes: marzo, 491; abril, 482; mayo, 485; junio, 705.',null),
('aux-age:29-a1b81fc5a6','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes registró Sede D en total entre febrero y mayo?','["748", "738", "757", "627"]'::jsonb,0,'Psicotécnicos','121 + 223 + 192 + 212 = 748.',null),
('aux-age:29-94e0eded8f','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes más registró Sede C en febrero que en marzo?','["21", "32", "22", "17"]'::jsonb,2,'Psicotécnicos','107 − 85 = 22.',null),
('aux-age:29-4274330ae7','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 115 | 99 | 144 | 108
Sede B | 137 | 158 | 133 | 183
Sede C | 107 | 85 | 219 | 84
Sede D | 121 | 223 | 192 | 212
¿Cuántas solicitudes hubo en total en mayo?','["578", "587", "596", "607"]'::jsonb,1,'Psicotécnicos','108 + 183 + 84 + 212 = 587.',null),
('aux-age:29-4c8d4eb10a','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Cuántas personas hubo en total en mayo?','["795", "785", "775", "805"]'::jsonb,1,'Psicotécnicos','234 + 141 + 170 + 240 = 785.',null),
('aux-age:29-38e80c44ad','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Qué porcentaje del total de personas de junio corresponde a Ventanilla 1, redondeado a la unidad?','["21 %", "16 %", "22 %", "13 %"]'::jsonb,1,'Psicotécnicos','98 / 623 × 100 = 15,7 %, que redondeado es 16 %.',null),
('aux-age:29-f2af014b03','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 155 | 194 | 234 | 98
Ventanilla 2 | 153 | 204 | 141 | 228
Ventanilla 3 | 117 | 102 | 170 | 192
Ventanilla 4 | 207 | 134 | 240 | 105
¿Cuántas personas atendió Ventanilla 3 en total entre marzo y junio?','["571", "601", "581", "464"]'::jsonb,2,'Psicotécnicos','117 + 102 + 170 + 192 = 581.',null),
('aux-age:29-f7867776c1','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
Sumando los cuatro meses, ¿qué auxiliar digitalizó más documentos?','["Luis", "Ana", "Jorge", "Marta"]'::jsonb,0,'Psicotécnicos','Totales: Ana, 581; Luis, 712; Marta, 607; Jorge, 669.',null),
('aux-age:29-1202cf5852','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
¿Cuántos documentos más digitalizó Jorge en marzo que en abril?','["3", "13", "18", "23"]'::jsonb,1,'Psicotécnicos','163 − 150 = 13.',null),
('aux-age:29-af869f534d','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 224 | 61 | 213 | 83
Luis | 235 | 86 | 189 | 202
Marta | 62 | 220 | 205 | 120
Jorge | 163 | 150 | 157 | 199
¿Cuántos documentos hubo en total en junio?','["595", "624", "604", "613"]'::jsonb,2,'Psicotécnicos','83 + 202 + 120 + 199 = 604.',null),
('aux-age:29-7a9c59e921','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes más tramitó Registro en mayo que en febrero?','["58", "38", "39", "37"]'::jsonb,1,'Psicotécnicos','214 − 176 = 38.',null),
('aux-age:29-afec1d66b8','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes hubo en total en mayo?','["705", "715", "685", "696"]'::jsonb,0,'Psicotécnicos','214 + 198 + 93 + 200 = 705.',null),
('aux-age:29-60509724b3','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 176 | 162 | 109 | 214
Personal | 148 | 97 | 143 | 198
Contratación | 126 | 189 | 100 | 93
Información | 205 | 112 | 203 | 200
¿Cuántos expedientes tramitó Personal en total entre febrero y mayo?','["595", "586", "438", "575"]'::jsonb,1,'Psicotécnicos','148 + 97 + 143 + 198 = 586.',null),
('aux-age:29-2613bdfd7f','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
¿Cuántas solicitudes registró Sede D en total entre enero y abril?','["543", "438", "583", "563"]'::jsonb,3,'Psicotécnicos','125 + 135 + 174 + 129 = 563.',null),
('aux-age:29-991dc88829','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Enero", "Marzo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: enero, 460; febrero, 603; marzo, 491; abril, 405.',null),
('aux-age:29-3162a16fac','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 137 | 62 | 101 | 84
Sede B | 136 | 236 | 109 | 77
Sede C | 62 | 170 | 107 | 115
Sede D | 125 | 135 | 174 | 129
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede A", "Sede B", "Sede D", "Sede C"]'::jsonb,0,'Psicotécnicos','Totales: Sede A, 384; Sede B, 558; Sede C, 454; Sede D, 563.',null),
('aux-age:29-295f4dbc40','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
¿Qué porcentaje del total de personas de abril corresponde a Ventanilla 3, redondeado a la unidad?','["19 %", "11 %", "10 %", "16 %"]'::jsonb,3,'Psicotécnicos','70 / 433 × 100 = 16,2 %, que redondeado es 16 %.',null),
('aux-age:29-7e25a5dc83','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
Sumando los cuatro meses, ¿qué ventanilla atendió más personas?','["Ventanilla 3", "Ventanilla 4", "Ventanilla 2", "Ventanilla 1"]'::jsonb,3,'Psicotécnicos','Totales: Ventanilla 1, 604; Ventanilla 2, 575; Ventanilla 3, 456; Ventanilla 4, 592.',null),
('aux-age:29-b92ad407ee','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 163 | 162 | 71 | 208
Ventanilla 2 | 194 | 128 | 153 | 100
Ventanilla 3 | 133 | 70 | 157 | 96
Ventanilla 4 | 186 | 73 | 123 | 210
¿Cuántas personas atendió Ventanilla 4 en total entre marzo y junio?','["602", "592", "581", "406"]'::jsonb,1,'Psicotécnicos','186 + 73 + 123 + 210 = 592.',null),
('aux-age:29-f1bd1141df','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿En qué mes hubo más documentos sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Junio"]'::jsonb,1,'Psicotécnicos','Totales por mes: marzo, 711; abril, 431; mayo, 493; junio, 597.',null),
('aux-age:29-b6809e495d','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Cuántos documentos digitalizó Jorge en total entre marzo y junio?','["616", "606", "445", "596"]'::jsonb,3,'Psicotécnicos','151 + 187 + 139 + 119 = 596.',null),
('aux-age:29-6548440c9e','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Cuántos documentos más digitalizó Jorge en abril que en mayo?','["53", "43", "48", "58"]'::jsonb,2,'Psicotécnicos','187 − 139 = 48.',null),
('aux-age:29-3a9ad7c190','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 193 | 68 | 66 | 215
Luis | 128 | 89 | 109 | 112
Marta | 239 | 87 | 179 | 151
Jorge | 151 | 187 | 139 | 119
¿Qué porcentaje del total de documentos de abril corresponde a Marta, redondeado a la unidad?','["17 %", "15 %", "26 %", "20 %"]'::jsonb,3,'Psicotécnicos','87 / 431 × 100 = 20,2 %, que redondeado es 20 %.',null),
('aux-age:29-b1d4ac8b53','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Abril", "Mayo", "Febrero", "Marzo"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 597; marzo, 649; abril, 482; mayo, 466.',null),
('aux-age:29-f27aabd9d7','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿Qué porcentaje del total de expedientes de febrero corresponde a Personal, redondeado a la unidad?','["14 %", "23 %", "17 %", "20 %"]'::jsonb,2,'Psicotécnicos','103 / 597 × 100 = 17,3 %, que redondeado es 17 %.',null),
('aux-age:29-5fc6366180','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
¿Cuántos expedientes tramitó Registro en total entre febrero y mayo?','["621", "423", "601", "630"]'::jsonb,0,'Psicotécnicos','198 + 154 + 73 + 196 = 621.',null),
('aux-age:29-e0d93cb9a6','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Febrero | Marzo | Abril | Mayo
Registro | 198 | 154 | 73 | 196
Personal | 103 | 140 | 100 | 128
Contratación | 104 | 184 | 235 | 60
Información | 192 | 171 | 74 | 82
Sumando los cuatro meses, ¿qué unidad tramitó menos expedientes?','["Personal", "Información", "Registro", "Contratación"]'::jsonb,0,'Psicotécnicos','Totales: Registro, 621; Personal, 471; Contratación, 583; Información, 519.',null),
('aux-age:29-9610b25a9a','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
¿Cuántas solicitudes hubo en total en marzo?','["564", "584", "573", "555"]'::jsonb,0,'Psicotécnicos','174 + 170 + 149 + 71 = 564.',null),
('aux-age:29-6faafcada3','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede D", "Sede A", "Sede B", "Sede C"]'::jsonb,3,'Psicotécnicos','Totales: Sede A, 775; Sede B, 762; Sede C, 429; Sede D, 587.',null),
('aux-age:29-7ff24bd677','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 150 | 174 | 220 | 231
Sede B | 228 | 170 | 214 | 150
Sede C | 112 | 149 | 104 | 64
Sede D | 235 | 71 | 120 | 161
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 725; marzo, 564; abril, 658; mayo, 606.',null),
('aux-age:29-08d9e4e9bf','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas más atendió Ventanilla 2 en abril que en marzo?','["88", "108", "87", "98"]'::jsonb,0,'Psicotécnicos','182 − 94 = 88.',null),
('aux-age:29-9c47617e08','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 4", "Ventanilla 2", "Ventanilla 3", "Ventanilla 1"]'::jsonb,2,'Psicotécnicos','Totales: Ventanilla 1, 675; Ventanilla 2, 561; Ventanilla 3, 429; Ventanilla 4, 576.',null),
('aux-age:29-492c149a84','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas hubo en total en mayo?','["492", "502", "483", "501"]'::jsonb,0,'Psicotécnicos','215 + 65 + 82 + 130 = 492.',null),
('aux-age:29-db5ce374ee','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Febrero | Marzo | Abril | Mayo
Ventanilla 1 | 154 | 88 | 218 | 215
Ventanilla 2 | 220 | 94 | 182 | 65
Ventanilla 3 | 142 | 141 | 64 | 82
Ventanilla 4 | 198 | 85 | 163 | 130
¿Cuántas personas atendió Ventanilla 1 en total entre febrero y mayo?','["675", "521", "685", "664"]'::jsonb,0,'Psicotécnicos','154 + 88 + 218 + 215 = 675.',null),
('aux-age:29-e33a0ffb31','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿Cuántos documentos digitalizó Marta en total entre marzo y junio?','["687", "667", "676", "530"]'::jsonb,1,'Psicotécnicos','137 + 91 + 227 + 212 = 667.',null),
('aux-age:29-c971c03038','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿Cuántos documentos más digitalizó Luis en mayo que en marzo?','["135", "125", "136", "134"]'::jsonb,0,'Psicotécnicos','222 − 87 = 135.',null),
('aux-age:29-ceabc63e40','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
¿En qué mes hubo más documentos sumando las cuatro filas?','["Mayo", "Marzo", "Abril", "Junio"]'::jsonb,0,'Psicotécnicos','Totales por mes: marzo, 564; abril, 571; mayo, 711; junio, 499.',null),
('aux-age:29-cde7abe404','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Marzo | Abril | Mayo | Junio
Ana | 103 | 126 | 71 | 61
Luis | 87 | 215 | 222 | 108
Marta | 137 | 91 | 227 | 212
Jorge | 237 | 139 | 191 | 118
Sumando los cuatro meses, ¿qué auxiliar digitalizó menos documentos?','["Marta", "Luis", "Jorge", "Ana"]'::jsonb,3,'Psicotécnicos','Totales: Ana, 361; Luis, 632; Marta, 667; Jorge, 685.',null),
('aux-age:29-66edf3bec5','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿Cuántos expedientes hubo en total en mayo?','["543", "533", "523", "553"]'::jsonb,0,'Psicotécnicos','116 + 217 + 122 + 88 = 543.',null),
('aux-age:29-eeaf94d59d','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Marzo", "Mayo", "Abril", "Junio"]'::jsonb,2,'Psicotécnicos','Totales por mes: marzo, 614; abril, 725; mayo, 543; junio, 613.',null),
('aux-age:29-437b1a7070','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Marzo | Abril | Mayo | Junio
Registro | 198 | 204 | 116 | 220
Personal | 126 | 218 | 217 | 170
Contratación | 136 | 150 | 122 | 162
Información | 154 | 153 | 88 | 61
¿Cuántos expedientes más tramitó Registro en abril que en mayo?','["87", "108", "78", "88"]'::jsonb,3,'Psicotécnicos','204 − 116 = 88.',null),
('aux-age:29-dd789b47e4','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿Cuántas solicitudes registró Sede C en total entre febrero y mayo?','["523", "532", "513", "503"]'::jsonb,0,'Psicotécnicos','69 + 186 + 147 + 121 = 523.',null),
('aux-age:29-29286951b6','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Marzo", "Mayo", "Abril", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: febrero, 744; marzo, 483; abril, 562; mayo, 524.',null),
('aux-age:29-0790cc9872','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
Sumando los cuatro meses, ¿qué sede registró menos solicitudes?','["Sede D", "Sede A", "Sede C", "Sede B"]'::jsonb,0,'Psicotécnicos','Totales: Sede A, 574; Sede B, 724; Sede C, 523; Sede D, 492.',null),
('aux-age:29-311dc18188','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Febrero | Marzo | Abril | Mayo
Sede A | 211 | 62 | 206 | 95
Sede B | 240 | 120 | 143 | 221
Sede C | 69 | 186 | 147 | 121
Sede D | 224 | 115 | 66 | 87
¿Cuántas solicitudes más registró Sede C en abril que en mayo?','["27", "16", "26", "21"]'::jsonb,2,'Psicotécnicos','147 − 121 = 26.',null),
('aux-age:29-465c6ffeb0','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
¿Cuántas personas más atendió Ventanilla 1 en marzo que en mayo?','["100", "102", "101", "106"]'::jsonb,2,'Psicotécnicos','183 − 82 = 101.',null),
('aux-age:29-08e7a19126','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 3", "Ventanilla 4", "Ventanilla 1", "Ventanilla 2"]'::jsonb,3,'Psicotécnicos','Totales: Ventanilla 1, 547; Ventanilla 2, 359; Ventanilla 3, 731; Ventanilla 4, 630.',null),
('aux-age:29-4def3765e9','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 183 | 73 | 82 | 209
Ventanilla 2 | 122 | 69 | 77 | 91
Ventanilla 3 | 163 | 224 | 176 | 168
Ventanilla 4 | 131 | 220 | 65 | 214
¿Cuántas personas hubo en total en mayo?','["400", "409", "380", "420"]'::jsonb,0,'Psicotécnicos','82 + 77 + 176 + 65 = 400.',null),
('aux-age:29-3d399615c7','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Cuántos documentos hubo en total en marzo?','["412", "402", "421", "432"]'::jsonb,0,'Psicotécnicos','142 + 100 + 79 + 91 = 412.',null),
('aux-age:29-93b6892c74','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Qué porcentaje del total de documentos de abril corresponde a Ana, redondeado a la unidad?','["10 %", "13 %", "19 %", "16 %"]'::jsonb,3,'Psicotécnicos','106 / 661 × 100 = 16,0 %, que redondeado es 16 %.',null),
('aux-age:29-0265542d52','aux-age',29,'La tabla recoge los documentos digitalizados por cuatro auxiliares:
Auxiliar | Febrero | Marzo | Abril | Mayo
Ana | 60 | 142 | 106 | 218
Luis | 169 | 100 | 103 | 193
Marta | 180 | 79 | 231 | 137
Jorge | 121 | 91 | 221 | 167
¿Cuántos documentos digitalizó Marta en total entre febrero y mayo?','["636", "616", "617", "627"]'::jsonb,3,'Psicotécnicos','180 + 79 + 231 + 137 = 627.',null),
('aux-age:29-4d680b222b','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿En qué mes hubo más expedientes sumando las cuatro filas?','["Febrero", "Abril", "Enero", "Marzo"]'::jsonb,2,'Psicotécnicos','Totales por mes: enero, 649; febrero, 643; marzo, 621; abril, 608.',null),
('aux-age:29-d31981b02b','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿Qué porcentaje del total de expedientes de marzo corresponde a Registro, redondeado a la unidad?','["21 %", "30 %", "27 %", "22 %"]'::jsonb,2,'Psicotécnicos','169 / 621 × 100 = 27,2 %, que redondeado es 27 %.',null),
('aux-age:29-08e38c41cd','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
¿Cuántos expedientes más tramitó Registro en enero que en febrero?','["124", "154", "135", "134"]'::jsonb,3,'Psicotécnicos','209 − 75 = 134.',null),
('aux-age:29-076d03e3a5','aux-age',29,'La tabla recoge los expedientes tramitados por cuatro unidades de una consejería:
Unidad | Enero | Febrero | Marzo | Abril
Registro | 209 | 75 | 169 | 161
Personal | 134 | 211 | 219 | 90
Contratación | 201 | 170 | 155 | 156
Información | 105 | 187 | 78 | 201
Sumando los cuatro meses, ¿qué unidad tramitó más expedientes?','["Información", "Contratación", "Registro", "Personal"]'::jsonb,1,'Psicotécnicos','Totales: Registro, 614; Personal, 654; Contratación, 682; Información, 571.',null),
('aux-age:29-382d8587b1','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿Cuántas solicitudes registró Sede A en total entre enero y abril?','["568", "588", "579", "569"]'::jsonb,2,'Psicotécnicos','116 + 100 + 225 + 138 = 579.',null),
('aux-age:29-f631fbb79e','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿Cuántas solicitudes más registró Sede D en febrero que en abril?','["34", "35", "36", "30"]'::jsonb,1,'Psicotécnicos','222 − 187 = 35.',null),
('aux-age:29-6dc2c031de','aux-age',29,'La tabla recoge las solicitudes registradas en cuatro sedes de un organismo:
Sede | Enero | Febrero | Marzo | Abril
Sede A | 116 | 100 | 225 | 138
Sede B | 82 | 233 | 130 | 182
Sede C | 78 | 152 | 197 | 197
Sede D | 143 | 222 | 121 | 187
¿En qué mes hubo más solicitudes sumando las cuatro filas?','["Abril", "Enero", "Marzo", "Febrero"]'::jsonb,3,'Psicotécnicos','Totales por mes: enero, 419; febrero, 707; marzo, 673; abril, 704.',null),
('aux-age:29-a269786001','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 210 | 179 | 159 | 178
Ventanilla 2 | 88 | 90 | 137 | 214
Ventanilla 3 | 201 | 198 | 224 | 78
Ventanilla 4 | 141 | 121 | 82 | 101
Sumando los cuatro meses, ¿qué ventanilla atendió menos personas?','["Ventanilla 4", "Ventanilla 2", "Ventanilla 1", "Ventanilla 3"]'::jsonb,0,'Psicotécnicos','Totales: Ventanilla 1, 726; Ventanilla 2, 529; Ventanilla 3, 701; Ventanilla 4, 445.',null),
('aux-age:29-96f26fb283','aux-age',29,'La tabla recoge las personas atendidas en cuatro ventanillas de una oficina:
Ventanilla | Marzo | Abril | Mayo | Junio
Ventanilla 1 | 210 | 179 | 159 | 178
Ventanilla 2 | 88 | 90 | 137 | 214
Ventanilla 3 | 201 | 198 | 224 | 78
Ventanilla 4 | 141 | 121 | 82 | 101
¿Cuántas personas atendió Ventanilla 1 en total entre marzo y junio?','["726", "716", "736", "516"]'::jsonb,0,'Psicotécnicos','210 + 179 + 159 + 178 = 726.',null),
('aux-age:29-81387bbc8e','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Gascón, Garrido, Garcés, Garzón, Gallego, Gálvez','["Gallego", "Garzón", "Garrido", "Gascón"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Gallego, Gálvez, Garcés, Garrido, Garzón, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-f6b400d561','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Martín, Marco, Mata, Matas, Marín, Mas','["Marco", "Marín", "Mas", "Martín"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Marco, Marín, Martín, Mas, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-a0939e2dd4','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Pereira, Perea, Pena, Peña, Pérez, Peral','["Pena", "Perea", "Peral", "Peña"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Pena, Peña, Peral, Perea, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-630986f285','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Salinas, Saez, Sánchez, Salas, Sandoval, Sainz','["Sandoval", "Salas", "Salinas", "Sánchez"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sánchez, Sandoval. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-4819e7cf2d','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Román, Rosa, Romero, Rubio, Rojas, Rojo','["Rosa", "Román", "Rojo", "Rojas"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Rojas, Rojo, Román, Romero, Rosa, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-dc930aa4e2','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Nogales, Noguera, Núñez, Nava, Naranjo, Nieto','["Nava", "Nieto", "Núñez", "Naranjo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Naranjo, Nava, Nieto, Nogales, Noguera, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-e566fce8f4','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Calvo, Castro, Camacho, Campos, Casas, Casado','["Casas", "Casado", "Calvo", "Castro"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Campos, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-c156494e17','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Olmedo, Osorio, Orozco, Olmo, Oliver, Oliva','["Orozco", "Oliver", "Olmedo", "Oliva"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Oliva, Oliver, Olmedo, Olmo, Orozco, Osorio. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-6ffc960571','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Garcés, Gallardo, Gamero, Galán, Gascón, García','["Galán", "Garcés", "Gallardo", "Gamero"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Galán, Gallardo, Gamero, Garcés, García, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-193ef9831a','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Mata, Márquez, Marco, Mariño, Matas, Martínez','["Márquez", "Mariño", "Mata", "Martínez"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Marco, Mariño, Márquez, Martínez, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-84a3a89e06','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Pelayo, Pereira, Penalva, Peñalver, Perea, Peña','["Pelayo", "Peña", "Peñalver", "Penalva"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Pelayo, Penalva, Peña, Peñalver, Perea, Pereira. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-6666d45866','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Sanz, Sainz, Saez, Salinas, Salas, Sandoval','["Sainz", "Saez", "Salinas", "Salas"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sandoval, Sanz. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-76f7bb5b54','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Rubio, Rojo, Roldán, Rosales, Rosa, Romo','["Romo", "Rosa", "Roldán", "Rubio"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Rojo, Roldán, Romo, Rosa, Rosales, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-0f69863eec','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Núñez, Nadal, Navas, Nogales, Naranjo, Nava','["Navas", "Nava", "Nogales", "Naranjo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Nadal, Naranjo, Nava, Navas, Nogales, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-39171c1453','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Cantero, Castillo, Cano, Castaño, Camacho, Casado','["Cantero", "Cano", "Casado", "Castillo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Camacho, Cano, Cantero, Casado, Castaño, Castillo. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-41fc255e61','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Oliver, Osorio, Olmo, Olmedo, Otero, Orozco','["Oliver", "Olmo", "Olmedo", "Osorio"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Oliver, Olmedo, Olmo, Orozco, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-9c5c4f2293','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Garcés, Galán, Gallego, Garzón, Gascón, García','["Galán", "Garcés", "Garzón", "Gallego"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Galán, Gallego, Garcés, García, Garzón, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-6ffc0f286f','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Martínez, Mas, Matas, Marín, Marco, Mármol','["Marco", "Martínez", "Marín", "Mármol"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Marco, Marín, Mármol, Martínez, Mas, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-fa1ff9f9f2','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Penalva, Peñalver, Pérez, Pena, Pereira, Perea','["Peñalver", "Pereira", "Pérez", "Perea"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Pena, Penalva, Peñalver, Perea, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-b05d72400b','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Sanz, Sainz, Salas, Sandoval, Saez, Salinas','["Sandoval", "Saez", "Sanz", "Salinas"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Saez, Sainz, Salas, Salinas, Sandoval, Sanz. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-0ba319f6d7','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Rojo, Rosa, Romero, Rubio, Román, Rojas','["Román", "Rojo", "Rojas", "Rosa"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Rojas, Rojo, Román, Romero, Rosa, Rubio. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-20cdca3e70','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Noguera, Nava, Navas, Nadal, Núñez, Nieto','["Noguera", "Nava", "Núñez", "Nieto"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Nadal, Nava, Navas, Nieto, Noguera, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-1935475899','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Casas, Casado, Campos, Camacho, Calvo, Castro','["Campos", "Casas", "Casado", "Castro"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Campos, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-3f8bbfb819','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Osorio, Otero, Ortiz, Olmo, Ortuño, Ortega','["Ortuño", "Ortiz", "Ortega", "Olmo"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Olmo, Ortega, Ortiz, Ortuño, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-17f9b4d868','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Gallardo, Gascón, Gamero, Garcés, Gallego, Garrido','["Gascón", "Garrido", "Gamero", "Garcés"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Gallardo, Gallego, Gamero, Garcés, Garrido, Gascón. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-6b71f58517','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Matas, Mármol, Marco, Mata, Mariño, Mas','["Marco", "Mas", "Mármol", "Mata"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Marco, Mariño, Mármol, Mas, Mata, Matas. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-a10c037ae7','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Pereira, Penalva, Pérez, Peral, Pedraza, Pena','["Penalva", "Pena", "Pereira", "Pedraza"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Pedraza, Pena, Penalva, Peral, Pereira, Pérez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-c7d65fa619','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Salinas, Sanz, Sánchez, Sandoval, Sanjuán, Sainz','["Sandoval", "Sánchez", "Sanjuán", "Salinas"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Sainz, Salinas, Sánchez, Sandoval, Sanjuán, Sanz. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-c370cab18e','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Rosa, Ruano, Román, Rojo, Roldán, Romero','["Román", "Ruano", "Roldán", "Romero"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Rojo, Roldán, Román, Romero, Rosa, Ruano. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-7f4b0d91da','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Naranjo, Nieto, Nogales, Nava, Núñez, Nadal','["Nadal", "Nieto", "Naranjo", "Nava"]'::jsonb,3,'Psicotécnicos','Orden alfabético: Nadal, Naranjo, Nava, Nieto, Nogales, Núñez. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-f43413a14f','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en cuarto lugar? Casas, Camacho, Calvo, Castro, Cano, Casado','["Casado", "Casas", "Camacho", "Cano"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Calvo, Camacho, Cano, Casado, Casas, Castro. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-53b7167453','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en quinto lugar? Otero, Ortiz, Olmo, Oliver, Olmedo, Osorio','["Otero", "Osorio", "Ortiz", "Olmo"]'::jsonb,1,'Psicotécnicos','Orden alfabético: Oliver, Olmedo, Olmo, Ortiz, Osorio, Otero. La tilde no cuenta y la Ñ va después de la N.',null),
('aux-age:29-de99ad1838','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Gallardo Sánchez, Javier; Gallardo Salinas, Pablo; Gascón Salas, Óscar; Gallardo Sanz, Sara; Gascón Salas, Carmen','["Gallardo Sanz, Sara", "Gascón Salas, Óscar", "Gallardo Sánchez, Javier", "Gascón Salas, Carmen"]'::jsonb,0,'Psicotécnicos','Orden: Gallardo Salinas, Pablo; Gallardo Sánchez, Javier; Gallardo Sanz, Sara; Gascón Salas, Carmen; Gascón Salas, Óscar. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-ce7fe2238a','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Márquez Rubio, Raúl; Mármol Román, Luis; Mármol Román, Irene; Márquez Román, Elena; Mármol Rosales, Javier','["Mármol Rosales, Javier", "Mármol Román, Luis", "Márquez Román, Elena", "Márquez Rubio, Raúl"]'::jsonb,2,'Psicotécnicos','Orden: Mármol Román, Irene; Mármol Román, Luis; Mármol Rosales, Javier; Márquez Román, Elena; Márquez Rubio, Raúl. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-02c21ff990','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Pérez Nieto, Pablo; Pelayo Navarro, Ana; Pelayo Nava, Óscar; Pena Núñez, Irene; Pelayo Nogales, Sara','["Pelayo Navarro, Ana", "Pena Núñez, Irene", "Pelayo Nogales, Sara", "Pelayo Nava, Óscar"]'::jsonb,1,'Psicotécnicos','Orden: Pelayo Nava, Óscar; Pelayo Navarro, Ana; Pelayo Nogales, Sara; Pena Núñez, Irene; Pérez Nieto, Pablo. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-90bb1f18f4','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Salas Camacho, Sara; Sanz Campos, Óscar; Salas Camacho, Ana; Sancho Castro, Pablo; Salas Castaño, Lucía','["Sanz Campos, Óscar", "Sancho Castro, Pablo", "Salas Castaño, Lucía", "Salas Camacho, Ana"]'::jsonb,2,'Psicotécnicos','Orden: Salas Camacho, Ana; Salas Camacho, Sara; Salas Castaño, Lucía; Sancho Castro, Pablo; Sanz Campos, Óscar. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-bac2f828a5','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Román Oliver, Javier; Rojo Ortega, Raúl; Rojo Ortega, Lucía; Román Olmedo, Ana; Rojo Olmo, Pablo','["Rojo Ortega, Raúl", "Rojo Olmo, Pablo", "Román Olmedo, Ana", "Rojo Ortega, Lucía"]'::jsonb,0,'Psicotécnicos','Orden: Rojo Olmo, Pablo; Rojo Ortega, Lucía; Rojo Ortega, Raúl; Román Oliver, Javier; Román Olmedo, Ana. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-32c2f1761f','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Navarro Gamero, Diego; Nava Gascón, Sara; Nava Gamero, Javier; Nava Galán, Lucía; Navarro Garrido, Carmen','["Nava Gamero, Javier", "Nava Galán, Lucía", "Navarro Gamero, Diego", "Nava Gascón, Sara"]'::jsonb,0,'Psicotécnicos','Orden: Nava Galán, Lucía; Nava Gamero, Javier; Nava Gascón, Sara; Navarro Gamero, Diego; Navarro Garrido, Carmen. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-f8ca89f973','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Casas Matas, Lucía; Casado Martínez, Carmen; Casas Mata, Lucía; Cano Márquez, Ana; Casado Marín, Raúl','["Casado Martínez, Carmen", "Casas Mata, Lucía", "Cano Márquez, Ana", "Casado Marín, Raúl"]'::jsonb,1,'Psicotécnicos','Orden: Cano Márquez, Ana; Casado Marín, Raúl; Casado Martínez, Carmen; Casas Mata, Lucía; Casas Matas, Lucía. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-61af5d52f2','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Osorio Peñalver, Óscar; Osorio Pedraza, Irene; Ortuño Peral, Óscar; Osorio Perea, Javier; Otero Pedraza, Javier','["Osorio Pedraza, Irene", "Osorio Peñalver, Óscar", "Otero Pedraza, Javier", "Ortuño Peral, Óscar"]'::jsonb,1,'Psicotécnicos','Orden: Ortuño Peral, Óscar; Osorio Pedraza, Irene; Osorio Peñalver, Óscar; Osorio Perea, Javier; Otero Pedraza, Javier. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-67c1215ede','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Gálvez Santos, Sara; Gálvez Sanjuán, Pablo; Gálvez Sainz, Óscar; Garcés Salas, Javier; Garcés Santos, Irene','["Gálvez Santos, Sara", "Gálvez Sainz, Óscar", "Garcés Santos, Irene", "Gálvez Sanjuán, Pablo"]'::jsonb,3,'Psicotécnicos','Orden: Gálvez Sainz, Óscar; Gálvez Sanjuán, Pablo; Gálvez Santos, Sara; Garcés Salas, Javier; Garcés Santos, Irene. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:29-3e5604b1cd','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en cuarto lugar? Matas Roldán, Irene; Mas Rojo, Luis; Matas Rosales, Raúl; Mas Román, Luis; Matas Román, Ana','["Matas Román, Ana", "Mas Román, Luis", "Mas Rojo, Luis", "Matas Rosales, Raúl"]'::jsonb,0,'Psicotécnicos','Orden: Mas Rojo, Luis; Mas Román, Luis; Matas Roldán, Irene; Matas Román, Ana; Matas Rosales, Raúl. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-ce0c8c7144','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Pérez Navarro, Sara; Peña Nieves, Raúl; Pérez Navarro, Pablo; Pereira Noguera, Elena; Peña Nieves, Sara','["Peña Nieves, Sara", "Pereira Noguera, Elena", "Peña Nieves, Raúl", "Pérez Navarro, Sara"]'::jsonb,1,'Psicotécnicos','Orden: Peña Nieves, Raúl; Peña Nieves, Sara; Pereira Noguera, Elena; Pérez Navarro, Pablo; Pérez Navarro, Sara. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-4eb9dc0fe5','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Sanz Cano, Carmen; Salinas Calvo, Pablo; Salinas Castaño, Pablo; Salinas Calvo, Luis; Sanz Casas, Elena','["Salinas Calvo, Pablo", "Salinas Calvo, Luis", "Sanz Casas, Elena", "Sanz Cano, Carmen"]'::jsonb,0,'Psicotécnicos','Orden: Salinas Calvo, Luis; Salinas Calvo, Pablo; Salinas Castaño, Pablo; Sanz Cano, Carmen; Sanz Casas, Elena. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-dfdb3328cf','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en tercer lugar? Roldán Orozco, Javier; Ruano Ortega, Carmen; Ruano Oliver, Lucía; Ruano Otero, Lucía; Romero Ortuño, Luis','["Romero Ortuño, Luis", "Roldán Orozco, Javier", "Ruano Oliver, Lucía", "Ruano Otero, Lucía"]'::jsonb,2,'Psicotécnicos','Orden: Roldán Orozco, Javier; Romero Ortuño, Luis; Ruano Oliver, Lucía; Ruano Ortega, Carmen; Ruano Otero, Lucía. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-043742e9d7','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Navas Gallardo, Sara; Navarro Galán, Carmen; Navarro Garcés, Elena; Núñez Gascón, Luis; Núñez Garzón, Sara','["Núñez Gascón, Luis", "Navas Gallardo, Sara", "Navarro Garcés, Elena", "Núñez Garzón, Sara"]'::jsonb,2,'Psicotécnicos','Orden: Navarro Galán, Carmen; Navarro Garcés, Elena; Navas Gallardo, Sara; Núñez Garzón, Sara; Núñez Gascón, Luis. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
('aux-age:29-76ff042422','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 23/05/2024, 15/01/2024, 24/10/2025, 08/04/2024, 23/06/2025','["24/10/2025", "23/06/2025", "08/04/2024", "15/01/2024"]'::jsonb,2,'Psicotécnicos','Orden: 15/01/2024, 08/04/2024, 23/05/2024, 23/06/2025, 24/10/2025. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-5f53be60ff','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 19/11/2027, 13/12/2026, 11/09/2026, 15/06/2026, 23/09/2027','["19/11/2027", "13/12/2026", "15/06/2026", "11/09/2026"]'::jsonb,3,'Psicotécnicos','Orden: 15/06/2026, 11/09/2026, 13/12/2026, 23/09/2027, 19/11/2027. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-c0e4c2d268','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 27/09/2026, 18/05/2025, 25/09/2026, 26/08/2025, 11/03/2025','["25/09/2026", "27/09/2026", "11/03/2025", "26/08/2025"]'::jsonb,0,'Psicotécnicos','Orden: 11/03/2025, 18/05/2025, 26/08/2025, 25/09/2026, 27/09/2026. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-e82604a4f1','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 24/09/2027, 10/12/2026, 01/09/2026, 19/06/2026, 25/10/2027','["10/12/2026", "24/09/2027", "19/06/2026", "25/10/2027"]'::jsonb,0,'Psicotécnicos','Orden: 19/06/2026, 01/09/2026, 10/12/2026, 24/09/2027, 25/10/2027. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-06536ec936','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 14/07/2025, 14/12/2026, 12/07/2026, 27/06/2026, 10/09/2025','["27/06/2026", "14/07/2025", "12/07/2026", "14/12/2026"]'::jsonb,2,'Psicotécnicos','Orden: 14/07/2025, 10/09/2025, 27/06/2026, 12/07/2026, 14/12/2026. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-9892315d0a','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 15/04/2026, 14/07/2026, 02/02/2026, 04/04/2027, 19/11/2026','["14/07/2026", "15/04/2026", "02/02/2026", "19/11/2026"]'::jsonb,0,'Psicotécnicos','Orden: 02/02/2026, 15/04/2026, 14/07/2026, 19/11/2026, 04/04/2027. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-6356fe0a40','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 15/07/2025, 26/01/2025, 22/12/2025, 15/06/2025, 25/06/2025','["15/06/2025", "25/06/2025", "26/01/2025", "15/07/2025"]'::jsonb,1,'Psicotécnicos','Orden: 26/01/2025, 15/06/2025, 25/06/2025, 15/07/2025, 22/12/2025. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-3d4f36a7d6','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 03/08/2025, 22/09/2024, 22/11/2024, 19/08/2024, 25/05/2024','["03/08/2025", "25/05/2024", "22/11/2024", "22/09/2024"]'::jsonb,2,'Psicotécnicos','Orden: 25/05/2024, 19/08/2024, 22/09/2024, 22/11/2024, 03/08/2025. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-8a71636494','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 05/11/2026, 24/04/2025, 23/04/2025, 07/10/2025, 22/02/2026','["23/04/2025", "07/10/2025", "22/02/2026", "24/04/2025"]'::jsonb,2,'Psicotécnicos','Orden: 23/04/2025, 24/04/2025, 07/10/2025, 22/02/2026, 05/11/2026. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-db1e3c96f1','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 01/11/2025, 24/07/2025, 02/07/2025, 01/04/2025, 05/12/2026','["01/04/2025", "02/07/2025", "24/07/2025", "05/12/2026"]'::jsonb,2,'Psicotécnicos','Orden: 01/04/2025, 02/07/2025, 24/07/2025, 01/11/2025, 05/12/2026. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-49d281ffcd','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 02/02/2026, 20/03/2025, 18/09/2025, 25/02/2025, 02/09/2026','["18/09/2025", "25/02/2025", "02/02/2026", "20/03/2025"]'::jsonb,0,'Psicotécnicos','Orden: 25/02/2025, 20/03/2025, 18/09/2025, 02/02/2026, 02/09/2026. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-3fa53bf6eb','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el cuarto lugar? 19/03/2027, 18/02/2026, 07/03/2026, 09/02/2026, 18/07/2026','["09/02/2026", "19/03/2027", "18/07/2026", "18/02/2026"]'::jsonb,2,'Psicotécnicos','Orden: 09/02/2026, 18/02/2026, 07/03/2026, 18/07/2026, 19/03/2027. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-c8d980a9b3','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el segundo lugar? 28/09/2024, 07/12/2024, 15/06/2024, 22/02/2024, 19/04/2024','["19/04/2024", "28/09/2024", "07/12/2024", "15/06/2024"]'::jsonb,0,'Psicotécnicos','Orden: 22/02/2024, 19/04/2024, 15/06/2024, 28/09/2024, 07/12/2024. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-2a0da78d04','aux-age',29,'Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el tercer lugar? 14/11/2027, 08/01/2026, 13/06/2026, 20/04/2027, 16/11/2027','["20/04/2027", "16/11/2027", "13/06/2026", "08/01/2026"]'::jsonb,0,'Psicotécnicos','Orden: 08/01/2026, 13/06/2026, 20/04/2027, 14/11/2027, 16/11/2027. Se compara primero el año, luego el mes y por último el día.',null),
('aux-age:29-d39f850a4b','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2026/09175, 2026/07159, 2026/05719, 2026/05197, 2026/07591','["2026/05197", "2026/05719", "2026/07591", "2026/09175"]'::jsonb,2,'Psicotécnicos','Orden: 2026/05197, 2026/05719, 2026/07159, 2026/07591, 2026/09175.',null),
('aux-age:29-68155585c5','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2025/08973, 2025/09738, 2025/09873, 2025/03897, 2025/03789','["2025/03789", "2025/09738", "2025/08973", "2025/09873"]'::jsonb,1,'Psicotécnicos','Orden: 2025/03789, 2025/03897, 2025/08973, 2025/09738, 2025/09873.',null),
('aux-age:29-750614140d','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2026/05179, 2026/07195, 2026/01759, 2026/09157, 2026/09517','["2026/09157", "2026/07195", "2026/01759", "2026/05179"]'::jsonb,1,'Psicotécnicos','Orden: 2026/09517, 2026/09157, 2026/07195, 2026/05179, 2026/01759.',null),
('aux-age:29-41829c50a1','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/08524, 2025/04528, 2025/02548, 2025/04852, 2025/08425','["2025/08425", "2025/08524", "2025/04852", "2025/04528"]'::jsonb,2,'Psicotécnicos','Orden: 2025/08524, 2025/08425, 2025/04852, 2025/04528, 2025/02548.',null),
('aux-age:29-ee446c3ac6','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2026/04206, 2026/06420, 2026/06204, 2026/00246, 2026/06240','["2026/00246", "2026/06204", "2026/06240", "2026/06420"]'::jsonb,1,'Psicotécnicos','Orden: 2026/00246, 2026/04206, 2026/06204, 2026/06240, 2026/06420.',null),
('aux-age:29-aefca0b724','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2025/01597, 2025/01759, 2025/09175, 2025/09751, 2025/09517','["2025/01759", "2025/09175", "2025/09751", "2025/09517"]'::jsonb,1,'Psicotécnicos','Orden: 2025/01597, 2025/01759, 2025/09175, 2025/09517, 2025/09751.',null),
('aux-age:29-82123210ee','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el tercer lugar? 2025/09840, 2025/04809, 2025/09084, 2025/00984, 2025/04980','["2025/04809", "2025/04980", "2025/09840", "2025/09084"]'::jsonb,1,'Psicotécnicos','Orden: 2025/00984, 2025/04809, 2025/04980, 2025/09084, 2025/09840.',null),
('aux-age:29-8b7df2b816','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el cuarto lugar? 2025/06028, 2025/06820, 2025/06802, 2025/00682, 2025/00628','["2025/00628", "2025/06028", "2025/00682", "2025/06802"]'::jsonb,2,'Psicotécnicos','Orden: 2025/06820, 2025/06802, 2025/06028, 2025/00682, 2025/00628.',null),
('aux-age:29-738a52ea34','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/07591, 2025/05197, 2025/05971, 2025/07915, 2025/09715','["2025/07591", "2025/05971", "2025/09715", "2025/05197"]'::jsonb,0,'Psicotécnicos','Orden: 2025/09715, 2025/07915, 2025/07591, 2025/05971, 2025/05197.',null),
('aux-age:29-7b9e5ca4a2','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el tercer lugar? 2025/02507, 2025/05027, 2025/07502, 2025/00527, 2025/00572','["2025/07502", "2025/00572", "2025/00527", "2025/02507"]'::jsonb,3,'Psicotécnicos','Orden: 2025/07502, 2025/05027, 2025/02507, 2025/00572, 2025/00527.',null),
('aux-age:29-75d2e9beca','aux-age',29,'Ordenados de menor a mayor, ¿qué número de expediente ocupa el cuarto lugar? 2026/09412, 2026/02941, 2026/09214, 2026/09124, 2026/09421','["2026/09214", "2026/09124", "2026/09421", "2026/09412"]'::jsonb,3,'Psicotécnicos','Orden: 2026/02941, 2026/09124, 2026/09214, 2026/09412, 2026/09421.',null),
('aux-age:29-22f7719057','aux-age',29,'Ordenados de mayor a menor, ¿qué número de expediente ocupa el cuarto lugar? 2025/09135, 2025/05193, 2025/03159, 2025/09351, 2025/05391','["2025/05391", "2025/09351", "2025/05193", "2025/03159"]'::jsonb,2,'Psicotécnicos','Orden: 2025/09351, 2025/09135, 2025/05391, 2025/05193, 2025/03159.',null),
('aux-age:29-c68013d9c3','aux-age',29,'Clave:
Z | S | I | O | P | L | A
8 | 3 | 4 | 1 | 6 | 2 | 5
Con esta clave, ¿cómo se escribe la palabra PLAZO?','["62581", "22581", "62851", "64581"]'::jsonb,0,'Psicotécnicos','Letra a letra: P=6, L=2, A=5, Z=8, O=1 → 62581.',null),
('aux-age:29-da853b756b','aux-age',29,'Clave:
M | R | O | U | N | A | G
9 | 5 | 6 | 1 | 2 | 7 | 0
Con esta clave, ¿qué palabra corresponde al código 26597?','["NORMA", "NOMRA", "NORAA", "NGRMA"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 2=N, 6=O, 5=R, 9=M, 7=A → NORMA.',null),
('aux-age:29-67a472fc30','aux-age',29,'Clave:
I | C | O | H | E | R | S | T
1 | 7 | 5 | 9 | 8 | 2 | 4 | 6
Con esta clave, ¿cómo se escribe la palabra CORTES?','["756284", "752684", "752648", "752644"]'::jsonb,1,'Psicotécnicos','Letra a letra: C=7, O=5, R=2, T=6, E=8, S=4 → 752684.',null),
('aux-age:29-0df4acfc61','aux-age',29,'Clave:
A | D | E | I | N | S | O | G
8 | 7 | 6 | 2 | 1 | 3 | 5 | 0
Con esta clave, ¿qué palabra corresponde al código 361875?','["SNEADO", "SENADO", "SENAGO", "SENAOD"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 3=S, 6=E, 1=N, 8=A, 7=D, 5=O → SENADO.',null),
('aux-age:29-38a0a60aa5','aux-age',29,'Clave:
Z | E | D | R | U | O | T | C
6 | 8 | 3 | 2 | 4 | 9 | 7 | 0
Con esta clave, ¿cómo se escribe la palabra DECRETO?','["6802879", "3802879", "3892879", "3802899"]'::jsonb,1,'Psicotécnicos','Letra a letra: D=3, E=8, C=0, R=2, E=8, T=7, O=9 → 3802879.',null),
('aux-age:29-491c7c663e','aux-age',29,'Clave:
F | A | R | O | I | N | M
3 | 2 | 9 | 6 | 1 | 0 | 7
Con esta clave, ¿qué palabra corresponde al código 31972?','["AIRMA", "FARMA", "FIRMA", "IFRMA"]'::jsonb,2,'Psicotécnicos','Cifra a cifra: 3=F, 1=I, 9=R, 7=M, 2=A → FIRMA.',null),
('aux-age:29-dde3154aca','aux-age',29,'Clave:
P | L | H | E | S | O
4 | 0 | 3 | 5 | 6 | 1
Con esta clave, ¿cómo se escribe la palabra SELLO?','["15001", "65010", "56001", "65001"]'::jsonb,3,'Psicotécnicos','Letra a letra: S=6, E=5, L=0, L=0, O=1 → 65001.',null),
('aux-age:29-a5e9e508e8','aux-age',29,'Clave:
E | C | U | T | S | O | D | R
5 | 0 | 8 | 6 | 1 | 2 | 4 | 9
Con esta clave, ¿qué palabra corresponde al código 9508912?','["RDCURSO", "RECURSO", "RECUUSO", "RERURSO"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 9=R, 5=E, 0=C, 8=U, 9=R, 1=S, 2=O → RECURSO.',null),
('aux-age:29-5d7964f0f5','aux-age',29,'Clave:
T | R | E | I | M | B | A | L
2 | 1 | 8 | 4 | 5 | 6 | 3 | 0
Con esta clave, ¿cómo se escribe la palabra TRAMITE?','["2135482", "2315428", "2153428", "2135428"]'::jsonb,3,'Psicotécnicos','Letra a letra: T=2, R=1, A=3, M=5, I=4, T=2, E=8 → 2135428.',null),
('aux-age:29-fcf0c3994f','aux-age',29,'Clave:
I | R | O | A | H | C | E | V | L
2 | 8 | 7 | 9 | 5 | 0 | 4 | 1 | 3
Con esta clave, ¿qué palabra corresponde al código 9805217?','["ARCHVIO", "ARCIHVO", "ARCHIVO", "AICHIVO"]'::jsonb,2,'Psicotécnicos','Cifra a cifra: 9=A, 8=R, 0=C, 5=H, 2=I, 1=V, 7=O → ARCHIVO.',null),
('aux-age:29-a394177402','aux-age',29,'Clave:
A | O | S | H | T | C
2 | 9 | 6 | 5 | 4 | 3
Con esta clave, ¿cómo se escribe la palabra ACTAS?','["23426", "25426", "23226", "32426"]'::jsonb,0,'Psicotécnicos','Letra a letra: A=2, C=3, T=4, A=2, S=6 → 23426.',null),
('aux-age:29-a7c3a7f1da','aux-age',29,'Clave:
S | L | E | Y | I
4 | 8 | 6 | 9 | 2
Con esta clave, ¿qué palabra corresponde al código 869?','["LYY", "LEY", "ELY", "SEY"]'::jsonb,1,'Psicotécnicos','Cifra a cifra: 8=L, 6=E, 9=Y → LEY.',null),
('aux-age:29-88955f0df6','aux-age',29,'Clave:
N | L | E | O | S | P | C
5 | 2 | 9 | 3 | 0 | 4 | 7
Con esta clave, ¿cómo se escribe la palabra PLENO?','["42593", "24953", "42935", "42953"]'::jsonb,3,'Psicotécnicos','Letra a letra: P=4, L=2, E=9, N=5, O=3 → 42953.',null),
('aux-age:29-522c3e7dc4','aux-age',29,'Clave:
L | N | I | O | C | U | M
5 | 1 | 8 | 0 | 9 | 2 | 7
Con esta clave, ¿qué palabra corresponde al código 709801?','["MOCION", "MCOION", "MOOION", "UOCION"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 7=M, 0=O, 9=C, 8=I, 0=O, 1=N → MOCION.',null),
('aux-age:29-16ec9a4fe3','aux-age',29,'Clave:
J | O | S | I | E | C | Z | N
3 | 9 | 5 | 1 | 8 | 0 | 6 | 4
Con esta clave, ¿cómo se escribe la palabra CONSEJO?','["0945839", "6945839", "9045839", "0945819"]'::jsonb,0,'Psicotécnicos','Letra a letra: C=0, O=9, N=4, S=5, E=8, J=3, O=9 → 0945839.',null),
('aux-age:29-e90ce0e9b9','aux-age',29,'Clave:
G | O | D | R | N | E | H
5 | 4 | 0 | 6 | 8 | 7 | 2
Con esta clave, ¿qué palabra corresponde al código 46078?','["ORNEN", "ORDNE", "OREDN", "ORDEN"]'::jsonb,3,'Psicotécnicos','Cifra a cifra: 4=O, 6=R, 0=D, 7=E, 8=N → ORDEN.',null),
('aux-age:29-a9c3b6d4bf','aux-age',29,'Clave:
O | S | C | D | T | N | E
4 | 5 | 3 | 9 | 8 | 2 | 0
Con esta clave, ¿cómo se escribe la palabra CENSO?','["32054", "30454", "38254", "30254"]'::jsonb,3,'Psicotécnicos','Letra a letra: C=3, E=0, N=2, S=5, O=4 → 30254.',null),
('aux-age:29-7ad250f174','aux-age',29,'Clave:
S | A | T | F | R
8 | 5 | 0 | 2 | 9
Con esta clave, ¿qué palabra corresponde al código 0585?','["TASA", "ATSA", "SASA", "TAAS"]'::jsonb,0,'Psicotécnicos','Cifra a cifra: 0=T, 5=A, 8=S, 5=A → TASA.',null),
('aux-age:29-1c3a74f779','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? F, G, I, L, O, …','["R", "U", "T", "S"]'::jsonb,2,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la O viene la T.',null),
('aux-age:29-db507db18c','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? D, E, G, J, N, …','["P", "R", "Q", "S"]'::jsonb,1,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la N viene la R.',null),
('aux-age:29-ab515b7233','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? B, C, E, H, L, …','["O", "Q", "Ñ", "P"]'::jsonb,3,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la L viene la P.',null),
('aux-age:29-e0a9c074a9','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? A, B, D, G, K, …','["N", "O", "P", "Ñ"]'::jsonb,1,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la K viene la O.',null),
('aux-age:29-65c0b65d4d','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? E, F, H, K, Ñ, …','["Q", "R", "T", "S"]'::jsonb,3,'Psicotécnicos','Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la Ñ viene la S.',null),
('aux-age:29-043dbbc7ad','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? X, V, T, R, P, …','["N", "Q", "Ñ", "O"]'::jsonb,2,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la P, contando hacia atrás 2, está la Ñ. Recuerda la Ñ.',null),
('aux-age:29-78213e2fb8','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? U, S, Q, O, N, …','["L", "K", "M", "Ñ"]'::jsonb,0,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la N, contando hacia atrás 2, está la L. Recuerda la Ñ.',null),
('aux-age:29-fe0168ec05','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? W, T, Q, Ñ, L, …','["H", "I", "J", "M"]'::jsonb,1,'Psicotécnicos','Se retroceden 3 letras cada vez: antes de la L, contando hacia atrás 3, está la I. Recuerda la Ñ.',null),
('aux-age:29-f1df3d0ff6','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? W, U, S, Q, O, …','["M", "N", "P", "Ñ"]'::jsonb,1,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la O, contando hacia atrás 2, está la N. Recuerda la Ñ.',null),
('aux-age:29-b17e6bbb9a','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? R, P, Ñ, M, K, …','["J", "I", "H", "L"]'::jsonb,1,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la K, contando hacia atrás 2, está la I. Recuerda la Ñ.',null),
('aux-age:29-fb30bfc590','aux-age',29,'Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? Z, X, V, T, R, …','["S", "O", "Q", "P"]'::jsonb,3,'Psicotécnicos','Se retroceden 2 letras cada vez: antes de la R, contando hacia atrás 2, está la P. Recuerda la Ñ.',null),
('aux-age:29-3fdfcd6137','aux-age',29,'¿Qué número continúa la serie? 6, 12, 17, 34, 39, 78, …','["151", "156", "158", "161"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 5. Tras sumar 5 toca multiplicar: 78 × 2 = 156.',null),
('aux-age:29-c17b59b4df','aux-age',29,'¿Qué número continúa la serie? 4, 12, 16, 48, 52, 156, …','["468", "472", "471", "160"]'::jsonb,0,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 4. Tras sumar 4 toca multiplicar: 156 × 3 = 468.',null),
('aux-age:29-6ddfd777db','aux-age',29,'¿Qué número continúa la serie? 3, 6, 7, 14, 15, 30, …','["59", "62", "31", "60"]'::jsonb,3,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 1. Tras sumar 1 toca multiplicar: 30 × 2 = 60.',null),
('aux-age:29-67e03518bf','aux-age',29,'¿Qué número continúa la serie? 6, 18, 19, 57, 58, 174, …','["525", "522", "523", "521"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 1. Tras sumar 1 toca multiplicar: 174 × 3 = 522.',null),
('aux-age:29-25cde1fdad','aux-age',29,'¿Qué número continúa la serie? 5, 10, 12, 24, 26, 52, …','["54", "104", "106", "102"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 2 y sumar 2. Tras sumar 2 toca multiplicar: 52 × 2 = 104.',null),
('aux-age:29-51447254ea','aux-age',29,'¿Qué número continúa la serie? 1, 3, 5, 15, 17, 51, …','["156", "153", "53", "155"]'::jsonb,1,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 2. Tras sumar 2 toca multiplicar: 51 × 3 = 153.',null),
('aux-age:29-bc51c2c29a','aux-age',29,'¿Qué número continúa la serie? 1, 3, 7, 21, 25, 75, …','["225", "229", "79", "221"]'::jsonb,0,'Psicotécnicos','Se alternan dos operaciones: multiplicar por 3 y sumar 4. Tras sumar 4 toca multiplicar: 75 × 3 = 225.',null),
('aux-age:29-2c8889ae6a','aux-age',29,'¿Qué número continúa la serie? 21, 31, 28, 38, 35, 45, 42, …','["55", "51", "39", "52"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 3. Ahora toca sumar: 42 + 10 = 52.',null),
('aux-age:29-912175676c','aux-age',29,'¿Qué número continúa la serie? 26, 37, 31, 42, 36, 47, 41, …','["53", "52", "40", "58"]'::jsonb,1,'Psicotécnicos','Se alterna sumar 11 y restar 6. Ahora toca sumar: 41 + 11 = 52.',null),
('aux-age:29-17b93e9f47','aux-age',29,'¿Qué número continúa la serie? 26, 36, 29, 39, 32, 42, 35, …','["31", "46", "44", "45"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 7. Ahora toca sumar: 35 + 10 = 45.',null),
('aux-age:29-388fc5a72c','aux-age',29,'¿Qué número continúa la serie? 17, 21, 18, 22, 19, 23, 20, …','["18", "23", "17", "24"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 4 y restar 3. Ahora toca sumar: 20 + 4 = 24.',null),
('aux-age:29-a3d72c63d6','aux-age',29,'¿Qué número continúa la serie? 22, 32, 27, 37, 32, 42, 37, …','["46", "32", "52", "47"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 10 y restar 5. Ahora toca sumar: 37 + 10 = 47.',null),
('aux-age:29-8b6dcaf1d2','aux-age',29,'¿Qué número continúa la serie? 6, 12, 8, 14, 10, 16, 12, …','["19", "10", "8", "18"]'::jsonb,3,'Psicotécnicos','Se alterna sumar 6 y restar 4. Ahora toca sumar: 12 + 6 = 18.',null),
('aux-age:29-a427072a8a','aux-age',29,'¿Qué número continúa la serie? 21, 26, 25, 30, 29, 34, 33, …','["38", "32", "39", "37"]'::jsonb,0,'Psicotécnicos','Se alterna sumar 5 y restar 1. Ahora toca sumar: 33 + 5 = 38.',null),
('aux-age:29-1885b87788','aux-age',29,'¿Qué número continúa la serie? 20, 24, 21, 25, 22, 26, 23, …','["26", "20", "27", "30"]'::jsonb,2,'Psicotécnicos','Se alterna sumar 4 y restar 3. Ahora toca sumar: 23 + 4 = 27.',null),
('aux-age:29-c3fada54a3','aux-age',29,'¿Qué número continúa la serie? 13, 14, 16, 20, 28, 44, …','["77", "76", "60", "84"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 44 + 32 = 76.',null),
('aux-age:29-395bba9825','aux-age',29,'¿Qué número continúa la serie? 16, 17, 19, 23, 31, 47, …','["80", "79", "77", "63"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 47 + 32 = 79.',null),
('aux-age:29-f267b8f362','aux-age',29,'¿Qué número continúa la serie? 12, 15, 21, 33, 57, 105, …','["204", "153", "225", "201"]'::jsonb,3,'Psicotécnicos','Las diferencias se duplican (3, 6, 12, 24, 48…); la siguiente es 96: 105 + 96 = 201.',null),
('aux-age:29-420739d2ed','aux-age',29,'¿Qué número continúa la serie? 13, 16, 22, 34, 58, 106, …','["196", "154", "226", "202"]'::jsonb,3,'Psicotécnicos','Las diferencias se duplican (3, 6, 12, 24, 48…); la siguiente es 96: 106 + 96 = 202.',null),
('aux-age:29-e2c92458be','aux-age',29,'¿Qué número continúa la serie? 2, 3, 5, 9, 17, 33, …','["73", "66", "65", "49"]'::jsonb,2,'Psicotécnicos','Las diferencias se duplican (1, 2, 4, 8, 16…); la siguiente es 32: 33 + 32 = 65.',null),
('aux-age:29-c39751017b','aux-age',29,'¿Qué número continúa la serie? 17, 19, 23, 31, 47, 79, …','["159", "143", "139", "111"]'::jsonb,1,'Psicotécnicos','Las diferencias se duplican (2, 4, 8, 16, 32…); la siguiente es 64: 79 + 64 = 143.',null),
('aux-age:29-3da8f8a23b','aux-age',29,'¿Qué número continúa la serie? 1, 8, 27, 64, 125, …','["215", "222", "216", "180"]'::jsonb,2,'Psicotécnicos','Son los cubos de números consecutivos: 6³ = 216.',null),
('aux-age:29-dfeb2b6fc3','aux-age',29,'¿Qué número continúa la serie? 27, 64, 125, 216, 343, …','["448", "128", "512", "520"]'::jsonb,2,'Psicotécnicos','Son los cubos de números consecutivos: 8³ = 512.',null),
('aux-age:29-1fdf8b38b2','aux-age',29,'Un artículo cuesta 500 €. Primero sube un 40 % y después baja un 25 %. ¿Cuánto cuesta al final?','["505 €", "550 €", "525 €", "575 €"]'::jsonb,2,'Psicotécnicos','500 × 1,4 = 700; × 0,75 = 525 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-d876d0002e','aux-age',29,'Un artículo cuesta 200 €. Primero sube un 25 % y después baja un 20 %. ¿Cuánto cuesta al final?','["210 €", "180 €", "192 €", "200 €"]'::jsonb,3,'Psicotécnicos','200 × 1,25 = 250; × 0,8 = 200 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-1e336db207','aux-age',29,'Un artículo cuesta 1.000 €. Primero sube un 30 % y después baja un 50 %. ¿Cuánto cuesta al final?','["700 €", "800 €", "650 €", "610 €"]'::jsonb,2,'Psicotécnicos','1.000 × 1,3 = 1.300; × 0,5 = 650 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-2b8c076cd7','aux-age',29,'Un artículo cuesta 500 €. Primero sube un 25 % y después baja un 50 %. ¿Cuánto cuesta al final?','["312,5 €", "292,5 €", "337,5 €", "375 €"]'::jsonb,0,'Psicotécnicos','500 × 1,25 = 625; × 0,5 = 312,5 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-a8d110a803','aux-age',29,'Un artículo cuesta 300 €. Primero sube un 30 % y después baja un 20 %. ¿Cuánto cuesta al final?','["327 €", "300 €", "330 €", "312 €"]'::jsonb,3,'Psicotécnicos','300 × 1,3 = 390; × 0,8 = 312 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-262fe37035','aux-age',29,'Un artículo cuesta 200 €. Primero sube un 40 % y después baja un 25 %. ¿Cuánto cuesta al final?','["220 €", "202 €", "210 €", "230 €"]'::jsonb,2,'Psicotécnicos','200 × 1,4 = 280; × 0,75 = 210 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-d2292023b3','aux-age',29,'Un artículo cuesta 200 €. Primero sube un 20 % y después baja un 25 %. ¿Cuánto cuesta al final?','["180 €", "200 €", "172 €", "190 €"]'::jsonb,0,'Psicotécnicos','200 × 1,2 = 240; × 0,75 = 180 €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.',null),
('aux-age:29-f64b88e099','aux-age',29,'Un equipo cuesta 100 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["121 €", "90,75 €", "96 €", "75 €"]'::jsonb,1,'Psicotécnicos','Con el descuento: 100 × 0,75 = 75 €. Con el IVA: × 1,21 = 90,75 €.',null),
('aux-age:29-e578ee6aa9','aux-age',29,'Un equipo cuesta 200 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["150 €", "181,5 €", "242 €", "192 €"]'::jsonb,1,'Psicotécnicos','Con el descuento: 200 × 0,75 = 150 €. Con el IVA: × 1,21 = 181,5 €.',null),
('aux-age:29-514fb0f1f7','aux-age',29,'Un equipo cuesta 400 € sin IVA y tiene un descuento del 25 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["363 €", "300 €", "384 €", "484 €"]'::jsonb,0,'Psicotécnicos','Con el descuento: 400 × 0,75 = 300 €. Con el IVA: × 1,21 = 363 €.',null),
('aux-age:29-50afb5701c','aux-age',29,'Un equipo cuesta 600 € sin IVA y tiene un descuento del 10 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["540 €", "666 €", "653,4 €", "726 €"]'::jsonb,2,'Psicotécnicos','Con el descuento: 600 × 0,9 = 540 €. Con el IVA: × 1,21 = 653,4 €.',null),
('aux-age:29-76bafafa8e','aux-age',29,'Un equipo cuesta 500 € sin IVA y tiene un descuento del 10 %. ¿Cuánto se paga si después se aplica el IVA del 21 %?','["605 €", "555 €", "450 €", "544,5 €"]'::jsonb,3,'Psicotécnicos','Con el descuento: 500 × 0,9 = 450 €. Con el IVA: × 1,21 = 544,5 €.',null),
('aux-age:29-56e2acba75','aux-age',29,'Un auxiliar tarda 10 horas en ordenar un archivo y otro tarda 15 horas. Trabajando juntos, ¿cuánto tardan?','["12 horas", "6 horas", "5 horas", "7 horas"]'::jsonb,1,'Psicotécnicos','En una hora hacen 1/10 + 1/15 = 1/6 del trabajo, así que tardan 10 × 15 / (10 + 15) = 6 horas.',null),
('aux-age:29-7c31ec1e5a','aux-age',29,'Un auxiliar tarda 20 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["13 horas", "12 horas", "11 horas", "25 horas"]'::jsonb,1,'Psicotécnicos','En una hora hacen 1/20 + 1/30 = 1/12 del trabajo, así que tardan 20 × 30 / (20 + 30) = 12 horas.',null),
('aux-age:29-ab314f17a4','aux-age',29,'Un auxiliar tarda 14 horas en ordenar un archivo y otro tarda 35 horas. Trabajando juntos, ¿cuánto tardan?','["10 horas", "24 horas", "9 horas", "11 horas"]'::jsonb,0,'Psicotécnicos','En una hora hacen 1/14 + 1/35 = 1/10 del trabajo, así que tardan 14 × 35 / (14 + 35) = 10 horas.',null),
('aux-age:29-873c8896b6','aux-age',29,'Un auxiliar tarda 12 horas en ordenar un archivo y otro tarda 24 horas. Trabajando juntos, ¿cuánto tardan?','["18 horas", "9 horas", "7 horas", "8 horas"]'::jsonb,3,'Psicotécnicos','En una hora hacen 1/12 + 1/24 = 1/8 del trabajo, así que tardan 12 × 24 / (12 + 24) = 8 horas.',null),
('aux-age:29-3eb96d986a','aux-age',29,'Un auxiliar tarda 12 horas en ordenar un archivo y otro tarda 36 horas. Trabajando juntos, ¿cuánto tardan?','["9 horas", "24 horas", "8 horas", "10 horas"]'::jsonb,0,'Psicotécnicos','En una hora hacen 1/12 + 1/36 = 1/9 del trabajo, así que tardan 12 × 36 / (12 + 36) = 9 horas.',null),
('aux-age:29-d5c9e03fb2','aux-age',29,'Un auxiliar tarda 15 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["9 horas", "11 horas", "10 horas", "22 horas"]'::jsonb,2,'Psicotécnicos','En una hora hacen 1/15 + 1/30 = 1/10 del trabajo, así que tardan 15 × 30 / (15 + 30) = 10 horas.',null),
('aux-age:29-72275fc6a8','aux-age',29,'Un auxiliar tarda 6 horas en ordenar un archivo y otro tarda 30 horas. Trabajando juntos, ¿cuánto tardan?','["18 horas", "6 horas", "4 horas", "5 horas"]'::jsonb,3,'Psicotécnicos','En una hora hacen 1/6 + 1/30 = 1/5 del trabajo, así que tardan 6 × 30 / (6 + 30) = 5 horas.',null),
('aux-age:29-400b286df0','aux-age',29,'Un auxiliar tarda 10 horas en ordenar un archivo y otro tarda 40 horas. Trabajando juntos, ¿cuánto tardan?','["25 horas", "7 horas", "8 horas", "9 horas"]'::jsonb,2,'Psicotécnicos','En una hora hacen 1/10 + 1/40 = 1/8 del trabajo, así que tardan 10 × 40 / (10 + 40) = 8 horas.',null),
('aux-age:29-d3e9576218','aux-age',29,'Se reparten 960 € entre tres unidades, A, B y C, en proporción a 1, 3 y 4. ¿Cuánto recibe C?','["480 €", "420 €", "720 €", "540 €"]'::jsonb,0,'Psicotécnicos','Hay 1 + 3 + 4 = 8 partes; cada parte vale 960 / 8 = 120 €. C recibe 4 × 120 = 480 €.',null),
('aux-age:29-9eed223ed3','aux-age',29,'Se reparten 960 € entre tres unidades, A, B y C, en proporción a 1, 2 y 5. ¿Cuánto recibe C?','["600 €", "840 €", "540 €", "660 €"]'::jsonb,0,'Psicotécnicos','Hay 1 + 2 + 5 = 8 partes; cada parte vale 960 / 8 = 120 €. C recibe 5 × 120 = 600 €.',null),
('aux-age:29-6a56420b64','aux-age',29,'Se reparten 2.500 € entre tres unidades, A, B y C, en proporción a 2, 5 y 3. ¿Cuánto recibe C?','["1.000 €", "750 €", "875 €", "500 €"]'::jsonb,1,'Psicotécnicos','Hay 2 + 5 + 3 = 10 partes; cada parte vale 2.500 / 10 = 250 €. C recibe 3 × 250 = 750 €.',null),
('aux-age:29-b095ce2663','aux-age',29,'Se reparten 400 € entre tres unidades, A, B y C, en proporción a 1, 2 y 5. ¿Cuánto recibe B?','["75 €", "150 €", "125 €", "100 €"]'::jsonb,3,'Psicotécnicos','Hay 1 + 2 + 5 = 8 partes; cada parte vale 400 / 8 = 50 €. B recibe 2 × 50 = 100 €.',null),
('aux-age:29-debc86b5d7','aux-age',29,'Se reparten 500 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["125 €", "75 €", "150 €", "100 €"]'::jsonb,3,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 500 / 10 = 50 €. A recibe 2 × 50 = 100 €.',null),
('aux-age:29-9876f65bdf','aux-age',29,'Se reparten 1.200 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["360 €", "180 €", "240 €", "120 €"]'::jsonb,2,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 1.200 / 10 = 120 €. A recibe 2 × 120 = 240 €.',null),
('aux-age:29-c839767a59','aux-age',29,'Se reparten 1.000 € entre tres unidades, A, B y C, en proporción a 2, 3 y 5. ¿Cuánto recibe A?','["100 €", "200 €", "300 €", "150 €"]'::jsonb,1,'Psicotécnicos','Hay 2 + 3 + 5 = 10 partes; cada parte vale 1.000 / 10 = 100 €. A recibe 2 × 100 = 200 €.',null),
('aux-age:29-b000f2ba56','aux-age',29,'Una sesión de formación empieza a las 09:35 y dura 1 hora y 40 minutos. ¿A qué hora termina?','["10:15", "11:15", "11:05", "11:25"]'::jsonb,1,'Psicotécnicos','09:35 + 1 h = 10:35; + 40 min = 11:15.',null),
('aux-age:29-acbcc5f781','aux-age',29,'Una sesión de formación empieza a las 11:05 y dura 3 horas y 45 minutos. ¿A qué hora termina?','["13:50", "14:50", "14:40", "15:00"]'::jsonb,1,'Psicotécnicos','11:05 + 3 h = 14:05; + 45 min = 14:50.',null),
('aux-age:29-51ffcf6d98','aux-age',29,'Una sesión de formación empieza a las 10:35 y dura 1 hora y 40 minutos. ¿A qué hora termina?','["12:25", "12:05", "11:15", "12:15"]'::jsonb,3,'Psicotécnicos','10:35 + 1 h = 11:35; + 40 min = 12:15.',null),
('aux-age:29-8badcd6ede','aux-age',29,'Una sesión de formación empieza a las 12:40 y dura 3 horas y 25 minutos. ¿A qué hora termina?','["15:05", "15:55", "16:05", "16:15"]'::jsonb,2,'Psicotécnicos','12:40 + 3 h = 15:40; + 25 min = 16:05.',null),
('aux-age:29-d3eb345e0d','aux-age',29,'Una sesión de formación empieza a las 11:05 y dura 1 hora y 45 minutos. ¿A qué hora termina?','["11:50", "12:40", "13:00", "12:50"]'::jsonb,3,'Psicotécnicos','11:05 + 1 h = 12:05; + 45 min = 12:50.',null),
('aux-age:29-6800d1a77c','aux-age',29,'Una sesión de formación empieza a las 11:45 y dura 3 horas y 25 minutos. ¿A qué hora termina?','["15:00", "14:10", "15:20", "15:10"]'::jsonb,3,'Psicotécnicos','11:45 + 3 h = 14:45; + 25 min = 15:10.',null),
('aux-age:29-d4fdc97610','aux-age',29,'Una sesión de formación empieza a las 08:35 y dura 2 horas y 35 minutos. ¿A qué hora termina?','["11:00", "10:10", "11:10", "11:20"]'::jsonb,2,'Psicotécnicos','08:35 + 2 h = 10:35; + 35 min = 11:10.',null),
('aux-age:29-d473decd26','aux-age',29,'Entre dos hermanos suman 38 años y el mayor tiene 2 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["17 años", "18 años", "19 años", "20 años"]'::jsonb,1,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (38 − 2) / 2 = 18 años.',null),
('aux-age:29-7f841065cc','aux-age',29,'Entre dos hermanos suman 42 años y el mayor tiene 10 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["16 años", "21 años", "26 años", "15 años"]'::jsonb,0,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (42 − 10) / 2 = 16 años.',null),
('aux-age:29-80f47ca347','aux-age',29,'Entre dos hermanos suman 44 años y el mayor tiene 8 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["22 años", "17 años", "18 años", "26 años"]'::jsonb,2,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (44 − 8) / 2 = 18 años.',null),
('aux-age:29-7e6c024e90','aux-age',29,'Entre dos hermanos suman 39 años y el mayor tiene 3 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["18 años", "17 años", "21 años", "19 años"]'::jsonb,0,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (39 − 3) / 2 = 18 años.',null),
('aux-age:29-dcbb5dbd9e','aux-age',29,'Entre dos hermanos suman 68 años y el mayor tiene 8 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["29 años", "30 años", "34 años", "38 años"]'::jsonb,1,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (68 − 8) / 2 = 30 años.',null),
('aux-age:29-7e05ebb2b4','aux-age',29,'Entre dos hermanos suman 65 años y el mayor tiene 5 años más que el pequeño. ¿Cuántos años tiene el pequeño?','["32 años", "29 años", "30 años", "35 años"]'::jsonb,2,'Psicotécnicos','Si al total se le quita la diferencia quedan dos edades iguales: (65 − 5) / 2 = 30 años.',null),
('aux-age:29-4d143a18b7','aux-age',29,'Una impresora se revisa cada 9 días y otra cada 12. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["45 días", "108 días", "36 días", "27 días"]'::jsonb,2,'Psicotécnicos','Es el mínimo común múltiplo de 9 y 12: m.c.m.(9, 12) = 36.',null),
('aux-age:29-64ffe8a85e','aux-age',29,'Una impresora se revisa cada 12 días y otra cada 18. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["24 días", "48 días", "216 días", "36 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 12 y 18: m.c.m.(12, 18) = 36.',null),
('aux-age:29-772072e1e4','aux-age',29,'Una impresora se revisa cada 14 días y otra cada 21. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["28 días", "294 días", "56 días", "42 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 14 y 21: m.c.m.(14, 21) = 42.',null),
('aux-age:29-fb473362cf','aux-age',29,'Una impresora se revisa cada 15 días y otra cada 20. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["300 días", "75 días", "60 días", "45 días"]'::jsonb,2,'Psicotécnicos','Es el mínimo común múltiplo de 15 y 20: m.c.m.(15, 20) = 60.',null),
('aux-age:29-6223a4b6a5','aux-age',29,'Una impresora se revisa cada 6 días y otra cada 10. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["60 días", "36 días", "24 días", "30 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 10: m.c.m.(6, 10) = 30.',null),
('aux-age:29-779e79ef58','aux-age',29,'Una impresora se revisa cada 6 días y otra cada 9. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["12 días", "18 días", "54 días", "24 días"]'::jsonb,1,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 9: m.c.m.(6, 9) = 18.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
