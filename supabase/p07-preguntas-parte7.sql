-- Banco de preguntas, parte 7 de 8. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:18-764f128d05','aux-age',18,'¿Quién facilita la información particular según el RD 208/1996?','["La Inspección General de Servicios", "El Centro de Información Administrativa", "Las oficinas de registro de cualquier Administración", "Las unidades de gestión que tramitan los procedimientos"]'::jsonb,3,'Art. 3 RD 208/1996','La información particular la facilitan las unidades de gestión; las oficinas de información pueden conectarse con ellas para responder con rapidez.',null),
('aux-age:18-d61f6ebad5','aux-age',18,'Según el RD 208/1996, el Centro de Información Administrativa tiene nivel orgánico de:','["Subdirección General", "Dirección General", "Servicio", "Secretaría General"]'::jsonb,0,'Art. 6 RD 208/1996','El Centro de Información Administrativa tiene nivel orgánico de Subdirección General.',null),
('aux-age:18-41448f31bc','aux-age',18,'Las oficinas centrales de información de los servicios territoriales de la Administración General del Estado dependen, según el RD 208/1996, de:','["Los ayuntamientos de las capitales de provincia", "Las diputaciones provinciales", "Las consejerías de presidencia de las comunidades autónomas", "Las Delegaciones del Gobierno en las comunidades autónomas"]'::jsonb,3,'Art. 9 RD 208/1996','Las oficinas centrales territoriales se integran en las Delegaciones del Gobierno (y en las antiguas Gobiernos Civiles, hoy Subdelegaciones, y Delegaciones Insulares).',null),
('aux-age:18-bbd19540ef','aux-age',18,'Para crear oficinas integradas de información con participación de varias Administraciones, el RD 208/1996 prevé:','["Un convenio de colaboración entre ellas", "Una ley aprobada por las Cortes Generales", "Una orden del ministerio competente", "Un real decreto del Consejo de Ministros"]'::jsonb,0,'Art. 10 RD 208/1996','El art. 10 permite, mediante convenio de colaboración entre Administraciones, intercambiar información o crear oficinas integradas.',null),
('aux-age:18-ed283acff0','aux-age',18,'Según la LO 4/2001, ¿en qué plazo debe acordarse y notificarse la inadmisión de una petición?','["En los 45 días hábiles siguientes a su presentación", "En los 3 meses siguientes a su presentación", "En los 30 días hábiles siguientes a su presentación", "En los 10 días siguientes a su presentación"]'::jsonb,0,'Art. 9 LO 4/2001','La declaración de inadmisibilidad debe ser motivada y acordarse y notificarse en los 45 días hábiles siguientes a la presentación.',null),
('aux-age:18-ca8e4b3dcd','aux-age',18,'Si en el plazo establecido no se declara la inadmisión de una petición, según la LO 4/2001:','["Se remite al Defensor del Pueblo", "Se archiva sin más trámite", "Se entiende admitida a trámite", "Se entiende desestimada"]'::jsonb,2,'Art. 9 LO 4/2001','Si no se declara la inadmisibilidad en plazo, la petición se entiende admitida a trámite.',null),
('aux-age:18-bd27b33c31','aux-age',18,'Si a un escrito de petición le faltan requisitos, la LO 4/2001 da al peticionario un plazo para subsanarlo de:','["Cinco días", "Diez días", "Un mes", "Quince días"]'::jsonb,3,'Art. 7 LO 4/2001','Se requiere la subsanación en quince días, con el apercibimiento de tenerle por desistido y archivar la petición.',null),
('aux-age:18-51cea84413','aux-age',18,'Cuando el destinatario de una petición no es competente, según la LO 4/2001 debe remitirla al órgano competente en el plazo de:','["Quince días", "Diez días", "Treinta días", "Cinco días"]'::jsonb,1,'Art. 10 LO 4/2001','Si la inadmisión se basa en la falta de competencia, el destinatario remite la petición al órgano competente en diez días e informa al peticionario.',null),
('aux-age:18-8256000124','aux-age',18,'Contra la inadmisión de una petición o la falta de contestación en plazo, la LO 4/2001 prevé:','["Recurso contencioso-administrativo para la protección de derechos fundamentales", "Recurso de alzada ante el superior jerárquico", "Reclamación previa ante el Defensor del Pueblo", "Recurso de amparo directo ante el Tribunal Constitucional, sin vía previa"]'::jsonb,0,'Art. 12 LO 4/2001','El art. 12 remite al procedimiento de protección de los derechos fundamentales de la Ley 29/1998.',null),
('aux-age:18-5e9335abe0','aux-age',18,'Según la LO 4/2001, NO pueden ser objeto del derecho de petición:','["Las propuestas para que se aprueben nuevas disposiciones de carácter general", "Los asuntos de interés general o colectivo", "Las cuestiones que afecten solo al peticionario", "Las cuestiones que tengan un procedimiento específico distinto"]'::jsonb,3,'Art. 3 LO 4/2001','Quedan excluidas las solicitudes para cuya satisfacción el ordenamiento establezca un procedimiento específico distinto.',null),
('aux-age:18-616d705741','aux-age',18,'Si una petición es colectiva, la LO 4/2001 exige que:','["La firmen todos los peticionarios, con su nombre y apellidos", "La firme solo un representante designado por todos", "La presente una asociación inscrita en un registro público", "Se acompañe de una lista sin necesidad de firmas"]'::jsonb,0,'Art. 4 LO 4/2001','En las peticiones colectivas, además de los requisitos generales, la firman todos los peticionarios, con su nombre y apellidos.',null),
('aux-age:18-71b98ebb13','aux-age',18,'En una comunidad autónoma con lengua cooficial, quien dirige una petición a la Administración General del Estado, según la LO 4/2001:','["Debe presentar una traducción jurada al castellano", "Puede usar cualquiera de las lenguas oficiales y recibir respuesta en la que elija", "Debe usar siempre el castellano", "Puede usar la lengua cooficial, pero la respuesta se le dará siempre en castellano"]'::jsonb,1,'Art. 5 LO 4/2001','El peticionario puede usar cualquiera de las lenguas oficiales y tiene derecho a obtener la respuesta en la lengua elegida.',null),
('aux-age:19-a4a35ef577','aux-age',19,'Según el Real Decreto 1708/2011, ¿en qué cuatro tipos se clasifican los archivos del Sistema de Archivos de la AGE según el ciclo vital de los documentos?','["Activos, pasivos, temporales y definitivos de cada Ministerio", "Físicos, electrónicos, mixtos y digitalizados", "De oficina o gestión, centrales, intermedio e históricos", "Generales, especiales, provinciales y municipales"]'::jsonb,2,'Art. 8 RD 1708/2011','Los documentos pasan del archivo de oficina al central, de este al intermedio y, si tienen valor histórico, al histórico.',null),
('aux-age:19-16088f1baf','aux-age',19,'¿Qué archivo actúa como archivo intermedio de la Administración General del Estado?','["El Archivo de la Corona de Aragón, en Barcelona", "El Archivo General de la Administración", "El Archivo General de Simancas, en Valladolid", "El Archivo Histórico Nacional, en Madrid"]'::jsonb,1,'Art. 11 RD 1708/2011','El Archivo Histórico Nacional actúa como archivo histórico de la AGE.',null),
('aux-age:19-a68b747292','aux-age',19,'El Archivo Histórico Nacional cumple, en el Sistema de Archivos de la AGE, la función de:','["Archivo histórico", "Archivo intermedio", "Archivo central del Ministerio de Cultura", "Archivo electrónico único"]'::jsonb,0,'Art. 12 RD 1708/2011','Custodia documentos de valor patrimonial que reflejan la historia de la Administración del Estado.',null),
('aux-age:19-5e26d026e6','aux-age',19,'En los archivos de oficina o de gestión se conservan los documentos:','["Una vez finalizada su tramitación y transcurridos quince años", "Que la Comisión Superior Calificadora ha propuesto eliminar", "Mientras están en tramitación o sometidos a uso administrativo continuo", "Que han sido declarados de conservación permanente por su valor histórico"]'::jsonb,2,'Art. 9 RD 1708/2011','Cuando termina ese uso, se transfieren al archivo central del departamento.',null),
('aux-age:19-7f1ec09bbe','aux-age',19,'¿Qué instrumento fija, para cada serie documental, los plazos de permanencia de los documentos en cada tipo de archivo?','["El calendario de conservación", "La relación de puestos de trabajo", "El inventario", "El cuadro de clasificación"]'::jsonb,0,'Art. 15.3 RD 1708/2011','Determina las fases activa, semiactiva e inactiva de cada serie.',null),
('aux-age:19-949cc67bac','aux-age',19,'¿Qué órgano debe dictaminar con carácter preceptivo las propuestas de eliminación o de conservación permanente de documentos de la AGE?','["La Agencia Española de Protección de Datos", "La Comisión Superior Calificadora de Documentos Administrativos", "La Comisión General de Secretarios de Estado y Subsecretarios del Gobierno", "El Consejo de Transparencia y Buen Gobierno, como autoridad independiente"]'::jsonb,1,'Art. 15.1 RD 1708/2011','Se rige por el Real Decreto 1401/2007.',null),
('aux-age:19-2519398537','aux-age',19,'Según el Real Decreto 1708/2011, la eliminación de documentos es:','["La digitalización de los documentos en papel y su incorporación al expediente electrónico", "La destrucción física de unidades o series documentales por el órgano responsable, con métodos que impidan su reconstrucción", "El traslado de los documentos del archivo central al archivo intermedio", "El borrado de los datos personales de un documento para permitir su consulta pública"]'::jsonb,1,'Art. 2 RD 1708/2011','Solo puede hacerse tras el dictamen de la Comisión Superior Calificadora.',null),
('aux-age:19-5269da4248','aux-age',19,'La valoración documental consiste en:','["La firma electrónica del documento por el órgano competente", "La asignación de un número de registro de entrada a cada documento", "El estudio de los valores administrativos, jurídicos, fiscales, informativos e históricos de los documentos", "El cálculo del coste económico que supone conservar un documento en el archivo durante todo su ciclo de vida"]'::jsonb,2,'Art. 2 RD 1708/2011','Sirve para decidir los plazos de conservación, el acceso y, en su caso, la eliminación.',null),
('aux-age:19-2b682728a7','aux-age',19,'Según la Ley 16/1985, del Patrimonio Histórico Español, se entiende por documento:','["Toda expresión en lenguaje natural o convencional y cualquier otra expresión gráfica, sonora o en imagen, recogida en cualquier tipo de soporte material, incluso informático", "Únicamente los textos publicados en un diario oficial", "Solo los escritos en papel firmados por una autoridad pública", "Cualquier objeto mueble de valor artístico con más de cien años"]'::jsonb,0,'Art. 49.1 Ley 16/1985','Se excluyen los ejemplares no originales de ediciones.',null),
('aux-age:19-c887d22cf9','aux-age',19,'Según la Ley 39/2015, el expediente administrativo es:','["La carpeta física en la que se archivan los escritos de los interesados", "El acto administrativo que pone fin al procedimiento", "Cualquier documento que se presente en un registro electrónico", "El conjunto ordenado de documentos y actuaciones que sirven de antecedente y fundamento a la resolución administrativa, y las diligencias encaminadas a ejecutarla"]'::jsonb,3,'Art. 70.1 Ley 39/2015','Los expedientes tienen formato electrónico.',null),
('aux-age:19-813cfd4ecf','aux-age',19,'¿Forman parte del expediente administrativo las notas, borradores y opiniones de carácter auxiliar?','["Sí, todos ellos, porque reflejan la actividad del órgano", "No, y además deben destruirse al terminar el procedimiento", "No, salvo que se trate de informes preceptivos o facultativos solicitados antes de la resolución", "Sí, todos ellos, porque reflejan la actividad interna del órgano y deben estar a disposición de los interesados"]'::jsonb,2,'Art. 70.4 Ley 39/2015','Tampoco forman parte las comunicaciones e informes internos o entre órganos o entidades administrativas, ni los juicios de valor emitidos por las Administraciones.',null),
('aux-age:19-d2d39aa959','aux-age',19,'Al remitir un expediente electrónico, este debe ir acompañado de:','["El original en papel de cada uno de los documentos que lo integran", "La firma manuscrita del jefe de la unidad que lo tramita y lo remite", "Una copia completa en soporte óptico, como un CD o un DVD", "Un índice numerado de todos los documentos que contenga"]'::jsonb,3,'Art. 70.2 Ley 39/2015','El índice garantiza la integridad del expediente y permite su recuperación.',null),
('aux-age:19-7455df519b','aux-age',19,'La presentación de documentos en el registro electrónico en un día inhábil se entiende realizada:','["Al día siguiente, aunque también sea inhábil", "El último día hábil anterior", "En el mismo día inhábil, a todos los efectos", "En la primera hora del primer día hábil siguiente, salvo que una norma permita expresamente la recepción en día inhábil"]'::jsonb,3,'Art. 31.2 b) Ley 39/2015','Los documentos se consideran presentados por el orden de hora efectiva en el que lo fueron en el día inhábil.',null),
('aux-age:19-8aeb0ac962','aux-age',19,'El registro electrónico de cada Administración permite la presentación de documentos:','["Todos los días del año, durante las veinticuatro horas", "En días hábiles, pero durante las veinticuatro horas de cada día", "En días hábiles, de 9 a 14 horas, como las oficinas presenciales", "Todos los días del año, pero solo en el horario de atención al público"]'::jsonb,0,'Art. 31.2 a) Ley 39/2015','El cómputo de plazos se rige por la fecha y hora oficial de la sede electrónica.',null),
('aux-age:19-eae474d10c','aux-age',19,'Los asientos en el registro electrónico se anotan:','["Agrupados por procedimientos administrativos al final de cada jornada de trabajo", "Respetando el orden temporal de recepción o salida de los documentos", "Por orden alfabético del apellido del interesado", "Por orden de importancia del asunto, según decida el responsable del registro"]'::jsonb,1,'Art. 16.2 Ley 39/2015','Indican la fecha del día en que se producen.',null),
('aux-age:19-2c6a508cf4','aux-age',19,'¿Cómo se denomina el sistema que conecta los registros de las distintas Administraciones para el intercambio electrónico de asientos?','["Carpeta Ciudadana", "Sistema de Interconexión de Registros (SIR)", "Red SARA de comunicaciones entre registros públicos", "Plataforma de Intermediación de Datos entre Administraciones"]'::jsonb,1,'Interoperabilidad de registros','La Red SARA es la red de comunicaciones que lo soporta, y la Plataforma de Intermediación sirve para consultar datos entre Administraciones.',null),
('aux-age:19-f3a7ad781d','aux-age',19,'Los documentos que los interesados presenten en papel en las oficinas de asistencia en materia de registros:','["Se destruyen tras su presentación para evitar duplicidades", "Se archivan en papel en la oficina, sin digitalizarlos", "Se digitalizan para incorporarlos al expediente electrónico y se devuelven los originales al interesado", "Se remiten por valija a la unidad tramitadora, que los conserva en papel junto con el resto del expediente"]'::jsonb,2,'Art. 16.5 Ley 39/2015','Salvo que la norma determine la custodia de los documentos por la Administración o que se trate de objetos o documentos en un soporte específico no susceptibles de digitalización.',null),
('aux-age:19-449de7fcf5','aux-age',19,'¿Qué registro deben mantener las Administraciones de los funcionarios habilitados para expedir copias auténticas y asistir en la presentación electrónica?','["Un registro o sistema equivalente de funcionarios habilitados", "Un registro electrónico de apoderamientos otorgados por los interesados", "Un registro de convenios suscritos con otras Administraciones públicas", "Un registro de órganos colegiados y de sus miembros titulares y suplentes"]'::jsonb,0,'Art. 12.3 Ley 39/2015','El registro electrónico de apoderamientos recoge las representaciones otorgadas por los interesados.',null),
('aux-age:19-cabe198e8e','aux-age',19,'Las copias auténticas de documentos públicos administrativos o privados realizadas por las Administraciones:','["Tienen valor informativo y no pueden aportarse a otros procedimientos", "Valen durante seis meses desde su expedición", "Son válidas dentro de la Administración que las expide y en sus organismos públicos", "Tienen la misma validez y eficacia que los documentos originales"]'::jsonb,3,'Art. 27.2 Ley 39/2015','Pueden expedirse en papel o en soporte electrónico.',null),
('aux-age:19-5a2aa0c3c4','aux-age',19,'Cada Administración debe mantener un archivo electrónico único de:','["Todos los escritos en papel presentados por los ciudadanos", "Los documentos electrónicos que correspondan a procedimientos finalizados", "Las resoluciones judiciales que le afecten", "Los expedientes de personal de todos sus funcionarios y del personal laboral a su servicio"]'::jsonb,1,'Art. 17.1 Ley 39/2015','Los documentos se conservan en un formato que permita garantizar su autenticidad, integridad y conservación.',null),
('aux-age:19-6388adff93','aux-age',19,'En el ciclo vital de los documentos, la fase en la que el documento ya no se consulta con frecuencia por la unidad, pero aún tiene valor administrativo, se denomina:','["Fase de tramitación", "Fase semiactiva", "Fase inactiva o histórica", "Fase activa"]'::jsonb,1,'Ciclo vital de los documentos','Corresponde normalmente al archivo central y al intermedio.',null),
('aux-age:19-dcf62d891d','aux-age',19,'El documento de archivo, según el RD 1708/2011, es:','["La relación de expedientes que se transfieren a otro archivo", "El ejemplar en cualquier soporte que refleja las actividades y funciones de personas físicas o jurídicas, públicas o privadas", "Cualquier libro o publicación editada por la Administración", "Solo el documento en papel firmado de forma manuscrita"]'::jsonb,1,'Art. 2 RD 1708/2011','Puede estar en papel o en formato electrónico.',null),
('aux-age:20-28875e2c9f','aux-age',20,'Según el artículo 9 de la Ley 39/2015, ¿cuál de los siguientes es un sistema válido para que los interesados se identifiquen electrónicamente ante las Administraciones?','["La fotocopia del DNI enviada por correo electrónico", "Los sistemas de clave concertada", "El número de teléfono móvil", "La firma manuscrita escaneada"]'::jsonb,1,'Art. 9.2 Ley 39/2015','También los certificados electrónicos cualificados de firma y de sello y cualquier otro sistema que las Administraciones consideren válido en los términos y condiciones que se establezcan.',null),
('aux-age:20-6bdae4a255','aux-age',20,'¿Cómo se llama el sistema común de identificación electrónica basado en claves concertadas que usa la Administración General del Estado?','["Autofirma", "DEHú", "Cl@ve", "Carpeta Ciudadana"]'::jsonb,2,'Sistema Cl@ve','Autofirma es una aplicación para firmar, Carpeta Ciudadana un área personal y DEHú la dirección electrónica habilitada única.',null),
('aux-age:20-106343ffa4','aux-age',20,'¿Qué es Autofirma?','["El registro de los funcionarios habilitados para firmar en nombre de los ciudadanos", "Una aplicación de escritorio para firmar electrónicamente documentos con certificado", "El sistema de identificación de la AGE mediante claves concertadas que se envían por SMS", "Un certificado electrónico cualificado que emite la Fábrica Nacional de Moneda y Timbre"]'::jsonb,1,'Firma electrónica','La desarrolla y distribuye gratuitamente la Administración General del Estado.',null),
('aux-age:20-e6c5587f61','aux-age',20,'Según el artículo 43 de la Ley 39/2015, la notificación por medios electrónicos se entiende rechazada cuando:','["Han transcurrido cinco días hábiles desde su envío sin que el interesado haya contestado ni presentado alegaciones", "Han transcurrido diez días naturales desde su puesta a disposición sin que se acceda a su contenido", "Han transcurrido quince días hábiles desde que se dictó el acto", "El interesado no contesta en veinticuatro horas al aviso enviado a su dirección de correo electrónico o a su móvil"]'::jsonb,1,'Art. 43.2 Ley 39/2015','Se entiende practicada en el momento en que se produce el acceso a su contenido.',null),
('aux-age:20-b13281e4fb','aux-age',20,'Según la Ley 39/2015, toda notificación debe cursarse dentro del plazo de:','["Tres días a partir de la fecha en que el acto haya adquirido firmeza", "Un mes a partir de la fecha en que el acto haya sido dictado y firmado", "Diez días a partir de la fecha en que el acto haya sido dictado", "Quince días a partir de la fecha en que el acto haya sido publicado"]'::jsonb,2,'Art. 40.2 Ley 39/2015','Debe contener el texto íntegro de la resolución, si pone fin o no a la vía administrativa y los recursos que procedan.',null),
('aux-age:20-e20b720dd9','aux-age',20,'¿Cuál de los siguientes está obligado a relacionarse electrónicamente con las Administraciones según el artículo 14.2 de la Ley 39/2015?','["Las personas físicas mayores de 65 años", "Los extranjeros residentes en España", "Las personas jurídicas", "Los autónomos sin colegiación obligatoria"]'::jsonb,2,'Art. 14.2 Ley 39/2015','También las entidades sin personalidad jurídica, los profesionales de colegiación obligatoria en el ejercicio de su actividad, sus representantes y los empleados públicos en los trámites por su condición de tales.',null),
('aux-age:20-92995125cb','aux-age',20,'¿Qué es la Dirección Electrónica Habilitada única (DEHú)?','["La dirección postal que el interesado designa para recibir las notificaciones en papel cuando no está obligado a relacionarse electrónicamente", "El punto donde el interesado puede consultar las notificaciones electrónicas que le remitan las Administraciones", "La sede electrónica del Ministerio competente en materia de función pública", "El correo electrónico oficial que la Administración asigna a cada ciudadano y a cada empresa para recibir sus comunicaciones oficiales"]'::jsonb,1,'Art. 43 Ley 39/2015 y RD 203/2021','Las notificaciones pueden practicarse por comparecencia en la sede electrónica o a través de la DEHú.',null),
('aux-age:20-3011418399','aux-age',20,'Según la Ley 40/2015, la sede electrónica es:','["Cualquier página web en la que aparezca el escudo de una Administración", "El edificio en el que se ubican los servidores informáticos de un Ministerio", "La dirección electrónica disponible para los ciudadanos a través de redes de telecomunicaciones, cuya titularidad corresponde a una Administración Pública", "El buzón de correo electrónico de una unidad administrativa"]'::jsonb,2,'Art. 38.1 Ley 40/2015','El titular de la sede responde de la integridad, veracidad y actualización de la información y de los servicios a los que pueda accederse a través de ella.',null),
('aux-age:20-159b2bb7a4','aux-age',20,'Según la Ley 40/2015, la actuación administrativa automatizada es:','["Cualquier acto dictado por un funcionario usando un ordenador", "El envío de avisos por SMS a los interesados", "Cualquier acto o actuación realizada íntegramente a través de medios electrónicos por una Administración en el marco de un procedimiento, sin intervención directa de un empleado público", "La digitalización de documentos en papel"]'::jsonb,2,'Art. 41.1 Ley 40/2015','Debe establecerse previamente el órgano u órganos competentes para definir las especificaciones, programación, mantenimiento, supervisión y control de calidad y auditoría del sistema.',null),
('aux-age:20-62dd9313e8','aux-age',20,'En la actuación administrativa automatizada, ¿qué sistema de firma puede utilizar cada Administración?','["Sello electrónico de órgano o código seguro de verificación", "El certificado electrónico personal del ciudadano que inició el procedimiento", "La clave concertada del interesado, comunicada previamente por SMS", "La firma manuscrita del titular del órgano, digitalizada mediante escáner"]'::jsonb,0,'Art. 42 Ley 40/2015','El código seguro de verificación permite comprobar la integridad del documento mediante el acceso a la sede electrónica correspondiente.',null),
('aux-age:20-329c0a4d4b','aux-age',20,'El código seguro de verificación (CSV) permite:','["Cifrar el documento para que solo pueda leerlo el destinatario que disponga de la clave privada correspondiente", "Firmar documentos en papel con valor de original", "Identificar al ciudadano ante cualquier Administración sin necesidad de disponer de un certificado electrónico", "Comprobar la integridad y autenticidad de un documento accediendo a la sede electrónica correspondiente"]'::jsonb,3,'Art. 42 b) Ley 40/2015','Se vincula a la Administración, órgano u organismo y, en su caso, a la persona firmante del documento.',null),
('aux-age:20-0eb35bbb74','aux-age',20,'¿Qué norma regula el Esquema Nacional de Seguridad vigente?','["El Real Decreto 311/2022, de 3 de mayo", "El Real Decreto 4/2010, de 8 de enero", "El Real Decreto 203/2021, de 30 de marzo", "El Real Decreto 3/2010, de 8 de enero"]'::jsonb,0,'RD 311/2022','El RD 4/2010 regula el Esquema Nacional de Interoperabilidad. El RD 3/2010 era el anterior Esquema Nacional de Seguridad, derogado.',null),
('aux-age:20-c3046ebd2e','aux-age',20,'El Esquema Nacional de Interoperabilidad se regula en:','["El RD 203/2021", "El RD 1708/2011", "El RD 311/2022", "El RD 4/2010"]'::jsonb,3,'RD 4/2010','El Esquema Nacional de Interoperabilidad y el de Seguridad se prevén en el artículo 156 de la Ley 40/2015.',null),
('aux-age:20-234071700d','aux-age',20,'¿En qué categorías clasifica los sistemas de información el Esquema Nacional de Seguridad?','["Pública, reservada y secreta", "Baja, alta y crítica", "Básica, media y alta", "Nivel 1, nivel 2, nivel 3 y nivel 4"]'::jsonb,2,'RD 311/2022','La categoría depende del impacto que tendría un incidente en la información o los servicios.',null),
('aux-age:20-867a67ba4f','aux-age',20,'¿Cuál de las siguientes es una dimensión de seguridad del Esquema Nacional de Seguridad?','["La gratuidad", "La proporcionalidad", "La publicidad", "La trazabilidad"]'::jsonb,3,'RD 311/2022','Las dimensiones son confidencialidad, integridad, trazabilidad, autenticidad y disponibilidad.',null),
('aux-age:20-02865c4223','aux-age',20,'¿Qué Reglamento europeo regula la identificación electrónica y los servicios de confianza para las transacciones electrónicas?','["El Reglamento (UE) 2016/679, de 27 de abril", "La Directiva (UE) 2019/1024, de 20 de junio", "El Reglamento eIDAS (UE) 910/2014", "El Reglamento (UE) 2022/2065, de 19 de octubre"]'::jsonb,2,'Reglamento eIDAS','El Reglamento 2016/679 es el de protección de datos, la Directiva 2019/1024 la de datos abiertos y el Reglamento 2022/2065 el de servicios digitales.',null),
('aux-age:20-9a5f03e22a','aux-age',20,'Según el Reglamento eIDAS, la firma electrónica cualificada tiene un efecto jurídico equivalente al de:','["Una copia simple", "Una firma manuscrita", "Un documento notarial", "Un sello de registro"]'::jsonb,1,'Art. 25.2 Reglamento eIDAS','Es una firma avanzada creada por un dispositivo cualificado y basada en un certificado cualificado.',null),
('aux-age:20-f1cc9ad8ce','aux-age',20,'¿Qué ley española regula determinados aspectos de los servicios electrónicos de confianza?','["La Ley 59/2003, de 19 de diciembre", "La Ley 34/2002, de 11 de julio", "La Ley 11/2007, de 22 de junio", "La Ley 6/2020, de 11 de noviembre"]'::jsonb,3,'Ley 6/2020','Derogó la Ley 59/2003 de firma electrónica. La Ley 11/2007 de acceso electrónico fue derogada por las Leyes 39 y 40 de 2015 y la Ley 34/2002 regula los servicios de la sociedad de la información.',null),
('aux-age:20-119a49c916','aux-age',20,'¿Qué red de comunicaciones interconecta las redes de las Administraciones Públicas españolas e instituciones europeas?','["La Red Cl@ve", "La Red IRIS", "La Red SARA", "La Red 060"]'::jsonb,2,'Red SARA','RedIRIS es la red académica y de investigación española.',null),
('aux-age:20-5f0f5b0afa','aux-age',20,'Según la Ley 39/2015, los interesados no estarán obligados a aportar documentos que:','["Tengan una antigüedad inferior a cinco años desde su expedición, salvo que el órgano competente los requiera por resolución motivada", "Hayan sido elaborados por cualquier Administración o que hayan sido aportados anteriormente por el interesado a cualquier Administración", "Estén redactados en una lengua cooficial distinta del castellano", "Hayan sido firmados electrónicamente por el propio interesado o por su representante con un certificado cualificado expedido por un prestador de confianza"]'::jsonb,1,'Art. 28.2 y 28.3 Ley 39/2015','La Administración los consultará o recabará, salvo oposición expresa del interesado o que una ley especial exija su consentimiento expreso.',null),
('aux-age:20-0c4ba0759e','aux-age',20,'¿Qué servicio permite al ciudadano consultar en un único espacio sus expedientes, sus datos en poder de las Administraciones y sus notificaciones?','["El Portal de la Transparencia", "El Registro Electrónico de Apoderamientos", "La Carpeta Ciudadana", "La Plataforma de Contratación del Sector Público"]'::jsonb,2,'Carpeta Ciudadana','Es accesible desde el Punto de Acceso General electrónico.',null),
('aux-age:20-2511af8572','aux-age',20,'¿Qué reglamento desarrolla la actuación y el funcionamiento del sector público por medios electrónicos?','["El Real Decreto 203/2021, de 30 de marzo", "El Real Decreto 1708/2011, de 18 de noviembre", "El Real Decreto 1671/2009, de 6 de noviembre", "El Real Decreto 951/2005, de 29 de julio"]'::jsonb,0,'RD 203/2021','Derogó el RD 1671/2009, que desarrollaba la Ley 11/2007.',null),
('aux-age:20-49e77ea9ae','aux-age',20,'Según la Ley 39/2015, si el interesado no dispone de los medios electrónicos necesarios, su identificación o firma electrónica en el procedimiento puede ser válidamente realizada por:','["Cualquier familiar del interesado, con su propio certificado", "El representante sindical del interesado", "Un notario de libre elección del interesado, que deberá dar fe del acto realizado y de la identidad del firmante", "Un funcionario público habilitado, mediante el uso del sistema de firma electrónica del que esté dotado"]'::jsonb,3,'Art. 12.2 Ley 39/2015','El interesado debe identificarse ante el funcionario y prestar su consentimiento expreso, que debe quedar constancia.',null),
('aux-age:20-a5652c5bf3','aux-age',20,'¿Cuál es el órgano de respuesta a incidentes de ciberseguridad del Centro Criptológico Nacional?','["El Mando Conjunto del Ciberespacio", "La Agencia Española de Protección de Datos", "El INCIBE-CERT", "El CCN-CERT"]'::jsonb,3,'Centro Criptológico Nacional','El INCIBE-CERT atiende a ciudadanos y empresas; el CCN-CERT, al sector público.',null),
('aux-age:20-49e0d17622','aux-age',20,'El portal de internet, según la Ley 40/2015, es:','["El punto de acceso electrónico cuya titularidad corresponde a una Administración Pública u organismo y que permite el acceso a través de internet a la información publicada y, en su caso, a la sede electrónica", "La sede electrónica de cada Ministerio", "Un servidor de correo electrónico de la Administración", "El programa informático que permite firmar documentos"]'::jsonb,0,'Art. 39 Ley 40/2015','No todo portal es una sede electrónica: la sede tiene garantías de integridad, veracidad y actualización.',null),
('aux-age:20-6d68dac9ae','aux-age',20,'El sello electrónico, como sistema de firma de las Administraciones, se basa en:','["Una contraseña que conoce solo el funcionario que tramita", "Un certificado electrónico reconocido o cualificado que reúna los requisitos de la legislación de firma electrónica", "El número de registro de entrada asignado al documento", "La firma manuscrita digitalizada del titular del órgano, incorporada como imagen a todos los documentos que se emitan"]'::jsonb,1,'Art. 40 Ley 40/2015','Los certificados incluyen el número de identificación fiscal y la denominación correspondiente.',null),
('aux-age:20-4a3d3d1fe4','aux-age',20,'¿Qué ley de 2007 reconoció por primera vez el derecho de los ciudadanos a relacionarse electrónicamente con las Administraciones?','["La Ley 39/2015, de 1 de octubre", "La Ley 19/2013, de 9 de diciembre", "La Ley 11/2007, de 22 de junio", "La Ley 30/1992, de 26 de noviembre"]'::jsonb,2,'Ley 11/2007','Fue derogada por las Leyes 39/2015 y 40/2015.',null),
('aux-age:21-2cf2fc0f5f','aux-age',21,'¿Cuántos bytes tiene un kilobyte (KB) en el sistema binario tradicional?','["1.000 bytes", "1.024 bytes", "1.048 bytes", "512 bytes"]'::jsonb,1,'Unidades de información','1 KB = 2^10 bytes = 1.024 bytes. En el sistema internacional, 1 kB = 1.000 bytes (y 1 KiB = 1.024).',null),
('aux-age:21-86473cb5ee','aux-age',21,'¿Cuántos bits forman un byte?','["8", "10", "16", "4"]'::jsonb,0,'Unidades de información','Un byte permite representar 256 valores distintos.',null),
('aux-age:21-e596188440','aux-age',21,'¿Qué unidad de almacenamiento es mayor?','["Un terabyte", "Un kilobyte", "Un megabyte", "Un gigabyte"]'::jsonb,0,'Unidades de información','Orden creciente: kilobyte, megabyte, gigabyte, terabyte, petabyte.',null),
('aux-age:21-2c597cea38','aux-age',21,'La memoria RAM se caracteriza por ser:','["Volátil, de lectura y escritura", "No volátil, de lectura y escritura", "Volátil y de solo lectura", "No volátil y de solo lectura"]'::jsonb,0,'Memoria','Su contenido se pierde al apagar el equipo. La ROM es no volátil y, en principio, de solo lectura.',null),
('aux-age:21-49ce3a9568','aux-age',21,'¿Qué componente del ordenador ejecuta las instrucciones de los programas?','["La tarjeta de red", "La fuente de alimentación", "El procesador o CPU", "El disco duro"]'::jsonb,2,'Hardware','La CPU incluye la unidad de control y la unidad aritmético-lógica.',null),
('aux-age:21-a796fd5763','aux-age',21,'¿Qué parte de la CPU realiza las operaciones aritméticas y lógicas?','["La unidad de control del procesador", "La unidad aritmético-lógica (ALU)", "La memoria caché interna del procesador", "El bus de datos y direcciones del sistema"]'::jsonb,1,'Hardware','La unidad de control interpreta las instrucciones y coordina el resto de componentes.',null),
('aux-age:21-c0ca301391','aux-age',21,'¿Cuál de los siguientes es un periférico de entrada?','["Los altavoces", "El monitor", "La impresora", "El escáner"]'::jsonb,3,'Periféricos','Impresora, monitor y altavoces son periféricos de salida.',null),
('aux-age:21-ad86a0ede9','aux-age',21,'Una pantalla táctil es un periférico:','["De almacenamiento", "De entrada y salida", "Exclusivamente de salida", "Exclusivamente de entrada"]'::jsonb,1,'Periféricos','Muestra información y a la vez recibe órdenes del usuario.',null),
('aux-age:21-c38c279a8d','aux-age',21,'¿Qué tipo de unidad de almacenamiento no tiene partes mecánicas móviles?','["El SSD", "El disco duro HDD", "El disquete", "La unidad de cinta"]'::jsonb,0,'Almacenamiento','Los SSD usan memoria flash; por eso son más rápidos y resistentes a golpes que los HDD.',null),
('aux-age:21-dc89d8179c','aux-age',21,'El firmware que inicia el hardware al encender el ordenador y arranca el sistema operativo es, en los equipos actuales:','["La UEFI, sucesora de la BIOS", "El controlador de la tarjeta gráfica", "El gestor de arranque de la memoria RAM", "El sistema de archivos NTFS"]'::jsonb,0,'Arranque del equipo','La BIOS es el firmware tradicional; la UEFI la sustituye en los equipos modernos.',null),
('aux-age:21-3dd743f4b0','aux-age',21,'¿Cuál de los siguientes es un sistema operativo?','["Chrome", "Excel", "Linux", "Java"]'::jsonb,2,'Software','Excel es una aplicación, Chrome un navegador y Java un lenguaje de programación.',null),
('aux-age:21-0a6a92e6ba','aux-age',21,'El software cuyo código fuente puede estudiarse, modificarse y redistribuirse libremente se denomina:','["Freeware", "Software propietario", "Shareware", "Software libre"]'::jsonb,3,'Tipos de software','El freeware es gratuito pero no necesariamente permite acceder al código ni modificarlo.',null),
('aux-age:21-1335a57642','aux-age',21,'¿Qué sistema de numeración utiliza internamente el ordenador?','["El octal", "El decimal", "El binario", "El romano"]'::jsonb,2,'Representación de la información','Solo usa los dígitos 0 y 1.',null),
('aux-age:21-c9464fc7c5','aux-age',21,'El número decimal 10 se representa en binario como:','["1100", "1010", "0110", "1001"]'::jsonb,1,'Representación de la información','1010 = 8 + 0 + 2 + 0 = 10.',null),
('aux-age:21-314f94ae0f','aux-age',21,'Una red que conecta los ordenadores de un mismo edificio u oficina se denomina:','["VPN", "MAN", "WAN", "LAN"]'::jsonb,3,'Redes','LAN es red de área local; WAN, de área extensa; MAN, metropolitana; VPN, red privada virtual.',null),
('aux-age:21-3fb95a35f4','aux-age',21,'¿Qué tipo de puerto se usa habitualmente para conectar un monitor con audio y vídeo digital?','["VGA", "RJ-45", "PS/2", "HDMI"]'::jsonb,3,'Puertos','El RJ-45 se usa para la red, el PS/2 para teclados y ratones antiguos, y el VGA transmite solo vídeo analógico.',null),
('aux-age:21-e7ec8b2572','aux-age',21,'El malware que cifra los archivos del usuario y pide un rescate para recuperarlos se llama:','["Ransomware", "Spyware", "Gusano", "Adware"]'::jsonb,0,'Seguridad','El spyware espía la actividad del usuario y el adware muestra publicidad no deseada.',null),
('aux-age:21-ce57d24569','aux-age',21,'Un troyano es:','["Un programa malicioso que se presenta como legítimo para que el usuario lo instale", "Un programa que se replica por sí solo a través de la red sin intervención del usuario", "Un programa que muestra publicidad emergente", "Un correo que suplanta a una entidad para robar contraseñas"]'::jsonb,0,'Seguridad','El gusano se replica solo; la suplantación por correo es phishing; la publicidad emergente, adware.',null),
('aux-age:21-995f59c40f','aux-age',21,'El phishing consiste en:','["Infectar un equipo a través de una memoria USB que ejecuta automáticamente un programa", "Bloquear un servidor saturándolo con miles de peticiones simultáneas desde muchos equipos", "Suplantar la identidad de una entidad de confianza para obtener datos confidenciales", "Instalar en secreto un programa que registra todas las pulsaciones del teclado del usuario"]'::jsonb,2,'Seguridad','Bloquear un servidor con peticiones masivas es un ataque de denegación de servicio (DoS); registrar pulsaciones, un keylogger.',null),
('aux-age:21-b3eb23fd8f','aux-age',21,'Una copia de seguridad incremental guarda:','["Solo los archivos modificados desde la última copia completa, sin tener en cuenta las demás", "Todos los archivos del equipo cada vez", "Solo los archivos modificados desde la última copia, sea completa o incremental", "Únicamente los archivos del sistema operativo"]'::jsonb,2,'Copias de seguridad','La copia diferencial guarda los cambios desde la última copia completa.',null),
('aux-age:21-5263cf0537','aux-age',21,'La memoria caché es:','["Una memoria de solo lectura que contiene la BIOS", "Un espacio del disco duro que el sistema operativo utiliza como memoria cuando la RAM se llena", "Una memoria muy rápida y pequeña que guarda los datos que el procesador usa con más frecuencia", "La memoria secundaria, como el disco duro o el SSD, donde se instalan los programas y se guardan los archivos"]'::jsonb,2,'Memoria','El espacio en disco usado cuando la RAM se llena es la memoria virtual o archivo de paginación.',null),
('aux-age:21-4c447b508b','aux-age',21,'¿Qué es un controlador o driver?','["Una aplicación del sistema operativo para crear y restaurar copias de seguridad de los archivos", "El usuario con permisos de administrador que puede instalar y desinstalar programas en el equipo", "Un componente físico de la placa base que conecta el procesador con el resto de dispositivos", "Un programa que permite al sistema operativo comunicarse con un dispositivo de hardware"]'::jsonb,3,'Software','Cada dispositivo necesita su controlador para funcionar correctamente.',null),
('aux-age:21-8b300c677a','aux-age',21,'La computación en la nube (cloud computing) consiste en:','["Conectar varios ordenadores de una misma oficina en una red local sin cables mediante tecnología wifi", "Guardar archivos en una memoria USB externa", "Usar recursos informáticos, como almacenamiento o aplicaciones, ofrecidos a través de internet", "Instalar programas solo desde un CD o DVD"]'::jsonb,2,'Cloud computing','Ejemplos: OneDrive, Google Drive o Microsoft 365.',null),
('aux-age:21-187c5e5969','aux-age',21,'¿Qué significan las siglas SaaS en la computación en la nube?','["Servidor de aplicaciones en red", "Seguridad como servicio", "Sistema de almacenamiento seguro", "Software como servicio"]'::jsonb,3,'Cloud computing','Junto a SaaS están IaaS (infraestructura como servicio) y PaaS (plataforma como servicio).',null),
('aux-age:21-09fc60bc37','aux-age',21,'¿Cuántos bits forman un nibble o cuarteto?','["2", "4", "16", "8"]'::jsonb,1,'Unidades de información','Un nibble son 4 bits, la mitad de un byte.',null),
('aux-age:21-cd0bb841b9','aux-age',21,'En el sistema binario tradicional, un gigabyte equivale a:','["1.024 megabytes", "1.000 megabytes", "2.048 megabytes", "512 megabytes"]'::jsonb,0,'Unidades de información','Cada unidad es 1.024 veces la anterior: 1 GB = 1.024 MB.',null),
('aux-age:21-a0ba1b423b','aux-age',21,'El número binario 1111 equivale en decimal a:','["11", "15", "14", "16"]'::jsonb,1,'Representación de la información','8 + 4 + 2 + 1 = 15.',null),
('aux-age:21-652d49af7e','aux-age',21,'¿Qué sistema de numeración utiliza los dígitos del 0 al 9 y las letras de la A a la F?','["El hexadecimal", "El binario", "El octal", "El decimal"]'::jsonb,0,'Representación de la información','El sistema hexadecimal tiene base 16: 0-9 y A-F.',null),
('aux-age:21-d0e7a969a7','aux-age',21,'La memoria ROM se caracteriza por ser:','["Volátil y de solo lectura", "No volátil y, en principio, de solo lectura", "Volátil y de lectura y escritura", "Una memoria de almacenamiento masivo externa"]'::jsonb,1,'Memoria','La ROM conserva los datos sin corriente y está pensada para leerse, no para escribirse en el uso normal.',null),
('aux-age:21-3d9e374677','aux-age',21,'¿Qué componente conecta todos los elementos internos del ordenador y permite que se comuniquen?','["La placa base", "El disipador", "La fuente de alimentación", "La tarjeta gráfica"]'::jsonb,0,'Hardware','La placa base aloja y comunica el procesador, la memoria y el resto de componentes.',null),
('aux-age:21-f636d46eb1','aux-age',21,'La GPU de un ordenador es:','["La unidad principal de almacenamiento", "El procesador especializado en gráficos", "El controlador de la red inalámbrica", "La memoria intermedia del disco duro"]'::jsonb,1,'Hardware','La GPU (unidad de procesamiento gráfico) se encarga de calcular y mostrar las imágenes.',null),
('aux-age:21-0399c6308e','aux-age',21,'¿Cuál de los siguientes es un periférico de salida?','["El micrófono", "El lector de códigos de barras", "La impresora", "El ratón"]'::jsonb,2,'Periféricos','La impresora saca información del ordenador; los otros tres la introducen.',null),
('aux-age:21-0557c6696d','aux-age',21,'Un disco duro tradicional (HDD) guarda la información:','["En platos magnéticos que giran", "En chips de memoria flash", "En la memoria RAM del equipo", "En discos ópticos grabados con láser"]'::jsonb,0,'Almacenamiento','El HDD usa platos magnéticos y un cabezal móvil; el SSD usa memoria flash sin partes móviles.',null),
('aux-age:21-a76b55cdc4','aux-age',21,'Un procesador de textos es un ejemplo de:','["Controlador de dispositivo", "Software de aplicación", "Firmware", "Software de sistema"]'::jsonb,1,'Tipos de software','Los programas para tareas del usuario (textos, hojas de cálculo) son software de aplicación.',null),
('aux-age:21-20e4f33adb','aux-age',21,'En la computación en la nube, IaaS significa:','["Integración como servicio", "Internet como servicio", "Infraestructura como servicio", "Información como servicio"]'::jsonb,2,'Cloud computing','IaaS ofrece servidores, almacenamiento y redes virtuales como servicio.',null),
('aux-age:21-0b941b5558','aux-age',21,'Un gusano informático se caracteriza por:','["Propagarse por sí mismo a otros equipos a través de la red", "Cifrar los archivos del usuario y pedir un rescate económico para liberarlos", "Mostrar publicidad no deseada en el navegador", "Registrar las teclas que pulsa el usuario"]'::jsonb,0,'Seguridad','El gusano se replica solo; el ransomware cifra, el adware muestra anuncios y el keylogger registra pulsaciones.',null),
('aux-age:21-d3a6eb4fc4','aux-age',21,'Una copia de seguridad diferencial guarda:','["Los archivos modificados desde la última copia de cualquier tipo", "Solo los archivos creados ese mismo día", "Todos los archivos del equipo cada vez", "Los archivos modificados desde la última copia completa"]'::jsonb,3,'Copias de seguridad','La diferencial toma como referencia la última copia completa; la incremental, la última copia de cualquier tipo.',null),
('aux-age:21-8e51df0045','aux-age',21,'La verificación en dos pasos consiste en:','["Iniciar sesión a la vez desde dos dispositivos", "Usar dos contraseñas distintas, una para el usuario y otra para el equipo, en cada acceso", "Cambiar la contraseña cada dos meses", "Pedir, además de la contraseña, un segundo factor, como un código en el móvil"]'::jsonb,3,'Seguridad','Combina algo que sabes (contraseña) con algo que tienes (móvil, llave) o que eres (huella).',null),
('aux-age:21-d5d60a4e79','aux-age',21,'Una red que abarca una zona geográfica amplia, como un país, se denomina:','["WAN", "PAN", "WLAN", "LAN"]'::jsonb,0,'Redes','WAN es red de área amplia; LAN, local; PAN, personal; WLAN, local inalámbrica.',null),
('aux-age:22-30f5468878','aux-age',22,'En Windows 11, ¿qué combinación de teclas muestra u oculta el escritorio?','["Windows + L", "Windows + D", "Windows + M + Mayús", "Windows + E"]'::jsonb,1,'Atajos de Windows','Windows + E abre el Explorador de archivos y Windows + L bloquea el equipo.',null),
('aux-age:22-2eb3090d3e','aux-age',22,'En Windows 11, la combinación Windows + L sirve para:','["Abrir el Explorador de archivos", "Cerrar la sesión y apagar el equipo", "Bloquear el equipo", "Abrir la configuración de idioma"]'::jsonb,2,'Atajos de Windows','Para volver a entrar hay que identificarse (contraseña, PIN o Windows Hello).',null),
('aux-age:22-f05eb81ba4','aux-age',22,'¿Qué combinación de teclas abre el historial del portapapeles en Windows 11?','["Windows + V", "Ctrl + V", "Ctrl + Mayús + V", "Windows + C"]'::jsonb,0,'Atajos de Windows','Ctrl + V pega el último elemento copiado. El historial debe estar activado en Configuración.',null),
('aux-age:22-4171e188bd','aux-age',22,'En Windows 11, Windows + Mayús + S permite:','["Abrir el menú de apagado, reinicio y suspensión del sistema operativo", "Capturar una parte de la pantalla con la herramienta Recortes", "Cambiar entre los distintos escritorios virtuales creados por el usuario", "Guardar el documento que está abierto con otro nombre o en otra carpeta"]'::jsonb,1,'Atajos de Windows','La captura se copia en el portapapeles y puede editarse en Recortes.',null),
('aux-age:22-9f8c0fcffd','aux-age',22,'¿Qué combinación abre directamente el Administrador de tareas?','["Windows + Ctrl + Esc", "Ctrl + Mayús + Esc", "Windows + Tab", "Alt + F4"]'::jsonb,1,'Atajos de Windows','Ctrl + Alt + Supr muestra una pantalla desde la que también puede abrirse.',null),
('aux-age:22-3fc698725b','aux-age',22,'En Windows 11, la combinación Windows + Tab abre:','["El menú Inicio con las aplicaciones ancladas y los archivos recomendados recientemente", "El centro de notificaciones", "El cuadro Ejecutar para escribir el nombre de un programa, carpeta o comando", "La vista de tareas, con las ventanas abiertas y los escritorios virtuales"]'::jsonb,3,'Atajos de Windows','Alt + Tab permite cambiar rápidamente entre ventanas abiertas.',null),
('aux-age:22-39e5abe8e7','aux-age',22,'En Windows 11, la combinación Windows + I abre:','["Configuración", "El Explorador de archivos", "El Panel de control", "La búsqueda de Windows"]'::jsonb,0,'Atajos de Windows','La aplicación Configuración sustituye progresivamente al Panel de control.',null),
('aux-age:22-647d53d669','aux-age',22,'¿Qué combinación de teclas abre el cuadro de diálogo Ejecutar?','["Windows + E", "Ctrl + R", "Windows + R", "Alt + R"]'::jsonb,2,'Atajos de Windows','Permite abrir programas, carpetas o comandos escribiendo su nombre, por ejemplo «cmd».',null),
('aux-age:22-78ac2a7849','aux-age',22,'Al eliminar un archivo del disco duro con Mayús + Supr en Windows:','["Se oculta al usuario, pero sigue ocupando espacio en la misma carpeta del disco", "Se envía a la Papelera de reciclaje, igual que si se pulsara solo la tecla Supr", "Se mueve a la carpeta Documentos", "Se elimina de forma permanente, sin pasar por la Papelera de reciclaje"]'::jsonb,3,'Papelera de reciclaje','Normalmente Windows pide confirmación antes de eliminarlo definitivamente.',null),
('aux-age:22-772af6718f','aux-age',22,'¿Qué es Copilot en Windows 11?','["El antivirus que viene integrado en el sistema operativo Windows", "Una herramienta para hacer copias de seguridad de los archivos en la nube", "El gestor de contraseñas integrado en el navegador Microsoft Edge", "Un asistente de inteligencia artificial de Microsoft"]'::jsonb,3,'Copilot','Permite hacer preguntas, redactar textos o resumir contenidos en lenguaje natural. Algunos teclados recientes incluyen una tecla Copilot.',null),
('aux-age:22-3072f72bdf','aux-age',22,'¿Qué antivirus incluye Windows 11 de forma integrada?','["BitLocker", "Windows Hello", "Microsoft Defender", "OneDrive"]'::jsonb,2,'Seguridad de Windows','Windows Hello sirve para iniciar sesión con rostro, huella o PIN; BitLocker cifra unidades y OneDrive es almacenamiento en la nube.',null),
('aux-age:22-498f789890','aux-age',22,'BitLocker es una función de Windows que sirve para:','["Limitar el tiempo que cada usuario puede usar los programas del equipo", "Cifrar unidades de disco para proteger los datos", "Comprimir carpetas y archivos en formato ZIP para que ocupen menos", "Bloquear las ventanas emergentes que abren las páginas web en el navegador"]'::jsonb,1,'Seguridad de Windows','Si se pierde el equipo, los datos no pueden leerse sin la clave.',null),
('aux-age:22-3c17c6b429','aux-age',22,'Windows Hello permite:','["Traducir automáticamente al español el texto que aparece en la pantalla", "Iniciar sesión con reconocimiento facial, huella dactilar o PIN", "Saludar al usuario con un mensaje de voz al arrancar", "Hacer videollamadas con otros usuarios de Windows a través de la cámara del equipo"]'::jsonb,1,'Inicio de sesión','Es una alternativa más segura y cómoda a la contraseña.',null),
('aux-age:22-f2497a6239','aux-age',22,'¿Qué función de Windows 11 permite organizar las ventanas en distintas disposiciones de la pantalla al pasar el ratón por el botón Maximizar?','["Los escritorios virtuales de la vista de tareas", "La vista de tareas con todas las ventanas abiertas", "Los diseños de ajuste (Snap layouts)", "El modo tableta para pantallas táctiles"]'::jsonb,2,'Ventanas','También pueden abrirse con Windows + Z.',null),
('aux-age:22-d530bede70','aux-age',22,'¿Qué ocurre con un archivo eliminado de una memoria USB en Windows?','["Se mueve a una carpeta oculta de la propia memoria", "Se elimina definitivamente, porque las unidades extraíbles no usan la Papelera de reciclaje", "Se guarda una copia en OneDrive", "Se envía a la Papelera de reciclaje del ordenador, desde donde puede restaurarse en cualquier momento"]'::jsonb,1,'Papelera de reciclaje','Por eso conviene tener cuidado al borrar archivos de unidades extraíbles.',null),
('aux-age:22-a905e82265','aux-age',22,'¿Qué sistema de archivos no admite archivos individuales mayores de 4 GB?','["exFAT", "FAT32", "ReFS", "NTFS"]'::jsonb,1,'Sistemas de archivos','NTFS es el sistema de archivos habitual de Windows; exFAT es frecuente en memorias USB y tarjetas.',null),
('aux-age:22-85ee3a379e','aux-age',22,'El Control de cuentas de usuario (UAC) de Windows:','["Pide confirmación antes de realizar cambios que requieren permisos de administrador", "Registra las horas de conexión y desconexión de cada usuario para controlar su jornada", "Limita el número máximo de cuentas de usuario que pueden crearse en un mismo equipo", "Elimina las cuentas que no se usan en treinta días"]'::jsonb,0,'Cuentas de usuario','Ayuda a evitar que programas maliciosos hagan cambios sin que el usuario lo sepa.',null),
('aux-age:22-1121e2286e','aux-age',22,'¿En qué se diferencia la hibernación de la suspensión en Windows?','["La suspensión apaga por completo el equipo y la hibernación solo apaga la pantalla", "La hibernación guarda la sesión en el disco y apaga el equipo; la suspensión la mantiene en la memoria con un consumo mínimo", "La hibernación cierra todos los programas sin guardar los cambios; la suspensión los guarda automáticamente en el disco duro del equipo", "No hay ninguna diferencia, son dos nombres de la misma función"]'::jsonb,1,'Opciones de energía','Por eso la reanudación desde la suspensión es más rápida.',null),
('aux-age:22-d07806d5ab','aux-age',22,'¿Qué combinación abre el menú de vínculo rápido (clic derecho del botón Inicio) en Windows 11?','["Windows + X", "Windows + Q", "Alt + Inicio", "Ctrl + X"]'::jsonb,0,'Atajos de Windows','Da acceso a herramientas como el Administrador de dispositivos, la Administración de discos o Terminal.',null),
('aux-age:22-178f61ce16','aux-age',22,'La tecla Windows + Impr Pant en Windows 11:','["Imprime directamente la pantalla completa en la impresora que esté configurada como predeterminada", "Abre el cuadro de diálogo de impresión del programa activo", "Captura la pantalla completa y la guarda como imagen en la carpeta Capturas de pantalla", "Copia solo la ventana activa en el portapapeles"]'::jsonb,2,'Capturas de pantalla','La carpeta Capturas de pantalla está dentro de Imágenes. Alt + Impr Pant copia solo la ventana activa.',null),
('aux-age:22-4a88aadead','aux-age',22,'¿Qué combinación abre el panel de emojis en Windows 11?','["Windows + punto (.)", "Windows + E", "Alt + punto (.)", "Ctrl + Mayús + E"]'::jsonb,0,'Atajos de Windows','También permite insertar símbolos y GIF.',null),
('aux-age:22-5ea81174c6','aux-age',22,'En Windows 11, Windows + A abre:','["Las aplicaciones ancladas en el menú Inicio del usuario", "El asistente de accesibilidad con la lupa y el narrador", "La Configuración rápida (wifi, volumen, brillo, etc.)", "El Administrador de tareas con los procesos en ejecución"]'::jsonb,2,'Atajos de Windows','Windows + N abre el centro de notificaciones y el calendario.',null),
('aux-age:22-b4c3962c44','aux-age',22,'¿Qué fecha marcó el fin del soporte de Windows 10 para las ediciones domésticas y profesionales?','["El 5 de octubre de 2021", "El 31 de diciembre de 2024", "El 14 de enero de 2020", "El 14 de octubre de 2025"]'::jsonb,3,'Ciclo de vida de Windows','El 14 de enero de 2020 terminó el soporte de Windows 7 y el 5 de octubre de 2021 se lanzó Windows 11.',null),
('aux-age:22-c568553f5e','aux-age',22,'En Windows 11, la combinación Windows + E abre:','["El Administrador de tareas", "El menú Inicio", "La Configuración", "El Explorador de archivos"]'::jsonb,3,'Atajos de Windows','Windows + E abre el Explorador de archivos.',null),
('aux-age:22-01418d3dfb','aux-age',22,'En Windows, Alt + Tab sirve para:','["Minimizar todas las ventanas", "Cerrar la ventana activa", "Abrir la vista de tareas y los escritorios", "Cambiar entre las ventanas abiertas"]'::jsonb,3,'Atajos de Windows','Alt + Tab cambia entre ventanas; Alt + F4 cierra y Windows + Tab abre la vista de tareas.',null),
('aux-age:22-fd570c35d1','aux-age',22,'En Windows, Alt + F4 sirve para:','["Bloquear el equipo", "Cerrar la ventana o aplicación activa", "Abrir el Explorador de archivos", "Cambiar entre las ventanas abiertas"]'::jsonb,1,'Atajos de Windows','Alt + F4 cierra el elemento activo; en el escritorio, abre el cuadro de apagado.',null),
('aux-age:22-02a092d57d','aux-age',22,'En Windows 11, Windows + M:','["Abre el Explorador de archivos", "Muestra el centro de notificaciones", "Minimiza todas las ventanas abiertas", "Abre el menú Inicio"]'::jsonb,2,'Atajos de Windows','Windows + M minimiza todas las ventanas.',null),
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
('aux-age:28-f799c93abc','aux-age',28,'¿Qué protocolo se usa para transferir páginas web de forma cifrada?','["SMTP", "HTTPS", "HTTP", "FTP"]'::jsonb,1,'Protocolos de internet','HTTPS es HTTP sobre una conexión cifrada con TLS. FTP transfiere archivos y SMTP envía correo.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
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
('aux-age:29-dd15d089ab','aux-age',29,'Un padre tiene 4 veces la edad de su hijo, que tiene 8 años. ¿Cuántos años tendrá el padre dentro de 10 años?','["44 años", "42 años", "32 años", "72 años"]'::jsonb,1,'Psicotécnicos','Hoy el padre tiene 8 × 4 = 32 años; dentro de 10 años tendrá 42.',null),
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
('aux-age:29-ab91adf34c','aux-age',29,'Calcula: 5 × 9 + 11 − 3 × 2','["94", "50", "106", "52"]'::jsonb,1,'Psicotécnicos','Primero las multiplicaciones: 45 + 11 − 6 = 50.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
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
('aux-age:29-39171c1453','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en tercer lugar? Cantero, Castillo, Cano, Castaño, Camacho, Casado','["Cantero", "Cano", "Casado", "Castillo"]'::jsonb,0,'Psicotécnicos','Orden alfabético: Camacho, Cano, Cantero, Casado, Castaño, Castillo. La tilde no cuenta y la Ñ va después de la N.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
