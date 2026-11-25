-- Banco de preguntas, parte 8 de 13. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:29-a2a674e671','aux-age',29,'Una impresora se revisa cada 8 días y otra cada 12. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["96 días", "32 días", "16 días", "24 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 8 y 12: m.c.m.(8, 12) = 24.',null),
('aux-age:29-7f1a5156cf','aux-age',29,'Un coche recorre 60 km a una velocidad constante de 80 km/h. ¿Cuánto tarda?','["1 h", "1 h 15 min", "45 min", "30 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 60 / 80 = 0,75 h, es decir, 45 min.',null),
('aux-age:29-32a521b749','aux-age',29,'Un coche recorre 175 km a una velocidad constante de 100 km/h. ¿Cuánto tarda?','["2 h", "1 h 30 min", "1 h 45 min", "2 h 15 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 175 / 100 = 1,75 h, es decir, 1 h 45 min.',null),
('aux-age:29-e7824ba6b0','aux-age',29,'Un coche recorre 105 km a una velocidad constante de 60 km/h. ¿Cuánto tarda?','["2 h 15 min", "1 h 45 min", "2 h", "1 h 30 min"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 105 / 60 = 1,75 h, es decir, 1 h 45 min.',null),
('aux-age:29-8fd015c590','aux-age',29,'Un coche recorre 150 km a una velocidad constante de 120 km/h. ¿Cuánto tarda?','["1 h 45 min", "1 h 15 min", "1 h 30 min", "1 h"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 150 / 120 = 1,25 h, es decir, 1 h 15 min.',null),
('aux-age:29-5672f40e44','aux-age',29,'Señala el sinónimo de «acatar»:','["Acotar", "Obedecer", "Atacar", "Rechazar"]'::jsonb,1,'Psicotécnicos','Acatar es aceptar con sumisión una norma u orden: obedecer.',null),
('aux-age:29-f83f413844','aux-age',29,'Señala el sinónimo de «ratificar»:','["Revocar", "Rectificar", "Retirar", "Confirmar"]'::jsonb,3,'Psicotécnicos','Ratificar es aprobar o confirmar algo que se ha dicho o hecho. Rectificar es corregir.',null),
('aux-age:29-26da0d90ff','aux-age',29,'Señala el sinónimo de «derogar»:','["Delegar", "Prorrogar", "Abolir", "Promulgar"]'::jsonb,2,'Psicotécnicos','Derogar es dejar sin efecto una norma: abolir, anular.',null),
('aux-age:29-69a5baf3c9','aux-age',29,'Señala el sinónimo de «potestativo»:','["Obligatorio", "Facultativo", "Poderoso", "Preceptivo"]'::jsonb,1,'Psicotécnicos','Potestativo es lo que no es obligatorio, sino que depende de la voluntad: facultativo.',null),
('aux-age:29-65acff3d5d','aux-age',29,'Señala el sinónimo de «preceptivo»:','["Perceptivo", "Obligatorio", "Preventivo", "Opcional"]'::jsonb,1,'Psicotécnicos','Preceptivo es lo ordenado por un precepto: obligatorio.',null),
('aux-age:29-632106745f','aux-age',29,'Señala el sinónimo de «sucinto»:','["Breve", "Extenso", "Sugerente", "Confuso"]'::jsonb,0,'Psicotécnicos','Sucinto es breve, compendioso.',null),
('aux-age:29-a11cc407a6','aux-age',29,'Señala el sinónimo de «inocuo»:','["Inofensivo", "Nocivo", "Inútil", "Inicuo"]'::jsonb,0,'Psicotécnicos','Inocuo es lo que no hace daño. Inicuo significa injusto.',null),
('aux-age:29-128804f9c1','aux-age',29,'Señala el sinónimo de «vetusto»:','["Vistoso", "Robusto", "Antiguo", "Moderno"]'::jsonb,2,'Psicotécnicos','Vetusto es muy antiguo o de mucha edad.',null),
('aux-age:29-4e27bd05f9','aux-age',29,'Señala el sinónimo de «óbice»:','["Obstáculo", "Ayuda", "Motivo", "Óbolo"]'::jsonb,0,'Psicotécnicos','Óbice es un obstáculo o impedimento («no es óbice para…»).',null),
('aux-age:29-2ecd053e4e','aux-age',29,'Señala el sinónimo de «nimio»:','["Insignificante", "Nítido", "Numeroso", "Esencial"]'::jsonb,0,'Psicotécnicos','Nimio es lo pequeño o sin importancia.',null),
('aux-age:29-c13ff11e21','aux-age',29,'Señala el sinónimo de «recabar»:','["Terminar", "Recalcar", "Rechazar", "Solicitar"]'::jsonb,3,'Psicotécnicos','Recabar es pedir o reclamar algo, o conseguirlo a base de pedirlo («recabar información»).',null),
('aux-age:29-5658462afc','aux-age',29,'Señala el sinónimo de «proscribir»:','["Proponer", "Permitir", "Prohibir", "Prescribir"]'::jsonb,2,'Psicotécnicos','Proscribir es prohibir o excluir. Prescribir es ordenar o recetar.',null),
('aux-age:29-ee0aa278b7','aux-age',29,'Señala el sinónimo de «incoar»:','["Incluir", "Concluir", "Inculcar", "Iniciar"]'::jsonb,3,'Psicotécnicos','Incoar es comenzar algo, sobre todo un proceso o expediente.',null),
('aux-age:29-a2b3c6cb60','aux-age',29,'Señala el sinónimo de «avenencia»:','["Disputa", "Avenida", "Acuerdo", "Llegada"]'::jsonb,2,'Psicotécnicos','Avenencia es convenio o conformidad entre partes.',null),
('aux-age:29-f4ae8478fc','aux-age',29,'Señala el sinónimo de «somero»:','["Sombrío", "Profundo", "Severo", "Superficial"]'::jsonb,3,'Psicotécnicos','Somero es ligero, superficial, hecho sin detenimiento.',null),
('aux-age:29-5b5650c1a1','aux-age',29,'Señala el sinónimo de «baladí»:','["Grave", "Trivial", "Vistoso", "Importante"]'::jsonb,1,'Psicotécnicos','Baladí es lo de poca importancia.',null),
('aux-age:29-994fd600f6','aux-age',29,'Señala el sinónimo de «pertinaz»:','["Pertinente", "Breve", "Dócil", "Obstinado"]'::jsonb,3,'Psicotécnicos','Pertinaz es obstinado o terco, y también muy duradero («sequía pertinaz»).',null),
('aux-age:29-1d0d374b6c','aux-age',29,'Señala el sinónimo de «conculcar»:','["Conciliar", "Respetar", "Inculcar", "Vulnerar"]'::jsonb,3,'Psicotécnicos','Conculcar es quebrantar una ley o un derecho.',null),
('aux-age:29-54fafba07d','aux-age',29,'Señala el antónimo de «exiguo»:','["Escaso", "Mínimo", "Reducido", "Copioso"]'::jsonb,3,'Psicotécnicos','Exiguo es escaso; su contrario es copioso o abundante.',null),
('aux-age:29-a1a977610a','aux-age',29,'Señala el antónimo de «prolífico»:','["Fértil", "Productivo", "Fecundo", "Estéril"]'::jsonb,3,'Psicotécnicos','Prolífico es lo que produce mucho; las otras tres son sinónimos.',null),
('aux-age:29-9bec4e3e39','aux-age',29,'Señala el antónimo de «diligente»:','["Negligente", "Esmerado", "Cuidadoso", "Solícito"]'::jsonb,0,'Psicotécnicos','Diligente es cuidadoso y activo; su contrario es negligente.',null),
('aux-age:29-fb4024a7a4','aux-age',29,'Señala el antónimo de «locuaz»:','["Charlatán", "Hablador", "Parlanchín", "Taciturno"]'::jsonb,3,'Psicotécnicos','Locuaz es quien habla mucho; taciturno, quien habla poco.',null),
('aux-age:29-a0e262865a','aux-age',29,'Señala el antónimo de «benévolo»:','["Malévolo", "Bondadoso", "Indulgente", "Clemente"]'::jsonb,0,'Psicotécnicos','Benévolo es quien tiene buena voluntad; su contrario es malévolo.',null),
('aux-age:29-b62b1b33b7','aux-age',29,'Señala el antónimo de «perenne»:','["Duradero", "Caduco", "Permanente", "Perpetuo"]'::jsonb,1,'Psicotécnicos','Perenne es lo que dura siempre; caduco, lo que se acaba o pierde vigencia.',null),
('aux-age:29-66d56b6b5d','aux-age',29,'Señala el antónimo de «verosímil»:','["Increíble", "Probable", "Plausible", "Creíble"]'::jsonb,0,'Psicotécnicos','Verosímil es lo que parece verdadero y es creíble.',null),
('aux-age:29-13587075a1','aux-age',29,'Señala el antónimo de «afable»:','["Arisco", "Simpático", "Cordial", "Amable"]'::jsonb,0,'Psicotécnicos','Afable es agradable en el trato; arisco, áspero e intratable.',null),
('aux-age:29-93369d91ad','aux-age',29,'Señala el antónimo de «tácito»:','["Expreso", "Implícito", "Sobreentendido", "Callado"]'::jsonb,0,'Psicotécnicos','Tácito es lo que no se dice pero se supone; su contrario es expreso.',null),
('aux-age:29-4bebc88592','aux-age',29,'Señala el antónimo de «promulgar»:','["Proclamar", "Publicar", "Sancionar", "Derogar"]'::jsonb,3,'Psicotécnicos','Promulgar una ley es publicarla solemnemente; derogarla es dejarla sin efecto.',null),
('aux-age:29-309e4f600f','aux-age',29,'Pez es a agua como ave es a:','["Árbol", "Aire", "Pluma", "Nido"]'::jsonb,1,'Psicotécnicos','El pez se mueve en el agua; el ave, en el aire.',null),
('aux-age:29-fa5d0ba5a6','aux-age',29,'Médico es a hospital como maestro es a:','["Pizarra", "Escuela", "Lección", "Alumno"]'::jsonb,1,'Psicotécnicos','Es la relación entre la profesión y su lugar de trabajo.',null),
('aux-age:29-4ca31bf52c','aux-age',29,'Alcalde es a ayuntamiento como presidente autonómico es a:','["Senado", "Diputación provincial", "Comunidad autónoma", "Municipio"]'::jsonb,2,'Psicotécnicos','Cada uno preside el gobierno de su territorio.',null),
('aux-age:29-7994a635ff','aux-age',29,'Senado es a senador como Congreso es a:','["Procurador", "Ministro", "Diputado", "Concejal"]'::jsonb,2,'Psicotécnicos','Los miembros del Congreso de los Diputados son los diputados.',null),
('aux-age:29-591492effc','aux-age',29,'Hambre es a comer como sed es a:','["Vaso", "Sequía", "Beber", "Agua"]'::jsonb,2,'Psicotécnicos','Es la relación entre una necesidad y la acción que la satisface.',null),
('aux-age:29-bd741e5bfe','aux-age',29,'Grande es a enorme como pequeño es a:','["Bajo", "Corto", "Diminuto", "Mediano"]'::jsonb,2,'Psicotécnicos','Enorme es grado máximo de grande; diminuto, de pequeño.',null),
('aux-age:29-75ed485498','aux-age',29,'Ley es a Cortes Generales como real decreto es a:','["Tribunal Supremo", "Defensor del Pueblo", "Senado", "Gobierno"]'::jsonb,3,'Psicotécnicos','Las leyes las aprueban las Cortes Generales; los reales decretos, el Gobierno.',null),
('aux-age:29-4ce2e0639d','aux-age',29,'Kilogramo es a gramo como kilómetro es a:','["Litro", "Milla", "Centímetro", "Metro"]'::jsonb,3,'Psicotécnicos','Un kilogramo son 1.000 gramos y un kilómetro, 1.000 metros.',null),
('aux-age:29-b44b5a64e1','aux-age',29,'Escribir es a bolígrafo como cortar es a:','["Tela", "Tijeras", "Papel", "Recorte"]'::jsonb,1,'Psicotécnicos','Es la relación entre una acción y el instrumento con que se hace.',null),
('aux-age:29-dadb76b261','aux-age',29,'¿Qué palabra NO pertenece al grupo? Lunes, miércoles, enero, viernes, domingo','["Viernes", "Lunes", "Domingo", "Enero"]'::jsonb,3,'Psicotécnicos','Todas son días de la semana salvo enero, que es un mes.',null),
('aux-age:29-ed7e90001d','aux-age',29,'¿Qué palabra NO pertenece al grupo? Congreso, Senado, Tribunal Supremo, Cortes Generales','["Tribunal Supremo", "Congreso", "Cortes Generales", "Senado"]'::jsonb,0,'Psicotécnicos','Congreso y Senado forman las Cortes Generales (poder legislativo); el Tribunal Supremo es un órgano judicial.',null),
('aux-age:29-c8e783781c','aux-age',29,'¿Qué palabra NO pertenece al grupo? Word, Excel, PowerPoint, Windows, Outlook','["Excel", "PowerPoint", "Windows", "Outlook"]'::jsonb,2,'Psicotécnicos','Todas son aplicaciones de Microsoft 365 salvo Windows, que es el sistema operativo.',null),
('aux-age:29-97d710dadb','aux-age',29,'¿Qué palabra NO pertenece al grupo? Cuadrado, triángulo, rombo, cubo, pentágono','["Cubo", "Pentágono", "Rombo", "Triángulo"]'::jsonb,0,'Psicotécnicos','Todas son figuras planas salvo el cubo, que es un cuerpo geométrico.',null),
('aux-age:29-676e44bdbb','aux-age',29,'¿Qué palabra NO pertenece al grupo? Alcalde, concejal, pleno, senador, junta de gobierno local','["Senador", "Concejal", "Alcalde", "Pleno"]'::jsonb,0,'Psicotécnicos','Todos son órganos o cargos municipales salvo el senador.',null),
('aux-age:29-1037bae854','aux-age',29,'¿Qué palabra NO pertenece al grupo? Kilogramo, metro, litro, segundo, euro','["Litro", "Euro", "Segundo", "Metro"]'::jsonb,1,'Psicotécnicos','Todas son unidades de medida salvo el euro, que es una moneda.',null),
('aux-age:29-5d961d6ef2','aux-age',29,'¿Qué palabra está bien escrita?','["Cónyugue", "Cónyujue", "Conyuge", "Cónyuge"]'::jsonb,3,'Psicotécnicos','Se escribe cónyuge: con g y sin u, y con tilde por ser esdrújula.',null),
('aux-age:29-263c23b7be','aux-age',29,'Indica la forma correcta:','["Espontánio", "Espontáneo", "Expontáneo", "Espontaneo"]'::jsonb,1,'Psicotécnicos','Espontáneo se escribe con s y lleva tilde (esdrújula).',null),
('aux-age:29-0f8a533521','aux-age',29,'¿Qué forma verbal es correcta en «Hay que ___ los posibles retrasos»?','["Proveer", "Preber", "Prever", "Preveer"]'::jsonb,2,'Psicotécnicos','El verbo es prever (ver con anticipación), que se conjuga como ver. «Preveer» no existe; proveer significa suministrar.',null),
('aux-age:29-b9a140d6ad','aux-age',29,'Completa correctamente: «Espero que no ___ problemas con la solicitud»','["haya", "allá", "halla", "aya"]'::jsonb,0,'Psicotécnicos','Haya es el subjuntivo de haber. Halla es del verbo hallar (encontrar), aya es una cuidadora y allá un adverbio de lugar.',null),
('aux-age:29-2dabb344e3','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Qué código corresponde a un expediente de Licencias guardado en su estantería n.º 8?','["3-B-08", "A-2-08", "2-A-08", "2-B-08"]'::jsonb,2,'Psicotécnicos','Licencias está en la planta 2, pasillo A: 2-A-08.',null),
('aux-age:29-ec59789927','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿De qué materia es el expediente con código 3-A-16?','["Licencias", "Tributos", "Sanciones", "Becas"]'::jsonb,3,'Psicotécnicos','La planta 3, pasillo A, corresponde a Becas, que ocupa de la estantería 4 a la 19.',null),
('aux-age:29-d07e9f4c03','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuántas estanterías ocupa Tributos?','["7", "5", "6", "8"]'::jsonb,2,'Psicotécnicos','De la 2 a la 7, ambas incluidas: 7 − 2 + 1 = 6.',null),
('aux-age:29-a82ae2b832','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Qué materia ocupa más estanterías?','["Becas", "Tributos", "Licencias", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Tributos 6, Licencias 9, Sanciones 7, Subvenciones 9, Becas 16, Nóminas 12.',null),
('aux-age:29-b42513debf','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuántas estanterías hay en total en la planta 2?','["24", "25", "26", "35"]'::jsonb,1,'Psicotécnicos','Se suman las estanterías de las materias de la planta 2: 9 + 7 + 9 = 25.',null),
('aux-age:29-3261d6645b','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuál de estos códigos NO puede existir en el archivo?','["2-B-13", "2-A-08", "3-A-22", "3-B-04"]'::jsonb,2,'Psicotécnicos','En la planta 3, pasillo A (Becas), las estanterías solo llegan a la 19; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-c2adde86f5','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Qué código corresponde a un expediente de Urbanismo guardado en su estantería n.º 12?','["1-A-12", "1-B-12", "A-1-12", "2-B-12"]'::jsonb,0,'Psicotécnicos','Urbanismo está en la planta 1, pasillo A: 1-A-12.',null),
('aux-age:29-b8483f4de3','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿De qué materia es el expediente con código 1-C-11?','["Licencias", "Becas", "Nóminas", "Tributos"]'::jsonb,0,'Psicotécnicos','La planta 1, pasillo C, corresponde a Licencias, que ocupa de la estantería 6 a la 17.',null),
('aux-age:29-4ad2e9594b','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuántas estanterías ocupa Licencias?','["14", "13", "12", "11"]'::jsonb,2,'Psicotécnicos','De la 6 a la 17, ambas incluidas: 17 − 6 + 1 = 12.',null),
('aux-age:29-6a2905a2d4','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Qué materia ocupa más estanterías?','["Urbanismo", "Becas", "Licencias", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Urbanismo 21, Nóminas 15, Licencias 12, Contratos 9, Becas 12, Tributos 18.',null),
('aux-age:29-e3ae6a2051','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuántas estanterías hay en total en la planta 1?','["58", "49", "47", "48"]'::jsonb,3,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 21 + 15 + 12 = 48.',null),
('aux-age:29-3a2e9217d3','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuál de estos códigos NO puede existir en el archivo?','["3-C-25", "2-B-16", "3-C-07", "3-B-12"]'::jsonb,0,'Psicotécnicos','En la planta 3, pasillo C (Tributos), las estanterías solo llegan a la 23; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-cdbaaec1a4','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Qué código corresponde a un expediente de Patrimonio guardado en su estantería n.º 19?','["2-B-19", "B-2-19", "2-C-19", "1-B-19"]'::jsonb,0,'Psicotécnicos','Patrimonio está en la planta 2, pasillo B: 2-B-19.',null),
('aux-age:29-caf67e7be8','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿De qué materia es el expediente con código 2-C-10?','["Patrimonio", "Becas", "Nóminas", "Urbanismo"]'::jsonb,1,'Psicotécnicos','La planta 2, pasillo C, corresponde a Becas, que ocupa de la estantería 5 a la 16.',null),
('aux-age:29-49bc0232d6','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuántas estanterías ocupa Becas?','["12", "13", "11", "14"]'::jsonb,0,'Psicotécnicos','De la 5 a la 16, ambas incluidas: 16 − 5 + 1 = 12.',null),
('aux-age:29-a7cf03eac5','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Qué materia ocupa más estanterías?','["Subvenciones", "Tributos", "Nóminas", "Patrimonio"]'::jsonb,3,'Psicotécnicos','Estanterías por materia: Nóminas 7, Subvenciones 13, Patrimonio 16, Becas 12, Urbanismo 7, Tributos 10.',null),
('aux-age:29-678a8018b4','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuántas estanterías hay en total en la planta 3?','["27", "16", "17", "18"]'::jsonb,2,'Psicotécnicos','Se suman las estanterías de las materias de la planta 3: 7 + 10 = 17.',null),
('aux-age:29-2df9fd1e3c','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuál de estos códigos NO puede existir en el archivo?','["2-C-13", "2-B-15", "3-B-09", "3-B-11"]'::jsonb,3,'Psicotécnicos','En la planta 3, pasillo B (Tributos), las estanterías solo llegan a la 10; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-8c1deae35d','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Qué código corresponde a un expediente de Patrimonio guardado en su estantería n.º 12?','["1-C-12", "3-A-12", "C-3-12", "3-C-12"]'::jsonb,3,'Psicotécnicos','Patrimonio está en la planta 3, pasillo C: 3-C-12.',null),
('aux-age:29-0ecba7e6fa','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿De qué materia es el expediente con código 1-C-06?','["Urbanismo", "Licencias", "Sanciones", "Contratos"]'::jsonb,2,'Psicotécnicos','La planta 1, pasillo C, corresponde a Sanciones, que ocupa de la estantería 3 a la 13.',null),
('aux-age:29-2d819ff439','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuántas estanterías ocupa Patrimonio?','["17", "14", "15", "16"]'::jsonb,2,'Psicotécnicos','De la 4 a la 18, ambas incluidas: 18 − 4 + 1 = 15.',null),
('aux-age:29-c0a8319ffc','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Qué materia ocupa más estanterías?','["Becas", "Patrimonio", "Licencias", "Contratos"]'::jsonb,1,'Psicotécnicos','Estanterías por materia: Urbanismo 14, Sanciones 11, Licencias 6, Contratos 10, Becas 10, Patrimonio 15.',null),
('aux-age:29-3d367bf69b','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuántas estanterías hay en total en la planta 1?','["25", "35", "26", "24"]'::jsonb,0,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 14 + 11 = 25.',null),
('aux-age:29-36a88352b3','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuál de estos códigos NO puede existir en el archivo?','["3-A-11", "2-C-04", "3-B-21", "1-A-16"]'::jsonb,2,'Psicotécnicos','En la planta 3, pasillo B (Becas), las estanterías solo llegan a la 18; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-4ceefcb285','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Qué código corresponde a un expediente de Subvenciones guardado en su estantería n.º 10?','["1-B-10", "A-1-10", "1-A-10", "3-C-10"]'::jsonb,2,'Psicotécnicos','Subvenciones está en la planta 1, pasillo A: 1-A-10.',null),
('aux-age:29-87eded9549','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿De qué materia es el expediente con código 1-C-07?','["Subvenciones", "Nóminas", "Sanciones", "Tributos"]'::jsonb,1,'Psicotécnicos','La planta 1, pasillo C, corresponde a Nóminas, que ocupa de la estantería 7 a la 12.',null),
('aux-age:29-71df3b3195','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuántas estanterías ocupa Sanciones?','["14", "13", "15", "12"]'::jsonb,1,'Psicotécnicos','De la 8 a la 20, ambas incluidas: 20 − 8 + 1 = 13.',null),
('aux-age:29-541328d3d9','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Qué materia ocupa más estanterías?','["Sanciones", "Personal", "Tributos", "Nóminas"]'::jsonb,1,'Psicotécnicos','Estanterías por materia: Subvenciones 7, Sanciones 13, Nóminas 6, Tributos 15, Becas 6, Personal 17.',null),
('aux-age:29-636e47fd3d','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuántas estanterías hay en total en la planta 1?','["26", "36", "25", "27"]'::jsonb,0,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 7 + 13 + 6 = 26.',null),
('aux-age:29-6d818fc67d','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuál de estos códigos NO puede existir en el archivo?','["2-A-06", "1-B-21", "3-A-04", "1-A-09"]'::jsonb,1,'Psicotécnicos','En la planta 1, pasillo B (Sanciones), las estanterías solo llegan a la 20; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-8853caf71f','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Qué código corresponde a un expediente de Personal guardado en su estantería n.º 8?','["B-1-08", "1-A-08", "1-B-08", "1-C-08"]'::jsonb,2,'Psicotécnicos','Personal está en la planta 1, pasillo B: 1-B-08.',null),
('aux-age:29-6a61db02af','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿De qué materia es el expediente con código 2-B-13?','["Subvenciones", "Becas", "Nóminas", "Personal"]'::jsonb,2,'Psicotécnicos','La planta 2, pasillo B, corresponde a Nóminas, que ocupa de la estantería 8 a la 17.',null),
('aux-age:29-0fb3996f36','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuántas estanterías ocupa Tributos?','["13", "10", "12", "11"]'::jsonb,3,'Psicotécnicos','De la 5 a la 15, ambas incluidas: 15 − 5 + 1 = 11.',null),
('aux-age:29-6bf52c2bea','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Qué materia ocupa más estanterías?','["Tributos", "Becas", "Urbanismo", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Subvenciones 10, Personal 9, Becas 9, Nóminas 10, Tributos 11, Urbanismo 10.',null),
('aux-age:29-64ad0a2311','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuántas estanterías hay en total en la planta 3?','["20", "10", "9", "11"]'::jsonb,1,'Psicotécnicos','En la planta 3 solo hay una materia, con 10 estanterías.',null),
('aux-age:29-6f3f373594','aux-age',29,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuál de estos códigos NO puede existir en el archivo?','["3-B-17", "3-B-11", "2-B-17", "1-B-01"]'::jsonb,0,'Psicotécnicos','En la planta 3, pasillo B (Urbanismo), las estanterías solo llegan a la 14; los demás códigos están dentro de los tramos de la tabla.',null),
('aux-age:29-2c4e0f58a3','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Qué porcentaje de los inscritos aprobó Igualdad?','["75 %", "50 %", "60 %", "100 %"]'::jsonb,0,'Psicotécnicos','24 / 32 × 100 = 75 %.',null),
('aux-age:29-e37b6a9331','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Cuál es la media de inscritos por curso?','["22", "26", "24", "29"]'::jsonb,2,'Psicotécnicos','(32 + 32 + 12 + 24 + 20) / 5 = 120 / 5 = 24.',null),
('aux-age:29-a957f59c27','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Cuántas plazas quedaron libres en total?','["36", "46", "31", "41"]'::jsonb,0,'Psicotécnicos','Plazas menos inscritos en cada curso: 16 + 8 + 8 + 4 + 0 = 36.',null),
('aux-age:29-5c6cd8a9c2','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Atención al público", "Inglés", "Administración electrónica", "Igualdad"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Excel avanzado, 67 %; Igualdad, 80 %; Inglés, 60 %; Atención al público, 86 %; Administración electrónica, 100 %.',null),
('aux-age:29-7b0738d733','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
Si cada aprobado de Inglés recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["90", "105", "180", "75"]'::jsonb,0,'Psicotécnicos','6 aprobados × 15 horas = 90 horas.',null),
('aux-age:29-2a6a35a2d2','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿En qué curso hubo más inscritos sin aprobar?','["Inglés", "Igualdad", "Excel avanzado", "Administración electrónica"]'::jsonb,2,'Psicotécnicos','Inscritos menos aprobados: Excel avanzado, 24; Igualdad, 8; Inglés, 6; Atención al público, 6; Administración electrónica, 15.',null),
('aux-age:29-9a33fd72c0','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Qué porcentaje de los inscritos aprobó Protección de datos?','["50 %", "75 %", "30 %", "25 %"]'::jsonb,0,'Psicotécnicos','6 / 12 × 100 = 50 %.',null),
('aux-age:29-88db15ec89','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Cuál es la media de inscritos por curso?','["26", "22", "24", "29"]'::jsonb,2,'Psicotécnicos','(16 + 44 + 36 + 12 + 12) / 5 = 120 / 5 = 24.',null),
('aux-age:29-487b8930e2','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Cuántas plazas quedaron libres en total?','["27", "42", "32", "37"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 8 + 4 + 0 + 8 + 12 = 32.',null),
('aux-age:29-6c2bfa9055','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Atención al público", "Protección de datos", "Excel avanzado", "Contratación pública"]'::jsonb,0,'Psicotécnicos','Inscritos / plazas: Excel avanzado, 67 %; Contratación pública, 92 %; Atención al público, 100 %; Protección de datos, 60 %; Inglés, 50 %.',null),
('aux-age:29-2e288cd414','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
Si cada aprobado de Contratación pública recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["300", "1.320", "360", "330"]'::jsonb,3,'Psicotécnicos','11 aprobados × 30 horas = 330 horas.',null),
('aux-age:29-a6147c1b4c','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Excel avanzado", "Protección de datos", "Contratación pública", "Atención al público"]'::jsonb,2,'Psicotécnicos','Inscritos menos aprobados: Excel avanzado, 12; Contratación pública, 33; Atención al público, 27; Protección de datos, 6; Inglés, 9.',null),
('aux-age:29-f94ccad95a','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Qué porcentaje de los inscritos aprobó Inglés?','["25 %", "40 %", "75 %", "50 %"]'::jsonb,3,'Psicotécnicos','8 / 16 × 100 = 50 %.',null),
('aux-age:29-62e72b1563','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Cuál es la media de inscritos por curso?','["29", "22", "26", "24"]'::jsonb,3,'Psicotécnicos','(16 + 32 + 24 + 16 + 32) / 5 = 120 / 5 = 24.',null),
('aux-age:29-56fe3b1499','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Cuántas plazas quedaron libres en total?','["66", "61", "56", "51"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 12 + 4 + 8 + 16 + 16 = 56.',null),
('aux-age:29-99e5d7d027','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Prevención de riesgos", "Contratación pública", "Administración electrónica", "Protección de datos"]'::jsonb,1,'Psicotécnicos','Inscritos / plazas: Prevención de riesgos, 57 %; Contratación pública, 89 %; Protección de datos, 75 %; Inglés, 50 %; Administración electrónica, 67 %.',null),
('aux-age:29-d1622b5f32','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
Si cada aprobado de Administración electrónica recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["240", "320", "230", "250"]'::jsonb,0,'Psicotécnicos','24 aprobados × 10 horas = 240 horas.',null),
('aux-age:29-845dd55764','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿En qué curso hubo más inscritos sin aprobar?','["Administración electrónica", "Protección de datos", "Inglés", "Prevención de riesgos"]'::jsonb,1,'Psicotécnicos','Inscritos menos aprobados: Prevención de riesgos, 12; Contratación pública, 8; Protección de datos, 18; Inglés, 8; Administración electrónica, 8.',null),
('aux-age:29-c636a122d4','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Qué porcentaje de los inscritos aprobó Administración electrónica?','["100 %", "75 %", "50 %", "65 %"]'::jsonb,1,'Psicotécnicos','18 / 24 × 100 = 75 %.',null),
('aux-age:29-a3a5d418c5','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Cuál es la media de inscritos por curso?','["20", "25", "18", "22"]'::jsonb,0,'Psicotécnicos','(12 + 24 + 16 + 20 + 28) / 5 = 100 / 5 = 20.',null),
('aux-age:29-f1e8fb10c7','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Cuántas plazas quedaron libres en total?','["51", "61", "56", "66"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 8 + 12 + 12 + 16 + 8 = 56.',null),
('aux-age:29-61417e8c81','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Atención al público", "Administración electrónica", "Contratación pública"]'::jsonb,1,'Psicotécnicos','Inscritos / plazas: Contratación pública, 60 %; Administración electrónica, 67 %; Protección de datos, 57 %; Prevención de riesgos, 56 %; Atención al público, 78 %.',null),
('aux-age:29-bbc4792357','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
Si cada aprobado de Administración electrónica recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["450", "600", "425", "475"]'::jsonb,0,'Psicotécnicos','18 aprobados × 25 horas = 450 horas.',null),
('aux-age:29-45140ff3ba','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿En qué curso hubo más inscritos sin aprobar?','["Contratación pública", "Prevención de riesgos", "Administración electrónica", "Protección de datos"]'::jsonb,1,'Psicotécnicos','Inscritos menos aprobados: Contratación pública, 6; Administración electrónica, 6; Protección de datos, 8; Prevención de riesgos, 10; Atención al público, 7.',null),
('aux-age:29-3f6321aa0d','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Qué porcentaje de los inscritos aprobó Contratación pública?','["75 %", "50 %", "100 %", "60 %"]'::jsonb,0,'Psicotécnicos','12 / 16 × 100 = 75 %.',null),
('aux-age:29-7015ddda9b','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Cuál es la media de inscritos por curso?','["29", "22", "24", "26"]'::jsonb,2,'Psicotécnicos','(20 + 12 + 28 + 16 + 44) / 5 = 120 / 5 = 24.',null),
('aux-age:29-00813db643','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Cuántas plazas quedaron libres en total?','["32", "37", "27", "42"]'::jsonb,0,'Psicotécnicos','Plazas menos inscritos en cada curso: 16 + 8 + 0 + 4 + 4 = 32.',null),
('aux-age:29-a9956e4003','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Inglés", "Contratación pública", "Protección de datos", "Atención al público"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Atención al público, 56 %; Excel avanzado, 60 %; Protección de datos, 100 %; Contratación pública, 80 %; Inglés, 92 %.',null),
('aux-age:29-fe1d0cfe9f','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
Si cada aprobado de Inglés recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["840", "920", "1.760", "880"]'::jsonb,3,'Psicotécnicos','22 aprobados × 40 horas = 880 horas.',null),
('aux-age:29-56751b9240','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿En qué curso hubo más inscritos sin aprobar?','["Inglés", "Contratación pública", "Protección de datos", "Atención al público"]'::jsonb,0,'Psicotécnicos','Inscritos menos aprobados: Atención al público, 5; Excel avanzado, 6; Protección de datos, 7; Contratación pública, 4; Inglés, 22.',null),
('aux-age:29-3e2e37ee1b','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Qué porcentaje de los inscritos aprobó Atención al público?','["100 %", "75 %", "50 %", "65 %"]'::jsonb,1,'Psicotécnicos','24 / 32 × 100 = 75 %.',null),
('aux-age:29-6908b3929a','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Cuál es la media de inscritos por curso?','["28", "26", "33", "30"]'::jsonb,0,'Psicotécnicos','(20 + 32 + 20 + 20 + 48) / 5 = 140 / 5 = 28.',null),
('aux-age:29-2e010c81ce','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Cuántas plazas quedaron libres en total?','["45", "35", "50", "40"]'::jsonb,3,'Psicotécnicos','Plazas menos inscritos en cada curso: 4 + 16 + 12 + 8 + 0 = 40.',null),
('aux-age:29-c7a29aaab0','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Igualdad", "Atención al público", "Prevención de riesgos"]'::jsonb,0,'Psicotécnicos','Inscritos / plazas: Igualdad, 83 %; Atención al público, 67 %; Excel avanzado, 62 %; Prevención de riesgos, 71 %; Protección de datos, 100 %.',null),
('aux-age:29-35b094c796','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
Si cada aprobado de Protección de datos recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["720", "525", "540", "555"]'::jsonb,2,'Psicotécnicos','36 aprobados × 15 horas = 540 horas.',null),
('aux-age:29-729378beb5','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Igualdad", "Prevención de riesgos", "Excel avanzado", "Protección de datos"]'::jsonb,3,'Psicotécnicos','Inscritos menos aprobados: Igualdad, 5; Atención al público, 8; Excel avanzado, 5; Prevención de riesgos, 5; Protección de datos, 12.',null),
('aux-age:29-75bcf9ddd9','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Qué porcentaje de los inscritos aprobó Atención al público?','["25 %", "29 %", "75 %", "50 %"]'::jsonb,3,'Psicotécnicos','14 / 28 × 100 = 50 %.',null),
('aux-age:29-6a1bb88cce','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Cuál es la media de inscritos por curso?','["24", "29", "26", "22"]'::jsonb,0,'Psicotécnicos','(24 + 24 + 28 + 16 + 28) / 5 = 120 / 5 = 24.',null),
('aux-age:29-b6dc091617','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Cuántas plazas quedaron libres en total?','["59", "69", "74", "64"]'::jsonb,3,'Psicotécnicos','Plazas menos inscritos en cada curso: 24 + 8 + 20 + 8 + 4 = 64.',null),
('aux-age:29-32e7c89803','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Administración electrónica", "Igualdad", "Prevención de riesgos"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Protección de datos, 50 %; Administración electrónica, 75 %; Atención al público, 58 %; Prevención de riesgos, 67 %; Igualdad, 88 %.',null),
('aux-age:29-17a35db1c5','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
Si cada aprobado de Atención al público recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["280", "560", "260", "300"]'::jsonb,0,'Psicotécnicos','14 aprobados × 20 horas = 280 horas.',null),
('aux-age:29-434c90096c','aux-age',29,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Administración electrónica", "Igualdad", "Atención al público", "Prevención de riesgos"]'::jsonb,0,'Psicotécnicos','Inscritos menos aprobados: Protección de datos, 6; Administración electrónica, 18; Atención al público, 14; Prevención de riesgos, 8; Igualdad, 7.',null),
('aux-age:29-ccda8a3236','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
Tipo | Letra
Informe | I
Factura | F
Contrato | C
Queja | Q
Números de las unidades:
Unidad | Número
Educación | 1
Hacienda | 5
Personal | 2
Vivienda | 9
¿Qué clave lleva una factura de Vivienda de 2023?','["C9-23", "F9-24", "F9-23", "F1-23"]'::jsonb,2,'Psicotécnicos','Factura = F; Vivienda = 9; año 2023 → F9-23.',null),
('aux-age:29-86e8777e38','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
Tipo | Letra
Informe | I
Factura | F
Contrato | C
Queja | Q
Números de las unidades:
Unidad | Número
Educación | 1
Hacienda | 5
Personal | 2
Vivienda | 9
¿A qué documento corresponde la clave Q5-25?','["Queja de Personal de 2025", "Informe de Hacienda de 2025", "Queja de Hacienda de 2024", "Queja de Hacienda de 2025"]'::jsonb,3,'Psicotécnicos','Q = queja; 5 = Hacienda; 25 = 2025.',null),
('aux-age:29-1789140256','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
Tipo | Letra
Informe | I
Factura | F
Contrato | C
Queja | Q
Números de las unidades:
Unidad | Número
Educación | 1
Hacienda | 5
Personal | 2
Vivienda | 9
¿Qué clave lleva un contrato de Personal de 2024?','["C2-25", "Q2-24", "C9-24", "C2-24"]'::jsonb,3,'Psicotécnicos','Contrato = C; Personal = 2; año 2024 → C2-24.',null),
('aux-age:29-a3c005770e','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
Tipo | Letra
Informe | I
Factura | F
Contrato | C
Queja | Q
Números de las unidades:
Unidad | Número
Educación | 1
Hacienda | 5
Personal | 2
Vivienda | 9
¿Qué clave lleva una factura de Educación de 2026?','["C1-26", "F5-26", "F1-27", "F1-26"]'::jsonb,3,'Psicotécnicos','Factura = F; Educación = 1; año 2026 → F1-26.',null),
('aux-age:29-1e1a0fcfc1','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿Qué clave lleva un informe de Vivienda de 2024?','["I9-24", "I6-24", "I9-25", "Q9-24"]'::jsonb,0,'Psicotécnicos','Informe = I; Vivienda = 9; año 2024 → I9-24.',null),
('aux-age:29-b4d8d58cbb','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿A qué documento corresponde la clave Q9-25?','["Queja de Sanidad de 2025", "Queja de Vivienda de 2024", "Factura de Vivienda de 2025", "Queja de Vivienda de 2025"]'::jsonb,3,'Psicotécnicos','Q = queja; 9 = Vivienda; 25 = 2025.',null),
('aux-age:29-20bcf378e2','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿Qué clave lleva un informe de Sanidad de 2025?','["I7-25", "Q6-25", "I6-26", "I6-25"]'::jsonb,3,'Psicotécnicos','Informe = I; Sanidad = 6; año 2025 → I6-25.',null),
('aux-age:29-b85e01cde4','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿A qué documento corresponde la clave C7-23?','["Contrato de Cultura de 2023", "Contrato de Educación de 2023", "Contrato de Cultura de 2022", "Informe de Cultura de 2023"]'::jsonb,0,'Psicotécnicos','C = contrato; 7 = Cultura; 23 = 2023.',null),
('aux-age:29-577785e536','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿Qué clave lleva una queja de Educación de 2024?','["Q8-25", "Q8-24", "F8-24", "Q9-24"]'::jsonb,1,'Psicotécnicos','Queja = Q; Educación = 8; año 2024 → Q8-24.',null),
('aux-age:29-72ad991d53','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
Tipo | Letra
Informe | I
Queja | Q
Factura | F
Contrato | C
Números de las unidades:
Unidad | Número
Sanidad | 6
Cultura | 7
Educación | 8
Vivienda | 9
¿A qué documento corresponde la clave I9-24?','["Informe de Vivienda de 2023", "Queja de Vivienda de 2024", "Informe de Sanidad de 2024", "Informe de Vivienda de 2024"]'::jsonb,3,'Psicotécnicos','I = informe; 9 = Vivienda; 24 = 2024.',null),
('aux-age:29-d9bfc0fb28','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿Qué clave lleva una resolución de Cultura de 2024?','["R5-25", "R5-24", "S5-24", "R6-24"]'::jsonb,1,'Psicotécnicos','Resolución = R; Cultura = 5; año 2024 → R5-24.',null),
('aux-age:29-96bc43084b','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿A qué documento corresponde la clave S2-24?','["Solicitud de Hacienda de 2023", "Informe de Hacienda de 2024", "Solicitud de Vivienda de 2024", "Solicitud de Hacienda de 2024"]'::jsonb,3,'Psicotécnicos','S = solicitud; 2 = Hacienda; 24 = 2024.',null),
('aux-age:29-6ba99d6148','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿Qué clave lleva una resolución de Vivienda de 2025?','["S4-25", "R5-25", "R4-26", "R4-25"]'::jsonb,3,'Psicotécnicos','Resolución = R; Vivienda = 4; año 2025 → R4-25.',null),
('aux-age:29-c806ab532a','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿A qué documento corresponde la clave S2-26?','["Solicitud de Hacienda de 2025", "Solicitud de Hacienda de 2026", "Solicitud de Vivienda de 2026", "Informe de Hacienda de 2026"]'::jsonb,1,'Psicotécnicos','S = solicitud; 2 = Hacienda; 26 = 2026.',null),
('aux-age:29-3a0f810930','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿Qué clave lleva una factura de Vivienda de 2026?','["R4-26", "F4-26", "F5-26", "F4-27"]'::jsonb,1,'Psicotécnicos','Factura = F; Vivienda = 4; año 2026 → F4-26.',null),
('aux-age:29-768a10a231','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
Tipo | Letra
Factura | F
Resolución | R
Solicitud | S
Informe | I
Números de las unidades:
Unidad | Número
Cultura | 5
Personal | 6
Hacienda | 2
Vivienda | 4
¿A qué documento corresponde la clave F5-24?','["Factura de Cultura de 2023", "Factura de Cultura de 2024", "Resolución de Cultura de 2024", "Factura de Personal de 2024"]'::jsonb,1,'Psicotécnicos','F = factura; 5 = Cultura; 24 = 2024.',null),
('aux-age:29-48e389c7fa','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿Qué clave lleva una resolución de Cultura de 2024?','["R3-24", "R3-25", "C3-24", "R4-24"]'::jsonb,0,'Psicotécnicos','Resolución = R; Cultura = 3; año 2024 → R3-24.',null),
('aux-age:29-6823c66b10','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿A qué documento corresponde la clave F3-26?','["Factura de Cultura de 2026", "Factura de Cultura de 2025", "Queja de Cultura de 2026", "Factura de Personal de 2026"]'::jsonb,0,'Psicotécnicos','F = factura; 3 = Cultura; 26 = 2026.',null),
('aux-age:29-2f1fa91270','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿Qué clave lleva un contrato de Personal de 2024?','["F4-24", "C4-24", "C8-24", "C4-25"]'::jsonb,1,'Psicotécnicos','Contrato = C; Personal = 4; año 2024 → C4-24.',null),
('aux-age:29-1643c4a5e6','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿A qué documento corresponde la clave F4-25?','["Factura de Sanidad de 2025", "Queja de Personal de 2025", "Factura de Personal de 2025", "Factura de Personal de 2024"]'::jsonb,2,'Psicotécnicos','F = factura; 4 = Personal; 25 = 2025.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-age:29-0e2bf350db','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿Qué clave lleva una factura de Educación de 2026?','["F7-27", "F3-26", "F7-26", "Q7-26"]'::jsonb,2,'Psicotécnicos','Factura = F; Educación = 7; año 2026 → F7-26.',null),
('aux-age:29-e0687569af','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
Tipo | Letra
Resolución | R
Contrato | C
Factura | F
Queja | Q
Números de las unidades:
Unidad | Número
Sanidad | 8
Educación | 7
Cultura | 3
Personal | 4
¿A qué documento corresponde la clave R3-26?','["Contrato de Cultura de 2026", "Resolución de Personal de 2026", "Resolución de Cultura de 2026", "Resolución de Cultura de 2025"]'::jsonb,2,'Psicotécnicos','R = resolución; 3 = Cultura; 26 = 2026.',null),
('aux-age:29-04ba0ce25b','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿Qué clave lleva una resolución de Sanidad de 2024?','["R6-24", "R3-24", "C3-24", "R3-25"]'::jsonb,1,'Psicotécnicos','Resolución = R; Sanidad = 3; año 2024 → R3-24.',null),
('aux-age:29-34570d5337','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿A qué documento corresponde la clave R6-25?','["Contrato de Hacienda de 2025", "Resolución de Cultura de 2025", "Resolución de Hacienda de 2025", "Resolución de Hacienda de 2024"]'::jsonb,2,'Psicotécnicos','R = resolución; 6 = Hacienda; 25 = 2025.',null),
('aux-age:29-d8e1726fae','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿Qué clave lleva una queja de Cultura de 2026?','["F1-26", "Q1-26", "Q1-27", "Q9-26"]'::jsonb,1,'Psicotécnicos','Queja = Q; Cultura = 1; año 2026 → Q1-26.',null),
('aux-age:29-0f3adc064f','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿A qué documento corresponde la clave R9-24?','["Resolución de Educación de 2024", "Contrato de Educación de 2024", "Resolución de Educación de 2023", "Resolución de Sanidad de 2024"]'::jsonb,0,'Psicotécnicos','R = resolución; 9 = Educación; 24 = 2024.',null),
('aux-age:29-761ff29dea','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿Qué clave lleva un contrato de Sanidad de 2026?','["Q3-26", "C3-27", "C3-26", "C6-26"]'::jsonb,2,'Psicotécnicos','Contrato = C; Sanidad = 3; año 2026 → C3-26.',null),
('aux-age:29-e4164d0382','aux-age',29,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
Tipo | Letra
Contrato | C
Queja | Q
Factura | F
Resolución | R
Números de las unidades:
Unidad | Número
Hacienda | 6
Cultura | 1
Educación | 9
Sanidad | 3
¿A qué documento corresponde la clave R9-23?','["Resolución de Sanidad de 2023", "Resolución de Educación de 2022", "Contrato de Educación de 2023", "Resolución de Educación de 2023"]'::jsonb,3,'Psicotécnicos','R = resolución; 9 = Educación; 23 = 2023.',null),
('aux-age:29-fd6d5407d4','aux-age',29,'Si 4x + 11 = 23, ¿cuánto vale x?','["2", "3", "5", "4"]'::jsonb,1,'Psicotécnicos','4x = 23 − 11 = 12; x = 12 / 4 = 3.',null),
('aux-age:29-6dd0e37874','aux-age',29,'Si 2x + 15 = 37, ¿cuánto vale x?','["12", "11", "10", "26"]'::jsonb,1,'Psicotécnicos','2x = 37 − 15 = 22; x = 22 / 2 = 11.',null),
('aux-age:29-90f811c86b','aux-age',29,'Si 9x + 28 = 64, ¿cuánto vale x?','["3", "4", "5", "6"]'::jsonb,1,'Psicotécnicos','9x = 64 − 28 = 36; x = 36 / 9 = 4.',null),
('aux-age:29-94ccb0d7b2','aux-age',29,'Si 8x + 28 = 44, ¿cuánto vale x?','["2", "1", "9", "3"]'::jsonb,0,'Psicotécnicos','8x = 44 − 28 = 16; x = 16 / 8 = 2.',null),
('aux-age:29-849f754217','aux-age',29,'Si 7x + 30 = 121, ¿cuánto vale x?','["13", "14", "15", "12"]'::jsonb,0,'Psicotécnicos','7x = 121 − 30 = 91; x = 91 / 7 = 13.',null),
('aux-age:29-d6f2c46ff0','aux-age',29,'Si 5x + 25 = 70, ¿cuánto vale x?','["10", "19", "8", "9"]'::jsonb,3,'Psicotécnicos','5x = 70 − 25 = 45; x = 45 / 5 = 9.',null),
('aux-age:29-a2bd98f37c','aux-age',29,'Si 3x + 27 = 45, ¿cuánto vale x?','["24", "7", "5", "6"]'::jsonb,3,'Psicotécnicos','3x = 45 − 27 = 18; x = 18 / 3 = 6.',null),
('aux-age:29-9bf0954776','aux-age',29,'Si 3x + 17 = 56, ¿cuánto vale x?','["12", "13", "14", "15"]'::jsonb,1,'Psicotécnicos','3x = 56 − 17 = 39; x = 39 / 3 = 13.',null),
('aux-age:29-49722df71c','aux-age',29,'Si 8x + 25 = 41, ¿cuánto vale x?','["4", "3", "2", "1"]'::jsonb,2,'Psicotécnicos','8x = 41 − 25 = 16; x = 16 / 8 = 2.',null),
('aux-age:29-43ba9b435e','aux-age',29,'Si 2x + 5 = 19, ¿cuánto vale x?','["6", "8", "12", "7"]'::jsonb,3,'Psicotécnicos','2x = 19 − 5 = 14; x = 14 / 2 = 7.',null),
('aux-age:29-5f2c4932ec','aux-age',29,'Si al cuádruple de un número se le suman 6, se obtiene 50. ¿Cuál es el número?','["11", "10", "12", "14"]'::jsonb,0,'Psicotécnicos','4x + 6 = 50 → 4x = 44 → x = 11.',null),
('aux-age:29-1b94f45990','aux-age',29,'Si al triple de un número se le suman 20, se obtiene 107. ¿Cuál es el número?','["29", "35", "30", "28"]'::jsonb,0,'Psicotécnicos','3x + 20 = 107 → 3x = 87 → x = 29.',null),
('aux-age:29-9be7f7469e','aux-age',29,'Si al doble de un número se le suman 12, se obtiene 48. ¿Cuál es el número?','["17", "19", "18", "24"]'::jsonb,2,'Psicotécnicos','2x + 12 = 48 → 2x = 36 → x = 18.',null),
('aux-age:29-67a4cf27b1','aux-age',29,'Si al cuádruple de un número se le suman 15, se obtiene 59. ¿Cuál es el número?','["14", "11", "12", "10"]'::jsonb,1,'Psicotécnicos','4x + 15 = 59 → 4x = 44 → x = 11.',null),
('aux-age:29-f01a5c458b','aux-age',29,'Si al triple de un número se le suman 3, se obtiene 111. ¿Cuál es el número?','["38", "36", "37", "35"]'::jsonb,1,'Psicotécnicos','3x + 3 = 111 → 3x = 108 → x = 36.',null),
('aux-age:29-87931096e2','aux-age',29,'Si al cuádruple de un número se le suman 5, se obtiene 25. ¿Cuál es el número?','["7", "6", "4", "5"]'::jsonb,3,'Psicotécnicos','4x + 5 = 25 → 4x = 20 → x = 5.',null),
('aux-age:29-49dce19501','aux-age',29,'Si al doble de un número se le suman 6, se obtiene 82. ¿Cuál es el número?','["38", "41", "37", "39"]'::jsonb,0,'Psicotécnicos','2x + 6 = 82 → 2x = 76 → x = 38.',null),
('aux-age:29-631a3b68e0','aux-age',29,'Si al cuádruple de un número se le suman 17, se obtiene 85. ¿Cuál es el número?','["21", "18", "17", "16"]'::jsonb,2,'Psicotécnicos','4x + 17 = 85 → 4x = 68 → x = 17.',null),
('aux-age:29-e761c61d09','aux-age',29,'Entre dos departamentos tienen 45 empleados y uno tiene el doble que el otro. ¿Cuántos tiene el más grande?','["28", "32", "15", "30"]'::jsonb,3,'Psicotécnicos','x + 2x = 45 → x = 15; el grande tiene 2 × 15 = 30.',null),
('aux-age:29-f2c587e74f','aux-age',29,'Entre dos departamentos tienen 30 empleados y uno tiene el doble que el otro. ¿Cuántos tiene el más grande?','["22", "18", "10", "20"]'::jsonb,3,'Psicotécnicos','x + 2x = 30 → x = 10; el grande tiene 2 × 10 = 20.',null),
('aux-age:29-f779764f93','aux-age',29,'Entre dos departamentos tienen 36 empleados y uno tiene el triple que el otro. ¿Cuántos tiene el más grande?','["9", "24", "27", "30"]'::jsonb,2,'Psicotécnicos','x + 3x = 36 → x = 9; el grande tiene 3 × 9 = 27.',null),
('aux-age:29-822932fc6a','aux-age',29,'Calcula: (−4) × 9 − (−20) ÷ 2','["−24", "26", "−46", "−26"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−4) × 9 = −36; (−20) ÷ 2 = −10. Después: −36 − (−10) = −26.',null),
('aux-age:29-4e1f3017c3','aux-age',29,'Calcula: (−2) × 8 − (−6) ÷ 2','["−19", "−11", "13", "−13"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−2) × 8 = −16; (−6) ÷ 2 = −3. Después: −16 − (−3) = −13.',null),
('aux-age:29-43c322a549','aux-age',29,'Calcula: (−6) × 8 − (−12) ÷ (−2)','["−42", "−52", "−54", "54"]'::jsonb,2,'Psicotécnicos','Primero multiplicaciones y divisiones: (−6) × 8 = −48; (−12) ÷ (−2) = 6. Después: −48 − 6 = −54.',null),
('aux-age:29-e9656fe247','aux-age',29,'Calcula: (−8) × 2 − (−18) ÷ 2','["−25", "−7", "7", "−5"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−8) × 2 = −16; (−18) ÷ 2 = −9. Después: −16 − (−9) = −7.',null),
('aux-age:29-497ad92341','aux-age',29,'Calcula: (−5) × 6 − (−12) ÷ (−2)','["−24", "−36", "−34", "36"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−5) × 6 = −30; (−12) ÷ (−2) = 6. Después: −30 − 6 = −36.',null),
('aux-age:29-87b3c92b92','aux-age',29,'Calcula: (−8) × 5 − (−14) ÷ 2','["33", "−33", "−47", "−31"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−8) × 5 = −40; (−14) ÷ 2 = −7. Después: −40 − (−7) = −33.',null),
('aux-age:29-935af82845','aux-age',29,'Calcula: (−2) × 4 − (−16) ÷ 2','["−16", "2", "−2", "0"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−2) × 4 = −8; (−16) ÷ 2 = −8. Después: −8 − (−8) = 0.',null),
('aux-age:29-1d99caf718','aux-age',29,'Calcula: (−5) × 8 − (−24) ÷ (−2)','["−28", "52", "−52", "−50"]'::jsonb,2,'Psicotécnicos','Primero multiplicaciones y divisiones: (−5) × 8 = −40; (−24) ÷ (−2) = 12. Después: −40 − 12 = −52.',null),
('aux-age:29-34c092ec6b','aux-age',29,'Calcula: (−1) × 9 − (−6) ÷ 2','["−12", "−6", "6", "−4"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−1) × 9 = −9; (−6) ÷ 2 = −3. Después: −9 − (−3) = −6.',null),
('aux-age:29-6fdb04429f','aux-age',29,'Calcula: (−3) × 9 − (−4) ÷ 2','["−25", "−29", "25", "−23"]'::jsonb,0,'Psicotécnicos','Primero multiplicaciones y divisiones: (−3) × 9 = −27; (−4) ÷ 2 = −2. Después: −27 − (−2) = −25.',null),
('aux-age:29-2a23024d94','aux-age',29,'En una caja hay 2 bolas rojas, 5 azules y 2 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea roja?','["1/3", "7/9", "2/7", "2/9"]'::jsonb,3,'Psicotécnicos','Casos favorables / casos posibles = 2 / 9.',null),
('aux-age:29-e10b6ec809','aux-age',29,'En una caja hay 5 bolas rojas, 3 azules y 6 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["3/7", "3/4", "4/7", "1/2"]'::jsonb,0,'Psicotécnicos','Casos favorables / casos posibles = 6 / 14 = 3/7.',null),
('aux-age:29-ef869546de','aux-age',29,'En una caja hay 1 bola roja, 8 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/4", "2/3", "1/3", "7/12"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 8 / 12 = 2/3.',null),
('aux-age:29-23d3c4a45e','aux-age',29,'En una caja hay 7 bolas rojas, 4 azules y 6 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["13/17", "4/13", "4/17", "5/17"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 4 / 17.',null),
('aux-age:29-1c16a74d1d','aux-age',29,'En una caja hay 1 bola roja, 2 azules y 5 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/8", "1/4", "3/4", "1/3"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 2 / 8 = 1/4.',null),
('aux-age:29-50c85989c6','aux-age',29,'En una caja hay 8 bolas rojas, 7 azules y 4 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["8/19", "7/12", "7/19", "12/19"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 7 / 19.',null),
('aux-age:29-770dfef66d','aux-age',29,'En una caja hay 5 bolas rojas, 7 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["4/15", "4/5", "1/5", "1/4"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 3 / 15 = 1/5.',null),
('aux-age:29-2599030116','aux-age',29,'En una caja hay 2 bolas rojas, 7 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["3/4", "3/13", "1/4", "1/3"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 3 / 12 = 1/4.',null),
('aux-age:29-2a8a648af8','aux-age',29,'En una caja hay 3 bolas rojas, 5 azules y 8 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/8", "5/11", "5/16", "11/16"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 5 / 16.',null),
('aux-age:29-d55a58e0e7','aux-age',29,'En una caja hay 2 bolas rojas, 5 azules y 1 bola verde. Si se saca una al azar, ¿qué probabilidad hay de que sea roja?','["3/4", "1/4", "3/8", "1/3"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 2 / 8 = 1/4.',null),
('aux-age:29-c701ca23d0','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número par?','["3/5", "1/2", "1/6", "2/3"]'::jsonb,1,'Psicotécnicos','Hay 3 casos favorables (2, 4 y 6) de 6 posibles: 3/6 = 1/2.',null),
('aux-age:29-b69a384157','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número mayor que 4?','["2/3", "1/2", "1/3", "2/5"]'::jsonb,2,'Psicotécnicos','Hay 2 casos favorables (5 y 6) de 6 posibles: 2/6 = 1/3.',null),
('aux-age:29-a27d4a02ff','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un múltiplo de 3?','["2/3", "2/5", "1/3", "1/2"]'::jsonb,2,'Psicotécnicos','Hay 2 casos favorables (3 y 6) de 6 posibles: 2/6 = 1/3.',null),
('aux-age:29-39987d96a3','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número menor que 3?','["2/5", "1/3", "2/3", "1/2"]'::jsonb,1,'Psicotécnicos','Hay 2 casos favorables (1 y 2) de 6 posibles: 2/6 = 1/3.',null),
('aux-age:29-c6024533d1','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número primo?','["3/5", "2/3", "1/6", "1/2"]'::jsonb,3,'Psicotécnicos','Hay 3 casos favorables (2, 3 y 5) de 6 posibles: 3/6 = 1/2.',null),
('aux-age:29-d310f62efb','aux-age',29,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un 6?','["1/3", "5/6", "1/5", "1/6"]'::jsonb,3,'Psicotécnicos','Hay 1 caso favorable (solo el 6) de 6 posibles: 1/6.',null),
('aux-age:29-e9022210be','aux-age',29,'Se lanzan dos monedas. ¿Qué probabilidad hay de que salgan dos caras?','["3/4", "1/4", "1/2", "1/3"]'::jsonb,1,'Psicotécnicos','Los resultados posibles son cara-cara, cara-cruz, cruz-cara y cruz-cruz; solo uno es favorable: 1/4.',null),
('aux-age:29-8e62c285b3','aux-age',29,'Se lanzan dos monedas. ¿Qué probabilidad hay de que salga al menos una cruz?','["1/2", "2/3", "1/4", "3/4"]'::jsonb,3,'Psicotécnicos','De los 4 resultados (CC, CX, XC, XX) tres tienen alguna cruz: 3/4.',null),
('aux-age:29-59e10bb54f','aux-age',29,'Se lanzan dos dados. ¿Qué probabilidad hay de que sumen 7?','["1/6", "1/12", "1/9", "7/36"]'::jsonb,0,'Psicotécnicos','Hay 6 combinaciones que suman 7 (1-6, 2-5, 3-4, 4-3, 5-2, 6-1) de 36 posibles: 6/36 = 1/6.',null),
('aux-age:29-a5923fff43','aux-age',29,'Clave:
I | G | H | D | T | L
0101 | 1011 | 0100 | 0111 | 0001 | 1110
Según la clave, ¿qué letras corresponden a la cadena 0001 0001 1110 0001?','["DTLT", "TDLT", "TLTT", "TTLT"]'::jsonb,3,'Psicotécnicos','Grupo a grupo: 0001=T, 0001=T, 1110=L, 0001=T → TTLT.',null),
('aux-age:29-3df83615b8','aux-age',29,'Clave:
D | M | A | J | C | T
1010 | 0010 | 1100 | 1110 | 0101 | 0100
Según la clave, ¿qué cadena corresponde a las letras TCTJ?','["0100 0101 0100 1010", "0101 0100 0100 1110", "0100 1010 0100 1110", "0100 0101 0100 1110"]'::jsonb,3,'Psicotécnicos','Letra a letra: T=0100, C=0101, T=0100, J=1110 → 0100 0101 0100 1110.',null),
('aux-age:29-1ae812427b','aux-age',29,'Clave:
F | J | B | O | R | C
1100 | 1110 | 0000 | 0101 | 1011 | 0100
Según la clave, ¿qué letras corresponden a la cadena 0000 0100 0000 1100?','["BRBF", "BCBF", "BFBF", "BBCF"]'::jsonb,1,'Psicotécnicos','Grupo a grupo: 0000=B, 0100=C, 0000=B, 1100=F → BCBF.',null),
('aux-age:29-36bbee5f90','aux-age',29,'Clave:
P | H | T | I | N | M
1100 | 0101 | 0011 | 1101 | 1000 | 1011
Según la clave, ¿qué cadena corresponde a las letras NNHP?','["1011 1000 0101 1100", "1000 1000 0101 1100", "1100 1000 0101 1000", "1000 1000 0101 0101"]'::jsonb,1,'Psicotécnicos','Letra a letra: N=1000, N=1000, H=0101, P=1100 → 1000 1000 0101 1100.',null),
('aux-age:29-7ba4936144','aux-age',29,'Clave:
B | I | T | D | H | M
0111 | 0000 | 1001 | 1011 | 0101 | 1010
Según la clave, ¿qué letras corresponden a la cadena 1001 0101 0111 0000?','["THBI", "THTI", "TTBI", "THDI"]'::jsonb,0,'Psicotécnicos','Grupo a grupo: 1001=T, 0101=H, 0111=B, 0000=I → THBI.',null),
('aux-age:29-c7c5f156ca','aux-age',29,'Clave:
J | S | P | G | A | T
1101 | 1010 | 0001 | 0110 | 1100 | 0000
Según la clave, ¿qué cadena corresponde a las letras ASPS?','["1100 1010 0000 1010", "1100 1010 0001 1010", "0001 1010 0001 1010", "1100 0110 0001 1010"]'::jsonb,1,'Psicotécnicos','Letra a letra: A=1100, S=1010, P=0001, S=1010 → 1100 1010 0001 1010.',null),
('aux-age:29-a8c1af1c01','aux-age',29,'Clave:
B | L | H | M | T | F
0011 | 0110 | 0010 | 1000 | 0111 | 0001
Según la clave, ¿qué letras corresponden a la cadena 0011 0010 0011 0011?','["BHBB", "MHBB", "BBHB", "BHBH"]'::jsonb,0,'Psicotécnicos','Grupo a grupo: 0011=B, 0010=H, 0011=B, 0011=B → BHBB.',null),
('aux-age:29-eeeabbc792','aux-age',29,'Clave:
F | R | E | H | N | A
0111 | 1000 | 0001 | 1100 | 0101 | 1111
Según la clave, ¿qué cadena corresponde a las letras HEFR?','["1100 0001 0111 1000", "1000 0001 0111 1100", "0001 1100 0111 1000", "1100 0001 0001 1000"]'::jsonb,0,'Psicotécnicos','Letra a letra: H=1100, E=0001, F=0111, R=1000 → 1100 0001 0111 1000.',null),
('aux-age:29-5292632e3f','aux-age',29,'Clave:
P | D | C | J | S | T
0111 | 1111 | 0011 | 0010 | 0000 | 0110
Según la clave, ¿qué letras corresponden a la cadena 0011 0110 1111 0000?','["CTDJ", "CDTS", "CTDS", "CTCS"]'::jsonb,2,'Psicotécnicos','Grupo a grupo: 0011=C, 0110=T, 1111=D, 0000=S → CTDS.',null),
('aux-age:29-dcfa38eb07','aux-age',29,'Clave:
T | F | H | C | D | I
1001 | 0011 | 0101 | 0010 | 1101 | 1100
Según la clave, ¿qué cadena corresponde a las letras FHII?','["0011 0101 1100 1100", "0011 0101 1100 1001", "0011 1100 0101 1100", "0010 0101 1100 1100"]'::jsonb,0,'Psicotécnicos','Letra a letra: F=0011, H=0101, I=1100, I=1100 → 0011 0101 1100 1100.',null),
('aux-age:29-d6f9ea14a2','aux-age',29,'Clave:
R | A | B | F | M | E
0101 | 0100 | 0110 | 0010 | 1000 | 1001
Según la clave, ¿qué letras corresponden a la cadena 1000 1001 1000 1001?','["MEMF", "MERE", "MEME", "AEME"]'::jsonb,2,'Psicotécnicos','Grupo a grupo: 1000=M, 1001=E, 1000=M, 1001=E → MEME.',null),
('aux-age:29-f4bc2ce89e','aux-age',29,'Clave:
E | L | I | M | S | O
1000 | 0010 | 1100 | 1110 | 1011 | 0100
Según la clave, ¿qué cadena corresponde a las letras LSLL?','["0010 1011 0010 1110", "0010 1011 0010 0010", "1011 0010 0010 0010", "0010 1011 0010 1011"]'::jsonb,1,'Psicotécnicos','Letra a letra: L=0010, S=1011, L=0010, L=0010 → 0010 1011 0010 0010.',null),
('aux-age:29-f29f6bcb05','aux-age',29,'¿Qué significa «fehaciente»?','["Que prueba algo de forma indudable", "Que muestra entusiasmo y alegría", "Que se hace con prisa y sin cuidado", "Que se refiere a la fe religiosa"]'::jsonb,0,'Psicotécnicos','«Fehaciente» significa: que prueba algo de forma indudable.',null),
('aux-age:29-7622ec3736','aux-age',29,'¿Qué significa «subsidiario»?','["Que se repite de forma periódica", "Que recibe una subvención pública", "Que está situado debajo de otro", "Que suple a otra cosa principal"]'::jsonb,3,'Psicotécnicos','«Subsidiario» significa: que suple a otra cosa principal.',null),
('aux-age:29-58c6587a8e','aux-age',29,'¿Qué significa «taxativo»?','["Que avanza con mucha lentitud", "Que está sujeto al pago de tasas e impuestos", "Que se dice de forma vaga", "Que limita y no admite discusión"]'::jsonb,3,'Psicotécnicos','«Taxativo» significa: que limita y no admite discusión.',null),
('aux-age:29-6bd3f3df55','aux-age',29,'¿Qué significa «dádiva»?','["Cantidad que se cobra como multa", "Cosa que se da gratuitamente", "Duda sobre una decisión", "Deuda que está pendiente de pago"]'::jsonb,1,'Psicotécnicos','«Dádiva» significa: cosa que se da gratuitamente.',null),
('aux-age:29-4d9e4cf2ba','aux-age',29,'¿Qué significa «ínfulas»?','["Inflamación de una herida", "Presunción o vanidad", "Falta de ganas de trabajar", "Influencia sobre los demás"]'::jsonb,1,'Psicotécnicos','«Ínfulas» significa: presunción o vanidad.',null),
('aux-age:29-7a72b89218','aux-age',29,'¿Qué significa «ambiguo»?','["Que es propio de un ambiente", "Que puede entenderse de varios modos", "Que se mueve a la vez en dos direcciones opuestas", "Que tiene mucha ambición"]'::jsonb,1,'Psicotécnicos','«Ambiguo» significa: que puede entenderse de varios modos.',null),
('aux-age:29-81f19e4184','aux-age',29,'¿Qué significa «inexorable»?','["Que no tiene ningún valor", "Que no se puede explicar", "Que todavía no ha terminado", "Que no se puede evitar"]'::jsonb,3,'Psicotécnicos','«Inexorable» significa: que no se puede evitar.',null),
('aux-age:29-d76cefb475','aux-age',29,'¿Qué significa «exhortar»?','["Expulsar a alguien de un lugar", "Animar a alguien a hacer algo", "Extraer algo por la fuerza", "Exagerar los hechos al contarlos"]'::jsonb,1,'Psicotécnicos','«Exhortar» significa: animar a alguien a hacer algo.',null),
('aux-age:29-91ac378eb4','aux-age',29,'¿Qué significa «paliar»?','["Hablar en voz muy baja", "Empeorar una situación que ya era complicada", "Pelear con palabras", "Atenuar o mitigar un daño"]'::jsonb,3,'Psicotécnicos','«Paliar» significa: atenuar o mitigar un daño.',null),
('aux-age:29-79e08e2a57','aux-age',29,'¿Qué significa «ufano»?','["Triste y sin ánimo", "Que tiene mucha prisa", "Que desconoce por completo un asunto o materia", "Orgulloso y satisfecho de sí mismo"]'::jsonb,3,'Psicotécnicos','«Ufano» significa: orgulloso y satisfecho de sí mismo.',null),
('aux-age:29-785b3fda41','aux-age',29,'¿Qué significa «lacónico»?','["Que usa pocas palabras", "Que trabaja con lentitud", "Que tiene un color oscuro", "Que siente mucha tristeza"]'::jsonb,0,'Psicotécnicos','«Lacónico» significa: que usa pocas palabras.',null),
('aux-age:29-eddb2ff07c','aux-age',29,'¿Qué significa «diatriba»?','["División de un territorio en partes", "Alabanza pública de una persona", "Conversación tranquila entre dos o más personas", "Escrito o discurso violento contra alguien"]'::jsonb,3,'Psicotécnicos','«Diatriba» significa: escrito o discurso violento contra alguien.',null),
('aux-age:29-87c5b13004','aux-age',29,'¿Qué significa «enmendar»?','["Pedir dinero prestado a un familiar o amigo", "Corregir un error o defecto", "Enviar algo a otra persona", "Añadir un adorno a algo"]'::jsonb,1,'Psicotécnicos','«Enmendar» significa: corregir un error o defecto.',null),
('aux-age:29-ea7fd4d7f8','aux-age',29,'¿Qué significa «pernicioso»?','["Muy duradero", "Muy rápido", "Muy perjudicial", "Muy detallista y cuidadoso"]'::jsonb,2,'Psicotécnicos','«Pernicioso» significa: muy perjudicial.',null),
('aux-age:29-20d0bc62a2','aux-age',29,'¿Qué significa «escueto»?','["Escondido y secreto", "Breve y sin rodeos", "Abundante y variado", "Estricto y severo"]'::jsonb,1,'Psicotécnicos','«Escueto» significa: breve y sin rodeos.',null),
('aux-age:29-5916722d70','aux-age',29,'¿Qué significa «dirimir»?','["Resolver una controversia", "Aplazar una decisión hasta otro momento", "Disminuir una cantidad", "Dirigir una reunión"]'::jsonb,0,'Psicotécnicos','«Dirimir» significa: resolver una controversia.',null),
('aux-age:29-f91b4410e9','aux-age',29,'¿Qué significa «coercitivo»?','["Que es lógico y coherente", "Que obliga o reprime", "Que colabora con otros", "Que se desarrolla despacio"]'::jsonb,1,'Psicotécnicos','«Coercitivo» significa: que obliga o reprime.',null),
('aux-age:29-4f24fd009f','aux-age',29,'¿Qué significa «fútil»?','["De gran utilidad", "De larga duración", "De mucha dificultad", "De poca importancia"]'::jsonb,3,'Psicotécnicos','«Fútil» significa: de poca importancia.',null),
('aux-age:29-2462b32bbb','aux-age',29,'¿Qué significa «venial»?','["Que se puede vender", "Que es muy grave", "Leve y fácil de perdonar", "Que se repite cada año"]'::jsonb,2,'Psicotécnicos','«Venial» significa: leve y fácil de perdonar.',null),
('aux-age:29-be84f9d847','aux-age',29,'¿Qué significa «acérrimo»?','["Muy antiguo o viejo", "Muy ácido o amargo", "Muy tenaz o decidido", "Muy cercano o próximo"]'::jsonb,2,'Psicotécnicos','«Acérrimo» significa: muy tenaz o decidido.',null),
('aux-age:29-c2080e93b5','aux-age',29,'¿Qué significa «compulsar»?','["Cotejar una copia con su original", "Pulsar una tecla varias veces", "Obligar a alguien a hacer algo", "Comprar algo de forma impulsiva"]'::jsonb,0,'Psicotécnicos','«Compulsar» significa: cotejar una copia con su original.',null),
('aux-age:29-5436e42643','aux-age',29,'¿Qué significa «recusar»?','["Negarse a pagar una deuda", "Volver a acusar a una persona", "Corregir un error ya publicado", "Rechazar a quien no ofrece imparcialidad"]'::jsonb,3,'Psicotécnicos','«Recusar» significa: rechazar a quien no ofrece imparcialidad.',null),
('aux-age:29-7fd5ec2521','aux-age',29,'¿Qué significa «notificar»?','["Firmar ante un notario", "Publicar algo en un periódico", "Comunicar formalmente una resolución", "Anotar algo en un registro"]'::jsonb,2,'Psicotécnicos','«Notificar» significa: comunicar formalmente una resolución.',null),
('aux-age:29-1462d52960','aux-age',29,'¿Qué significa «caducidad»?','["Caída de un documento en un archivo", "Pérdida de un objeto por descuido", "Cuidado especial de un expediente", "Fin de un derecho o trámite por el paso del tiempo"]'::jsonb,3,'Psicotécnicos','«Caducidad» significa: fin de un derecho o trámite por el paso del tiempo.',null),
('aux-age:29-73437e45fb','aux-age',29,'¿Qué significa «desestimar»?','["Retrasar una petición", "Aceptar en parte una petición", "Calcular el valor de algo", "Denegar una petición"]'::jsonb,3,'Psicotécnicos','«Desestimar» significa: denegar una petición.',null),
('aux-age:29-c3751716a9','aux-age',29,'¿Qué significa «diligencia»?','["Cuidado y rapidez al hacer algo", "Orden de detener a alguien", "Pereza al hacer las tareas", "Reunión de varios dirigentes"]'::jsonb,0,'Psicotécnicos','«Diligencia» significa: cuidado y rapidez al hacer algo.',null),
('aux-ayto-mad:1-4e230788ef','aux-ayto-mad',1,'¿Cuáles son los valores superiores del ordenamiento jurídico según la Constitución?','["La justicia, la paz, la igualdad y la democracia", "La libertad, la justicia, la igualdad y el pluralismo político", "La libertad, la seguridad, la igualdad y la solidaridad"]'::jsonb,1,'Art. 1.1 CE','España propugna como valores superiores la libertad, la justicia, la igualdad y el pluralismo político.',null),
('aux-ayto-mad:1-04262b2364','aux-ayto-mad',1,'Según la Constitución, la soberanía nacional reside en:','["El pueblo español", "El Rey", "La Nación y las Comunidades Autónomas"]'::jsonb,0,'Art. 1.2 CE','La soberanía nacional reside en el pueblo español, del que emanan los poderes del Estado.',null),
('aux-ayto-mad:1-c8fa2d2b37','aux-ayto-mad',1,'La forma política del Estado español es:','["La Monarquía constitucional", "La Monarquía parlamentaria", "El Estado autonómico"]'::jsonb,1,'Art. 1.3 CE','La forma política del Estado español es la Monarquía parlamentaria.',null),
('aux-ayto-mad:1-4f7ac99224','aux-ayto-mad',1,'Respecto al castellano, todos los españoles tienen:','["El deber de conocerlo y el derecho a usarlo", "El derecho a conocerlo y el deber de usarlo", "Solo el deber de conocerlo"]'::jsonb,0,'Art. 3.1 CE','Todos los españoles tienen el deber de conocer el castellano y el derecho a usarlo.',null),
('aux-ayto-mad:1-b2b5de77ad','aux-ayto-mad',1,'¿Cómo es la bandera de España según la Constitución?','["Tres franjas verticales roja, amarilla y roja, siendo la amarilla de doble anchura que cada roja", "Tres franjas horizontales roja, amarilla y roja, siendo la amarilla de doble anchura que cada roja", "Tres franjas horizontales amarilla, roja y amarilla, siendo la roja de doble anchura que cada amarilla"]'::jsonb,1,'Art. 4.1 CE','Tres franjas horizontales roja, amarilla y roja, siendo la amarilla de doble anchura que cada una de las rojas.',null),
('aux-ayto-mad:1-2768ee756b','aux-ayto-mad',1,'¿Cuál es la capital del Estado según la Constitución?','["La sede del Gobierno, sea cual sea", "La villa de Madrid", "La que determine una ley orgánica"]'::jsonb,1,'Art. 5 CE','La capital del Estado es la villa de Madrid.',null),
('aux-ayto-mad:1-2e31638cad','aux-ayto-mad',1,'Según el art. 6, los partidos políticos:','["Necesitan autorización administrativa previa", "Expresan el pluralismo político", "Pueden tener estructura interna no democrática"]'::jsonb,1,'Art. 6 CE','Los partidos expresan el pluralismo político y su estructura interna y funcionamiento deben ser democráticos.',null),
('aux-ayto-mad:1-bfc1c0f01c','aux-ayto-mad',1,'¿Cuál de estos principios NO garantiza el art. 9.3 de la Constitución?','["La interdicción de la arbitrariedad de los poderes públicos", "La jerarquía normativa", "La retroactividad de las disposiciones sancionadoras desfavorables"]'::jsonb,2,'Art. 9.3 CE','Se garantiza lo contrario: la irretroactividad de las disposiciones sancionadoras no favorables o restrictivas de derechos individuales.',null),
('aux-ayto-mad:1-229a35ba34','aux-ayto-mad',1,'Las normas sobre derechos fundamentales se interpretan de conformidad con:','["La jurisprudencia del Tribunal Supremo y los tratados ratificados por España, en ese orden de prelación", "La Declaración Universal de Derechos Humanos y las leyes orgánicas que los desarrollen", "La Declaración Universal de Derechos Humanos y los tratados ratificados por España"]'::jsonb,2,'Art. 10.2 CE','Se interpretan conforme a la Declaración Universal de Derechos Humanos y los tratados y acuerdos internacionales ratificados por España.',null),
('aux-ayto-mad:1-47b46601ce','aux-ayto-mad',1,'Según la Constitución, ¿puede un español de origen ser privado de su nacionalidad?','["Sí, por sentencia firme", "No, en ningún caso", "Sí, por decisión del Gobierno"]'::jsonb,1,'Art. 11.2 CE','Ningún español de origen podrá ser privado de su nacionalidad.',null),
('aux-ayto-mad:1-f8078461b2','aux-ayto-mad',1,'¿A qué edad son mayores de edad los españoles según la Constitución?','["21 años", "18 años", "La fija cada Comunidad Autónoma"]'::jsonb,1,'Art. 12 CE','Los españoles son mayores de edad a los dieciocho años.',null),
('aux-ayto-mad:1-e711cb1036','aux-ayto-mad',1,'Los extranjeros pueden ejercer el derecho de sufragio activo y pasivo:','["En las elecciones municipales, sin necesidad de criterios de reciprocidad", "En las elecciones municipales y autonómicas, atendiendo a criterios de reciprocidad", "En las elecciones municipales, atendiendo a criterios de reciprocidad"]'::jsonb,2,'Art. 13.2 CE','Solo los españoles son titulares del art. 23, salvo el sufragio activo y pasivo en las elecciones municipales con reciprocidad. Este apartado se reformó en 1992.',null),
('aux-ayto-mad:1-b31d95397f','aux-ayto-mad',1,'Según el art. 15 de la Constitución, la pena de muerte:','["Queda abolida, salvo lo que dispongan las leyes penales militares para tiempos de guerra", "Queda abolida en todo caso, sin ninguna excepción en el texto constitucional", "Queda abolida, salvo para los delitos de terrorismo que determine una ley orgánica"]'::jsonb,0,'Art. 15 CE','Queda abolida la pena de muerte, salvo lo que puedan disponer las leyes penales militares para tiempos de guerra.',null),
('aux-ayto-mad:1-58ebff311d','aux-ayto-mad',1,'¿Cuánto puede durar como máximo la detención preventiva antes de poner al detenido en libertad o a disposición judicial?','["5 días", "72 horas", "48 horas"]'::jsonb,1,'Art. 17.2 CE','La detención preventiva no puede durar más de lo estrictamente necesario y, como máximo, 72 horas.',null),
('aux-ayto-mad:1-73620ada06','aux-ayto-mad',1,'¿Qué procedimiento regula la ley para la inmediata puesta a disposición judicial de toda persona detenida ilegalmente?','["La cuestión prejudicial", "El habeas corpus", "El recurso de inconstitucionalidad"]'::jsonb,1,'Art. 17.4 CE','La ley regula el procedimiento de habeas corpus.',null),
('aux-ayto-mad:1-f288a8f0a9','aux-ayto-mad',1,'¿En qué casos se puede entrar en un domicilio según la Constitución?','["Con consentimiento del titular, resolución judicial o en caso de flagrante delito", "Solo con resolución judicial o en caso de flagrante delito", "Con consentimiento del titular, resolución judicial o autorización de la autoridad gubernativa"]'::jsonb,0,'Art. 18.2 CE','Ninguna entrada o registro sin consentimiento del titular o resolución judicial, salvo flagrante delito.',null),
('aux-ayto-mad:1-37f88a9c1d','aux-ayto-mad',1,'El secuestro de publicaciones y otros medios de información solo puede acordarse:','["Por orden del Ministerio del Interior", "Por la autoridad gubernativa en casos urgentes", "En virtud de resolución judicial"]'::jsonb,2,'Art. 20.5 CE','Solo podrá acordarse el secuestro en virtud de resolución judicial.',null),
('aux-ayto-mad:1-9ff2bc8d8e','aux-ayto-mad',1,'Para reuniones en lugares de tránsito público y manifestaciones se exige:','["Comunicación previa a la autoridad", "Autorización judicial", "Autorización previa de la autoridad"]'::jsonb,0,'Art. 21.2 CE','Se da comunicación previa a la autoridad, que solo puede prohibirlas por razones fundadas de alteración del orden público.',null),
('aux-ayto-mad:1-8d21a65a7a','aux-ayto-mad',1,'¿Qué asociaciones prohíbe expresamente la Constitución?','["Las no inscritas en el registro y las de carácter paramilitar", "Las de carácter paramilitar y las formadas solo por extranjeros", "Las secretas y las de carácter paramilitar"]'::jsonb,2,'Art. 22.5 CE','Se prohíben las asociaciones secretas y las de carácter paramilitar.',null),
('aux-ayto-mad:1-feeb15f476','aux-ayto-mad',1,'El art. 23.2 reconoce el derecho a acceder a las funciones y cargos públicos:','["En condiciones de igualdad, siempre que se posea la nacionalidad española de origen", "Conforme a los méritos que libremente aprecie cada Administración", "En condiciones de igualdad, con los requisitos que señalen las leyes"]'::jsonb,2,'Art. 23.2 CE','Los ciudadanos tienen derecho a acceder en condiciones de igualdad a las funciones y cargos públicos, con los requisitos que señalen las leyes.',null),
('aux-ayto-mad:1-8abe10e485','aux-ayto-mad',1,'Según el art. 24.2, todos tienen derecho:','["A elegir el juez que les juzgue", "Al Juez ordinario predeterminado por la ley", "A un tribunal especial según su profesión"]'::jsonb,1,'Art. 24.2 CE','Todos tienen derecho al Juez ordinario predeterminado por la ley, a la defensa y a la asistencia de letrado, entre otros.',null),
('aux-ayto-mad:1-d436929f28','aux-ayto-mad',1,'La Administración civil puede imponer sanciones que impliquen privación de libertad:','["Sí, en casos graves", "Solo durante el estado de alarma", "No, en ningún caso"]'::jsonb,2,'Art. 25.3 CE','La Administración civil no podrá imponer sanciones que, directa o subsidiariamente, impliquen privación de libertad.',null),
('aux-ayto-mad:1-c44dcc6246','aux-ayto-mad',1,'Según la Constitución, la enseñanza básica es:','["Obligatoria y de pago", "Obligatoria y gratuita", "Voluntaria y de pago"]'::jsonb,1,'Art. 27.4 CE','La enseñanza básica es obligatoria y gratuita.',null),
('aux-ayto-mad:1-664bf032b9','aux-ayto-mad',1,'El derecho a la huelga de los trabajadores se reconoce en:','["El art. 35.1", "El art. 37.2", "El art. 28.2"]'::jsonb,2,'Art. 28.2 CE','El art. 28.2 reconoce el derecho a la huelga de los trabajadores para la defensa de sus intereses.',null),
('aux-ayto-mad:1-f00371600c','aux-ayto-mad',1,'Según el art. 30.1, defender a España es para los españoles:','["Una obligación exclusiva de las Fuerzas Armadas", "Solo un derecho", "Un derecho y un deber"]'::jsonb,2,'Art. 30.1 CE','Los españoles tienen el derecho y el deber de defender a España.',null),
('aux-ayto-mad:1-6d2a942269','aux-ayto-mad',1,'El art. 32.1 reconoce el derecho a contraer matrimonio:','["Al hombre y la mujer, con plena igualdad jurídica", "Al hombre y la mujer, a partir de la edad que fije cada Comunidad Autónoma", "Al hombre y la mujer, previa autorización del Registro Civil"]'::jsonb,0,'Art. 32.1 CE','El hombre y la mujer tienen derecho a contraer matrimonio con plena igualdad jurídica.',null),
('aux-ayto-mad:1-0a0b33a6b2','aux-ayto-mad',1,'¿Qué artículo modificó la reforma constitucional de 2024?','["El art. 69.3, sobre la elección de los senadores provinciales", "El art. 135, sobre estabilidad presupuestaria", "El art. 49, sobre las personas con discapacidad"]'::jsonb,2,'Art. 49 CE','La reforma de febrero de 2024 modificó el art. 49. Las anteriores fueron la de 1992 (art. 13.2) y la de 2011 (art. 135); la de mayo de 2026 modificó el art. 69.3.',null),
('aux-ayto-mad:1-e5e8d587c5','aux-ayto-mad',1,'Según el art. 53.1, el ejercicio de los derechos del Capítulo II solo puede regularse:','["Por ley de las Comunidades Autónomas exclusivamente", "Por ley, que deberá respetar su contenido esencial", "Por reglamento del Gobierno"]'::jsonb,1,'Art. 53.1 CE','Vinculan a todos los poderes públicos y solo por ley, que respete su contenido esencial, podrá regularse su ejercicio.',null),
('aux-ayto-mad:1-b03e4bc908','aux-ayto-mad',1,'¿Qué derechos pueden protegerse mediante recurso de amparo ante el Tribunal Constitucional?','["Todos los derechos del Capítulo II del Título I, incluida su Sección 2.ª", "La Sección 1.ª del Capítulo II, pero no la igualdad del art. 14", "El art. 14, la Sección 1.ª del Capítulo II y la objeción de conciencia del art. 30"]'::jsonb,2,'Art. 53.2 CE','Cabe amparo para el art. 14, la Sección 1.ª del Capítulo II y la objeción de conciencia del art. 30, en su caso tras acudir a los tribunales ordinarios.',null),
('aux-ayto-mad:1-e2f4f0525e','aux-ayto-mad',1,'El Defensor del Pueblo es:','["Alto comisionado de las Cortes Generales, designado por estas", "Alto comisionado del Gobierno, designado por el Consejo de Ministros", "Alto comisionado de las Cortes Generales, designado por el Rey"]'::jsonb,0,'Art. 54 CE','Es alto comisionado de las Cortes Generales, designado por ellas para la defensa de los derechos del Título I.',null),
('aux-ayto-mad:1-72720b6729','aux-ayto-mad',1,'Según el art. 55.1, los derechos pueden suspenderse cuando se declare el estado de:','["Alarma, excepción o sitio", "Solo sitio", "Excepción o sitio"]'::jsonb,2,'Art. 55.1 CE','La suspensión general cabe en el estado de excepción o de sitio, no en el de alarma.',null),
('aux-ayto-mad:1-813d15f5a8','aux-ayto-mad',1,'La suspensión individual de derechos para investigaciones sobre bandas armadas o terrorismo se regula mediante:','["Ley orgánica", "Ley ordinaria", "Real decreto"]'::jsonb,0,'Art. 55.2 CE','Una ley orgánica puede determinar la suspensión individual de los derechos de los arts. 17.2 y 18.2 y 3 en esas investigaciones.',null),
('aux-ayto-mad:1-13b6602a03','aux-ayto-mad',1,'¿Qué principios garantiza el art. 9.3 de la Constitución en relación con las normas?','["La legalidad, la jerarquía normativa y la retroactividad de las normas favorables", "La legalidad, la jerarquía normativa y la publicidad de las normas", "La legalidad, la competencia normativa y la publicidad de las normas"]'::jsonb,1,'Art. 9.3 CE','Garantiza, entre otros, el principio de legalidad, la jerarquía normativa y la publicidad de las normas.',null),
('aux-ayto-mad:1-28cdf5fb8b','aux-ayto-mad',1,'Según el art. 17.1, toda persona tiene derecho a:','["Un trabajo remunerado", "La libertad y a la seguridad", "La asistencia jurídica gratuita en cualquier caso"]'::jsonb,1,'Art. 17.1 CE','Toda persona tiene derecho a la libertad y a la seguridad.',null),
('aux-ayto-mad:1-658e78e4db','aux-ayto-mad',1,'Según el art. 31.2, la programación y ejecución del gasto público responden a los criterios de:','["Rentabilidad y beneficio", "Discrecionalidad política", "Eficiencia y economía"]'::jsonb,2,'Art. 31.2 CE','El gasto público realizará una asignación equitativa de los recursos públicos, y su programación y ejecución responderán a los criterios de eficiencia y economía.',null),
('aux-ayto-mad:1-05165f7d86','aux-ayto-mad',1,'Según el art. 18.4, la ley limitará el uso de:','["Los medios de comunicación social de titularidad pública", "Las armas de fuego, para garantizar la seguridad ciudadana", "La informática, para garantizar el honor y la intimidad"]'::jsonb,2,'Art. 18.4 CE','La ley limitará el uso de la informática para garantizar el honor y la intimidad personal y familiar.',null),
('aux-ayto-mad:1-3f91d2acbc','aux-ayto-mad',1,'El ejercicio de la libertad de expresión e información:','["Puede someterse a censura previa en estados de alarma, excepción y sitio, por ley orgánica", "Requiere autorización previa en los medios de titularidad pública", "No puede restringirse mediante ningún tipo de censura previa"]'::jsonb,2,'Art. 20.2 CE','El ejercicio de estos derechos no puede restringirse mediante ningún tipo de censura previa.',null),
('aux-ayto-mad:1-3186f16bd4','aux-ayto-mad',1,'El secreto de las comunicaciones puede levantarse:','["Por decisión del Gobierno", "Mediante resolución judicial", "Por orden policial"]'::jsonb,1,'Art. 18.3 CE','Se garantiza el secreto de las comunicaciones, salvo resolución judicial.',null),
('aux-ayto-mad:1-d9834042ea','aux-ayto-mad',1,'Las demás lenguas españolas distintas del castellano:','["Solo son oficiales en el ámbito educativo de cada Comunidad Autónoma", "Son oficiales en las respectivas Comunidades Autónomas, pero solo cuando lo establezca una ley orgánica estatal", "Son también oficiales en las respectivas Comunidades Autónomas de acuerdo con sus Estatutos"]'::jsonb,2,'Art. 3.2 CE','Son oficiales en sus Comunidades Autónomas de acuerdo con sus Estatutos.',null),
('aux-ayto-mad:1-773b494482','aux-ayto-mad',1,'Mediante ley podrán regularse los deberes de los ciudadanos en los casos de:','["Crisis económica grave declarada por el Gobierno", "Cambio de Gobierno o estado de alarma", "Grave riesgo, catástrofe o calamidad pública"]'::jsonb,2,'Art. 30.4 CE','Podrán regularse los deberes de los ciudadanos en los casos de grave riesgo, catástrofe o calamidad pública.',null),
('aux-ayto-mad:1-6f015125b8','aux-ayto-mad',1,'La libertad ideológica, religiosa y de culto tiene como única limitación en sus manifestaciones:','["La necesaria para el mantenimiento del orden público protegido por la ley", "La autorización gubernativa previa", "La moral pública y las buenas costumbres, según determine la ley"]'::jsonb,0,'Art. 16.1 CE','Sin más limitación, en sus manifestaciones, que la necesaria para el mantenimiento del orden público protegido por la ley.',null),
('aux-ayto-mad:1-136f7c32d9','aux-ayto-mad',1,'Según el art. 16.3, ¿alguna confesión tendrá carácter estatal?','["No, ninguna confesión tendrá carácter estatal", "Sí, la católica", "Las que tengan más de un millón de fieles"]'::jsonb,0,'Art. 16.3 CE','Ninguna confesión tendrá carácter estatal, aunque los poderes públicos mantendrán relaciones de cooperación con la Iglesia Católica y las demás confesiones.',null),
('aux-ayto-mad:1-ee2847158a','aux-ayto-mad',1,'Los principios del Capítulo III del Título I (principios rectores de la política social y económica):','["Solo vinculan al Parlamento, y son directamente exigibles ante los tribunales ordinarios por cualquier ciudadano", "Informarán la legislación positiva, la práctica judicial y la actuación de los poderes públicos", "Informarán la legislación positiva, pero no la práctica judicial ni la actuación de la Administración"]'::jsonb,1,'Art. 53.3 CE','Informarán la legislación positiva, la práctica judicial y la actuación de los poderes públicos; solo podrán alegarse ante la jurisdicción ordinaria según las leyes que los desarrollen.',null),
('aux-ayto-mad:1-d4181563d2','aux-ayto-mad',1,'El derecho a comunicar o recibir información, según el art. 20.1 d), se refiere a información:','["Autorizada", "Veraz", "Oficial"]'::jsonb,1,'Art. 20.1 d) CE','Se reconoce el derecho a comunicar o recibir libremente información veraz por cualquier medio de difusión.',null),
('aux-ayto-mad:1-eed8ce60ff','aux-ayto-mad',1,'Los poderes públicos garantizan el derecho de los padres a que sus hijos reciban:','["Educación en su lengua materna en todo caso", "La formación religiosa y moral que esté de acuerdo con sus propias convicciones", "La formación religiosa y moral de la confesión mayoritaria, salvo renuncia expresa de los padres o tutores"]'::jsonb,1,'Art. 27.3 CE','Garantizan que los hijos reciban la formación religiosa y moral acorde con las convicciones de sus padres.',null),
('aux-ayto-mad:1-8831d69530','aux-ayto-mad',1,'El principio de legalidad del art. 25.1 establece que nadie puede ser condenado o sancionado por acciones u omisiones que:','["En el momento de dictarse la resolución no constituyan delito, falta o infracción administrativa", "En el momento de producirse no constituyan delito según la ley penal, aunque sí infracción según un reglamento", "En el momento de producirse no constituyan delito, falta o infracción administrativa, según la legislación vigente"]'::jsonb,2,'Art. 25.1 CE','Nadie puede ser condenado o sancionado por acciones u omisiones que, cuando se produjeron, no constituían delito, falta o infracción administrativa.',null),
('aux-ayto-mad:1-b25ce1e2ad','aux-ayto-mad',1,'Según el art. 14, los españoles son iguales ante la ley sin que pueda prevalecer discriminación por razón de:','["Sexo, raza, nacionalidad, ideología y orientación sexual, pero no por cualquier otra condición o circunstancia personal o social", "Nacimiento, raza, sexo, religión, opinión o cualquier otra condición, salvo las circunstancias económicas y sociales, que regulan las leyes", "Nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social"]'::jsonb,2,'Art. 14 CE','No puede prevalecer discriminación alguna por razón de nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social.',null),
('aux-ayto-mad:1-1f3c680b81','aux-ayto-mad',1,'Son ilegales las asociaciones que:','["Persigan fines o utilicen medios tipificados como delito", "Reciban subvenciones públicas sin haberse inscrito previamente en el registro", "No estén inscritas en un registro"]'::jsonb,0,'Art. 22.2 CE','Las asociaciones que persigan fines o utilicen medios tipificados como delito son ilegales.',null),
('aux-ayto-mad:1-57c67ff28f','aux-ayto-mad',1,'La nacionalidad española se adquiere, se conserva y se pierde:','["Por decisión del Gobierno, mediante real decreto acordado en Consejo de Ministros", "Solo por nacimiento o por residencia legal continuada", "De acuerdo con lo establecido por la ley"]'::jsonb,2,'Art. 11.1 CE','Se adquiere, conserva y pierde de acuerdo con lo establecido por la ley.',null),
('aux-ayto-mad:1-518bf2e642','aux-ayto-mad',1,'El art. 40.2 encomienda a los poderes públicos garantizar el descanso necesario mediante:','["La limitación de la jornada laboral y las vacaciones periódicas retribuidas", "La limitación de la jornada laboral y los permisos retribuidos que fije cada convenio colectivo", "La semana laboral de cuatro días y la jornada continua"]'::jsonb,0,'Art. 40.2 CE','Mediante la limitación de la jornada laboral, las vacaciones periódicas retribuidas y la promoción de centros adecuados.',null),
('aux-ayto-mad:1-f7ff3996e0','aux-ayto-mad',1,'El derecho de reunión pacífica y sin armas:','["No necesita autorización previa", "Requiere autorización del Delegado del Gobierno", "Solo se ejerce en locales cerrados"]'::jsonb,0,'Art. 21.1 CE','Se reconoce el derecho de reunión pacífica y sin armas, cuyo ejercicio no necesita autorización previa.',null),
('aux-ayto-mad:1-2c769a8fd5','aux-ayto-mad',1,'Según el art. 10.1, son fundamento del orden político y de la paz social:','["La dignidad de la persona, los derechos inviolables que le son inherentes, el libre desarrollo de la personalidad, el respeto a la ley y a los derechos de los demás", "La monarquía parlamentaria, la soberanía nacional y la unidad de la Nación española", "La unidad de mercado y la libertad de empresa"]'::jsonb,0,'Art. 10.1 CE','Lo son la dignidad de la persona, sus derechos inviolables, el libre desarrollo de la personalidad y el respeto a la ley y a los derechos de los demás.',null),
('aux-ayto-mad:1-47ddda9cb4','aux-ayto-mad',1,'La estructura interna y el funcionamiento de los Colegios Profesionales deberán ser:','["Secretos", "Fijados por el Gobierno", "Democráticos"]'::jsonb,2,'Art. 36 CE','La ley regulará los Colegios Profesionales, cuya estructura interna y funcionamiento deberán ser democráticos.',null),
('aux-ayto-mad:1-50bfc7b225','aux-ayto-mad',1,'Según el art. 7, los sindicatos de trabajadores y las asociaciones empresariales deben tener:','["Una estructura interna y un funcionamiento democráticos", "Autorización administrativa previa", "Un número mínimo de afiliados que fije la ley orgánica correspondiente"]'::jsonb,0,'Art. 7 CE','Su estructura interna y funcionamiento deberán ser democráticos.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-ayto-mad:1-781c737fe7','aux-ayto-mad',1,'La riqueza de las distintas modalidades lingüísticas de España es, según la Constitución:','["Un límite a la libertad de expresión", "Un asunto de las Comunidades sin protección constitucional", "Un patrimonio cultural objeto de especial respeto y protección"]'::jsonb,2,'Art. 3.3 CE','Es un patrimonio cultural que será objeto de especial respeto y protección.',null),
('aux-ayto-mad:1-b8461aa55d','aux-ayto-mad',1,'La ley garantiza el derecho a la negociación colectiva laboral y:','["La prohibición de los convenios de empresa", "La fuerza vinculante de los convenios", "La aprobación de los convenios por el Gobierno"]'::jsonb,1,'Art. 37.1 CE','La ley garantizará el derecho a la negociación colectiva laboral, así como la fuerza vinculante de los convenios.',null),
('aux-ayto-mad:1-72f00df4e3','aux-ayto-mad',1,'Los extranjeros gozan en España de las libertades públicas del Título I:','["En ningún caso, salvo los derechos inherentes a la dignidad humana", "En igualdad absoluta con los españoles, incluido el derecho de sufragio en todas las elecciones", "En los términos que establezcan los tratados y la ley"]'::jsonb,2,'Art. 13.1 CE','Gozarán de las libertades públicas que garantiza el Título I en los términos que establezcan los tratados y la ley.',null),
('aux-ayto-mad:1-202234a551','aux-ayto-mad',1,'Las libertades del art. 20 tienen su límite, especialmente, en:','["La seguridad nacional, el orden público, los intereses económicos del Estado y las instrucciones del Gobierno en materia de comunicación", "El derecho al honor, a la intimidad, a la propia imagen y la protección de la juventud y de la infancia", "La opinión mayoritaria de la sociedad, los intereses económicos del Estado y las instrucciones del Gobierno sobre la información pública"]'::jsonb,1,'Art. 20.4 CE','Tienen su límite en los demás derechos del Título I y, especialmente, en el honor, la intimidad, la propia imagen y la protección de la juventud y la infancia.',null),
('aux-ayto-mad:1-3f16595c92','aux-ayto-mad',1,'Las penas privativas de libertad y las medidas de seguridad están orientadas a:','["La reeducación y la reinserción social, y no pueden consistir en trabajos forzados", "La reeducación y la reinserción social, y pueden incluir trabajos forzados en los casos que prevea la ley", "El trabajo obligatorio en beneficio de la comunidad y la compensación económica a la víctima del delito"]'::jsonb,0,'Art. 25.2 CE','Están orientadas hacia la reeducación y reinserción social y no podrán consistir en trabajos forzados.',null),
('aux-ayto-mad:1-3bc242387e','aux-ayto-mad',1,'Las Fuerzas Armadas están constituidas, según la Constitución, por:','["El Ejército de Tierra, la Armada y el Ejército del Aire", "El Ejército de Tierra y la Policía Nacional", "Las Fuerzas y Cuerpos de Seguridad del Estado"]'::jsonb,0,'Art. 8.1 CE','Las constituyen el Ejército de Tierra, la Armada y el Ejército del Aire.',null),
('aux-ayto-mad:1-6dfea1c45c','aux-ayto-mad',1,'Según el art. 33.3, nadie podrá ser privado de sus bienes y derechos sino:','["Por causa justificada de utilidad pública o interés social, sin indemnización cuando así lo decida el Gobierno mediante real decreto", "Por deudas con particulares reconocidas en sentencia firme", "Por causa justificada de utilidad pública o interés social, mediante la correspondiente indemnización y de conformidad con la ley"]'::jsonb,2,'Art. 33.3 CE','Solo por causa justificada de utilidad pública o interés social, con indemnización y conforme a la ley.',null),
('aux-ayto-mad:1-782a8d0457','aux-ayto-mad',1,'Según el art. 30.3, podrá establecerse:','["Un impuesto especial para la defensa nacional y la protección civil", "Un servicio civil para el cumplimiento de fines de interés general", "Un servicio militar universitario"]'::jsonb,1,'Art. 30.3 CE','Podrá establecerse un servicio civil para el cumplimiento de fines de interés general.',null),
('aux-ayto-mad:1-a1d3c9fa09','aux-ayto-mad',1,'Según el art. 43.3, los poderes públicos fomentarán:','["La educación sanitaria, la educación física y el deporte", "La educación física y el deporte escolar, pero no la educación sanitaria", "La medicina preventiva privada mediante conciertos con las mutuas sanitarias"]'::jsonb,0,'Art. 43.3 CE','Fomentarán la educación sanitaria, la educación física y el deporte, y facilitarán la adecuada utilización del ocio.',null),
('aux-ayto-mad:1-76e027ed85','aux-ayto-mad',1,'Según el art. 33.1, se reconoce el derecho:','["A la propiedad privada y a una vivienda en propiedad para cada familia", "A la herencia, pero solo entre cónyuges y descendientes", "A la propiedad privada y a la herencia"]'::jsonb,2,'Art. 33.1 CE','Se reconoce el derecho a la propiedad privada y a la herencia.',null),
('aux-ayto-mad:1-b5138fc439','aux-ayto-mad',1,'Según el art. 38, se reconoce la libertad de empresa en el marco de:','["La economía de mercado", "La economía cooperativa exclusivamente", "La planificación central obligatoria"]'::jsonb,0,'Art. 38 CE','Se reconoce la libertad de empresa en el marco de la economía de mercado.',null),
('aux-ayto-mad:1-6f8a17b183','aux-ayto-mad',1,'Según el art. 35.1, todos los españoles tienen:','["Solo el derecho al trabajo", "Derecho a no trabajar sin consecuencias", "El deber de trabajar y el derecho al trabajo"]'::jsonb,2,'Art. 35.1 CE','Tienen el deber de trabajar y el derecho al trabajo, a la libre elección de profesión u oficio y a una remuneración suficiente.',null),
('aux-ayto-mad:1-f57d7307b4','aux-ayto-mad',1,'Según el art. 28.1, respecto a la libertad sindical:','["Nadie podrá ser obligado a afiliarse a un sindicato", "La afiliación es obligatoria para los funcionarios", "Solo pueden sindicarse los trabajadores fijos"]'::jsonb,0,'Art. 28.1 CE','Todos tienen derecho a sindicarse libremente y nadie podrá ser obligado a afiliarse a un sindicato.',null),
('aux-ayto-mad:1-fe0b778e7e','aux-ayto-mad',1,'El derecho de petición, según el art. 29.1:','["Requiere abogado", "Es individual y colectivo, por escrito", "Solo es individual y verbal"]'::jsonb,1,'Art. 29.1 CE','Todos los españoles tienen el derecho de petición individual y colectiva, por escrito.',null),
('aux-ayto-mad:1-5f7947f5b0','aux-ayto-mad',1,'El art. 43 reconoce el derecho a:','["La protección de la salud", "La elección libre de médico en todo caso", "La asistencia sanitaria privada gratuita"]'::jsonb,0,'Art. 43.1 CE','Se reconoce el derecho a la protección de la salud.',null),
('aux-ayto-mad:1-18b7c98a6d','aux-ayto-mad',1,'El art. 47 reconoce a todos los españoles el derecho a:','["Disfrutar de una vivienda digna, que los poderes públicos deben adjudicar directamente a quien la solicite", "Una ayuda pública al alquiler en todo caso, de cuantía fija", "Disfrutar de una vivienda digna y adecuada"]'::jsonb,2,'Art. 47 CE','Todos los españoles tienen derecho a disfrutar de una vivienda digna y adecuada.',null),
('aux-ayto-mad:1-58d2add35f','aux-ayto-mad',1,'Los poderes públicos garantizarán la conservación y promoverán el enriquecimiento de:','["Los bienes de la Corona", "El patrimonio histórico, cultural y artístico de titularidad pública, pero no el de titularidad privada", "El patrimonio histórico, cultural y artístico de los pueblos de España"]'::jsonb,2,'Art. 46 CE','Garantizarán la conservación y promoverán el enriquecimiento del patrimonio histórico, cultural y artístico.',null),
('aux-ayto-mad:1-af927f69d1','aux-ayto-mad',1,'Según el art. 24.1, todas las personas tienen derecho a obtener la tutela efectiva de los jueces y tribunales:','["Solo en asuntos penales y contencioso-administrativos", "Sin que, en ningún caso, pueda producirse indefensión", "Solo si están asistidas de abogado y procurador"]'::jsonb,1,'Art. 24.1 CE','Tienen derecho a la tutela judicial efectiva sin que, en ningún caso, pueda producirse indefensión.',null),
('aux-ayto-mad:1-db05bacbe2','aux-ayto-mad',1,'¿Qué prohíbe el art. 26 de la Constitución?','["Los colegios profesionales con adscripción obligatoria", "Los Tribunales de Honor en el ámbito de la Administración civil y de las organizaciones profesionales", "Los tribunales militares en tiempo de guerra y en los supuestos de estado de sitio declarados por el Congreso"]'::jsonb,1,'Art. 26 CE','Se prohíben los Tribunales de Honor en el ámbito de la Administración civil y de las organizaciones profesionales.',null),
('aux-ayto-mad:1-f69aaa356a','aux-ayto-mad',1,'El art. 18.1 garantiza el derecho:','["A la libertad de empresa en el marco de la economía de mercado", "A la propiedad privada y a la herencia", "Al honor, a la intimidad personal y familiar y a la propia imagen"]'::jsonb,2,'Art. 18.1 CE','Garantiza el derecho al honor, a la intimidad personal y familiar y a la propia imagen.',null),
('aux-ayto-mad:1-555369c915','aux-ayto-mad',1,'El derecho de fundación se reconoce:','["Solo a las empresas y sociedades mercantiles", "Para fines de interés general, con arreglo a la ley", "Para cualquier fin, incluido el lucrativo, con arreglo a la ley"]'::jsonb,1,'Art. 34.1 CE','Se reconoce el derecho de fundación para fines de interés general, con arreglo a la ley.',null),
('aux-ayto-mad:1-2eb6b39db8','aux-ayto-mad',1,'Según el art. 9.1, están sujetos a la Constitución y al resto del ordenamiento jurídico:','["Solo los funcionarios y los poderes públicos", "Solo los poderes públicos y los funcionarios", "Los ciudadanos y los poderes públicos"]'::jsonb,2,'Art. 9.1 CE','Los ciudadanos y los poderes públicos están sujetos a la Constitución y al resto del ordenamiento jurídico.',null),
('aux-ayto-mad:1-5ed6960240','aux-ayto-mad',1,'Las prestaciones personales o patrimoniales de carácter público solo pueden establecerse:','["Con arreglo a la ley", "Por acuerdo municipal", "Por orden ministerial"]'::jsonb,0,'Art. 31.3 CE','Solo podrán establecerse prestaciones personales o patrimoniales de carácter público con arreglo a la ley.',null),
('aux-ayto-mad:1-eb0e62cebb','aux-ayto-mad',1,'Según el art. 44.2, los poderes públicos promoverán:','["La investigación militar y de defensa, y la cooperación científica con las Fuerzas Armadas aliadas", "La ciencia y la investigación científica y técnica en beneficio del interés general", "La investigación privada exclusivamente, mediante incentivos fiscales a las empresas"]'::jsonb,1,'Art. 44.2 CE','Promoverán la ciencia y la investigación científica y técnica en beneficio del interés general.',null),
('aux-ayto-mad:1-55db44c18c','aux-ayto-mad',1,'¿Quién establece los términos en que extranjeros y apátridas pueden gozar del derecho de asilo?','["El Defensor del Pueblo", "El Ministerio del Interior por orden", "La ley"]'::jsonb,2,'Art. 13.4 CE','La ley establecerá los términos en que los ciudadanos de otros países y los apátridas podrán gozar del derecho de asilo.',null),
('aux-ayto-mad:1-0c62f88686','aux-ayto-mad',1,'¿Qué regula la ley según el art. 20.3?','["El control gubernamental de todos los medios de comunicación social, públicos y privados, a través de una autoridad independiente", "Las tarifas publicitarias y el régimen de concesión de licencias de los medios de comunicación privados de ámbito estatal", "El control parlamentario de los medios de comunicación social dependientes del Estado o de cualquier ente público"]'::jsonb,2,'Art. 20.3 CE','La ley regulará la organización y el control parlamentario de los medios dependientes del Estado o de cualquier ente público.',null),
('aux-ayto-mad:1-0bcfd9408c','aux-ayto-mad',1,'Respecto a la extradición, la Constitución establece que:','["No se consideran delitos políticos los actos de terrorismo", "Solo la concede el Gobierno, sin intervención judicial", "Se concede sin necesidad de tratado ni de ley, por reciprocidad"]'::jsonb,0,'Art. 13.3 CE','La extradición se concede en cumplimiento de un tratado o de la ley, atendiendo a la reciprocidad; los actos de terrorismo no se consideran delitos políticos.',null),
('aux-ayto-mad:1-2becdd418c','aux-ayto-mad',1,'Toda persona detenida debe ser informada:','["Solo cuando sea puesta a disposición judicial, en presencia de su abogado y en el plazo de setenta y dos horas", "De forma inmediata y comprensible de sus derechos y de las razones de su detención", "En el plazo máximo de 72 horas, una vez puesta a disposición judicial y en presencia de su abogado"]'::jsonb,1,'Art. 17.3 CE','Debe ser informada de forma inmediata, y de modo que le sea comprensible, de sus derechos y de las razones de su detención.',null),
('aux-ayto-mad:1-8bfccf6fea','aux-ayto-mad',1,'Según la Constitución, ¿puede alguien ser obligado a declarar sobre su ideología, religión o creencias?','["No", "Solo los funcionarios", "Sí, en los censos oficiales"]'::jsonb,0,'Art. 16.2 CE','Nadie podrá ser obligado a declarar sobre su ideología, religión o creencias.',null),
('aux-ayto-mad:1-be824633f8','aux-ayto-mad',1,'Respecto al medio ambiente, el art. 45.1 reconoce:','["El derecho a disfrutar de un medio ambiente adecuado, sin establecer ningún deber de conservarlo", "El derecho a disfrutar de un medio ambiente adecuado y el deber de conservarlo", "El deber de conservarlo, pero no el derecho a disfrutarlo, que se regula en los Estatutos"]'::jsonb,1,'Art. 45.1 CE','Todos tienen el derecho a disfrutar de un medio ambiente adecuado para el desarrollo de la persona, así como el deber de conservarlo.',null),
('aux-ayto-mad:1-52247bf595','aux-ayto-mad',1,'Las banderas propias de las Comunidades Autónomas:','["Las aprueba el Gobierno de la Nación a propuesta de cada Comunidad", "Sustituyen a la bandera de España en los edificios y actos oficiales de su territorio, si así lo dispone su Estatuto", "Pueden ser reconocidas por los Estatutos y se utilizan junto a la bandera de España en sus edificios y actos oficiales"]'::jsonb,2,'Art. 4.2 CE','Los Estatutos pueden reconocerlas; se usan junto a la bandera de España en sus edificios públicos y actos oficiales.',null),
('aux-ayto-mad:1-2eb081ae83','aux-ayto-mad',1,'Las asociaciones solo pueden ser disueltas o suspendidas en sus actividades:','["Por decisión de la Delegación del Gobierno", "En virtud de resolución judicial motivada", "Por orden del Ministerio del Interior"]'::jsonb,1,'Art. 22.4 CE','Solo podrán ser disueltas o suspendidas en virtud de resolución judicial motivada.',null),
('aux-ayto-mad:1-4d7f109854','aux-ayto-mad',1,'Según el art. 27.2, la educación tiene por objeto:','["La formación profesional exclusivamente", "El pleno desarrollo de la personalidad humana en el respeto a la religión mayoritaria y a las tradiciones de cada Comunidad Autónoma", "El pleno desarrollo de la personalidad humana en el respeto a los principios democráticos y a los derechos fundamentales"]'::jsonb,2,'Art. 27.2 CE','Tiene por objeto el pleno desarrollo de la personalidad humana en el respeto a los principios democráticos de convivencia y a los derechos y libertades fundamentales.',null),
('aux-ayto-mad:1-371c0284d6','aux-ayto-mad',1,'Según el art. 2, la Constitución se fundamenta en:','["La soberanía compartida del Estado y de las Comunidades Autónomas, y reconoce su derecho a la autodeterminación", "El pacto entre los territorios históricos", "La indisoluble unidad de la Nación española, y reconoce el derecho a la autonomía de las nacionalidades y regiones"]'::jsonb,2,'Art. 2 CE','Se fundamenta en la indisoluble unidad de la Nación española y reconoce y garantiza el derecho a la autonomía de las nacionalidades y regiones y la solidaridad entre todas ellas.',null),
('aux-ayto-mad:1-96f368ceb7','aux-ayto-mad',1,'¿Quién inspecciona y homologa el sistema educativo?','["Las asociaciones de padres", "Los colegios profesionales", "Los poderes públicos"]'::jsonb,2,'Art. 27.8 CE','Los poderes públicos inspeccionarán y homologarán el sistema educativo para garantizar el cumplimiento de las leyes.',null),
('aux-ayto-mad:1-aa5383d295','aux-ayto-mad',1,'Según el art. 41, los poderes públicos mantendrán:','["Un régimen público de Seguridad Social para todos los ciudadanos", "Un seguro médico solo para los trabajadores por cuenta ajena", "Mutualidades profesionales obligatorias"]'::jsonb,0,'Art. 41 CE','Mantendrán un régimen público de Seguridad Social para todos los ciudadanos.',null),
('aux-ayto-mad:1-35069d249e','aux-ayto-mad',1,'Según el art. 39.1, los poderes públicos aseguran:','["La protección social, económica y jurídica de la familia, pero solo de la fundada en el matrimonio", "Una vivienda digna a cada familia", "La protección social, económica y jurídica de la familia"]'::jsonb,2,'Art. 39.1 CE','Los poderes públicos aseguran la protección social, económica y jurídica de la familia.',null),
('aux-ayto-mad:1-a6d9ce8634','aux-ayto-mad',1,'Según el art. 50, los poderes públicos garantizarán a los ciudadanos durante la tercera edad:','["La gratuidad del transporte público", "Una pensión igual para todos, independientemente de lo cotizado", "Pensiones adecuadas y periódicamente actualizadas"]'::jsonb,2,'Art. 50 CE','Garantizarán, mediante pensiones adecuadas y periódicamente actualizadas, la suficiencia económica en la tercera edad.',null),
('aux-ayto-mad:1-d8e8c93954','aux-ayto-mad',1,'El sistema tributario, según el art. 31.1, debe ser justo, inspirado en la igualdad y la progresividad, y:','["Exclusivamente estatal", "En ningún caso tendrá alcance confiscatorio", "Igual para todos los contribuyentes, con independencia de su renta"]'::jsonb,1,'Art. 31.1 CE','Se basa en la igualdad y la progresividad, y en ningún caso tendrá alcance confiscatorio.',null),
('aux-ayto-mad:1-4048766e7f','aux-ayto-mad',1,'Se reconoce a las personas físicas y jurídicas la libertad de:','["Fijar libremente los planes de estudio oficiales", "Creación de centros docentes, dentro del respeto a los principios constitucionales", "Creación de centros docentes, que solo podrán impartir enseñanzas no regladas"]'::jsonb,1,'Art. 27.6 CE','Se reconoce la libertad de creación de centros docentes, dentro del respeto a los principios constitucionales.',null),
('aux-ayto-mad:1-905af9f9c0','aux-ayto-mad',1,'Según el art. 9.2, corresponde a los poderes públicos:','["Limitar la participación política", "Promover las condiciones para que la libertad y la igualdad sean reales y efectivas, y remover los obstáculos que lo impidan", "Garantizar la igualdad de resultados económicos entre todos los ciudadanos y territorios, y suprimir las diferencias de renta que lo impidan"]'::jsonb,1,'Art. 9.2 CE','Deben promover esas condiciones, remover los obstáculos y facilitar la participación de todos los ciudadanos.',null),
('aux-ayto-mad:1-b6a08e2a97','aux-ayto-mad',1,'¿Qué regula la ley según el art. 30.2?','["La participación de España en organizaciones internacionales de defensa", "Las obligaciones militares de los españoles y la objeción de conciencia", "El servicio militar obligatorio, su duración y las causas de exención"]'::jsonb,1,'Art. 30.2 CE','La ley fijará las obligaciones militares de los españoles y regulará la objeción de conciencia.',null),
('aux-ayto-mad:1-d418cf1cb0','aux-ayto-mad',1,'Según el art. 42, el Estado orientará su política hacia el retorno de:','["Los trabajadores españoles en el extranjero", "Los funcionarios destinados en el exterior", "Los capitales invertidos fuera"]'::jsonb,0,'Art. 42 CE','El Estado velará por los derechos de los trabajadores españoles en el extranjero y orientará su política hacia su retorno.',null),
('aux-ayto-mad:1-bbacab7d4d','aux-ayto-mad',1,'El contenido del derecho de propiedad y de herencia lo delimita:','["Su función social, de acuerdo con las leyes", "Las ordenanzas fiscales de cada municipio", "La voluntad del propietario"]'::jsonb,0,'Art. 33.2 CE','La función social de estos derechos delimitará su contenido, de acuerdo con las leyes.',null),
('aux-ayto-mad:1-27bb7687b4','aux-ayto-mad',1,'Según el art. 23.1, los ciudadanos participan en los asuntos públicos:','["Directamente o por medio de representantes libremente elegidos en elecciones periódicas por sufragio universal", "Directamente o por medio de representantes elegidos en elecciones periódicas por sufragio censitario", "Por medio de representantes designados por las Cortes Generales y por los Parlamentos autonómicos"]'::jsonb,0,'Art. 23.1 CE','Participan directamente o por medio de representantes libremente elegidos en elecciones periódicas por sufragio universal.',null),
('aux-ayto-mad:1-370b32da86','aux-ayto-mad',1,'Las bases de la organización militar se regulan mediante:','["Una ley ordinaria", "Una ley orgánica", "Una orden del Ministerio de Defensa"]'::jsonb,1,'Art. 8.2 CE','Una ley orgánica regulará las bases de la organización militar.',null),
('aux-ayto-mad:1-d16b73b933','aux-ayto-mad',1,'Según el art. 51.1, los poderes públicos garantizarán la defensa de:','["Los consumidores y usuarios, protegiendo mediante procedimientos eficaces su seguridad, salud e intereses económicos", "Los comerciantes minoristas exclusivamente", "Las empresas frente a la competencia desleal y los productores frente a las importaciones de terceros países"]'::jsonb,0,'Art. 51.1 CE','Garantizarán la defensa de los consumidores y usuarios mediante procedimientos eficaces.',null),
('aux-ayto-mad:1-21aba73e70','aux-ayto-mad',1,'En el control y la gestión de los centros sostenidos con fondos públicos intervienen:','["Los profesores, los padres y, en su caso, los alumnos", "Solo el director del centro y el titular, en el caso de los centros concertados", "Los sindicatos más representativos y la Administración"]'::jsonb,0,'Art. 27.7 CE','Intervienen los profesores, los padres y, en su caso, los alumnos, en los términos que la ley establezca.',null),
('aux-ayto-mad:1-0b58913945','aux-ayto-mad',1,'Según el art. 19, los españoles tienen derecho a:','["Cambiar de nacionalidad libremente y entrar y salir de España sin requisitos", "Elegir libremente su residencia y a circular por el territorio nacional", "Viajar sin pasaporte a cualquier país y residir en el extranjero sin requisitos"]'::jsonb,1,'Art. 19 CE','Tienen derecho a elegir libremente su residencia y a circular por el territorio nacional.',null),
('aux-ayto-mad:1-b79c0feb4b','aux-ayto-mad',1,'¿Quiénes pueden ejercer la iniciativa de reforma constitucional?','["Gobierno, Congreso, Senado, Asambleas de las CCAA y la iniciativa popular con 500.000 firmas", "Gobierno, Congreso, Senado y Asambleas de las CCAA, pero no la iniciativa popular", "Gobierno, Congreso y Senado, y también la iniciativa popular respaldada por un millón de firmas"]'::jsonb,1,'Art. 166 CE','La iniciativa se ejerce según los apartados 1 y 2 del art. 87, que no incluyen la iniciativa popular del art. 87.3.',null),
('aux-ayto-mad:1-d1f8d2052f','aux-ayto-mad',1,'Por el procedimiento ordinario del art. 167 CE, los proyectos de reforma constitucional deben aprobarse por:','["Mayoría de tres quintos de cada una de las Cámaras", "Mayoría de dos tercios de cada una de las Cámaras", "Mayoría de tres quintos del Congreso y absoluta del Senado"]'::jsonb,0,'Art. 167.1 CE','Si no hay acuerdo entre las Cámaras, se intenta obtenerlo mediante una comisión de composición paritaria de Diputados y Senadores.',null),
('aux-ayto-mad:1-ae34cdba4c','aux-ayto-mad',1,'Si no se logra la aprobación de una reforma por el procedimiento del art. 167.1 CE, el Congreso podrá aprobarla:','["Por mayoría de dos tercios, siempre que el texto hubiera obtenido la mayoría absoluta del Senado", "Por mayoría de tres quintos, siempre que el texto se someta después a referéndum obligatorio de todos los españoles", "Por mayoría absoluta, siempre que el texto hubiera obtenido la mayoría de tres quintos del Senado"]'::jsonb,0,'Art. 167.2 CE','Así lo prevé el art. 167.2 CE.',null),
('aux-ayto-mad:1-2a265e5ec4','aux-ayto-mad',1,'En la reforma por el procedimiento del art. 167 CE, el referéndum es:','["Facultativo: se celebra si lo solicita, en los 15 días siguientes a la aprobación, una décima parte de los miembros de cualquiera de las Cámaras", "Obligatorio en todo caso, y se celebra en los 15 días siguientes a la aprobación del texto por las Cortes Generales, con independencia de lo que soliciten las Cámaras", "Facultativo: se celebra si lo solicita, en los 15 días siguientes, la mayoría absoluta del Congreso"]'::jsonb,0,'Art. 167.3 CE','En el procedimiento agravado del art. 168, en cambio, el referéndum es obligatorio.',null),
('aux-ayto-mad:1-b8fc57e319','aux-ayto-mad',1,'La revisión total de la Constitución o una parcial que afecte al Título preliminar, a la Sección 1.ª del Capítulo II del Título I o al Título II exige:','["Aprobación por mayoría absoluta de cada Cámara, disolución inmediata de las Cortes y referéndum obligatorio", "Aprobación por dos tercios de cada Cámara, disolución inmediata de las Cortes, ratificación por las nuevas Cámaras y referéndum", "Aprobación por dos tercios del Congreso y mayoría absoluta del Senado, y después referéndum obligatorio"]'::jsonb,1,'Art. 168 CE','Las nuevas Cámaras deben ratificar la decisión, estudiar el nuevo texto y aprobarlo por mayoría de dos tercios de ambas.',null),
('aux-ayto-mad:1-6ecc0664d7','aux-ayto-mad',1,'¿Cuándo no podrá iniciarse la reforma constitucional?','["En tiempo de guerra o de vigencia de alguno de los estados del art. 116", "Durante el último año de la legislatura o mientras haya un proceso electoral convocado", "Mientras esté pendiente de resolver un recurso de inconstitucionalidad contra una ley orgánica"]'::jsonb,0,'Art. 169 CE','Los estados del art. 116 son los de alarma, excepción y sitio.',null),
('aux-ayto-mad:1-81a47f308b','aux-ayto-mad',1,'Según el art. 54 CE, el Defensor del Pueblo es:','["Alto comisionado de las Cortes Generales, designado por estas para la defensa de los derechos del Título I", "Alto comisionado de las Cortes Generales, designado por el Rey a propuesta del Congreso", "Órgano del Poder Judicial encargado de la defensa de los derechos fundamentales"]'::jsonb,0,'Art. 54 CE','Puede supervisar la actividad de la Administración, dando cuenta a las Cortes Generales.',null),
('aux-ayto-mad:1-91090c828d','aux-ayto-mad',1,'La reforma del artículo 49 de la Constitución aprobada en 2024 sustituyó la expresión «disminuidos físicos, sensoriales y psíquicos» por:','["Personas con diversidad funcional", "Personas con capacidades diferentes", "Personas con discapacidad"]'::jsonb,2,'Art. 49 CE (reforma de 17 de febrero de 2024)','Fue la tercera reforma de la Constitución, tras las de 1992 (art. 13.2) y 2011 (art. 135).',null),
('aux-ayto-mad:2-604380f875','aux-ayto-mad',2,'Según el art. 152.1 CE, el Tribunal Superior de Justicia:','["Depende del Gobierno autonómico, que nombra a su Presidente", "Es el órgano de gobierno de los jueces de la Comunidad Autónoma", "Culmina la organización judicial en el ámbito territorial de la Comunidad Autónoma, sin perjuicio de la jurisdicción del Tribunal Supremo"]'::jsonb,2,'Art. 152.1 CE','Las sucesivas instancias procesales se agotan ante órganos radicados en el mismo territorio de la CA en que esté el órgano competente en primera instancia.',null),
('aux-ayto-mad:2-b2b813b4d1','aux-ayto-mad',2,'Según el artículo 137 de la Constitución, el Estado se organiza territorialmente en:','["Municipios, islas y Comunidades Autónomas", "Provincias, Comunidades Autónomas y Ciudades Autónomas", "Municipios, provincias y Comunidades Autónomas"]'::jsonb,2,'Art. 137 CE','Todas estas entidades gozan de autonomía para la gestión de sus respectivos intereses.',null),
('aux-ayto-mad:2-aef8afe342','aux-ayto-mad',2,'Según la Constitución, el gobierno y la administración de los municipios corresponde a:','["Sus respectivos Ayuntamientos, integrados por los Alcaldes y los Concejales", "Los Delegados del Gobierno, con la colaboración de los Concejales elegidos por los vecinos", "Las Diputaciones Provinciales, a través de sus delegaciones comarcales en cada municipio"]'::jsonb,0,'Art. 140 CE','Los Concejales son elegidos por los vecinos por sufragio universal, igual, libre, directo y secreto.',null),
('aux-ayto-mad:2-168fbe0745','aux-ayto-mad',2,'Según el artículo 140 de la Constitución, los Alcaldes serán elegidos:','["Por el Pleno de la Diputación Provincial", "Por el Delegado del Gobierno, a propuesta de los Concejales", "Por los Concejales o por los vecinos"]'::jsonb,2,'Art. 140 CE','La ley regula las condiciones en las que procede el régimen del concejo abierto.',null),
('aux-ayto-mad:2-4cd26132ea','aux-ayto-mad',2,'¿Qué tipo de ley es necesaria para alterar los límites provinciales?','["Una ley de la Comunidad Autónoma afectada, previo informe estatal", "Una ley orgánica aprobada por las Cortes Generales", "Una ley ordinaria de las Cortes Generales, por mayoría absoluta"]'::jsonb,1,'Art. 141.1 CE','La provincia es una entidad local con personalidad jurídica propia, agrupación de municipios y división territorial para el cumplimiento de las actividades del Estado.',null),
('aux-ayto-mad:2-47070daf94','aux-ayto-mad',2,'En los archipiélagos, las islas tendrán además su administración propia en forma de:','["Mancomunidades insulares", "Diputaciones forales", "Cabildos o Consejos"]'::jsonb,2,'Art. 141.4 CE','Los Cabildos existen en Canarias y los Consejos Insulares en Baleares.',null),
('aux-ayto-mad:2-7bc468b7be','aux-ayto-mad',2,'Según el artículo 143.2 de la Constitución, la iniciativa del proceso autonómico corresponde a todas las Diputaciones interesadas o al órgano interinsular correspondiente y a:','["La mitad de los municipios de cada provincia, sea cual sea su población", "Las dos terceras partes de los municipios cuya población represente, al menos, la mayoría del censo electoral de cada provincia o isla", "Los municipios que representen un tercio del censo electoral de la región histórica"]'::jsonb,1,'Art. 143.2 CE','Los requisitos deben cumplirse en el plazo de seis meses desde el primer acuerdo de una Corporación local.',null),
('aux-ayto-mad:2-aec88f0685','aux-ayto-mad',2,'¿En qué plazo deben cumplirse los requisitos de iniciativa autonómica del artículo 143.2 de la Constitución?','["Un año desde la publicación de la Constitución en el Boletín Oficial del Estado y en los diarios oficiales", "Dos años desde que se constituya la asamblea de parlamentarios", "Seis meses desde el primer acuerdo adoptado por alguna de las Corporaciones locales interesadas"]'::jsonb,2,'Art. 143.2 CE','Si la iniciativa no prospera, solo puede reiterarse pasados cinco años.',null),
('aux-ayto-mad:2-97650b28ae','aux-ayto-mad',2,'Si la iniciativa autonómica del artículo 143 no prospera:','["Solo podrá reiterarse pasados cinco años", "No podrá volver a plantearse nunca", "Podrá reiterarse pasados tres años"]'::jsonb,0,'Art. 143.3 CE','Así lo dispone el artículo 143.3 de la Constitución.',null),
('aux-ayto-mad:2-6b70a12d98','aux-ayto-mad',2,'Según el artículo 144 de la Constitución, las Cortes Generales, mediante ley orgánica y por motivos de interés nacional, podrán:','["Disolver una Comunidad Autónoma que incumpla de forma grave las obligaciones que le imponen la Constitución u otras leyes", "Integrar dos Comunidades Autónomas limítrofes en una sola, sin necesidad de referéndum", "Autorizar la constitución de una Comunidad Autónoma cuyo ámbito territorial no supere el de una provincia y no reúna las condiciones del artículo 143.1"]'::jsonb,2,'Art. 144 a) CE','El artículo 155 no permite disolver Comunidades, sino adoptar medidas para obligarlas a cumplir.',null),
('aux-ayto-mad:2-578cf0a5ee','aux-ayto-mad',2,'¿Qué prohíbe el artículo 145 de la Constitución?','["Los convenios entre Comunidades Autónomas", "Que una Comunidad Autónoma tenga varias provincias", "La federación de Comunidades Autónomas"]'::jsonb,2,'Art. 145.1 CE','Sí se permiten convenios entre Comunidades para la gestión de servicios propios, que deben comunicarse a las Cortes Generales.',null),
('aux-ayto-mad:2-a1a3f5553b','aux-ayto-mad',2,'Los acuerdos de cooperación entre Comunidades Autónomas, distintos de los convenios para gestión de servicios propios, requieren:','["El dictamen del Consejo de Estado", "La autorización de las Cortes Generales", "Una simple comunicación a las Cortes Generales"]'::jsonb,1,'Art. 145.2 CE','Los convenios para la gestión y prestación de servicios propios solo deben comunicarse a las Cortes.',null),
('aux-ayto-mad:2-dc4a9d2f56','aux-ayto-mad',2,'Según el artículo 147 de la Constitución, el Estatuto de Autonomía es:','["Un tratado entre el Estado y la Comunidad Autónoma", "La norma institucional básica de cada Comunidad Autónoma", "Un reglamento del Gobierno de la Nación para cada Comunidad"]'::jsonb,1,'Art. 147.1 CE','El Estado lo reconoce y ampara como parte integrante de su ordenamiento jurídico.',null),
('aux-ayto-mad:2-b0a31954c1','aux-ayto-mad',2,'¿Cuál de los siguientes contenidos NO exige la Constitución que figure en los Estatutos de Autonomía?','["La lengua cooficial de la Comunidad", "La delimitación de su territorio", "Las competencias asumidas"]'::jsonb,0,'Art. 147.2 CE','El art. 147.2 exige denominación, delimitación del territorio, denominación, organización y sede de las instituciones propias y competencias asumidas.',null),
('aux-ayto-mad:2-1225cf18a1','aux-ayto-mad',2,'La reforma de los Estatutos de Autonomía requiere, en todo caso:','["Un referéndum en todo el territorio nacional", "La aprobación por las Cortes Generales mediante ley orgánica", "La aprobación por el Gobierno de la Nación mediante real decreto"]'::jsonb,1,'Art. 147.3 CE','El procedimiento lo fija cada Estatuto.',null),
('aux-ayto-mad:2-6cddd03be1','aux-ayto-mad',2,'Según el artículo 148.2 de la Constitución, las Comunidades Autónomas podían ampliar sucesivamente sus competencias transcurridos:','["Cinco años", "Dos años", "Diez años"]'::jsonb,0,'Art. 148.2 CE','Mediante la reforma de sus Estatutos, dentro del marco del artículo 149.',null),
('aux-ayto-mad:2-919efdc726','aux-ayto-mad',2,'Las materias no atribuidas expresamente al Estado por la Constitución podrán corresponder a las Comunidades Autónomas:','["En virtud de sus respectivos Estatutos", "Por acuerdo de la Conferencia de Presidentes", "Siempre, de forma automática"]'::jsonb,0,'Art. 149.3 CE','Las no asumidas por los Estatutos corresponden al Estado, cuyo derecho es en todo caso supletorio del de las Comunidades Autónomas.',null),
('aux-ayto-mad:2-7376a00e68','aux-ayto-mad',2,'En caso de conflicto, las normas del Estado prevalecen sobre las de las Comunidades Autónomas:','["Solo si la norma estatal es posterior", "Solo en materia de relaciones internacionales", "En todo lo que no esté atribuido a la exclusiva competencia de estas"]'::jsonb,2,'Art. 149.3 CE','Es la cláusula de prevalencia del derecho estatal.',null),
('aux-ayto-mad:2-8c3860d05b','aux-ayto-mad',2,'¿Qué leyes permiten a las Cortes atribuir a las Comunidades Autónomas la facultad de dictar normas legislativas en el marco de principios, bases y directrices fijados por una ley estatal?','["Las leyes marco", "Las leyes de bases", "Las leyes de armonización"]'::jsonb,0,'Art. 150.1 CE','Las leyes de bases sirven para delegar en el Gobierno la elaboración de textos articulados.',null),
('aux-ayto-mad:2-4ae9a8eba5','aux-ayto-mad',2,'La transferencia o delegación a las Comunidades Autónomas de facultades de titularidad estatal se hace mediante:','["Real decreto legislativo", "Ley ordinaria", "Ley orgánica"]'::jsonb,2,'Art. 150.2 CE','Debe prever la correspondiente transferencia de medios financieros y las formas de control que se reserve el Estado.',null),
('aux-ayto-mad:2-07134ade62','aux-ayto-mad',2,'¿Quién aprecia la necesidad de dictar una ley de armonización?','["El Gobierno de la Nación, previo dictamen favorable del Consejo de Estado", "Las Cortes Generales, por mayoría absoluta de cada Cámara", "El Tribunal Constitucional, a instancia del Gobierno o de cincuenta diputados"]'::jsonb,1,'Art. 150.3 CE','Lo exige el interés general, aunque se trate de materias atribuidas a la competencia de las Comunidades Autónomas.',null),
('aux-ayto-mad:2-3a2cbf751b','aux-ayto-mad',2,'En la vía del artículo 151 de la Constitución, la iniciativa autonómica debía ratificarse mediante referéndum por:','["El voto afirmativo de la mayoría absoluta de los electores de cada provincia", "La mayoría absoluta de los votos válidos emitidos en el conjunto de toda España", "La mayoría simple de los votos emitidos en el conjunto del territorio de la futura Comunidad"]'::jsonb,0,'Art. 151.1 CE','Además, la iniciativa debía acordarse por las Diputaciones y por las tres cuartas partes de los municipios de cada provincia.',null),
('aux-ayto-mad:2-547938a8bf','aux-ayto-mad',2,'Según el artículo 152 de la Constitución, el Presidente de la Comunidad Autónoma es:','["Elegido por el Senado entre los senadores de la Comunidad", "Elegido directamente por los ciudadanos de la Comunidad en las elecciones autonómicas y nombrado por el Rey", "Elegido por la Asamblea Legislativa de entre sus miembros y nombrado por el Rey"]'::jsonb,2,'Art. 152.1 CE','Dirige el Consejo de Gobierno y ostenta la suprema representación de la Comunidad y la ordinaria del Estado en ella.',null),
('aux-ayto-mad:2-ae14d24d4f','aux-ayto-mad',2,'El control económico y presupuestario de los órganos de las Comunidades Autónomas corresponde, según el artículo 153 de la Constitución, a:','["El Tribunal de Cuentas", "El Tribunal Constitucional", "La jurisdicción contencioso-administrativa"]'::jsonb,0,'Art. 153 d) CE','El TC controla las disposiciones con fuerza de ley y la jurisdicción contencioso-administrativa, la administración autónoma y sus reglamentos.',null),
('aux-ayto-mad:2-2058df9442','aux-ayto-mad',2,'¿Quién controla las funciones delegadas a las Comunidades Autónomas conforme al artículo 150.2 de la Constitución?','["El Tribunal Constitucional, previo recurso del Senado", "El Gobierno, previo dictamen del Consejo de Estado", "El Tribunal de Cuentas, previo informe de la Intervención General"]'::jsonb,1,'Art. 153 b) CE','Es una de las cuatro vías de control de la actividad autonómica que enumera el artículo 153.',null),
('aux-ayto-mad:2-47a92222a4','aux-ayto-mad',2,'Para aplicar las medidas del artículo 155 de la Constitución, el Gobierno necesita:','["La aprobación del Consejo de Estado y del Congreso", "Un dictamen favorable del Tribunal Constitucional", "Requerir previamente al Presidente de la Comunidad Autónoma y la aprobación de la mayoría absoluta del Senado"]'::jsonb,2,'Art. 155.1 CE','Se aplica si una Comunidad no cumple las obligaciones de la Constitución o las leyes o actúa contra el interés general de España.',null),
('aux-ayto-mad:2-c037f6d984','aux-ayto-mad',2,'¿Qué fondo prevé el artículo 158.2 de la Constitución para corregir desequilibrios económicos interterritoriales?','["El Fondo de Compensación", "El Fondo de Suficiencia Global", "El Fondo de Garantía de Servicios Públicos Fundamentales"]'::jsonb,0,'Art. 158.2 CE','Sus recursos se distribuyen por las Cortes Generales entre las Comunidades Autónomas y provincias.',null),
('aux-ayto-mad:2-a4eefe77ec','aux-ayto-mad',2,'Según la Constitución, los municipios, las provincias y las Comunidades Autónomas gozan de autonomía:','["Política y financiera ilimitada", "Legislativa y reglamentaria plena", "Para la gestión de sus respectivos intereses"]'::jsonb,2,'Art. 137 CE','Todas estas entidades gozan de autonomía para la gestión de sus respectivos intereses (art. 137 CE).',null),
('aux-ayto-mad:2-17535c1174','aux-ayto-mad',2,'Según el artículo 140 de la Constitución, el gobierno y la administración de los municipios corresponde a:','["Las Diputaciones provinciales, integradas por los diputados provinciales", "Los Alcaldes, elegidos siempre por los vecinos mediante sufragio directo", "Sus respectivos Ayuntamientos, integrados por los Alcaldes y los Concejales"]'::jsonb,2,'Art. 140 CE','El art. 140 CE atribuye el gobierno y la administración municipal a los Ayuntamientos, integrados por Alcaldes y Concejales, y garantiza la autonomía municipal y la personalidad jurídica plena.',null),
('aux-ayto-mad:2-9b6da87409','aux-ayto-mad',2,'Según la Constitución, los Concejales son elegidos por:','["El Pleno de la Diputación Provincial, por mayoría absoluta de sus miembros", "Los Alcaldes de la comarca, mediante sufragio indirecto y secreto", "Los vecinos del municipio mediante sufragio universal, igual, libre, directo y secreto"]'::jsonb,2,'Art. 140 CE','Según el art. 140 CE, los Concejales son elegidos por los vecinos mediante sufragio universal, igual, libre, directo y secreto, en la forma que establezca la ley.',null),
('aux-ayto-mad:2-07fa68f26d','aux-ayto-mad',2,'Según la Constitución, los Alcaldes serán elegidos:','["Siempre por los vecinos, mediante sufragio directo", "Por el Pleno de la Diputación Provincial", "Por los Concejales o por los vecinos"]'::jsonb,2,'Art. 140 CE','El art. 140 CE dice que los Alcaldes serán elegidos por los Concejales o por los vecinos.',null),
('aux-ayto-mad:2-61fde70498','aux-ayto-mad',2,'La Constitución prevé que la ley regule las condiciones en las que proceda el régimen de:','["Mancomunidad obligatoria", "Concejo abierto", "Tutela provincial"]'::jsonb,1,'Art. 140 CE','El art. 140 CE remite a la ley la regulación de las condiciones en que proceda el régimen del concejo abierto.',null),
('aux-ayto-mad:2-32fc74198c','aux-ayto-mad',2,'Según el artículo 141 de la Constitución, la provincia es:','["Una división administrativa de la Comunidad Autónoma, sin personalidad jurídica propia, para prestar sus servicios", "Una entidad territorial con autonomía legislativa en las materias que le atribuya su Estatuto", "Una entidad local con personalidad jurídica propia, determinada por la agrupación de municipios y división territorial para el cumplimiento de las actividades del Estado"]'::jsonb,2,'Art. 141.1 CE','El art. 141.1 CE la define como entidad local con personalidad jurídica propia, determinada por la agrupación de municipios y división territorial para el cumplimiento de las actividades del Estado.',null),
('aux-ayto-mad:2-3388062b6e','aux-ayto-mad',2,'Cualquier alteración de los límites provinciales habrá de ser aprobada por:','["El Gobierno mediante real decreto", "Las Cortes Generales mediante ley orgánica", "Las Asambleas Legislativas de las Comunidades Autónomas afectadas"]'::jsonb,1,'Art. 141.1 CE','Según el art. 141.1 CE, cualquier alteración de los límites provinciales habrá de ser aprobada por las Cortes Generales mediante ley orgánica.',null),
('aux-ayto-mad:2-6be4749128','aux-ayto-mad',2,'Según la Constitución, el gobierno y la administración autónoma de las provincias estarán encomendados a:','["Los Consejos de Gobierno de las Comunidades Autónomas", "Diputaciones u otras Corporaciones de carácter representativo", "Los Delegados del Gobierno y, en su caso, los Subdelegados del Gobierno en la provincia"]'::jsonb,1,'Art. 141.2 CE','El art. 141.2 CE encomienda el gobierno y la administración autónoma de las provincias a Diputaciones u otras Corporaciones de carácter representativo.',null),
('aux-ayto-mad:2-b7f29be81b','aux-ayto-mad',2,'La Constitución permite crear agrupaciones de municipios diferentes de la provincia:','["Sí, se podrán crear agrupaciones de municipios diferentes de la provincia", "Solo en los archipiélagos balear y canario", "No, la única agrupación de municipios es la provincia"]'::jsonb,0,'Art. 141.3 CE','Según el art. 141.3 CE, se podrán crear agrupaciones de municipios diferentes de la provincia.',null),
('aux-ayto-mad:2-8bb84d0ad0','aux-ayto-mad',2,'Según el artículo 142 de la Constitución, las Haciendas locales se nutrirán fundamentalmente de:','["Tributos propios y de participación en los del Estado y de las Comunidades Autónomas", "Las transferencias del Fondo de Compensación Interterritorial y de los fondos europeos", "Los precios públicos, las multas y las contribuciones especiales"]'::jsonb,0,'Art. 142 CE','El art. 142 CE dice que deberán disponer de medios suficientes y se nutrirán fundamentalmente de tributos propios y de participación en los del Estado y de las CCAA.',null),
('aux-ayto-mad:2-ea4467816e','aux-ayto-mad',2,'Según el artículo 142 de la Constitución, las Haciendas locales deberán disponer de los medios suficientes para:','["Garantizar el equilibrio económico entre las distintas partes del territorio", "Financiar todos los servicios públicos que presten en su territorio", "El desempeño de las funciones que la ley atribuye a las Corporaciones respectivas"]'::jsonb,2,'Art. 142 CE','El art. 142 CE recoge el principio de suficiencia financiera para el desempeño de las funciones atribuidas por la ley.',null),
('aux-ayto-mad:2-888f097807','aux-ayto-mad',2,'Según la Constitución, ¿qué tienen los municipios?','["Soberanía para la gestión de sus intereses", "Personalidad jurídica plena", "Potestad legislativa en las materias de su competencia"]'::jsonb,1,'Art. 140 CE','El art. 140 CE garantiza la autonomía de los municipios, que gozan de personalidad jurídica plena.',null),
('aux-ayto-mad:2-84345015e1','aux-ayto-mad',2,'Según la Ley 7/1985, la provincia y, en su caso, la isla gozan:','["De autonomía legislativa limitada a su territorio y a sus competencias", "De idéntica autonomía que los municipios para la gestión de los intereses respectivos", "De una autonomía subordinada a la de los municipios que la integran"]'::jsonb,1,'Art. 1.2 LBRL','Según el art. 1.2 LBRL, la provincia y, en su caso, la isla gozan asimismo de idéntica autonomía para la gestión de los intereses respectivos.',null),
('aux-ayto-mad:2-e1c8c65ad0','aux-ayto-mad',2,'Para la efectividad de la autonomía local, la legislación sectorial debe atribuir competencias a las entidades locales de conformidad con los principios de:','["Descentralización, proximidad, eficacia y eficiencia", "Solidaridad, igualdad y unidad", "Jerarquía, competencia y coordinación"]'::jsonb,0,'Art. 2.1 LBRL','El art. 2.1 LBRL cita los principios de descentralización, proximidad, eficacia y eficiencia, con sujeción a la normativa de estabilidad presupuestaria.',null),
('aux-ayto-mad:2-ec0f953c80','aux-ayto-mad',2,'Según la Ley 7/1985, las relaciones recíprocas entre la Administración Local y las demás Administraciones públicas se ajustarán a los deberes de:','["Información mutua, colaboración, coordinación y respeto a los ámbitos competenciales respectivos", "Subordinación de las entidades locales a las Comunidades Autónomas en todo caso", "Jerarquía, tutela financiera y control de oportunidad de sus acuerdos"]'::jsonb,0,'Art. 10.1 LBRL','El art. 10.1 LBRL establece estos deberes y el art. 10.4 añade que la coordinación es compatible con la autonomía local.',null),
('aux-ayto-mad:2-61fe9f2682','aux-ayto-mad',2,'Según la Ley 7/1985, las funciones de coordinación de las entidades locales por otras Administraciones:','["Serán compatibles con la autonomía de las Entidades Locales", "Solo pueden ejercerlas los Tribunales", "Suspenden la autonomía local mientras duren"]'::jsonb,0,'Art. 10.4 LBRL','Según el art. 10.4 LBRL, las funciones de coordinación serán compatibles con la autonomía de las Entidades Locales.',null),
('aux-ayto-mad:2-011e959541','aux-ayto-mad',2,'Las entidades locales territoriales están legitimadas para impugnar las disposiciones y actos del Estado y de las Comunidades Autónomas que:','["Lesionen su autonomía tal como la garantizan la Constitución y la Ley 7/1985", "Reduzcan su financiación respecto al año anterior sin la memoria económica exigida", "Afecten a cualquier vecino del municipio, aunque no lesionen la autonomía local"]'::jsonb,0,'Art. 63.2 LBRL','El art. 63.2 LBRL las legitima en todo caso para impugnar las disposiciones y actos que lesionen su autonomía.',null),
('aux-ayto-mad:2-a33f237cdd','aux-ayto-mad',2,'Las entidades locales pueden promover ante el Tribunal Constitucional la impugnación de leyes del Estado o de las Comunidades Autónomas que lesionen la autonomía local mediante:','["El recurso de amparo ante el Tribunal Constitucional, interpuesto por el Alcalde", "El conflicto en defensa de la autonomía local, en los términos del artículo 119 de la Ley 7/1985", "La cuestión de inconstitucionalidad planteada por el Pleno"]'::jsonb,1,'Art. 63.3 LBRL','El art. 63.3 LBRL las legitima para promover la impugnación ante el TC de esas leyes, en los términos del art. 119 (conflicto en defensa de la autonomía local).',null),
('aux-ayto-mad:2-c37a64a4dc','aux-ayto-mad',2,'El Consejo de Ministros puede disolver los órganos de las corporaciones locales por gestión gravemente dañosa para los intereses generales, mediante real decreto y previo acuerdo favorable de:','["El Congreso de los Diputados", "La Asamblea Legislativa de la Comunidad Autónoma", "El Senado"]'::jsonb,2,'Art. 61.1 LBRL','El art. 61.1 LBRL exige real decreto del Consejo de Ministros y, en todo caso, previo acuerdo favorable del Senado.',null),
('aux-ayto-mad:3-f03b03ad3b','aux-ayto-mad',3,'Los actos administrativos producen efectos:','["Desde la fecha en que se dicten, salvo que en ellos se disponga otra cosa", "Desde su notificación, sin que puedan disponer otra cosa", "Desde que son firmes en vía administrativa, salvo que se disponga otra cosa"]'::jsonb,0,'Art. 39.1 Ley 39/2015','Se presumen válidos y producen efectos desde la fecha en que se dicten, salvo que en ellos se disponga otra cosa.',null),
('aux-ayto-mad:3-168927eb67','aux-ayto-mad',3,'¿En qué plazo debe cursarse la notificación de un acto administrativo?','["15 días hábiles desde que el acto se dictó o se firmó", "10 días desde que el acto se dictó", "1 mes desde que el acto se dictó"]'::jsonb,1,'Art. 40.2 Ley 39/2015','La notificación debe cursarse dentro de los diez días siguientes a la fecha en que el acto se dictó.',null),
('aux-ayto-mad:3-82756fb435','aux-ayto-mad',3,'Una notificación electrónica se entiende rechazada cuando pasan sin que se acceda a su contenido:','["5 días hábiles desde su puesta a disposición", "15 días naturales desde su puesta a disposición", "10 días naturales desde su puesta a disposición"]'::jsonb,2,'Art. 43.2 Ley 39/2015','Se entiende rechazada cuando han pasado diez días naturales desde su puesta a disposición sin acceder a su contenido.',null),
('aux-ayto-mad:3-a6d3ae69a2','aux-ayto-mad',3,'Cuando la notificación ha resultado infructuosa, se hace por medio de un anuncio en:','["El tablón de la sede del órgano", "El boletín oficial de la provincia", "El Boletín Oficial del Estado"]'::jsonb,2,'Art. 44 Ley 39/2015','La notificación se hace por medio de un anuncio publicado en el BOE.',null),
('aux-ayto-mad:3-c205ac9335','aux-ayto-mad',3,'¿Cuál de estos actos es nulo de pleno derecho?','["El dictado por un órgano manifiestamente incompetente por razón de la materia o del territorio", "El que incurre en desviación de poder o en cualquier otra infracción del ordenamiento jurídico aplicable", "El que tiene un defecto de forma que no causa indefensión al interesado ni impide que el acto alcance su fin"]'::jsonb,0,'Art. 47.1 b) Ley 39/2015','La incompetencia manifiesta por razón de la materia o del territorio es causa de nulidad de pleno derecho. Las otras opciones son, como mucho, causas de anulabilidad.',null),
('aux-ayto-mad:3-d66cda3281','aux-ayto-mad',3,'Un acto dictado prescindiendo total y absolutamente del procedimiento legalmente establecido es:','["Una irregularidad no invalidante", "Válido si se convalida", "Nulo de pleno derecho"]'::jsonb,2,'Art. 47.1 e) Ley 39/2015','Es una de las causas de nulidad de pleno derecho.',null),
('aux-ayto-mad:3-1a94e38234','aux-ayto-mad',3,'Los actos que incurren en desviación de poder son:','["Válidos", "Anulables", "Nulos de pleno derecho"]'::jsonb,1,'Art. 48.1 Ley 39/2015','Son anulables los actos que incurren en cualquier infracción del ordenamiento, incluso la desviación de poder.',null),
('aux-ayto-mad:3-b88906dab0','aux-ayto-mad',3,'El defecto de forma determina la anulabilidad del acto:','["Nunca, porque el defecto de forma solo genera irregularidades no invalidantes", "Solo cuando el acto carece de los requisitos formales indispensables o da lugar a indefensión", "Siempre, aunque el acto alcance su fin, reúna los requisitos formales indispensables y no cause indefensión"]'::jsonb,1,'Art. 48.2 Ley 39/2015','Solo cuando el acto carece de los requisitos formales indispensables para alcanzar su fin o da lugar a indefensión.',null),
('aux-ayto-mad:3-075bd6592c','aux-ayto-mad',3,'La realización de actuaciones fuera del tiempo establecido implica la anulabilidad del acto:','["Siempre, cualquiera que sea la naturaleza del término o plazo", "Solo si el retraso supera el doble del plazo establecido para la actuación", "Solo cuando lo imponga la naturaleza del término o plazo"]'::jsonb,2,'Art. 48.3 Ley 39/2015','Solo implica anulabilidad cuando así lo imponga la naturaleza del término o plazo.',null),
('aux-ayto-mad:3-b26fc882e5','aux-ayto-mad',3,'¿Qué actos puede convalidar la Administración subsanando los vicios de que adolezcan?','["Los nulos de pleno derecho", "Los anulables", "Cualquier acto"]'::jsonb,1,'Art. 52.1 Ley 39/2015','La Administración puede convalidar los actos anulables, subsanando los vicios de que adolezcan.',null),
('aux-ayto-mad:3-48cbe0ea4b','aux-ayto-mad',3,'¿Cuál es el plazo máximo para resolver que puede fijar una norma reguladora de un procedimiento?','["1 año, salvo que una norma con rango de ley o el Derecho de la Unión Europea establezcan uno menor", "6 meses, salvo que una norma con rango de ley establezca uno mayor o lo prevea el Derecho de la UE", "3 meses, salvo que una norma con rango de ley establezca uno mayor"]'::jsonb,1,'Art. 21.2 Ley 39/2015','El plazo no puede exceder de seis meses, salvo que una norma con rango de ley establezca uno mayor o lo prevea el Derecho de la UE.',null),
('aux-ayto-mad:3-a9f81e97e1','aux-ayto-mad',3,'Si la norma reguladora de un procedimiento no fija plazo máximo para resolver, este será de:','["3 meses", "1 mes", "10 días"]'::jsonb,0,'Art. 21.3 Ley 39/2015','Cuando las normas no fijen el plazo máximo, será de tres meses.',null),
('aux-ayto-mad:3-9a694079bb','aux-ayto-mad',3,'En los procedimientos iniciados a solicitud del interesado, el silencio administrativo es, como regla general:','["Desestimatorio, salvo las excepciones legales", "Estimatorio, salvo las excepciones legales", "Desestimatorio, sin excepción"]'::jsonb,1,'Art. 24.1 Ley 39/2015','El vencimiento del plazo sin resolución expresa legitima al interesado para entender estimada su solicitud, salvo las excepciones previstas.',null),
('aux-ayto-mad:3-9bcfb8da59','aux-ayto-mad',3,'En los procedimientos iniciados de oficio en los que la Administración ejerce potestades sancionadoras o de intervención, el vencimiento del plazo sin resolución produce:','["La desestimación por silencio", "La estimación por silencio", "La caducidad"]'::jsonb,2,'Art. 25.1 b) Ley 39/2015','En esos procedimientos se produce la caducidad.',null),
('aux-ayto-mad:3-6784d76fda','aux-ayto-mad',3,'Cuando los plazos se señalan por días, se entiende que son:','["Naturales, salvo que una ley disponga otro cómputo", "Hábiles, excluyéndose los sábados, los domingos y los festivos", "Hábiles, excluyéndose solo los domingos y los declarados festivos"]'::jsonb,1,'Art. 30.2 Ley 39/2015','Los plazos por días son hábiles y se excluyen sábados, domingos y festivos.',null),
('aux-ayto-mad:3-56593c39b4','aux-ayto-mad',3,'Los plazos señalados por horas no pueden tener una duración superior a:','["72 horas", "24 horas", "48 horas"]'::jsonb,1,'Art. 30.1 Ley 39/2015','Son hábiles todas las horas de un día hábil y no pueden superar 24 horas; si no, se expresan en días.',null),
('aux-ayto-mad:3-5df790e24b','aux-ayto-mad',3,'Los plazos fijados en meses o años se computan:','["Por días hábiles, a partir del día siguiente a la notificación o publicación", "A partir del día siguiente a la notificación o publicación del acto", "Por días naturales, desde el mismo día de la notificación o publicación"]'::jsonb,1,'Art. 30.4 Ley 39/2015','Se computan a partir del día siguiente a la notificación o publicación, de fecha a fecha.',null),
('aux-ayto-mad:3-3c7c09bfbf','aux-ayto-mad',3,'La ampliación de los plazos establecidos no puede exceder de:','["Tres meses", "La mitad de los mismos", "El doble de los mismos"]'::jsonb,1,'Art. 32.1 Ley 39/2015','La ampliación no puede exceder de la mitad del plazo.',null),
('aux-ayto-mad:3-f589b61b04','aux-ayto-mad',3,'¿Qué sistema de identificación electrónica menciona expresamente el art. 9.2 de la Ley 39/2015?','["El número de teléfono móvil asociado a una cuenta bancaria del interesado", "Los certificados electrónicos cualificados de firma electrónica", "La huella dactilar registrada en el DNI"]'::jsonb,1,'Art. 9.2 Ley 39/2015','Menciona los certificados cualificados de firma, los de sello electrónico y cualquier otro sistema que las Administraciones consideren válido.',null),
('aux-ayto-mad:3-bfa343ab92','aux-ayto-mad',3,'Con carácter general, para realizar cualquier actuación en el procedimiento, los interesados deben:','["Presentarse en persona", "Acreditar previamente su identidad", "Aportar un certificado de antecedentes"]'::jsonb,1,'Art. 11.1 Ley 39/2015','Basta con que acrediten previamente su identidad.',null),
('aux-ayto-mad:3-a1cadbcaca','aux-ayto-mad',3,'¿Para cuál de estas actuaciones exige la Ley 39/2015 el uso de la firma?','["Pedir información general", "Consultar el estado de un expediente", "Interponer recursos"]'::jsonb,2,'Art. 11.2 Ley 39/2015','Se exige firma para formular solicitudes, presentar declaraciones responsables o comunicaciones, interponer recursos, desistir y renunciar a derechos.',null),
('aux-ayto-mad:3-37c68f84ee','aux-ayto-mad',3,'¿Cuál es uno de los requisitos de validez de los documentos administrativos electrónicos?','["Incorporar la fecha de emisión y estar disponibles en papel, con la firma original del titular del órgano", "Llevar firma manuscrita escaneada y el sello del órgano emisor en cada página", "Incorporar la fecha de emisión y los metadatos mínimos exigidos"]'::jsonb,2,'Art. 26.2 Ley 39/2015','Deben contener información en soporte electrónico, datos de identificación, firmas electrónicas, fecha de emisión y metadatos mínimos.',null),
('aux-ayto-mad:3-1c95d2fc57','aux-ayto-mad',3,'Los interesados, ¿están obligados a aportar documentos elaborados por cualquier Administración?','["Solo en papel", "No", "Sí, si son originales"]'::jsonb,1,'Art. 28.2 Ley 39/2015','No están obligados a aportar documentos elaborados por cualquier Administración; esta puede consultarlos salvo oposición del interesado.',null),
('aux-ayto-mad:3-0a8d2b1c71','aux-ayto-mad',3,'La presentación de un documento en el registro electrónico en un día inhábil se entiende realizada:','["En la primera hora del primer día hábil siguiente", "En la última hora del último día hábil anterior al de la presentación", "El mismo día inhábil, a la hora en que se presentó"]'::jsonb,0,'Art. 31.2 b) Ley 39/2015','Se entiende realizada en la primera hora del primer día hábil siguiente, salvo que una norma permita la recepción en día inhábil.',null),
('aux-ayto-mad:3-d3397762ba','aux-ayto-mad',3,'Cuando en una solicitud figuren varios interesados, las actuaciones se efectuarán:','["Con todos a la vez, de forma obligatoria y en igualdad de condiciones, salvo renuncia expresa de alguno de ellos por escrito", "Con el representante o interesado que expresamente hayan señalado y, en su defecto, con el que figure en primer término", "Con el de mayor edad, salvo que todos hayan señalado expresamente a otro, y en su defecto con todos los interesados a la vez"]'::jsonb,1,'Art. 7 Ley 39/2015','En defecto de designación, con el que figure en primer término.',null),
('aux-ayto-mad:3-d092663f29','aux-ayto-mad',3,'La estimación por silencio administrativo tiene a todos los efectos la consideración de:','["Propuesta de resolución vinculante para el órgano competente", "Mera ficción sin efectos hasta que se dicte resolución expresa", "Acto administrativo finalizador del procedimiento"]'::jsonb,2,'Art. 24.2 Ley 39/2015','La desestimación por silencio solo permite interponer el recurso que proceda.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
