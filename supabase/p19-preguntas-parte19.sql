-- Banco de preguntas, parte 19 de 21. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('admin-navarra:28-f30dc486c0','admin-navarra',28,'Una impresora se revisa cada 6 días y otra cada 9. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["12 días", "18 días", "54 días", "24 días"]'::jsonb,1,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 9: m.c.m.(6, 9) = 18.',null),
('admin-navarra:28-1a6c59d50e','admin-navarra',28,'Una impresora se revisa cada 8 días y otra cada 12. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["96 días", "32 días", "16 días", "24 días"]'::jsonb,3,'Psicotécnicos','Es el mínimo común múltiplo de 8 y 12: m.c.m.(8, 12) = 24.',null),
('admin-navarra:28-b924022777','admin-navarra',28,'Un coche recorre 60 km a una velocidad constante de 80 km/h. ¿Cuánto tarda?','["1 h", "1 h 15 min", "45 min", "30 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 60 / 80 = 0,75 h, es decir, 45 min.',null),
('admin-navarra:28-f15fee686b','admin-navarra',28,'Un coche recorre 175 km a una velocidad constante de 100 km/h. ¿Cuánto tarda?','["2 h", "1 h 30 min", "1 h 45 min", "2 h 15 min"]'::jsonb,2,'Psicotécnicos','Tiempo = distancia / velocidad = 175 / 100 = 1,75 h, es decir, 1 h 45 min.',null),
('admin-navarra:28-491a1fdd9b','admin-navarra',28,'Un coche recorre 105 km a una velocidad constante de 60 km/h. ¿Cuánto tarda?','["2 h 15 min", "1 h 45 min", "2 h", "1 h 30 min"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 105 / 60 = 1,75 h, es decir, 1 h 45 min.',null),
('admin-navarra:28-5609cf50e7','admin-navarra',28,'Un coche recorre 150 km a una velocidad constante de 120 km/h. ¿Cuánto tarda?','["1 h 45 min", "1 h 15 min", "1 h 30 min", "1 h"]'::jsonb,1,'Psicotécnicos','Tiempo = distancia / velocidad = 150 / 120 = 1,25 h, es decir, 1 h 15 min.',null),
('admin-navarra:28-7cb0cc87e1','admin-navarra',28,'Señala el sinónimo de «acatar»:','["Acotar", "Obedecer", "Atacar", "Rechazar"]'::jsonb,1,'Psicotécnicos','Acatar es aceptar con sumisión una norma u orden: obedecer.',null),
('admin-navarra:28-06037ee12b','admin-navarra',28,'Señala el sinónimo de «ratificar»:','["Revocar", "Rectificar", "Retirar", "Confirmar"]'::jsonb,3,'Psicotécnicos','Ratificar es aprobar o confirmar algo que se ha dicho o hecho. Rectificar es corregir.',null),
('admin-navarra:28-05e487a35a','admin-navarra',28,'Señala el sinónimo de «derogar»:','["Delegar", "Prorrogar", "Abolir", "Promulgar"]'::jsonb,2,'Psicotécnicos','Derogar es dejar sin efecto una norma: abolir, anular.',null),
('admin-navarra:28-7ac93b853b','admin-navarra',28,'Señala el sinónimo de «potestativo»:','["Obligatorio", "Facultativo", "Poderoso", "Preceptivo"]'::jsonb,1,'Psicotécnicos','Potestativo es lo que no es obligatorio, sino que depende de la voluntad: facultativo.',null),
('admin-navarra:28-fc81c9e72f','admin-navarra',28,'Señala el sinónimo de «preceptivo»:','["Perceptivo", "Obligatorio", "Preventivo", "Opcional"]'::jsonb,1,'Psicotécnicos','Preceptivo es lo ordenado por un precepto: obligatorio.',null),
('admin-navarra:28-da835ccdf7','admin-navarra',28,'Señala el sinónimo de «sucinto»:','["Breve", "Extenso", "Sugerente", "Confuso"]'::jsonb,0,'Psicotécnicos','Sucinto es breve, compendioso.',null),
('admin-navarra:28-e8f1b2ffae','admin-navarra',28,'Señala el sinónimo de «inocuo»:','["Inofensivo", "Nocivo", "Inútil", "Inicuo"]'::jsonb,0,'Psicotécnicos','Inocuo es lo que no hace daño. Inicuo significa injusto.',null),
('admin-navarra:28-6a8fa6c855','admin-navarra',28,'Señala el sinónimo de «vetusto»:','["Vistoso", "Robusto", "Antiguo", "Moderno"]'::jsonb,2,'Psicotécnicos','Vetusto es muy antiguo o de mucha edad.',null),
('admin-navarra:28-c81ea0a4f0','admin-navarra',28,'Señala el sinónimo de «óbice»:','["Obstáculo", "Ayuda", "Motivo", "Óbolo"]'::jsonb,0,'Psicotécnicos','Óbice es un obstáculo o impedimento («no es óbice para…»).',null),
('admin-navarra:28-b8dbd7aebd','admin-navarra',28,'Señala el sinónimo de «nimio»:','["Insignificante", "Nítido", "Numeroso", "Esencial"]'::jsonb,0,'Psicotécnicos','Nimio es lo pequeño o sin importancia.',null),
('admin-navarra:28-814fec1d93','admin-navarra',28,'Señala el sinónimo de «recabar»:','["Terminar", "Recalcar", "Rechazar", "Solicitar"]'::jsonb,3,'Psicotécnicos','Recabar es pedir o reclamar algo, o conseguirlo a base de pedirlo («recabar información»).',null),
('admin-navarra:28-f0f0a85758','admin-navarra',28,'Señala el sinónimo de «proscribir»:','["Proponer", "Permitir", "Prohibir", "Prescribir"]'::jsonb,2,'Psicotécnicos','Proscribir es prohibir o excluir. Prescribir es ordenar o recetar.',null),
('admin-navarra:28-3132179464','admin-navarra',28,'Señala el sinónimo de «incoar»:','["Incluir", "Concluir", "Inculcar", "Iniciar"]'::jsonb,3,'Psicotécnicos','Incoar es comenzar algo, sobre todo un proceso o expediente.',null),
('admin-navarra:28-f46997a0ee','admin-navarra',28,'Señala el sinónimo de «avenencia»:','["Disputa", "Avenida", "Acuerdo", "Llegada"]'::jsonb,2,'Psicotécnicos','Avenencia es convenio o conformidad entre partes.',null),
('admin-navarra:28-f443020315','admin-navarra',28,'Señala el sinónimo de «somero»:','["Sombrío", "Profundo", "Severo", "Superficial"]'::jsonb,3,'Psicotécnicos','Somero es ligero, superficial, hecho sin detenimiento.',null),
('admin-navarra:28-1bdd8ca549','admin-navarra',28,'Señala el sinónimo de «baladí»:','["Grave", "Trivial", "Vistoso", "Importante"]'::jsonb,1,'Psicotécnicos','Baladí es lo de poca importancia.',null),
('admin-navarra:28-5035d9dc4c','admin-navarra',28,'Señala el sinónimo de «pertinaz»:','["Pertinente", "Breve", "Dócil", "Obstinado"]'::jsonb,3,'Psicotécnicos','Pertinaz es obstinado o terco, y también muy duradero («sequía pertinaz»).',null),
('admin-navarra:28-f3c9675a2c','admin-navarra',28,'Señala el sinónimo de «conculcar»:','["Conciliar", "Respetar", "Inculcar", "Vulnerar"]'::jsonb,3,'Psicotécnicos','Conculcar es quebrantar una ley o un derecho.',null),
('admin-navarra:28-3193f3acfe','admin-navarra',28,'Señala el antónimo de «exiguo»:','["Escaso", "Mínimo", "Reducido", "Copioso"]'::jsonb,3,'Psicotécnicos','Exiguo es escaso; su contrario es copioso o abundante.',null),
('admin-navarra:28-acd474563b','admin-navarra',28,'Señala el antónimo de «prolífico»:','["Fértil", "Productivo", "Fecundo", "Estéril"]'::jsonb,3,'Psicotécnicos','Prolífico es lo que produce mucho; las otras tres son sinónimos.',null),
('admin-navarra:28-608d6ddbbd','admin-navarra',28,'Señala el antónimo de «diligente»:','["Negligente", "Esmerado", "Cuidadoso", "Solícito"]'::jsonb,0,'Psicotécnicos','Diligente es cuidadoso y activo; su contrario es negligente.',null),
('admin-navarra:28-d8c7fff512','admin-navarra',28,'Señala el antónimo de «locuaz»:','["Charlatán", "Hablador", "Parlanchín", "Taciturno"]'::jsonb,3,'Psicotécnicos','Locuaz es quien habla mucho; taciturno, quien habla poco.',null),
('admin-navarra:28-971217c5a6','admin-navarra',28,'Señala el antónimo de «benévolo»:','["Malévolo", "Bondadoso", "Indulgente", "Clemente"]'::jsonb,0,'Psicotécnicos','Benévolo es quien tiene buena voluntad; su contrario es malévolo.',null),
('admin-navarra:28-8d6b06fa8f','admin-navarra',28,'Señala el antónimo de «perenne»:','["Duradero", "Caduco", "Permanente", "Perpetuo"]'::jsonb,1,'Psicotécnicos','Perenne es lo que dura siempre; caduco, lo que se acaba o pierde vigencia.',null),
('admin-navarra:28-a3b048c753','admin-navarra',28,'Señala el antónimo de «verosímil»:','["Increíble", "Probable", "Plausible", "Creíble"]'::jsonb,0,'Psicotécnicos','Verosímil es lo que parece verdadero y es creíble.',null),
('admin-navarra:28-ebc23cc3de','admin-navarra',28,'Señala el antónimo de «afable»:','["Arisco", "Simpático", "Cordial", "Amable"]'::jsonb,0,'Psicotécnicos','Afable es agradable en el trato; arisco, áspero e intratable.',null),
('admin-navarra:28-05daa47a19','admin-navarra',28,'Señala el antónimo de «tácito»:','["Expreso", "Implícito", "Sobreentendido", "Callado"]'::jsonb,0,'Psicotécnicos','Tácito es lo que no se dice pero se supone; su contrario es expreso.',null),
('admin-navarra:28-4a45afc2fd','admin-navarra',28,'Señala el antónimo de «promulgar»:','["Proclamar", "Publicar", "Sancionar", "Derogar"]'::jsonb,3,'Psicotécnicos','Promulgar una ley es publicarla solemnemente; derogarla es dejarla sin efecto.',null),
('admin-navarra:28-c6edc46931','admin-navarra',28,'Pez es a agua como ave es a:','["Árbol", "Aire", "Pluma", "Nido"]'::jsonb,1,'Psicotécnicos','El pez se mueve en el agua; el ave, en el aire.',null),
('admin-navarra:28-ff34c9d683','admin-navarra',28,'Médico es a hospital como maestro es a:','["Pizarra", "Escuela", "Lección", "Alumno"]'::jsonb,1,'Psicotécnicos','Es la relación entre la profesión y su lugar de trabajo.',null),
('admin-navarra:28-e943fe5bf6','admin-navarra',28,'Alcalde es a ayuntamiento como presidente autonómico es a:','["Senado", "Diputación provincial", "Comunidad autónoma", "Municipio"]'::jsonb,2,'Psicotécnicos','Cada uno preside el gobierno de su territorio.',null),
('admin-navarra:28-352a7863eb','admin-navarra',28,'Senado es a senador como Congreso es a:','["Procurador", "Ministro", "Diputado", "Concejal"]'::jsonb,2,'Psicotécnicos','Los miembros del Congreso de los Diputados son los diputados.',null),
('admin-navarra:28-47cf83e5ca','admin-navarra',28,'Hambre es a comer como sed es a:','["Vaso", "Sequía", "Beber", "Agua"]'::jsonb,2,'Psicotécnicos','Es la relación entre una necesidad y la acción que la satisface.',null),
('admin-navarra:28-259c031200','admin-navarra',28,'Grande es a enorme como pequeño es a:','["Bajo", "Corto", "Diminuto", "Mediano"]'::jsonb,2,'Psicotécnicos','Enorme es grado máximo de grande; diminuto, de pequeño.',null),
('admin-navarra:28-3f7597d7fb','admin-navarra',28,'Ley es a Cortes Generales como real decreto es a:','["Tribunal Supremo", "Defensor del Pueblo", "Senado", "Gobierno"]'::jsonb,3,'Psicotécnicos','Las leyes las aprueban las Cortes Generales; los reales decretos, el Gobierno.',null),
('admin-navarra:28-165f46be88','admin-navarra',28,'Kilogramo es a gramo como kilómetro es a:','["Litro", "Milla", "Centímetro", "Metro"]'::jsonb,3,'Psicotécnicos','Un kilogramo son 1.000 gramos y un kilómetro, 1.000 metros.',null),
('admin-navarra:28-c586c80aad','admin-navarra',28,'Escribir es a bolígrafo como cortar es a:','["Tela", "Tijeras", "Papel", "Recorte"]'::jsonb,1,'Psicotécnicos','Es la relación entre una acción y el instrumento con que se hace.',null),
('admin-navarra:28-6c919f9760','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Lunes, miércoles, enero, viernes, domingo','["Viernes", "Lunes", "Domingo", "Enero"]'::jsonb,3,'Psicotécnicos','Todas son días de la semana salvo enero, que es un mes.',null),
('admin-navarra:28-d855a74c6d','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Congreso, Senado, Tribunal Supremo, Cortes Generales','["Tribunal Supremo", "Congreso", "Cortes Generales", "Senado"]'::jsonb,0,'Psicotécnicos','Congreso y Senado forman las Cortes Generales (poder legislativo); el Tribunal Supremo es un órgano judicial.',null),
('admin-navarra:28-3426660099','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Word, Excel, PowerPoint, Windows, Outlook','["Excel", "PowerPoint", "Windows", "Outlook"]'::jsonb,2,'Psicotécnicos','Todas son aplicaciones de Microsoft 365 salvo Windows, que es el sistema operativo.',null),
('admin-navarra:28-ee96126921','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Cuadrado, triángulo, rombo, cubo, pentágono','["Cubo", "Pentágono", "Rombo", "Triángulo"]'::jsonb,0,'Psicotécnicos','Todas son figuras planas salvo el cubo, que es un cuerpo geométrico.',null),
('admin-navarra:28-9864a282f9','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Alcalde, concejal, pleno, senador, junta de gobierno local','["Senador", "Concejal", "Alcalde", "Pleno"]'::jsonb,0,'Psicotécnicos','Todos son órganos o cargos municipales salvo el senador.',null),
('admin-navarra:28-714de4222a','admin-navarra',28,'¿Qué palabra NO pertenece al grupo? Kilogramo, metro, litro, segundo, euro','["Litro", "Euro", "Segundo", "Metro"]'::jsonb,1,'Psicotécnicos','Todas son unidades de medida salvo el euro, que es una moneda.',null),
('admin-navarra:28-b3521fedb9','admin-navarra',28,'¿Qué palabra está bien escrita?','["Cónyugue", "Cónyujue", "Conyuge", "Cónyuge"]'::jsonb,3,'Psicotécnicos','Se escribe cónyuge: con g y sin u, y con tilde por ser esdrújula.',null),
('admin-navarra:28-0f5cfbb562','admin-navarra',28,'Indica la forma correcta:','["Espontánio", "Espontáneo", "Expontáneo", "Espontaneo"]'::jsonb,1,'Psicotécnicos','Espontáneo se escribe con s y lleva tilde (esdrújula).',null),
('admin-navarra:28-3df8adac1d','admin-navarra',28,'¿Qué forma verbal es correcta en «Hay que ___ los posibles retrasos»?','["Proveer", "Preber", "Prever", "Preveer"]'::jsonb,2,'Psicotécnicos','El verbo es prever (ver con anticipación), que se conjuga como ver. «Preveer» no existe; proveer significa suministrar.',null),
('admin-navarra:28-87964f7bce','admin-navarra',28,'Completa correctamente: «Espero que no ___ problemas con la solicitud»','["haya", "allá", "halla", "aya"]'::jsonb,0,'Psicotécnicos','Haya es el subjuntivo de haber. Halla es del verbo hallar (encontrar), aya es una cuidadora y allá un adverbio de lugar.',null),
('admin-navarra:28-66d48be967','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Qué código corresponde a un expediente de Licencias guardado en su estantería n.º 8?','["3-B-08", "A-2-08", "2-A-08", "2-B-08"]'::jsonb,2,'Psicotécnicos','Licencias está en la planta 2, pasillo A: 2-A-08.',null),
('admin-navarra:28-bd69621f9c','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿De qué materia es el expediente con código 3-A-16?','["Licencias", "Tributos", "Sanciones", "Becas"]'::jsonb,3,'Psicotécnicos','La planta 3, pasillo A, corresponde a Becas, que ocupa de la estantería 4 a la 19.',null),
('admin-navarra:28-bffc435739','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuántas estanterías ocupa Tributos?','["7", "5", "6", "8"]'::jsonb,2,'Psicotécnicos','De la 2 a la 7, ambas incluidas: 7 − 2 + 1 = 6.',null),
('admin-navarra:28-9be4784d0f','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Qué materia ocupa más estanterías?','["Becas", "Tributos", "Licencias", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Tributos 6, Licencias 9, Sanciones 7, Subvenciones 9, Becas 16, Nóminas 12.',null),
('admin-navarra:28-d72202d0d0','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuántas estanterías hay en total en la planta 2?','["24", "25", "26", "35"]'::jsonb,1,'Psicotécnicos','Se suman las estanterías de las materias de la planta 2: 9 + 7 + 9 = 25.',null),
('admin-navarra:28-ba64e4c78a','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Tributos | 1 | A | de la 2 a la 7
Licencias | 2 | A | de la 5 a la 13
Sanciones | 2 | B | de la 7 a la 13
Subvenciones | 2 | C | de la 4 a la 12
Becas | 3 | A | de la 4 a la 19
Nóminas | 3 | B | de la 1 a la 12
¿Cuál de estos códigos NO puede existir en el archivo?','["2-B-13", "2-A-08", "3-A-22", "3-B-04"]'::jsonb,2,'Psicotécnicos','En la planta 3, pasillo A (Becas), las estanterías solo llegan a la 19; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-0a5d72a1e9','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Qué código corresponde a un expediente de Urbanismo guardado en su estantería n.º 12?','["1-A-12", "1-B-12", "A-1-12", "2-B-12"]'::jsonb,0,'Psicotécnicos','Urbanismo está en la planta 1, pasillo A: 1-A-12.',null),
('admin-navarra:28-976b081c26','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿De qué materia es el expediente con código 1-C-11?','["Licencias", "Becas", "Nóminas", "Tributos"]'::jsonb,0,'Psicotécnicos','La planta 1, pasillo C, corresponde a Licencias, que ocupa de la estantería 6 a la 17.',null),
('admin-navarra:28-c832ecc5cc','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuántas estanterías ocupa Licencias?','["14", "13", "12", "11"]'::jsonb,2,'Psicotécnicos','De la 6 a la 17, ambas incluidas: 17 − 6 + 1 = 12.',null),
('admin-navarra:28-0b48d4007c','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Qué materia ocupa más estanterías?','["Urbanismo", "Becas", "Licencias", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Urbanismo 21, Nóminas 15, Licencias 12, Contratos 9, Becas 12, Tributos 18.',null),
('admin-navarra:28-b114efcbf0','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuántas estanterías hay en total en la planta 1?','["58", "49", "47", "48"]'::jsonb,3,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 21 + 15 + 12 = 48.',null),
('admin-navarra:28-18a1209ef0','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 7 a la 27
Nóminas | 1 | B | de la 2 a la 16
Licencias | 1 | C | de la 6 a la 17
Contratos | 2 | B | de la 9 a la 17
Becas | 3 | B | de la 9 a la 20
Tributos | 3 | C | de la 6 a la 23
¿Cuál de estos códigos NO puede existir en el archivo?','["3-C-25", "2-B-16", "3-C-07", "3-B-12"]'::jsonb,0,'Psicotécnicos','En la planta 3, pasillo C (Tributos), las estanterías solo llegan a la 23; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-a2f592cb53','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Qué código corresponde a un expediente de Patrimonio guardado en su estantería n.º 19?','["2-B-19", "B-2-19", "2-C-19", "1-B-19"]'::jsonb,0,'Psicotécnicos','Patrimonio está en la planta 2, pasillo B: 2-B-19.',null),
('admin-navarra:28-feaac4679e','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿De qué materia es el expediente con código 2-C-10?','["Patrimonio", "Becas", "Nóminas", "Urbanismo"]'::jsonb,1,'Psicotécnicos','La planta 2, pasillo C, corresponde a Becas, que ocupa de la estantería 5 a la 16.',null),
('admin-navarra:28-5473ff0be6','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuántas estanterías ocupa Becas?','["12", "13", "11", "14"]'::jsonb,0,'Psicotécnicos','De la 5 a la 16, ambas incluidas: 16 − 5 + 1 = 12.',null),
('admin-navarra:28-0ddc2c0742','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Qué materia ocupa más estanterías?','["Subvenciones", "Tributos", "Nóminas", "Patrimonio"]'::jsonb,3,'Psicotécnicos','Estanterías por materia: Nóminas 7, Subvenciones 13, Patrimonio 16, Becas 12, Urbanismo 7, Tributos 10.',null),
('admin-navarra:28-47c0d78c82','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuántas estanterías hay en total en la planta 3?','["27", "16", "17", "18"]'::jsonb,2,'Psicotécnicos','Se suman las estanterías de las materias de la planta 3: 7 + 10 = 17.',null),
('admin-navarra:28-cd02379c8b','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Nóminas | 1 | B | de la 3 a la 9
Subvenciones | 2 | A | de la 9 a la 21
Patrimonio | 2 | B | de la 8 a la 23
Becas | 2 | C | de la 5 a la 16
Urbanismo | 3 | A | de la 6 a la 12
Tributos | 3 | B | de la 1 a la 10
¿Cuál de estos códigos NO puede existir en el archivo?','["2-C-13", "2-B-15", "3-B-09", "3-B-11"]'::jsonb,3,'Psicotécnicos','En la planta 3, pasillo B (Tributos), las estanterías solo llegan a la 10; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-cc012cc8b2','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Qué código corresponde a un expediente de Patrimonio guardado en su estantería n.º 12?','["1-C-12", "3-A-12", "C-3-12", "3-C-12"]'::jsonb,3,'Psicotécnicos','Patrimonio está en la planta 3, pasillo C: 3-C-12.',null),
('admin-navarra:28-9625a876f5','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿De qué materia es el expediente con código 1-C-06?','["Urbanismo", "Licencias", "Sanciones", "Contratos"]'::jsonb,2,'Psicotécnicos','La planta 1, pasillo C, corresponde a Sanciones, que ocupa de la estantería 3 a la 13.',null),
('admin-navarra:28-3db7cc53f2','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuántas estanterías ocupa Patrimonio?','["17", "14", "15", "16"]'::jsonb,2,'Psicotécnicos','De la 4 a la 18, ambas incluidas: 18 − 4 + 1 = 15.',null),
('admin-navarra:28-6c35f04800','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Qué materia ocupa más estanterías?','["Becas", "Patrimonio", "Licencias", "Contratos"]'::jsonb,1,'Psicotécnicos','Estanterías por materia: Urbanismo 14, Sanciones 11, Licencias 6, Contratos 10, Becas 10, Patrimonio 15.',null),
('admin-navarra:28-8013c3195e','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuántas estanterías hay en total en la planta 1?','["25", "35", "26", "24"]'::jsonb,0,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 14 + 11 = 25.',null),
('admin-navarra:28-2f023cd1e9','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Urbanismo | 1 | A | de la 8 a la 21
Sanciones | 1 | C | de la 3 a la 13
Licencias | 2 | C | de la 4 a la 9
Contratos | 3 | A | de la 6 a la 15
Becas | 3 | B | de la 9 a la 18
Patrimonio | 3 | C | de la 4 a la 18
¿Cuál de estos códigos NO puede existir en el archivo?','["3-A-11", "2-C-04", "3-B-21", "1-A-16"]'::jsonb,2,'Psicotécnicos','En la planta 3, pasillo B (Becas), las estanterías solo llegan a la 18; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-52fb732c5f','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Qué código corresponde a un expediente de Subvenciones guardado en su estantería n.º 10?','["1-B-10", "A-1-10", "1-A-10", "3-C-10"]'::jsonb,2,'Psicotécnicos','Subvenciones está en la planta 1, pasillo A: 1-A-10.',null),
('admin-navarra:28-56ae39abbb','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿De qué materia es el expediente con código 1-C-07?','["Subvenciones", "Nóminas", "Sanciones", "Tributos"]'::jsonb,1,'Psicotécnicos','La planta 1, pasillo C, corresponde a Nóminas, que ocupa de la estantería 7 a la 12.',null),
('admin-navarra:28-eb932cdea8','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuántas estanterías ocupa Sanciones?','["14", "13", "15", "12"]'::jsonb,1,'Psicotécnicos','De la 8 a la 20, ambas incluidas: 20 − 8 + 1 = 13.',null),
('admin-navarra:28-e20fca7e85','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Qué materia ocupa más estanterías?','["Sanciones", "Personal", "Tributos", "Nóminas"]'::jsonb,1,'Psicotécnicos','Estanterías por materia: Subvenciones 7, Sanciones 13, Nóminas 6, Tributos 15, Becas 6, Personal 17.',null),
('admin-navarra:28-e15e0d78d4','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuántas estanterías hay en total en la planta 1?','["26", "36", "25", "27"]'::jsonb,0,'Psicotécnicos','Se suman las estanterías de las materias de la planta 1: 7 + 13 + 6 = 26.',null),
('admin-navarra:28-522b1a2eea','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 11
Sanciones | 1 | B | de la 8 a la 20
Nóminas | 1 | C | de la 7 a la 12
Tributos | 2 | A | de la 4 a la 18
Becas | 3 | A | de la 2 a la 7
Personal | 3 | C | de la 4 a la 20
¿Cuál de estos códigos NO puede existir en el archivo?','["2-A-06", "1-B-21", "3-A-04", "1-A-09"]'::jsonb,1,'Psicotécnicos','En la planta 1, pasillo B (Sanciones), las estanterías solo llegan a la 20; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-44e3f703eb','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Qué código corresponde a un expediente de Personal guardado en su estantería n.º 8?','["B-1-08", "1-A-08", "1-B-08", "1-C-08"]'::jsonb,2,'Psicotécnicos','Personal está en la planta 1, pasillo B: 1-B-08.',null),
('admin-navarra:28-aeeaa4ecb5','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿De qué materia es el expediente con código 2-B-13?','["Subvenciones", "Becas", "Nóminas", "Personal"]'::jsonb,2,'Psicotécnicos','La planta 2, pasillo B, corresponde a Nóminas, que ocupa de la estantería 8 a la 17.',null),
('admin-navarra:28-bafe8a9971','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuántas estanterías ocupa Tributos?','["13", "10", "12", "11"]'::jsonb,3,'Psicotécnicos','De la 5 a la 15, ambas incluidas: 15 − 5 + 1 = 11.',null),
('admin-navarra:28-0f984a335d','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Qué materia ocupa más estanterías?','["Tributos", "Becas", "Urbanismo", "Nóminas"]'::jsonb,0,'Psicotécnicos','Estanterías por materia: Subvenciones 10, Personal 9, Becas 9, Nóminas 10, Tributos 11, Urbanismo 10.',null),
('admin-navarra:28-10c03886f7','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuántas estanterías hay en total en la planta 3?','["20", "10", "9", "11"]'::jsonb,1,'Psicotécnicos','En la planta 3 solo hay una materia, con 10 estanterías.',null),
('admin-navarra:28-e38c660daf','admin-navarra',28,'Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería (por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).
Materia | Planta | Pasillo | Estanterías
Subvenciones | 1 | A | de la 5 a la 14
Personal | 1 | B | de la 1 a la 9
Becas | 1 | C | de la 4 a la 12
Nóminas | 2 | B | de la 8 a la 17
Tributos | 2 | C | de la 5 a la 15
Urbanismo | 3 | B | de la 5 a la 14
¿Cuál de estos códigos NO puede existir en el archivo?','["3-B-17", "3-B-11", "2-B-17", "1-B-01"]'::jsonb,0,'Psicotécnicos','En la planta 3, pasillo B (Urbanismo), las estanterías solo llegan a la 14; los demás códigos están dentro de los tramos de la tabla.',null),
('admin-navarra:28-69215b5e46','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Qué porcentaje de los inscritos aprobó Igualdad?','["75 %", "50 %", "60 %", "100 %"]'::jsonb,0,'Psicotécnicos','24 / 32 × 100 = 75 %.',null),
('admin-navarra:28-d54278c722','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Cuál es la media de inscritos por curso?','["22", "26", "24", "29"]'::jsonb,2,'Psicotécnicos','(32 + 32 + 12 + 24 + 20) / 5 = 120 / 5 = 24.',null),
('admin-navarra:28-3324004b9e','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Cuántas plazas quedaron libres en total?','["36", "46", "31", "41"]'::jsonb,0,'Psicotécnicos','Plazas menos inscritos en cada curso: 16 + 8 + 8 + 4 + 0 = 36.',null),
('admin-navarra:28-bb9d06c8a9','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Atención al público", "Inglés", "Administración electrónica", "Igualdad"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Excel avanzado, 67 %; Igualdad, 80 %; Inglés, 60 %; Atención al público, 86 %; Administración electrónica, 100 %.',null),
('admin-navarra:28-71d732a25e','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
Si cada aprobado de Inglés recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["90", "105", "180", "75"]'::jsonb,0,'Psicotécnicos','6 aprobados × 15 horas = 90 horas.',null),
('admin-navarra:28-9312320c0b','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 48 | 32 | 8 | 10
Igualdad | 40 | 32 | 24 | 40
Inglés | 20 | 12 | 6 | 15
Atención al público | 28 | 24 | 18 | 30
Administración electrónica | 20 | 20 | 5 | 10
¿En qué curso hubo más inscritos sin aprobar?','["Inglés", "Igualdad", "Excel avanzado", "Administración electrónica"]'::jsonb,2,'Psicotécnicos','Inscritos menos aprobados: Excel avanzado, 24; Igualdad, 8; Inglés, 6; Atención al público, 6; Administración electrónica, 15.',null),
('admin-navarra:28-59b5e837af','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Qué porcentaje de los inscritos aprobó Protección de datos?','["50 %", "75 %", "30 %", "25 %"]'::jsonb,0,'Psicotécnicos','6 / 12 × 100 = 50 %.',null),
('admin-navarra:28-f5b80c80e9','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Cuál es la media de inscritos por curso?','["26", "22", "24", "29"]'::jsonb,2,'Psicotécnicos','(16 + 44 + 36 + 12 + 12) / 5 = 120 / 5 = 24.',null),
('admin-navarra:28-788d0dde64','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Cuántas plazas quedaron libres en total?','["27", "42", "32", "37"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 8 + 4 + 0 + 8 + 12 = 32.',null),
('admin-navarra:28-a054c92069','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Atención al público", "Protección de datos", "Excel avanzado", "Contratación pública"]'::jsonb,0,'Psicotécnicos','Inscritos / plazas: Excel avanzado, 67 %; Contratación pública, 92 %; Atención al público, 100 %; Protección de datos, 60 %; Inglés, 50 %.',null),
('admin-navarra:28-a826696c16','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
Si cada aprobado de Contratación pública recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["300", "1.320", "360", "330"]'::jsonb,3,'Psicotécnicos','11 aprobados × 30 horas = 330 horas.',null),
('admin-navarra:28-bf4276117e','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Excel avanzado | 24 | 16 | 4 | 20
Contratación pública | 48 | 44 | 11 | 30
Atención al público | 36 | 36 | 9 | 40
Protección de datos | 20 | 12 | 6 | 25
Inglés | 24 | 12 | 3 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Excel avanzado", "Protección de datos", "Contratación pública", "Atención al público"]'::jsonb,2,'Psicotécnicos','Inscritos menos aprobados: Excel avanzado, 12; Contratación pública, 33; Atención al público, 27; Protección de datos, 6; Inglés, 9.',null),
('admin-navarra:28-65d80913fa','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Qué porcentaje de los inscritos aprobó Inglés?','["25 %", "40 %", "75 %", "50 %"]'::jsonb,3,'Psicotécnicos','8 / 16 × 100 = 50 %.',null),
('admin-navarra:28-08df29a637','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Cuál es la media de inscritos por curso?','["29", "22", "26", "24"]'::jsonb,3,'Psicotécnicos','(16 + 32 + 24 + 16 + 32) / 5 = 120 / 5 = 24.',null),
('admin-navarra:28-9d54f0a489','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Cuántas plazas quedaron libres en total?','["66", "61", "56", "51"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 12 + 4 + 8 + 16 + 16 = 56.',null),
('admin-navarra:28-71bfb45256','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Prevención de riesgos", "Contratación pública", "Administración electrónica", "Protección de datos"]'::jsonb,1,'Psicotécnicos','Inscritos / plazas: Prevención de riesgos, 57 %; Contratación pública, 89 %; Protección de datos, 75 %; Inglés, 50 %; Administración electrónica, 67 %.',null),
('admin-navarra:28-9eb271afd7','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
Si cada aprobado de Administración electrónica recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["240", "320", "230", "250"]'::jsonb,0,'Psicotécnicos','24 aprobados × 10 horas = 240 horas.',null),
('admin-navarra:28-b8c5ec1d2b','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Prevención de riesgos | 28 | 16 | 4 | 40
Contratación pública | 36 | 32 | 24 | 30
Protección de datos | 32 | 24 | 6 | 25
Inglés | 32 | 16 | 8 | 40
Administración electrónica | 48 | 32 | 24 | 10
¿En qué curso hubo más inscritos sin aprobar?','["Administración electrónica", "Protección de datos", "Inglés", "Prevención de riesgos"]'::jsonb,1,'Psicotécnicos','Inscritos menos aprobados: Prevención de riesgos, 12; Contratación pública, 8; Protección de datos, 18; Inglés, 8; Administración electrónica, 8.',null),
('admin-navarra:28-d30dd4bf48','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Qué porcentaje de los inscritos aprobó Administración electrónica?','["100 %", "75 %", "50 %", "65 %"]'::jsonb,1,'Psicotécnicos','18 / 24 × 100 = 75 %.',null),
('admin-navarra:28-bc69dbadc8','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Cuál es la media de inscritos por curso?','["20", "25", "18", "22"]'::jsonb,0,'Psicotécnicos','(12 + 24 + 16 + 20 + 28) / 5 = 100 / 5 = 20.',null),
('admin-navarra:28-3136ea2365','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Cuántas plazas quedaron libres en total?','["51", "61", "56", "66"]'::jsonb,2,'Psicotécnicos','Plazas menos inscritos en cada curso: 8 + 12 + 12 + 16 + 8 = 56.',null),
('admin-navarra:28-adc16d0b79','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Atención al público", "Administración electrónica", "Contratación pública"]'::jsonb,1,'Psicotécnicos','Inscritos / plazas: Contratación pública, 60 %; Administración electrónica, 67 %; Protección de datos, 57 %; Prevención de riesgos, 56 %; Atención al público, 78 %.',null),
('admin-navarra:28-364484a774','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
Si cada aprobado de Administración electrónica recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["450", "600", "425", "475"]'::jsonb,0,'Psicotécnicos','18 aprobados × 25 horas = 450 horas.',null),
('admin-navarra:28-be768c140c','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Contratación pública | 20 | 12 | 6 | 15
Administración electrónica | 36 | 24 | 18 | 25
Protección de datos | 28 | 16 | 8 | 30
Prevención de riesgos | 36 | 20 | 10 | 25
Atención al público | 36 | 28 | 21 | 30
¿En qué curso hubo más inscritos sin aprobar?','["Contratación pública", "Prevención de riesgos", "Administración electrónica", "Protección de datos"]'::jsonb,1,'Psicotécnicos','Inscritos menos aprobados: Contratación pública, 6; Administración electrónica, 6; Protección de datos, 8; Prevención de riesgos, 10; Atención al público, 7.',null),
('admin-navarra:28-4121e71d11','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Qué porcentaje de los inscritos aprobó Contratación pública?','["75 %", "50 %", "100 %", "60 %"]'::jsonb,0,'Psicotécnicos','12 / 16 × 100 = 75 %.',null),
('admin-navarra:28-0fb6c01a2d','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Cuál es la media de inscritos por curso?','["29", "22", "24", "26"]'::jsonb,2,'Psicotécnicos','(20 + 12 + 28 + 16 + 44) / 5 = 120 / 5 = 24.',null),
('admin-navarra:28-bc2c013177','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Cuántas plazas quedaron libres en total?','["32", "37", "27", "42"]'::jsonb,0,'Psicotécnicos','Plazas menos inscritos en cada curso: 16 + 8 + 0 + 4 + 4 = 32.',null),
('admin-navarra:28-f9167b94d6','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Inglés", "Contratación pública", "Protección de datos", "Atención al público"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Atención al público, 56 %; Excel avanzado, 60 %; Protección de datos, 100 %; Contratación pública, 80 %; Inglés, 92 %.',null),
('admin-navarra:28-60267bee62','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
Si cada aprobado de Inglés recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["840", "920", "1.760", "880"]'::jsonb,3,'Psicotécnicos','22 aprobados × 40 horas = 880 horas.',null),
('admin-navarra:28-1891225686','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Atención al público | 36 | 20 | 15 | 25
Excel avanzado | 20 | 12 | 6 | 40
Protección de datos | 28 | 28 | 21 | 30
Contratación pública | 20 | 16 | 12 | 15
Inglés | 48 | 44 | 22 | 40
¿En qué curso hubo más inscritos sin aprobar?','["Inglés", "Contratación pública", "Protección de datos", "Atención al público"]'::jsonb,0,'Psicotécnicos','Inscritos menos aprobados: Atención al público, 5; Excel avanzado, 6; Protección de datos, 7; Contratación pública, 4; Inglés, 22.',null),
('admin-navarra:28-558d5dede4','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Qué porcentaje de los inscritos aprobó Atención al público?','["100 %", "75 %", "50 %", "65 %"]'::jsonb,1,'Psicotécnicos','24 / 32 × 100 = 75 %.',null),
('admin-navarra:28-a9fdf1a5fb','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Cuál es la media de inscritos por curso?','["28", "26", "33", "30"]'::jsonb,0,'Psicotécnicos','(20 + 32 + 20 + 20 + 48) / 5 = 140 / 5 = 28.',null),
('admin-navarra:28-5dd6227e88','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Cuántas plazas quedaron libres en total?','["45", "35", "50", "40"]'::jsonb,3,'Psicotécnicos','Plazas menos inscritos en cada curso: 4 + 16 + 12 + 8 + 0 = 40.',null),
('admin-navarra:28-6b34607392','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Igualdad", "Atención al público", "Prevención de riesgos"]'::jsonb,0,'Psicotécnicos','Inscritos / plazas: Igualdad, 83 %; Atención al público, 67 %; Excel avanzado, 62 %; Prevención de riesgos, 71 %; Protección de datos, 100 %.',null),
('admin-navarra:28-3c3ba3bd3b','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
Si cada aprobado de Protección de datos recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["720", "525", "540", "555"]'::jsonb,2,'Psicotécnicos','36 aprobados × 15 horas = 540 horas.',null),
('admin-navarra:28-9b72cfa654','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Igualdad | 24 | 20 | 15 | 15
Atención al público | 48 | 32 | 24 | 15
Excel avanzado | 32 | 20 | 15 | 30
Prevención de riesgos | 28 | 20 | 15 | 30
Protección de datos | 48 | 48 | 36 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Igualdad", "Prevención de riesgos", "Excel avanzado", "Protección de datos"]'::jsonb,3,'Psicotécnicos','Inscritos menos aprobados: Igualdad, 5; Atención al público, 8; Excel avanzado, 5; Prevención de riesgos, 5; Protección de datos, 12.',null),
('admin-navarra:28-f750a03063','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Qué porcentaje de los inscritos aprobó Atención al público?','["25 %", "29 %", "75 %", "50 %"]'::jsonb,3,'Psicotécnicos','14 / 28 × 100 = 50 %.',null),
('admin-navarra:28-8238137668','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Cuál es la media de inscritos por curso?','["24", "29", "26", "22"]'::jsonb,0,'Psicotécnicos','(24 + 24 + 28 + 16 + 28) / 5 = 120 / 5 = 24.',null),
('admin-navarra:28-fc6bfaa8cf','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Cuántas plazas quedaron libres en total?','["59", "69", "74", "64"]'::jsonb,3,'Psicotécnicos','Plazas menos inscritos en cada curso: 24 + 8 + 20 + 8 + 4 = 64.',null),
('admin-navarra:28-dca0288512','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿Qué curso tiene el mayor porcentaje de plazas ocupadas?','["Protección de datos", "Administración electrónica", "Igualdad", "Prevención de riesgos"]'::jsonb,2,'Psicotécnicos','Inscritos / plazas: Protección de datos, 50 %; Administración electrónica, 75 %; Atención al público, 58 %; Prevención de riesgos, 67 %; Igualdad, 88 %.',null),
('admin-navarra:28-48bcb4bd76','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
Si cada aprobado de Atención al público recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?','["280", "560", "260", "300"]'::jsonb,0,'Psicotécnicos','14 aprobados × 20 horas = 280 horas.',null),
('admin-navarra:28-a217638bd3','admin-navarra',28,'La tabla recoge los cursos de formación de una consejería:
Curso | Plazas | Inscritos | Aprobados | Horas
Protección de datos | 48 | 24 | 18 | 40
Administración electrónica | 32 | 24 | 6 | 10
Atención al público | 48 | 28 | 14 | 20
Prevención de riesgos | 24 | 16 | 8 | 30
Igualdad | 32 | 28 | 21 | 15
¿En qué curso hubo más inscritos sin aprobar?','["Administración electrónica", "Igualdad", "Atención al público", "Prevención de riesgos"]'::jsonb,0,'Psicotécnicos','Inscritos menos aprobados: Protección de datos, 6; Administración electrónica, 18; Atención al público, 14; Prevención de riesgos, 8; Igualdad, 7.',null),
('admin-navarra:28-ee13dae364','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
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
('admin-navarra:28-fa9a3ba8de','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
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
('admin-navarra:28-7aebca0c25','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
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
('admin-navarra:28-a920717e11','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I1-25 es un documento de tipo informe de Educación de 2025).
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
('admin-navarra:28-1a8cf36ec5','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-d5d7cd9fd4','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-1c579b3ad1','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-4016bf8ff9','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-a0ccc204d0','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-3d1c291990','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, I6-25 es un documento de tipo informe de Sanidad de 2025).
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
('admin-navarra:28-ab244ebebf','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-31b0abba3d','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-c5bfc4df17','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-6c83b08dba','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-6c52c951af','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-4d35284474','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, F5-25 es un documento de tipo factura de Cultura de 2025).
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
('admin-navarra:28-b6b657d764','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
('admin-navarra:28-07566abdb3','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
('admin-navarra:28-8417ebae01','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
¿Qué clave lleva un contrato de Personal de 2024?','["F4-24", "C4-24", "C8-24", "C4-25"]'::jsonb,1,'Psicotécnicos','Contrato = C; Personal = 4; año 2024 → C4-24.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('admin-navarra:28-f580f618bc','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
¿A qué documento corresponde la clave F4-25?','["Factura de Sanidad de 2025", "Queja de Personal de 2025", "Factura de Personal de 2025", "Factura de Personal de 2024"]'::jsonb,2,'Psicotécnicos','F = factura; 4 = Personal; 25 = 2025.',null),
('admin-navarra:28-0bf77e7e52','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
('admin-navarra:28-0e4322664c','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, R8-25 es un documento de tipo resolución de Sanidad de 2025).
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
('admin-navarra:28-ba598035ce','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-4671ac0076','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-4929554b89','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-6d9378b231','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-bcb9bd4e19','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-b2c40aea91','admin-navarra',28,'En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, C6-25 es un documento de tipo contrato de Hacienda de 2025).
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
('admin-navarra:28-363c332c3a','admin-navarra',28,'Si 4x + 11 = 23, ¿cuánto vale x?','["2", "3", "5", "4"]'::jsonb,1,'Psicotécnicos','4x = 23 − 11 = 12; x = 12 / 4 = 3.',null),
('admin-navarra:28-b5210f546d','admin-navarra',28,'Si 2x + 15 = 37, ¿cuánto vale x?','["12", "11", "10", "26"]'::jsonb,1,'Psicotécnicos','2x = 37 − 15 = 22; x = 22 / 2 = 11.',null),
('admin-navarra:28-a438ceb428','admin-navarra',28,'Si 9x + 28 = 64, ¿cuánto vale x?','["3", "4", "5", "6"]'::jsonb,1,'Psicotécnicos','9x = 64 − 28 = 36; x = 36 / 9 = 4.',null),
('admin-navarra:28-b7c1a34cf6','admin-navarra',28,'Si 8x + 28 = 44, ¿cuánto vale x?','["2", "1", "9", "3"]'::jsonb,0,'Psicotécnicos','8x = 44 − 28 = 16; x = 16 / 8 = 2.',null),
('admin-navarra:28-7a72d83ff2','admin-navarra',28,'Si 7x + 30 = 121, ¿cuánto vale x?','["13", "14", "15", "12"]'::jsonb,0,'Psicotécnicos','7x = 121 − 30 = 91; x = 91 / 7 = 13.',null),
('admin-navarra:28-5b613b210e','admin-navarra',28,'Si 5x + 25 = 70, ¿cuánto vale x?','["10", "19", "8", "9"]'::jsonb,3,'Psicotécnicos','5x = 70 − 25 = 45; x = 45 / 5 = 9.',null),
('admin-navarra:28-ade2988676','admin-navarra',28,'Si 3x + 27 = 45, ¿cuánto vale x?','["24", "7", "5", "6"]'::jsonb,3,'Psicotécnicos','3x = 45 − 27 = 18; x = 18 / 3 = 6.',null),
('admin-navarra:28-c0287e18a6','admin-navarra',28,'Si 3x + 17 = 56, ¿cuánto vale x?','["12", "13", "14", "15"]'::jsonb,1,'Psicotécnicos','3x = 56 − 17 = 39; x = 39 / 3 = 13.',null),
('admin-navarra:28-d33d77a406','admin-navarra',28,'Si 8x + 25 = 41, ¿cuánto vale x?','["4", "3", "2", "1"]'::jsonb,2,'Psicotécnicos','8x = 41 − 25 = 16; x = 16 / 8 = 2.',null),
('admin-navarra:28-3a4e31d91b','admin-navarra',28,'Si 2x + 5 = 19, ¿cuánto vale x?','["6", "8", "12", "7"]'::jsonb,3,'Psicotécnicos','2x = 19 − 5 = 14; x = 14 / 2 = 7.',null),
('admin-navarra:28-d4eb24bc10','admin-navarra',28,'Si al cuádruple de un número se le suman 6, se obtiene 50. ¿Cuál es el número?','["11", "10", "12", "14"]'::jsonb,0,'Psicotécnicos','4x + 6 = 50 → 4x = 44 → x = 11.',null),
('admin-navarra:28-1e61986003','admin-navarra',28,'Si al triple de un número se le suman 20, se obtiene 107. ¿Cuál es el número?','["29", "35", "30", "28"]'::jsonb,0,'Psicotécnicos','3x + 20 = 107 → 3x = 87 → x = 29.',null),
('admin-navarra:28-5ff255e98e','admin-navarra',28,'Si al doble de un número se le suman 12, se obtiene 48. ¿Cuál es el número?','["17", "19", "18", "24"]'::jsonb,2,'Psicotécnicos','2x + 12 = 48 → 2x = 36 → x = 18.',null),
('admin-navarra:28-b159139648','admin-navarra',28,'Si al cuádruple de un número se le suman 15, se obtiene 59. ¿Cuál es el número?','["14", "11", "12", "10"]'::jsonb,1,'Psicotécnicos','4x + 15 = 59 → 4x = 44 → x = 11.',null),
('admin-navarra:28-46b0acae02','admin-navarra',28,'Si al triple de un número se le suman 3, se obtiene 111. ¿Cuál es el número?','["38", "36", "37", "35"]'::jsonb,1,'Psicotécnicos','3x + 3 = 111 → 3x = 108 → x = 36.',null),
('admin-navarra:28-621c9cda71','admin-navarra',28,'Si al cuádruple de un número se le suman 5, se obtiene 25. ¿Cuál es el número?','["7", "6", "4", "5"]'::jsonb,3,'Psicotécnicos','4x + 5 = 25 → 4x = 20 → x = 5.',null),
('admin-navarra:28-06d1a5e076','admin-navarra',28,'Si al doble de un número se le suman 6, se obtiene 82. ¿Cuál es el número?','["38", "41", "37", "39"]'::jsonb,0,'Psicotécnicos','2x + 6 = 82 → 2x = 76 → x = 38.',null),
('admin-navarra:28-7d40f8d96b','admin-navarra',28,'Si al cuádruple de un número se le suman 17, se obtiene 85. ¿Cuál es el número?','["21", "18", "17", "16"]'::jsonb,2,'Psicotécnicos','4x + 17 = 85 → 4x = 68 → x = 17.',null),
('admin-navarra:28-6dd59437e2','admin-navarra',28,'Entre dos departamentos tienen 45 empleados y uno tiene el doble que el otro. ¿Cuántos tiene el más grande?','["28", "32", "15", "30"]'::jsonb,3,'Psicotécnicos','x + 2x = 45 → x = 15; el grande tiene 2 × 15 = 30.',null),
('admin-navarra:28-7530cc81f5','admin-navarra',28,'Entre dos departamentos tienen 30 empleados y uno tiene el doble que el otro. ¿Cuántos tiene el más grande?','["22", "18", "10", "20"]'::jsonb,3,'Psicotécnicos','x + 2x = 30 → x = 10; el grande tiene 2 × 10 = 20.',null),
('admin-navarra:28-9961de94bc','admin-navarra',28,'Entre dos departamentos tienen 36 empleados y uno tiene el triple que el otro. ¿Cuántos tiene el más grande?','["9", "24", "27", "30"]'::jsonb,2,'Psicotécnicos','x + 3x = 36 → x = 9; el grande tiene 3 × 9 = 27.',null),
('admin-navarra:28-28096f583c','admin-navarra',28,'Calcula: (−4) × 9 − (−20) ÷ 2','["−24", "26", "−46", "−26"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−4) × 9 = −36; (−20) ÷ 2 = −10. Después: −36 − (−10) = −26.',null),
('admin-navarra:28-2937f6c4e1','admin-navarra',28,'Calcula: (−2) × 8 − (−6) ÷ 2','["−19", "−11", "13", "−13"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−2) × 8 = −16; (−6) ÷ 2 = −3. Después: −16 − (−3) = −13.',null),
('admin-navarra:28-0410f6ab20','admin-navarra',28,'Calcula: (−6) × 8 − (−12) ÷ (−2)','["−42", "−52", "−54", "54"]'::jsonb,2,'Psicotécnicos','Primero multiplicaciones y divisiones: (−6) × 8 = −48; (−12) ÷ (−2) = 6. Después: −48 − 6 = −54.',null),
('admin-navarra:28-ef4a05e204','admin-navarra',28,'Calcula: (−8) × 2 − (−18) ÷ 2','["−25", "−7", "7", "−5"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−8) × 2 = −16; (−18) ÷ 2 = −9. Después: −16 − (−9) = −7.',null),
('admin-navarra:28-187990693b','admin-navarra',28,'Calcula: (−5) × 6 − (−12) ÷ (−2)','["−24", "−36", "−34", "36"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−5) × 6 = −30; (−12) ÷ (−2) = 6. Después: −30 − 6 = −36.',null),
('admin-navarra:28-8278396d86','admin-navarra',28,'Calcula: (−8) × 5 − (−14) ÷ 2','["33", "−33", "−47", "−31"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−8) × 5 = −40; (−14) ÷ 2 = −7. Después: −40 − (−7) = −33.',null),
('admin-navarra:28-83fa8aaa1f','admin-navarra',28,'Calcula: (−2) × 4 − (−16) ÷ 2','["−16", "2", "−2", "0"]'::jsonb,3,'Psicotécnicos','Primero multiplicaciones y divisiones: (−2) × 4 = −8; (−16) ÷ 2 = −8. Después: −8 − (−8) = 0.',null),
('admin-navarra:28-290eec76c6','admin-navarra',28,'Calcula: (−5) × 8 − (−24) ÷ (−2)','["−28", "52", "−52", "−50"]'::jsonb,2,'Psicotécnicos','Primero multiplicaciones y divisiones: (−5) × 8 = −40; (−24) ÷ (−2) = 12. Después: −40 − 12 = −52.',null),
('admin-navarra:28-ad5bfe5747','admin-navarra',28,'Calcula: (−1) × 9 − (−6) ÷ 2','["−12", "−6", "6", "−4"]'::jsonb,1,'Psicotécnicos','Primero multiplicaciones y divisiones: (−1) × 9 = −9; (−6) ÷ 2 = −3. Después: −9 − (−3) = −6.',null),
('admin-navarra:28-86af07cda7','admin-navarra',28,'Calcula: (−3) × 9 − (−4) ÷ 2','["−25", "−29", "25", "−23"]'::jsonb,0,'Psicotécnicos','Primero multiplicaciones y divisiones: (−3) × 9 = −27; (−4) ÷ 2 = −2. Después: −27 − (−2) = −25.',null),
('admin-navarra:28-02db83ac8d','admin-navarra',28,'En una caja hay 2 bolas rojas, 5 azules y 2 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea roja?','["1/3", "7/9", "2/7", "2/9"]'::jsonb,3,'Psicotécnicos','Casos favorables / casos posibles = 2 / 9.',null),
('admin-navarra:28-595ca58776','admin-navarra',28,'En una caja hay 5 bolas rojas, 3 azules y 6 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["3/7", "3/4", "4/7", "1/2"]'::jsonb,0,'Psicotécnicos','Casos favorables / casos posibles = 6 / 14 = 3/7.',null),
('admin-navarra:28-c23a9cc16e','admin-navarra',28,'En una caja hay 1 bola roja, 8 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/4", "2/3", "1/3", "7/12"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 8 / 12 = 2/3.',null),
('admin-navarra:28-950072841b','admin-navarra',28,'En una caja hay 7 bolas rojas, 4 azules y 6 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["13/17", "4/13", "4/17", "5/17"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 4 / 17.',null),
('admin-navarra:28-18c022019e','admin-navarra',28,'En una caja hay 1 bola roja, 2 azules y 5 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/8", "1/4", "3/4", "1/3"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 2 / 8 = 1/4.',null),
('admin-navarra:28-58e6557fb5','admin-navarra',28,'En una caja hay 8 bolas rojas, 7 azules y 4 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["8/19", "7/12", "7/19", "12/19"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 7 / 19.',null),
('admin-navarra:28-13f223ec60','admin-navarra',28,'En una caja hay 5 bolas rojas, 7 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["4/15", "4/5", "1/5", "1/4"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 3 / 15 = 1/5.',null),
('admin-navarra:28-0715527827','admin-navarra',28,'En una caja hay 2 bolas rojas, 7 azules y 3 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea verde?','["3/4", "3/13", "1/4", "1/3"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 3 / 12 = 1/4.',null),
('admin-navarra:28-8628850884','admin-navarra',28,'En una caja hay 3 bolas rojas, 5 azules y 8 verdes. Si se saca una al azar, ¿qué probabilidad hay de que sea azul?','["3/8", "5/11", "5/16", "11/16"]'::jsonb,2,'Psicotécnicos','Casos favorables / casos posibles = 5 / 16.',null),
('admin-navarra:28-157a3c68c9','admin-navarra',28,'En una caja hay 2 bolas rojas, 5 azules y 1 bola verde. Si se saca una al azar, ¿qué probabilidad hay de que sea roja?','["3/4", "1/4", "3/8", "1/3"]'::jsonb,1,'Psicotécnicos','Casos favorables / casos posibles = 2 / 8 = 1/4.',null),
('admin-navarra:28-2d6eac6d37','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número par?','["3/5", "1/2", "1/6", "2/3"]'::jsonb,1,'Psicotécnicos','Hay 3 casos favorables (2, 4 y 6) de 6 posibles: 3/6 = 1/2.',null),
('admin-navarra:28-f9ac3f36ca','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número mayor que 4?','["2/3", "1/2", "1/3", "2/5"]'::jsonb,2,'Psicotécnicos','Hay 2 casos favorables (5 y 6) de 6 posibles: 2/6 = 1/3.',null),
('admin-navarra:28-d4ca43c6fa','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un múltiplo de 3?','["2/3", "2/5", "1/3", "1/2"]'::jsonb,2,'Psicotécnicos','Hay 2 casos favorables (3 y 6) de 6 posibles: 2/6 = 1/3.',null),
('admin-navarra:28-ea40548c6b','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número menor que 3?','["2/5", "1/3", "2/3", "1/2"]'::jsonb,1,'Psicotécnicos','Hay 2 casos favorables (1 y 2) de 6 posibles: 2/6 = 1/3.',null),
('admin-navarra:28-943910773e','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un número primo?','["3/5", "2/3", "1/6", "1/2"]'::jsonb,3,'Psicotécnicos','Hay 3 casos favorables (2, 3 y 5) de 6 posibles: 3/6 = 1/2.',null),
('admin-navarra:28-fa1bcf80a9','admin-navarra',28,'Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar un 6?','["1/3", "5/6", "1/5", "1/6"]'::jsonb,3,'Psicotécnicos','Hay 1 caso favorable (solo el 6) de 6 posibles: 1/6.',null),
('admin-navarra:28-a9c0958ed9','admin-navarra',28,'Se lanzan dos monedas. ¿Qué probabilidad hay de que salgan dos caras?','["3/4", "1/4", "1/2", "1/3"]'::jsonb,1,'Psicotécnicos','Los resultados posibles son cara-cara, cara-cruz, cruz-cara y cruz-cruz; solo uno es favorable: 1/4.',null),
('admin-navarra:28-0bd2d46770','admin-navarra',28,'Se lanzan dos monedas. ¿Qué probabilidad hay de que salga al menos una cruz?','["1/2", "2/3", "1/4", "3/4"]'::jsonb,3,'Psicotécnicos','De los 4 resultados (CC, CX, XC, XX) tres tienen alguna cruz: 3/4.',null),
('admin-navarra:28-729043a7de','admin-navarra',28,'Se lanzan dos dados. ¿Qué probabilidad hay de que sumen 7?','["1/6", "1/12", "1/9", "7/36"]'::jsonb,0,'Psicotécnicos','Hay 6 combinaciones que suman 7 (1-6, 2-5, 3-4, 4-3, 5-2, 6-1) de 36 posibles: 6/36 = 1/6.',null),
('admin-navarra:28-3a552bcfec','admin-navarra',28,'Clave:
I | G | H | D | T | L
0101 | 1011 | 0100 | 0111 | 0001 | 1110
Según la clave, ¿qué letras corresponden a la cadena 0001 0001 1110 0001?','["DTLT", "TDLT", "TLTT", "TTLT"]'::jsonb,3,'Psicotécnicos','Grupo a grupo: 0001=T, 0001=T, 1110=L, 0001=T → TTLT.',null),
('admin-navarra:28-8eff1ff69c','admin-navarra',28,'Clave:
D | M | A | J | C | T
1010 | 0010 | 1100 | 1110 | 0101 | 0100
Según la clave, ¿qué cadena corresponde a las letras TCTJ?','["0100 0101 0100 1010", "0101 0100 0100 1110", "0100 1010 0100 1110", "0100 0101 0100 1110"]'::jsonb,3,'Psicotécnicos','Letra a letra: T=0100, C=0101, T=0100, J=1110 → 0100 0101 0100 1110.',null),
('admin-navarra:28-5139b1aee8','admin-navarra',28,'Clave:
F | J | B | O | R | C
1100 | 1110 | 0000 | 0101 | 1011 | 0100
Según la clave, ¿qué letras corresponden a la cadena 0000 0100 0000 1100?','["BRBF", "BCBF", "BFBF", "BBCF"]'::jsonb,1,'Psicotécnicos','Grupo a grupo: 0000=B, 0100=C, 0000=B, 1100=F → BCBF.',null),
('admin-navarra:28-58fb76091c','admin-navarra',28,'Clave:
P | H | T | I | N | M
1100 | 0101 | 0011 | 1101 | 1000 | 1011
Según la clave, ¿qué cadena corresponde a las letras NNHP?','["1011 1000 0101 1100", "1000 1000 0101 1100", "1100 1000 0101 1000", "1000 1000 0101 0101"]'::jsonb,1,'Psicotécnicos','Letra a letra: N=1000, N=1000, H=0101, P=1100 → 1000 1000 0101 1100.',null),
('admin-navarra:28-8416af6b2c','admin-navarra',28,'Clave:
B | I | T | D | H | M
0111 | 0000 | 1001 | 1011 | 0101 | 1010
Según la clave, ¿qué letras corresponden a la cadena 1001 0101 0111 0000?','["THBI", "THTI", "TTBI", "THDI"]'::jsonb,0,'Psicotécnicos','Grupo a grupo: 1001=T, 0101=H, 0111=B, 0000=I → THBI.',null),
('admin-navarra:28-617787263f','admin-navarra',28,'Clave:
J | S | P | G | A | T
1101 | 1010 | 0001 | 0110 | 1100 | 0000
Según la clave, ¿qué cadena corresponde a las letras ASPS?','["1100 1010 0000 1010", "1100 1010 0001 1010", "0001 1010 0001 1010", "1100 0110 0001 1010"]'::jsonb,1,'Psicotécnicos','Letra a letra: A=1100, S=1010, P=0001, S=1010 → 1100 1010 0001 1010.',null),
('admin-navarra:28-6fa9bfe750','admin-navarra',28,'Clave:
B | L | H | M | T | F
0011 | 0110 | 0010 | 1000 | 0111 | 0001
Según la clave, ¿qué letras corresponden a la cadena 0011 0010 0011 0011?','["BHBB", "MHBB", "BBHB", "BHBH"]'::jsonb,0,'Psicotécnicos','Grupo a grupo: 0011=B, 0010=H, 0011=B, 0011=B → BHBB.',null),
('admin-navarra:28-ffcddcd783','admin-navarra',28,'Clave:
F | R | E | H | N | A
0111 | 1000 | 0001 | 1100 | 0101 | 1111
Según la clave, ¿qué cadena corresponde a las letras HEFR?','["1100 0001 0111 1000", "1000 0001 0111 1100", "0001 1100 0111 1000", "1100 0001 0001 1000"]'::jsonb,0,'Psicotécnicos','Letra a letra: H=1100, E=0001, F=0111, R=1000 → 1100 0001 0111 1000.',null),
('admin-navarra:28-9561c1d191','admin-navarra',28,'Clave:
P | D | C | J | S | T
0111 | 1111 | 0011 | 0010 | 0000 | 0110
Según la clave, ¿qué letras corresponden a la cadena 0011 0110 1111 0000?','["CTDJ", "CDTS", "CTDS", "CTCS"]'::jsonb,2,'Psicotécnicos','Grupo a grupo: 0011=C, 0110=T, 1111=D, 0000=S → CTDS.',null),
('admin-navarra:28-da916ae078','admin-navarra',28,'Clave:
T | F | H | C | D | I
1001 | 0011 | 0101 | 0010 | 1101 | 1100
Según la clave, ¿qué cadena corresponde a las letras FHII?','["0011 0101 1100 1100", "0011 0101 1100 1001", "0011 1100 0101 1100", "0010 0101 1100 1100"]'::jsonb,0,'Psicotécnicos','Letra a letra: F=0011, H=0101, I=1100, I=1100 → 0011 0101 1100 1100.',null),
('admin-navarra:28-ab9a795bdd','admin-navarra',28,'Clave:
R | A | B | F | M | E
0101 | 0100 | 0110 | 0010 | 1000 | 1001
Según la clave, ¿qué letras corresponden a la cadena 1000 1001 1000 1001?','["MEMF", "MERE", "MEME", "AEME"]'::jsonb,2,'Psicotécnicos','Grupo a grupo: 1000=M, 1001=E, 1000=M, 1001=E → MEME.',null),
('admin-navarra:28-ed35becb7e','admin-navarra',28,'Clave:
E | L | I | M | S | O
1000 | 0010 | 1100 | 1110 | 1011 | 0100
Según la clave, ¿qué cadena corresponde a las letras LSLL?','["0010 1011 0010 1110", "0010 1011 0010 0010", "1011 0010 0010 0010", "0010 1011 0010 1011"]'::jsonb,1,'Psicotécnicos','Letra a letra: L=0010, S=1011, L=0010, L=0010 → 0010 1011 0010 0010.',null),
('admin-navarra:28-e03c5d8602','admin-navarra',28,'¿Qué significa «fehaciente»?','["Que prueba algo de forma indudable", "Que muestra entusiasmo y alegría", "Que se hace con prisa y sin cuidado", "Que se refiere a la fe religiosa"]'::jsonb,0,'Psicotécnicos','«Fehaciente» significa: que prueba algo de forma indudable.',null),
('admin-navarra:28-0dee8c5f05','admin-navarra',28,'¿Qué significa «subsidiario»?','["Que se repite de forma periódica", "Que recibe una subvención pública", "Que está situado debajo de otro", "Que suple a otra cosa principal"]'::jsonb,3,'Psicotécnicos','«Subsidiario» significa: que suple a otra cosa principal.',null),
('admin-navarra:28-ba89c355c0','admin-navarra',28,'¿Qué significa «taxativo»?','["Que avanza con mucha lentitud", "Que está sujeto al pago de tasas e impuestos", "Que se dice de forma vaga", "Que limita y no admite discusión"]'::jsonb,3,'Psicotécnicos','«Taxativo» significa: que limita y no admite discusión.',null),
('admin-navarra:28-b351edeb1b','admin-navarra',28,'¿Qué significa «dádiva»?','["Cantidad que se cobra como multa", "Cosa que se da gratuitamente", "Duda sobre una decisión", "Deuda que está pendiente de pago"]'::jsonb,1,'Psicotécnicos','«Dádiva» significa: cosa que se da gratuitamente.',null),
('admin-navarra:28-326e0876c8','admin-navarra',28,'¿Qué significa «ínfulas»?','["Inflamación de una herida", "Presunción o vanidad", "Falta de ganas de trabajar", "Influencia sobre los demás"]'::jsonb,1,'Psicotécnicos','«Ínfulas» significa: presunción o vanidad.',null),
('admin-navarra:28-9a523beca4','admin-navarra',28,'¿Qué significa «ambiguo»?','["Que es propio de un ambiente", "Que puede entenderse de varios modos", "Que se mueve a la vez en dos direcciones opuestas", "Que tiene mucha ambición"]'::jsonb,1,'Psicotécnicos','«Ambiguo» significa: que puede entenderse de varios modos.',null),
('admin-navarra:28-3f9a3e3f75','admin-navarra',28,'¿Qué significa «inexorable»?','["Que no tiene ningún valor", "Que no se puede explicar", "Que todavía no ha terminado", "Que no se puede evitar"]'::jsonb,3,'Psicotécnicos','«Inexorable» significa: que no se puede evitar.',null),
('admin-navarra:28-1259667c98','admin-navarra',28,'¿Qué significa «exhortar»?','["Expulsar a alguien de un lugar", "Animar a alguien a hacer algo", "Extraer algo por la fuerza", "Exagerar los hechos al contarlos"]'::jsonb,1,'Psicotécnicos','«Exhortar» significa: animar a alguien a hacer algo.',null),
('admin-navarra:28-a89f9b64cf','admin-navarra',28,'¿Qué significa «paliar»?','["Hablar en voz muy baja", "Empeorar una situación que ya era complicada", "Pelear con palabras", "Atenuar o mitigar un daño"]'::jsonb,3,'Psicotécnicos','«Paliar» significa: atenuar o mitigar un daño.',null),
('admin-navarra:28-bba19b989e','admin-navarra',28,'¿Qué significa «ufano»?','["Triste y sin ánimo", "Que tiene mucha prisa", "Que desconoce por completo un asunto o materia", "Orgulloso y satisfecho de sí mismo"]'::jsonb,3,'Psicotécnicos','«Ufano» significa: orgulloso y satisfecho de sí mismo.',null),
('admin-navarra:28-be4e3d8653','admin-navarra',28,'¿Qué significa «lacónico»?','["Que usa pocas palabras", "Que trabaja con lentitud", "Que tiene un color oscuro", "Que siente mucha tristeza"]'::jsonb,0,'Psicotécnicos','«Lacónico» significa: que usa pocas palabras.',null),
('admin-navarra:28-b16d8c3964','admin-navarra',28,'¿Qué significa «diatriba»?','["División de un territorio en partes", "Alabanza pública de una persona", "Conversación tranquila entre dos o más personas", "Escrito o discurso violento contra alguien"]'::jsonb,3,'Psicotécnicos','«Diatriba» significa: escrito o discurso violento contra alguien.',null),
('admin-navarra:28-45f1b765f8','admin-navarra',28,'¿Qué significa «enmendar»?','["Pedir dinero prestado a un familiar o amigo", "Corregir un error o defecto", "Enviar algo a otra persona", "Añadir un adorno a algo"]'::jsonb,1,'Psicotécnicos','«Enmendar» significa: corregir un error o defecto.',null),
('admin-navarra:28-ad6ff44021','admin-navarra',28,'¿Qué significa «pernicioso»?','["Muy duradero", "Muy rápido", "Muy perjudicial", "Muy detallista y cuidadoso"]'::jsonb,2,'Psicotécnicos','«Pernicioso» significa: muy perjudicial.',null),
('admin-navarra:28-94342bc8a4','admin-navarra',28,'¿Qué significa «escueto»?','["Escondido y secreto", "Breve y sin rodeos", "Abundante y variado", "Estricto y severo"]'::jsonb,1,'Psicotécnicos','«Escueto» significa: breve y sin rodeos.',null),
('admin-navarra:28-b4e61811db','admin-navarra',28,'¿Qué significa «dirimir»?','["Resolver una controversia", "Aplazar una decisión hasta otro momento", "Disminuir una cantidad", "Dirigir una reunión"]'::jsonb,0,'Psicotécnicos','«Dirimir» significa: resolver una controversia.',null),
('admin-navarra:28-eb7b542a69','admin-navarra',28,'¿Qué significa «coercitivo»?','["Que es lógico y coherente", "Que obliga o reprime", "Que colabora con otros", "Que se desarrolla despacio"]'::jsonb,1,'Psicotécnicos','«Coercitivo» significa: que obliga o reprime.',null),
('admin-navarra:28-c9322e1e91','admin-navarra',28,'¿Qué significa «fútil»?','["De gran utilidad", "De larga duración", "De mucha dificultad", "De poca importancia"]'::jsonb,3,'Psicotécnicos','«Fútil» significa: de poca importancia.',null),
('admin-navarra:28-015f526855','admin-navarra',28,'¿Qué significa «venial»?','["Que se puede vender", "Que es muy grave", "Leve y fácil de perdonar", "Que se repite cada año"]'::jsonb,2,'Psicotécnicos','«Venial» significa: leve y fácil de perdonar.',null),
('admin-navarra:28-4da6774f59','admin-navarra',28,'¿Qué significa «acérrimo»?','["Muy antiguo o viejo", "Muy ácido o amargo", "Muy tenaz o decidido", "Muy cercano o próximo"]'::jsonb,2,'Psicotécnicos','«Acérrimo» significa: muy tenaz o decidido.',null),
('admin-navarra:28-ba3010d182','admin-navarra',28,'¿Qué significa «compulsar»?','["Cotejar una copia con su original", "Pulsar una tecla varias veces", "Obligar a alguien a hacer algo", "Comprar algo de forma impulsiva"]'::jsonb,0,'Psicotécnicos','«Compulsar» significa: cotejar una copia con su original.',null),
('admin-navarra:28-6de3988bc0','admin-navarra',28,'¿Qué significa «recusar»?','["Negarse a pagar una deuda", "Volver a acusar a una persona", "Corregir un error ya publicado", "Rechazar a quien no ofrece imparcialidad"]'::jsonb,3,'Psicotécnicos','«Recusar» significa: rechazar a quien no ofrece imparcialidad.',null),
('admin-navarra:28-69392be1e0','admin-navarra',28,'¿Qué significa «notificar»?','["Firmar ante un notario", "Publicar algo en un periódico", "Comunicar formalmente una resolución", "Anotar algo en un registro"]'::jsonb,2,'Psicotécnicos','«Notificar» significa: comunicar formalmente una resolución.',null),
('admin-navarra:28-4f4a5b92ac','admin-navarra',28,'¿Qué significa «caducidad»?','["Caída de un documento en un archivo", "Pérdida de un objeto por descuido", "Cuidado especial de un expediente", "Fin de un derecho o trámite por el paso del tiempo"]'::jsonb,3,'Psicotécnicos','«Caducidad» significa: fin de un derecho o trámite por el paso del tiempo.',null),
('admin-navarra:28-f0fff72c50','admin-navarra',28,'¿Qué significa «desestimar»?','["Retrasar una petición", "Aceptar en parte una petición", "Calcular el valor de algo", "Denegar una petición"]'::jsonb,3,'Psicotécnicos','«Desestimar» significa: denegar una petición.',null),
('admin-navarra:28-31c73af119','admin-navarra',28,'¿Qué significa «diligencia»?','["Cuidado y rapidez al hacer algo", "Orden de detener a alguien", "Pereza al hacer las tareas", "Reunión de varios dirigentes"]'::jsonb,0,'Psicotécnicos','«Diligencia» significa: cuidado y rapidez al hacer algo.',null),
('aux-canarias:1-5dff5cec94','aux-canarias',1,'¿Cuáles son los valores superiores del ordenamiento jurídico según la Constitución?','["La libertad, la justicia, la igualdad y el pluralismo político", "La libertad, la seguridad, la igualdad y la solidaridad", "La justicia, la paz, la igualdad y la democracia", "La libertad, la justicia, la dignidad y el pluralismo político"]'::jsonb,0,'Art. 1.1 CE','España propugna como valores superiores la libertad, la justicia, la igualdad y el pluralismo político.',null),
('aux-canarias:1-9977a4a04e','aux-canarias',1,'Según la Constitución, la soberanía nacional reside en:','["Las Cortes Generales", "El pueblo español", "El Rey", "La Nación y las Comunidades Autónomas"]'::jsonb,1,'Art. 1.2 CE','La soberanía nacional reside en el pueblo español, del que emanan los poderes del Estado.',null),
('aux-canarias:1-d2e96286bc','aux-canarias',1,'La forma política del Estado español es:','["La Monarquía constitucional", "El Estado autonómico", "La Monarquía parlamentaria", "La República federal"]'::jsonb,2,'Art. 1.3 CE','La forma política del Estado español es la Monarquía parlamentaria.',null),
('aux-canarias:1-b8fdb4cc03','aux-canarias',1,'Respecto al castellano, todos los españoles tienen:','["Solo el derecho a usarlo", "Solo el deber de conocerlo", "El derecho a conocerlo y el deber de usarlo", "El deber de conocerlo y el derecho a usarlo"]'::jsonb,3,'Art. 3.1 CE','Todos los españoles tienen el deber de conocer el castellano y el derecho a usarlo.',null),
('aux-canarias:1-51f294df53','aux-canarias',1,'¿Cómo es la bandera de España según la Constitución?','["Tres franjas horizontales roja, amarilla y roja, siendo la amarilla de doble anchura que cada roja", "Tres franjas horizontales roja, amarilla y roja, las tres de la misma anchura entre sí", "Tres franjas verticales roja, amarilla y roja, siendo la amarilla de doble anchura que cada roja", "Tres franjas horizontales amarilla, roja y amarilla, siendo la roja de doble anchura que cada amarilla"]'::jsonb,0,'Art. 4.1 CE','Tres franjas horizontales roja, amarilla y roja, siendo la amarilla de doble anchura que cada una de las rojas.',null),
('aux-canarias:1-45e58009d5','aux-canarias',1,'¿Cuál es la capital del Estado según la Constitución?','["La ciudad de Madrid y su área metropolitana", "La villa de Madrid", "La que determine una ley orgánica", "La sede del Gobierno, sea cual sea"]'::jsonb,1,'Art. 5 CE','La capital del Estado es la villa de Madrid.',null),
('aux-canarias:1-fd57cc4d5c','aux-canarias',1,'Según el art. 6, los partidos políticos:','["Son órganos del Estado", "Necesitan autorización administrativa previa", "Expresan el pluralismo político", "Pueden tener estructura interna no democrática"]'::jsonb,2,'Art. 6 CE','Los partidos expresan el pluralismo político y su estructura interna y funcionamiento deben ser democráticos.',null),
('aux-canarias:1-1058f470d5','aux-canarias',1,'¿Cuál de estos principios NO garantiza el art. 9.3 de la Constitución?','["La publicidad de las normas", "La jerarquía normativa", "La interdicción de la arbitrariedad de los poderes públicos", "La retroactividad de las disposiciones sancionadoras desfavorables"]'::jsonb,3,'Art. 9.3 CE','Se garantiza lo contrario: la irretroactividad de las disposiciones sancionadoras no favorables o restrictivas de derechos individuales.',null),
('aux-canarias:1-b9d3c67c0a','aux-canarias',1,'Las normas sobre derechos fundamentales se interpretan de conformidad con:','["La Declaración Universal de Derechos Humanos y los tratados ratificados por España", "La jurisprudencia del Tribunal Supremo y los tratados ratificados por España, en ese orden de prelación", "La Declaración Universal de Derechos Humanos y las leyes orgánicas que los desarrollen", "La doctrina del Tribunal Constitucional y los Estatutos de Autonomía vigentes"]'::jsonb,0,'Art. 10.2 CE','Se interpretan conforme a la Declaración Universal de Derechos Humanos y los tratados y acuerdos internacionales ratificados por España.',null),
('aux-canarias:1-042bab81ff','aux-canarias',1,'Según la Constitución, ¿puede un español de origen ser privado de su nacionalidad?','["Sí, por sentencia firme", "No, en ningún caso", "Sí, si adquiere otra nacionalidad", "Sí, por decisión del Gobierno"]'::jsonb,1,'Art. 11.2 CE','Ningún español de origen podrá ser privado de su nacionalidad.',null),
('aux-canarias:1-37b11936c7','aux-canarias',1,'¿A qué edad son mayores de edad los españoles según la Constitución?','["16 años", "21 años", "18 años", "La fija cada Comunidad Autónoma"]'::jsonb,2,'Art. 12 CE','Los españoles son mayores de edad a los dieciocho años.',null),
('aux-canarias:1-4818eecba1','aux-canarias',1,'Los extranjeros pueden ejercer el derecho de sufragio activo y pasivo:','["En las elecciones municipales y autonómicas, atendiendo a criterios de reciprocidad", "En las elecciones municipales, sin necesidad de criterios de reciprocidad", "En las elecciones municipales y europeas, siempre que residan en España", "En las elecciones municipales, atendiendo a criterios de reciprocidad"]'::jsonb,3,'Art. 13.2 CE','Solo los españoles son titulares del art. 23, salvo el sufragio activo y pasivo en las elecciones municipales con reciprocidad. Este apartado se reformó en 1992.',null),
('aux-canarias:1-961708e5ba','aux-canarias',1,'Según el art. 15 de la Constitución, la pena de muerte:','["Queda abolida, salvo lo que dispongan las leyes penales militares para tiempos de guerra", "Queda abolida, salvo para los delitos de terrorismo que determine una ley orgánica", "Queda abolida en todo caso, sin ninguna excepción en el texto constitucional", "Queda abolida, salvo lo que dispongan las leyes penales militares en estado de sitio"]'::jsonb,0,'Art. 15 CE','Queda abolida la pena de muerte, salvo lo que puedan disponer las leyes penales militares para tiempos de guerra.',null),
('aux-canarias:1-76fd5ff5f8','aux-canarias',1,'¿Cuánto puede durar como máximo la detención preventiva antes de poner al detenido en libertad o a disposición judicial?','["24 horas", "72 horas", "48 horas", "5 días"]'::jsonb,1,'Art. 17.2 CE','La detención preventiva no puede durar más de lo estrictamente necesario y, como máximo, 72 horas.',null),
('aux-canarias:1-af2e596818','aux-canarias',1,'¿Qué procedimiento regula la ley para la inmediata puesta a disposición judicial de toda persona detenida ilegalmente?','["El recurso de amparo", "El recurso de inconstitucionalidad", "El habeas corpus", "La cuestión prejudicial"]'::jsonb,2,'Art. 17.4 CE','La ley regula el procedimiento de habeas corpus.',null),
('aux-canarias:1-6931c53d26','aux-canarias',1,'¿En qué casos se puede entrar en un domicilio según la Constitución?','["Con consentimiento del titular, resolución judicial o autorización de la autoridad gubernativa", "Solo con resolución judicial o en caso de flagrante delito", "Con consentimiento del titular o resolución judicial, pero nunca sin ellos", "Con consentimiento del titular, resolución judicial o en caso de flagrante delito"]'::jsonb,3,'Art. 18.2 CE','Ninguna entrada o registro sin consentimiento del titular o resolución judicial, salvo flagrante delito.',null),
('aux-canarias:1-32aedf4516','aux-canarias',1,'El secuestro de publicaciones y otros medios de información solo puede acordarse:','["En virtud de resolución judicial", "Por orden del Ministerio del Interior", "Por acuerdo del Consejo de Ministros", "Por la autoridad gubernativa en casos urgentes"]'::jsonb,0,'Art. 20.5 CE','Solo podrá acordarse el secuestro en virtud de resolución judicial.',null),
('aux-canarias:1-7ff8116aaf','aux-canarias',1,'Para reuniones en lugares de tránsito público y manifestaciones se exige:','["Autorización previa de la autoridad", "Comunicación previa a la autoridad", "Autorización judicial", "Nada: son totalmente libres"]'::jsonb,1,'Art. 21.2 CE','Se da comunicación previa a la autoridad, que solo puede prohibirlas por razones fundadas de alteración del orden público.',null),
('aux-canarias:1-1aaf2f3520','aux-canarias',1,'¿Qué asociaciones prohíbe expresamente la Constitución?','["Las secretas y las que persigan fines políticos", "Las no inscritas en el registro y las de carácter paramilitar", "Las secretas y las de carácter paramilitar", "Las de carácter paramilitar y las formadas solo por extranjeros"]'::jsonb,2,'Art. 22.5 CE','Se prohíben las asociaciones secretas y las de carácter paramilitar.',null),
('aux-canarias:1-51906ec9a1','aux-canarias',1,'El art. 23.2 reconoce el derecho a acceder a las funciones y cargos públicos:','["En condiciones de igualdad, según el orden de antigüedad que fijen las leyes", "En condiciones de igualdad, siempre que se posea la nacionalidad española de origen", "Conforme a los méritos que libremente aprecie cada Administración", "En condiciones de igualdad, con los requisitos que señalen las leyes"]'::jsonb,3,'Art. 23.2 CE','Los ciudadanos tienen derecho a acceder en condiciones de igualdad a las funciones y cargos públicos, con los requisitos que señalen las leyes.',null),
('aux-canarias:1-9b3c013cf7','aux-canarias',1,'Según el art. 24.2, todos tienen derecho:','["Al Juez ordinario predeterminado por la ley", "A elegir el juez que les juzgue", "A ser juzgados por un jurado en todo caso", "A un tribunal especial según su profesión"]'::jsonb,0,'Art. 24.2 CE','Todos tienen derecho al Juez ordinario predeterminado por la ley, a la defensa y a la asistencia de letrado, entre otros.',null),
('aux-canarias:1-ff3c8b18af','aux-canarias',1,'La Administración civil puede imponer sanciones que impliquen privación de libertad:','["Sí, en casos graves", "No, en ningún caso", "Sí, con autorización judicial posterior", "Solo durante el estado de alarma"]'::jsonb,1,'Art. 25.3 CE','La Administración civil no podrá imponer sanciones que, directa o subsidiariamente, impliquen privación de libertad.',null),
('aux-canarias:1-ec4f29b6a2','aux-canarias',1,'Según la Constitución, la enseñanza básica es:','["Voluntaria y gratuita", "Obligatoria y de pago", "Obligatoria y gratuita", "Voluntaria y de pago"]'::jsonb,2,'Art. 27.4 CE','La enseñanza básica es obligatoria y gratuita.',null),
('aux-canarias:1-32601cfbc7','aux-canarias',1,'El derecho a la huelga de los trabajadores se reconoce en:','["El art. 37.2", "El art. 35.1", "El art. 7", "El art. 28.2"]'::jsonb,3,'Art. 28.2 CE','El art. 28.2 reconoce el derecho a la huelga de los trabajadores para la defensa de sus intereses.',null),
('aux-canarias:1-d55acc2e90','aux-canarias',1,'Según el art. 30.1, defender a España es para los españoles:','["Un derecho y un deber", "Solo un deber", "Solo un derecho", "Una obligación exclusiva de las Fuerzas Armadas"]'::jsonb,0,'Art. 30.1 CE','Los españoles tienen el derecho y el deber de defender a España.',null),
('aux-canarias:1-b51cc37e96','aux-canarias',1,'El art. 32.1 reconoce el derecho a contraer matrimonio:','["Al hombre y la mujer, a partir de la edad que fije cada Comunidad Autónoma", "Al hombre y la mujer, con plena igualdad jurídica", "Al hombre y la mujer, previa autorización del Registro Civil", "A los españoles mayores de edad, en forma civil o religiosa"]'::jsonb,1,'Art. 32.1 CE','El hombre y la mujer tienen derecho a contraer matrimonio con plena igualdad jurídica.',null),
('aux-canarias:1-05a3954d03','aux-canarias',1,'¿Qué artículo modificó la reforma constitucional de 2024?','["El art. 135, sobre estabilidad presupuestaria", "El art. 13.2, sobre el sufragio de los extranjeros en elecciones municipales", "El art. 49, sobre las personas con discapacidad", "El art. 69.3, sobre la elección de los senadores provinciales"]'::jsonb,2,'Art. 49 CE','La reforma de febrero de 2024 modificó el art. 49. Las anteriores fueron la de 1992 (art. 13.2) y la de 2011 (art. 135); la de mayo de 2026 modificó el art. 69.3.',null),
('aux-canarias:1-5a80a0d998','aux-canarias',1,'Según el art. 53.1, el ejercicio de los derechos del Capítulo II solo puede regularse:','["Por decreto-ley", "Por reglamento del Gobierno", "Por ley de las Comunidades Autónomas exclusivamente", "Por ley, que deberá respetar su contenido esencial"]'::jsonb,3,'Art. 53.1 CE','Vinculan a todos los poderes públicos y solo por ley, que respete su contenido esencial, podrá regularse su ejercicio.',null),
('aux-canarias:1-5c0066ba6f','aux-canarias',1,'¿Qué derechos pueden protegerse mediante recurso de amparo ante el Tribunal Constitucional?','["El art. 14, la Sección 1.ª del Capítulo II y la objeción de conciencia del art. 30", "Todos los derechos del Capítulo II del Título I, incluida su Sección 2.ª", "El art. 14 y los principios rectores del Capítulo III del Título I", "La Sección 1.ª del Capítulo II, pero no la igualdad del art. 14"]'::jsonb,0,'Art. 53.2 CE','Cabe amparo para el art. 14, la Sección 1.ª del Capítulo II y la objeción de conciencia del art. 30, en su caso tras acudir a los tribunales ordinarios.',null),
('aux-canarias:1-09a81868b0','aux-canarias',1,'El Defensor del Pueblo es:','["Alto comisionado del Gobierno, designado por el Consejo de Ministros", "Alto comisionado de las Cortes Generales, designado por estas", "Alto comisionado de las Cortes Generales, designado por el Rey", "Alto comisionado del Consejo General del Poder Judicial"]'::jsonb,1,'Art. 54 CE','Es alto comisionado de las Cortes Generales, designado por ellas para la defensa de los derechos del Título I.',null),
('aux-canarias:1-7028abb8d8','aux-canarias',1,'Según el art. 55.1, los derechos pueden suspenderse cuando se declare el estado de:','["Alarma", "Alarma, excepción o sitio", "Excepción o sitio", "Solo sitio"]'::jsonb,2,'Art. 55.1 CE','La suspensión general cabe en el estado de excepción o de sitio, no en el de alarma.',null),
('aux-canarias:1-4109852326','aux-canarias',1,'La suspensión individual de derechos para investigaciones sobre bandas armadas o terrorismo se regula mediante:','["Real decreto", "Ley ordinaria", "Orden ministerial", "Ley orgánica"]'::jsonb,3,'Art. 55.2 CE','Una ley orgánica puede determinar la suspensión individual de los derechos de los arts. 17.2 y 18.2 y 3 en esas investigaciones.',null),
('aux-canarias:1-07762f0eca','aux-canarias',1,'¿Qué principios garantiza el art. 9.3 de la Constitución en relación con las normas?','["La legalidad, la jerarquía normativa y la retroactividad de las normas favorables", "La legalidad, la competencia normativa y la publicidad de las normas", "La legalidad, la jerarquía normativa y la publicidad de las normas", "La seguridad jurídica, la reserva de ley y la jerarquía normativa"]'::jsonb,2,'Art. 9.3 CE','Garantiza, entre otros, el principio de legalidad, la jerarquía normativa y la publicidad de las normas.',null),
('aux-canarias:1-54172103dc','aux-canarias',1,'Según el art. 17.1, toda persona tiene derecho a:','["Una vivienda en propiedad", "La asistencia jurídica gratuita en cualquier caso", "La libertad y a la seguridad", "Un trabajo remunerado"]'::jsonb,2,'Art. 17.1 CE','Toda persona tiene derecho a la libertad y a la seguridad.',null),
('aux-canarias:1-a558190c80','aux-canarias',1,'Según el art. 31.2, la programación y ejecución del gasto público responden a los criterios de:','["Rentabilidad y beneficio", "Discrecionalidad política", "Prioridad territorial", "Eficiencia y economía"]'::jsonb,3,'Art. 31.2 CE','El gasto público realizará una asignación equitativa de los recursos públicos, y su programación y ejecución responderán a los criterios de eficiencia y economía.',null),
('aux-canarias:1-a77e6277f4','aux-canarias',1,'Según el art. 18.4, la ley limitará el uso de:','["El derecho de reunión y manifestación", "Los medios de comunicación social de titularidad pública", "La informática, para garantizar el honor y la intimidad", "Las armas de fuego, para garantizar la seguridad ciudadana"]'::jsonb,2,'Art. 18.4 CE','La ley limitará el uso de la informática para garantizar el honor y la intimidad personal y familiar.',null),
('aux-canarias:1-e4280bb170','aux-canarias',1,'El ejercicio de la libertad de expresión e información:','["Requiere autorización previa en los medios de titularidad pública", "No puede restringirse mediante ningún tipo de censura previa", "Puede someterse a censura previa en estados de alarma, excepción y sitio, por ley orgánica", "Solo se ejerce por periodistas"]'::jsonb,1,'Art. 20.2 CE','El ejercicio de estos derechos no puede restringirse mediante ningún tipo de censura previa.',null),
('aux-canarias:1-1924e9efcb','aux-canarias',1,'El secreto de las comunicaciones puede levantarse:','["Por decisión del Gobierno", "Mediante resolución judicial", "Por orden policial", "Nunca en ningún caso"]'::jsonb,1,'Art. 18.3 CE','Se garantiza el secreto de las comunicaciones, salvo resolución judicial.',null),
('aux-canarias:1-dda7baf908','aux-canarias',1,'Las demás lenguas españolas distintas del castellano:','["Solo son oficiales en el ámbito educativo de cada Comunidad Autónoma", "Son también oficiales en las respectivas Comunidades Autónomas de acuerdo con sus Estatutos", "Son oficiales en todo el territorio nacional, junto al castellano", "Son oficiales en las respectivas Comunidades Autónomas, pero solo cuando lo establezca una ley orgánica estatal"]'::jsonb,1,'Art. 3.2 CE','Son oficiales en sus Comunidades Autónomas de acuerdo con sus Estatutos.',null),
('aux-canarias:1-c3c5d34b13','aux-canarias',1,'Mediante ley podrán regularse los deberes de los ciudadanos en los casos de:','["Cambio de Gobierno o estado de alarma", "Grave riesgo, catástrofe o calamidad pública", "Huelga general", "Crisis económica grave declarada por el Gobierno"]'::jsonb,1,'Art. 30.4 CE','Podrán regularse los deberes de los ciudadanos en los casos de grave riesgo, catástrofe o calamidad pública.',null),
('aux-canarias:1-a8aa88a9ce','aux-canarias',1,'La libertad ideológica, religiosa y de culto tiene como única limitación en sus manifestaciones:','["La moral pública y las buenas costumbres, según determine la ley", "La autorización gubernativa previa", "La que fije cada confesión religiosa", "La necesaria para el mantenimiento del orden público protegido por la ley"]'::jsonb,3,'Art. 16.1 CE','Sin más limitación, en sus manifestaciones, que la necesaria para el mantenimiento del orden público protegido por la ley.',null),
('aux-canarias:1-38ad0eaa59','aux-canarias',1,'Según el art. 16.3, ¿alguna confesión tendrá carácter estatal?','["Sí, las que reconozca una ley orgánica", "No, ninguna confesión tendrá carácter estatal", "Sí, la católica", "Las que tengan más de un millón de fieles"]'::jsonb,1,'Art. 16.3 CE','Ninguna confesión tendrá carácter estatal, aunque los poderes públicos mantendrán relaciones de cooperación con la Iglesia Católica y las demás confesiones.',null),
('aux-canarias:1-73c6aed45b','aux-canarias',1,'Los principios del Capítulo III del Título I (principios rectores de la política social y económica):','["Son directamente exigibles ante el Tribunal Constitucional en recurso de amparo", "Informarán la legislación positiva, la práctica judicial y la actuación de los poderes públicos", "Informarán la legislación positiva, pero no la práctica judicial ni la actuación de la Administración", "Solo vinculan al Parlamento, y son directamente exigibles ante los tribunales ordinarios por cualquier ciudadano"]'::jsonb,1,'Art. 53.3 CE','Informarán la legislación positiva, la práctica judicial y la actuación de los poderes públicos; solo podrán alegarse ante la jurisdicción ordinaria según las leyes que los desarrollen.',null),
('aux-canarias:1-9215e65eee','aux-canarias',1,'El derecho a comunicar o recibir información, según el art. 20.1 d), se refiere a información:','["Veraz", "Oficial", "Gratuita", "Autorizada"]'::jsonb,0,'Art. 20.1 d) CE','Se reconoce el derecho a comunicar o recibir libremente información veraz por cualquier medio de difusión.',null),
('aux-canarias:1-f4a4f08777','aux-canarias',1,'Los poderes públicos garantizan el derecho de los padres a que sus hijos reciban:','["Educación en su lengua materna en todo caso", "La formación religiosa y moral que esté de acuerdo con sus propias convicciones", "La formación religiosa y moral de la confesión mayoritaria, salvo renuncia expresa de los padres o tutores", "Educación exclusivamente pública"]'::jsonb,1,'Art. 27.3 CE','Garantizan que los hijos reciban la formación religiosa y moral acorde con las convicciones de sus padres.',null),
('aux-canarias:1-b7fa1ab658','aux-canarias',1,'El principio de legalidad del art. 25.1 establece que nadie puede ser condenado o sancionado por acciones u omisiones que:','["En el momento de dictarse la resolución no constituyan delito, falta o infracción administrativa", "En el momento de producirse no constituyan delito, falta o infracción administrativa, según la legislación vigente", "En el momento de producirse no constituyan delito según la ley penal, aunque sí infracción según un reglamento", "Sean contrarias a la moral o hayan causado alarma social"]'::jsonb,1,'Art. 25.1 CE','Nadie puede ser condenado o sancionado por acciones u omisiones que, cuando se produjeron, no constituían delito, falta o infracción administrativa.',null),
('aux-canarias:1-c6cd03f488','aux-canarias',1,'Según el art. 14, los españoles son iguales ante la ley sin que pueda prevalecer discriminación por razón de:','["Nacimiento, raza, sexo, religión u opinión, sin incluir otras circunstancias", "Sexo, raza, nacionalidad, ideología y orientación sexual, pero no por cualquier otra condición o circunstancia personal o social", "Nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social", "Nacimiento, raza, sexo, religión, opinión o cualquier otra condición, salvo las circunstancias económicas y sociales, que regulan las leyes"]'::jsonb,2,'Art. 14 CE','No puede prevalecer discriminación alguna por razón de nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social.',null),
('aux-canarias:1-3a4e9e84f3','aux-canarias',1,'Son ilegales las asociaciones que:','["Reciban subvenciones públicas sin haberse inscrito previamente en el registro", "Persigan fines o utilicen medios tipificados como delito", "Tengan menos de diez socios fundadores", "No estén inscritas en un registro"]'::jsonb,1,'Art. 22.2 CE','Las asociaciones que persigan fines o utilicen medios tipificados como delito son ilegales.',null),
('aux-canarias:1-1a84bafaca','aux-canarias',1,'La nacionalidad española se adquiere, se conserva y se pierde:','["Solo por nacimiento o por residencia legal continuada", "Según lo que establezca cada Comunidad Autónoma en su Estatuto", "De acuerdo con lo establecido por la ley", "Por decisión del Gobierno, mediante real decreto acordado en Consejo de Ministros"]'::jsonb,2,'Art. 11.1 CE','Se adquiere, conserva y pierde de acuerdo con lo establecido por la ley.',null),
('aux-canarias:1-b9be27a279','aux-canarias',1,'El art. 40.2 encomienda a los poderes públicos garantizar el descanso necesario mediante:','["La jubilación anticipada y la reducción de la edad de jubilación", "La semana laboral de cuatro días y la jornada continua", "La limitación de la jornada laboral y las vacaciones periódicas retribuidas", "La limitación de la jornada laboral y los permisos retribuidos que fije cada convenio colectivo"]'::jsonb,2,'Art. 40.2 CE','Mediante la limitación de la jornada laboral, las vacaciones periódicas retribuidas y la promoción de centros adecuados.',null),
('aux-canarias:1-f2f2ac358e','aux-canarias',1,'El derecho de reunión pacífica y sin armas:','["No necesita autorización previa", "Requiere autorización judicial", "Requiere autorización del Delegado del Gobierno", "Solo se ejerce en locales cerrados"]'::jsonb,0,'Art. 21.1 CE','Se reconoce el derecho de reunión pacífica y sin armas, cuyo ejercicio no necesita autorización previa.',null),
('aux-canarias:1-0c7181ee7d','aux-canarias',1,'Según el art. 10.1, son fundamento del orden político y de la paz social:','["La monarquía parlamentaria, la soberanía nacional y la unidad de la Nación española", "La dignidad de la persona, los derechos inviolables que le son inherentes, el libre desarrollo de la personalidad, el respeto a la ley y a los derechos de los demás", "La dignidad de la persona, la soberanía popular, la economía social de mercado, la unidad de la Nación española y la solidaridad entre sus nacionalidades y regiones", "La unidad de mercado y la libertad de empresa"]'::jsonb,1,'Art. 10.1 CE','Lo son la dignidad de la persona, sus derechos inviolables, el libre desarrollo de la personalidad y el respeto a la ley y a los derechos de los demás.',null),
('aux-canarias:1-0bf26dfdb0','aux-canarias',1,'La estructura interna y el funcionamiento de los Colegios Profesionales deberán ser:','["Fijados por el Gobierno", "Secretos", "Democráticos", "Jerárquicos"]'::jsonb,2,'Art. 36 CE','La ley regulará los Colegios Profesionales, cuya estructura interna y funcionamiento deberán ser democráticos.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
('aux-canarias:1-a3e43947c6','aux-canarias',1,'Según el art. 7, los sindicatos de trabajadores y las asociaciones empresariales deben tener:','["Una estructura interna y un funcionamiento democráticos", "Un número mínimo de afiliados que fije la ley orgánica correspondiente", "Autorización administrativa previa", "Inscripción en el Registro de Partidos Políticos"]'::jsonb,0,'Art. 7 CE','Su estructura interna y funcionamiento deberán ser democráticos.',null),
('aux-canarias:1-558a271c99','aux-canarias',1,'La riqueza de las distintas modalidades lingüísticas de España es, según la Constitución:','["Un asunto de las Comunidades sin protección constitucional", "Un límite a la libertad de expresión", "Un patrimonio cultural objeto de especial respeto y protección", "Una competencia exclusiva del Estado"]'::jsonb,2,'Art. 3.3 CE','Es un patrimonio cultural que será objeto de especial respeto y protección.',null),
('aux-canarias:1-bb3559035b','aux-canarias',1,'La ley garantiza el derecho a la negociación colectiva laboral y:','["La prohibición de los convenios de empresa", "El arbitraje obligatorio", "La aprobación de los convenios por el Gobierno", "La fuerza vinculante de los convenios"]'::jsonb,3,'Art. 37.1 CE','La ley garantizará el derecho a la negociación colectiva laboral, así como la fuerza vinculante de los convenios.',null),
('aux-canarias:1-e9abaca3e4','aux-canarias',1,'Los extranjeros gozan en España de las libertades públicas del Título I:','["En ningún caso, salvo los derechos inherentes a la dignidad humana", "En igualdad absoluta con los españoles, incluido el derecho de sufragio en todas las elecciones", "Solo si residen legalmente más de cinco años", "En los términos que establezcan los tratados y la ley"]'::jsonb,3,'Art. 13.1 CE','Gozarán de las libertades públicas que garantiza el Título I en los términos que establezcan los tratados y la ley.',null),
('aux-canarias:1-76dbf6e964','aux-canarias',1,'Las libertades del art. 20 tienen su límite, especialmente, en:','["La opinión mayoritaria de la sociedad, los intereses económicos del Estado y las instrucciones del Gobierno sobre la información pública", "Las instrucciones del Gobierno en materia de comunicación", "La seguridad nacional, el orden público, los intereses económicos del Estado y las instrucciones del Gobierno en materia de comunicación", "El derecho al honor, a la intimidad, a la propia imagen y la protección de la juventud y de la infancia"]'::jsonb,3,'Art. 20.4 CE','Tienen su límite en los demás derechos del Título I y, especialmente, en el honor, la intimidad, la propia imagen y la protección de la juventud y la infancia.',null),
('aux-canarias:1-f02f8425c6','aux-canarias',1,'Las penas privativas de libertad y las medidas de seguridad están orientadas a:','["El trabajo obligatorio en beneficio de la comunidad y la compensación económica a la víctima del delito", "La compensación económica a la víctima y a la sociedad", "La reeducación y la reinserción social, y no pueden consistir en trabajos forzados", "La reeducación y la reinserción social, y pueden incluir trabajos forzados en los casos que prevea la ley"]'::jsonb,2,'Art. 25.2 CE','Están orientadas hacia la reeducación y reinserción social y no podrán consistir en trabajos forzados.',null),
('aux-canarias:1-63cb0e89a1','aux-canarias',1,'Las Fuerzas Armadas están constituidas, según la Constitución, por:','["El Ejército de Tierra y la Policía Nacional", "El Ejército de Tierra, la Armada y el Ejército del Aire", "Las Fuerzas y Cuerpos de Seguridad del Estado", "El Ejército de Tierra, la Guardia Civil y la Armada"]'::jsonb,1,'Art. 8.1 CE','Las constituyen el Ejército de Tierra, la Armada y el Ejército del Aire.',null),
('aux-canarias:1-9080c5cf2a','aux-canarias',1,'Según el art. 33.3, nadie podrá ser privado de sus bienes y derechos sino:','["Por deudas con particulares reconocidas en sentencia firme", "Por orden del alcalde", "Por causa justificada de utilidad pública o interés social, sin indemnización cuando así lo decida el Gobierno mediante real decreto", "Por causa justificada de utilidad pública o interés social, mediante la correspondiente indemnización y de conformidad con la ley"]'::jsonb,3,'Art. 33.3 CE','Solo por causa justificada de utilidad pública o interés social, con indemnización y conforme a la ley.',null),
('aux-canarias:1-64d6b73a0b','aux-canarias',1,'Según el art. 30.3, podrá establecerse:','["Un servicio civil para el cumplimiento de fines de interés general", "Un impuesto especial para la defensa nacional y la protección civil", "Un servicio militar universitario", "Una milicia en cada Comunidad Autónoma"]'::jsonb,0,'Art. 30.3 CE','Podrá establecerse un servicio civil para el cumplimiento de fines de interés general.',null),
('aux-canarias:1-a0814ee411','aux-canarias',1,'Según el art. 43.3, los poderes públicos fomentarán:','["El deporte profesional y de alto rendimiento, exclusivamente", "La medicina preventiva privada mediante conciertos con las mutuas sanitarias", "La educación sanitaria, la educación física y el deporte", "La educación física y el deporte escolar, pero no la educación sanitaria"]'::jsonb,2,'Art. 43.3 CE','Fomentarán la educación sanitaria, la educación física y el deporte, y facilitarán la adecuada utilización del ocio.',null),
('aux-canarias:1-8e7c64898c','aux-canarias',1,'Según el art. 33.1, se reconoce el derecho:','["A la herencia, pero solo entre cónyuges y descendientes", "A la propiedad privada y a la herencia", "A la propiedad privada y a una vivienda en propiedad para cada familia", "A una renta mínima garantizada"]'::jsonb,1,'Art. 33.1 CE','Se reconoce el derecho a la propiedad privada y a la herencia.',null),
('aux-canarias:1-e8f46be85b','aux-canarias',1,'Según el art. 38, se reconoce la libertad de empresa en el marco de:','["La economía de mercado", "La economía cooperativa exclusivamente", "La planificación central obligatoria", "El monopolio estatal"]'::jsonb,0,'Art. 38 CE','Se reconoce la libertad de empresa en el marco de la economía de mercado.',null),
('aux-canarias:1-8136eb10f3','aux-canarias',1,'Según el art. 35.1, todos los españoles tienen:','["Solo el derecho al trabajo", "El deber de trabajar y el derecho al trabajo", "Derecho a no trabajar sin consecuencias", "Derecho a un empleo público"]'::jsonb,1,'Art. 35.1 CE','Tienen el deber de trabajar y el derecho al trabajo, a la libre elección de profesión u oficio y a una remuneración suficiente.',null),
('aux-canarias:1-34a7a22d15','aux-canarias',1,'Según el art. 28.1, respecto a la libertad sindical:','["La afiliación es obligatoria para los funcionarios", "Nadie podrá ser obligado a afiliarse a un sindicato", "Solo pueden sindicarse los trabajadores fijos", "Los jueces pueden sindicarse sin límites"]'::jsonb,1,'Art. 28.1 CE','Todos tienen derecho a sindicarse libremente y nadie podrá ser obligado a afiliarse a un sindicato.',null),
('aux-canarias:1-0eb611146b','aux-canarias',1,'El derecho de petición, según el art. 29.1:','["Solo pueden ejercerlo las asociaciones", "Requiere abogado", "Es individual y colectivo, por escrito", "Solo es individual y verbal"]'::jsonb,2,'Art. 29.1 CE','Todos los españoles tienen el derecho de petición individual y colectiva, por escrito.',null),
('aux-canarias:1-e2332e3e6f','aux-canarias',1,'El art. 43 reconoce el derecho a:','["La asistencia sanitaria privada gratuita", "La protección de la salud", "La elección libre de médico en todo caso", "Un seguro de vida"]'::jsonb,1,'Art. 43.1 CE','Se reconoce el derecho a la protección de la salud.',null),
('aux-canarias:1-97cfb6326d','aux-canarias',1,'El art. 47 reconoce a todos los españoles el derecho a:','["Una ayuda pública al alquiler en todo caso, de cuantía fija", "Una vivienda en propiedad a precio tasado", "Disfrutar de una vivienda digna y adecuada", "Disfrutar de una vivienda digna, que los poderes públicos deben adjudicar directamente a quien la solicite"]'::jsonb,2,'Art. 47 CE','Todos los españoles tienen derecho a disfrutar de una vivienda digna y adecuada.',null),
('aux-canarias:1-9dbab76543','aux-canarias',1,'Los poderes públicos garantizarán la conservación y promoverán el enriquecimiento de:','["Las empresas públicas y su patrimonio", "El patrimonio histórico, cultural y artístico de los pueblos de España", "El patrimonio histórico, cultural y artístico de titularidad pública, pero no el de titularidad privada", "Los bienes de la Corona"]'::jsonb,1,'Art. 46 CE','Garantizarán la conservación y promoverán el enriquecimiento del patrimonio histórico, cultural y artístico.',null),
('aux-canarias:1-668962725d','aux-canarias',1,'Según el art. 24.1, todas las personas tienen derecho a obtener la tutela efectiva de los jueces y tribunales:','["Sin que, en ningún caso, pueda producirse indefensión", "Solo en asuntos penales y contencioso-administrativos", "Solo si están asistidas de abogado y procurador", "Previo pago de las tasas judiciales correspondientes"]'::jsonb,0,'Art. 24.1 CE','Tienen derecho a la tutela judicial efectiva sin que, en ningún caso, pueda producirse indefensión.',null),
('aux-canarias:1-f3c1026c89','aux-canarias',1,'¿Qué prohíbe el art. 26 de la Constitución?','["Los colegios profesionales con adscripción obligatoria", "Los jurados populares en el ámbito penal", "Los tribunales militares en tiempo de guerra y en los supuestos de estado de sitio declarados por el Congreso", "Los Tribunales de Honor en el ámbito de la Administración civil y de las organizaciones profesionales"]'::jsonb,3,'Art. 26 CE','Se prohíben los Tribunales de Honor en el ámbito de la Administración civil y de las organizaciones profesionales.',null),
('aux-canarias:1-a142d35069','aux-canarias',1,'El art. 18.1 garantiza el derecho:','["Al honor, a la intimidad personal y familiar y a la propia imagen", "A la propiedad privada y a la herencia", "A la libertad de empresa en el marco de la economía de mercado", "Al secreto de las comunicaciones"]'::jsonb,0,'Art. 18.1 CE','Garantiza el derecho al honor, a la intimidad personal y familiar y a la propia imagen.',null),
('aux-canarias:1-5a030869d0','aux-canarias',1,'El derecho de fundación se reconoce:','["Para fines de interés general, con arreglo a la ley", "Solo a las empresas y sociedades mercantiles", "Solo para fines religiosos o benéficos", "Para cualquier fin, incluido el lucrativo, con arreglo a la ley"]'::jsonb,0,'Art. 34.1 CE','Se reconoce el derecho de fundación para fines de interés general, con arreglo a la ley.',null),
('aux-canarias:1-555b0e1b2d','aux-canarias',1,'Según el art. 9.1, están sujetos a la Constitución y al resto del ordenamiento jurídico:','["Solo los ciudadanos españoles", "Solo los funcionarios y los poderes públicos", "Solo los poderes públicos y los funcionarios", "Los ciudadanos y los poderes públicos"]'::jsonb,3,'Art. 9.1 CE','Los ciudadanos y los poderes públicos están sujetos a la Constitución y al resto del ordenamiento jurídico.',null),
('aux-canarias:1-cf754e7588','aux-canarias',1,'Las prestaciones personales o patrimoniales de carácter público solo pueden establecerse:','["Con arreglo a la ley", "Por reglamento", "Por orden ministerial", "Por acuerdo municipal"]'::jsonb,0,'Art. 31.3 CE','Solo podrán establecerse prestaciones personales o patrimoniales de carácter público con arreglo a la ley.',null),
('aux-canarias:1-faa5937d98','aux-canarias',1,'Según el art. 44.2, los poderes públicos promoverán:','["La investigación militar y de defensa, y la cooperación científica con las Fuerzas Armadas aliadas", "Solo la investigación sanitaria y farmacéutica", "La investigación privada exclusivamente, mediante incentivos fiscales a las empresas", "La ciencia y la investigación científica y técnica en beneficio del interés general"]'::jsonb,3,'Art. 44.2 CE','Promoverán la ciencia y la investigación científica y técnica en beneficio del interés general.',null),
('aux-canarias:1-c942f0c342','aux-canarias',1,'¿Quién establece los términos en que extranjeros y apátridas pueden gozar del derecho de asilo?','["Los tratados exclusivamente", "La ley", "El Defensor del Pueblo", "El Ministerio del Interior por orden"]'::jsonb,1,'Art. 13.4 CE','La ley establecerá los términos en que los ciudadanos de otros países y los apátridas podrán gozar del derecho de asilo.',null),
('aux-canarias:1-6ab117283c','aux-canarias',1,'¿Qué regula la ley según el art. 20.3?','["La censura previa de los medios de comunicación privados", "Las tarifas publicitarias y el régimen de concesión de licencias de los medios de comunicación privados de ámbito estatal", "El control parlamentario de los medios de comunicación social dependientes del Estado o de cualquier ente público", "El control gubernamental de todos los medios de comunicación social, públicos y privados, a través de una autoridad independiente"]'::jsonb,2,'Art. 20.3 CE','La ley regulará la organización y el control parlamentario de los medios dependientes del Estado o de cualquier ente público.',null),
('aux-canarias:1-bbe81a4859','aux-canarias',1,'Respecto a la extradición, la Constitución establece que:','["No se consideran delitos políticos los actos de terrorismo", "Solo la concede el Gobierno, sin intervención judicial", "Se concede sin necesidad de tratado ni de ley, por reciprocidad", "Está prohibida en todo caso respecto de los nacionales"]'::jsonb,0,'Art. 13.3 CE','La extradición se concede en cumplimiento de un tratado o de la ley, atendiendo a la reciprocidad; los actos de terrorismo no se consideran delitos políticos.',null),
('aux-canarias:1-a153838ab4','aux-canarias',1,'Toda persona detenida debe ser informada:','["Solo si lo solicita su abogado o un familiar", "En el plazo máximo de 72 horas, una vez puesta a disposición judicial y en presencia de su abogado", "Solo cuando sea puesta a disposición judicial, en presencia de su abogado y en el plazo de setenta y dos horas", "De forma inmediata y comprensible de sus derechos y de las razones de su detención"]'::jsonb,3,'Art. 17.3 CE','Debe ser informada de forma inmediata, y de modo que le sea comprensible, de sus derechos y de las razones de su detención.',null),
('aux-canarias:1-43c8d813cf','aux-canarias',1,'Según la Constitución, ¿puede alguien ser obligado a declarar sobre su ideología, religión o creencias?','["No", "Sí, ante un juez", "Sí, en los censos oficiales", "Solo los funcionarios"]'::jsonb,0,'Art. 16.2 CE','Nadie podrá ser obligado a declarar sobre su ideología, religión o creencias.',null),
('aux-canarias:1-6ebd6b6995','aux-canarias',1,'Respecto al medio ambiente, el art. 45.1 reconoce:','["El derecho a disfrutar de un medio ambiente adecuado y el deber de conservarlo", "El derecho a disfrutar de un medio ambiente adecuado, sin establecer ningún deber de conservarlo", "El derecho a explotarlo libremente", "El deber de conservarlo, pero no el derecho a disfrutarlo, que se regula en los Estatutos"]'::jsonb,0,'Art. 45.1 CE','Todos tienen el derecho a disfrutar de un medio ambiente adecuado para el desarrollo de la persona, así como el deber de conservarlo.',null),
('aux-canarias:1-8a9e7e7cc3','aux-canarias',1,'Las banderas propias de las Comunidades Autónomas:','["Las aprueba el Gobierno de la Nación a propuesta de cada Comunidad", "Están prohibidas en los edificios públicos del Estado", "Sustituyen a la bandera de España en los edificios y actos oficiales de su territorio, si así lo dispone su Estatuto", "Pueden ser reconocidas por los Estatutos y se utilizan junto a la bandera de España en sus edificios y actos oficiales"]'::jsonb,3,'Art. 4.2 CE','Los Estatutos pueden reconocerlas; se usan junto a la bandera de España en sus edificios públicos y actos oficiales.',null),
('aux-canarias:1-2301c56eb2','aux-canarias',1,'Las asociaciones solo pueden ser disueltas o suspendidas en sus actividades:','["Por orden del Ministerio del Interior", "Por acuerdo del Consejo de Ministros", "En virtud de resolución judicial motivada", "Por decisión de la Delegación del Gobierno"]'::jsonb,2,'Art. 22.4 CE','Solo podrán ser disueltas o suspendidas en virtud de resolución judicial motivada.',null),
('aux-canarias:1-89e151a5c5','aux-canarias',1,'Según el art. 27.2, la educación tiene por objeto:','["El pleno desarrollo de la personalidad humana en el respeto a los principios democráticos y a los derechos fundamentales", "Preparar para el acceso al empleo y a la función pública", "La formación profesional exclusivamente", "El pleno desarrollo de la personalidad humana en el respeto a la religión mayoritaria y a las tradiciones de cada Comunidad Autónoma"]'::jsonb,0,'Art. 27.2 CE','Tiene por objeto el pleno desarrollo de la personalidad humana en el respeto a los principios democráticos de convivencia y a los derechos y libertades fundamentales.',null),
('aux-canarias:1-f31feb592f','aux-canarias',1,'Según el art. 2, la Constitución se fundamenta en:','["La indisoluble unidad de la Nación española, y reconoce el derecho a la autonomía de las nacionalidades y regiones", "La voluntad del Jefe del Estado", "La soberanía compartida del Estado y de las Comunidades Autónomas, y reconoce su derecho a la autodeterminación", "El pacto entre los territorios históricos"]'::jsonb,0,'Art. 2 CE','Se fundamenta en la indisoluble unidad de la Nación española y reconoce y garantiza el derecho a la autonomía de las nacionalidades y regiones y la solidaridad entre todas ellas.',null),
('aux-canarias:1-46cfa36c2e','aux-canarias',1,'¿Quién inspecciona y homologa el sistema educativo?','["Los poderes públicos", "Las universidades", "Los colegios profesionales", "Las asociaciones de padres"]'::jsonb,0,'Art. 27.8 CE','Los poderes públicos inspeccionarán y homologarán el sistema educativo para garantizar el cumplimiento de las leyes.',null),
('aux-canarias:1-0c3eb36e09','aux-canarias',1,'Según el art. 41, los poderes públicos mantendrán:','["Mutualidades profesionales obligatorias", "Un seguro médico solo para los trabajadores por cuenta ajena", "Un sistema privado de pensiones obligatorio", "Un régimen público de Seguridad Social para todos los ciudadanos"]'::jsonb,3,'Art. 41 CE','Mantendrán un régimen público de Seguridad Social para todos los ciudadanos.',null),
('aux-canarias:1-ff438fb55d','aux-canarias',1,'Según el art. 39.1, los poderes públicos aseguran:','["Una vivienda digna a cada familia", "La protección social, económica y jurídica de la familia", "La protección social, económica y jurídica de la familia, pero solo de la fundada en el matrimonio", "La educación obligatoria hasta los 25 años"]'::jsonb,1,'Art. 39.1 CE','Los poderes públicos aseguran la protección social, económica y jurídica de la familia.',null),
('aux-canarias:1-060ef796f4','aux-canarias',1,'Según el art. 50, los poderes públicos garantizarán a los ciudadanos durante la tercera edad:','["Una plaza en una residencia pública", "La gratuidad del transporte público", "Una pensión igual para todos, independientemente de lo cotizado", "Pensiones adecuadas y periódicamente actualizadas"]'::jsonb,3,'Art. 50 CE','Garantizarán, mediante pensiones adecuadas y periódicamente actualizadas, la suficiencia económica en la tercera edad.',null),
('aux-canarias:1-64f848cf3a','aux-canarias',1,'El sistema tributario, según el art. 31.1, debe ser justo, inspirado en la igualdad y la progresividad, y:','["Proporcional a la renta en todo caso", "Igual para todos los contribuyentes, con independencia de su renta", "En ningún caso tendrá alcance confiscatorio", "Exclusivamente estatal"]'::jsonb,2,'Art. 31.1 CE','Se basa en la igualdad y la progresividad, y en ningún caso tendrá alcance confiscatorio.',null),
('aux-canarias:1-5631c72632','aux-canarias',1,'Se reconoce a las personas físicas y jurídicas la libertad de:','["Expedir títulos oficiales sin necesidad de homologación", "Fijar libremente los planes de estudio oficiales", "Creación de centros docentes, dentro del respeto a los principios constitucionales", "Creación de centros docentes, que solo podrán impartir enseñanzas no regladas"]'::jsonb,2,'Art. 27.6 CE','Se reconoce la libertad de creación de centros docentes, dentro del respeto a los principios constitucionales.',null),
('aux-canarias:1-79f5440d0a','aux-canarias',1,'Según el art. 9.2, corresponde a los poderes públicos:','["Promover las condiciones para que la libertad y la igualdad sean reales y efectivas, y remover los obstáculos que lo impidan", "Regular la vida privada de los ciudadanos", "Limitar la participación política", "Garantizar la igualdad de resultados económicos entre todos los ciudadanos y territorios, y suprimir las diferencias de renta que lo impidan"]'::jsonb,0,'Art. 9.2 CE','Deben promover esas condiciones, remover los obstáculos y facilitar la participación de todos los ciudadanos.',null),
('aux-canarias:1-067ed9a473','aux-canarias',1,'¿Qué regula la ley según el art. 30.2?','["El servicio militar obligatorio, su duración y las causas de exención", "El ejército profesional exclusivamente", "La participación de España en organizaciones internacionales de defensa", "Las obligaciones militares de los españoles y la objeción de conciencia"]'::jsonb,3,'Art. 30.2 CE','La ley fijará las obligaciones militares de los españoles y regulará la objeción de conciencia.',null),
('aux-canarias:1-87d37044f5','aux-canarias',1,'Según el art. 42, el Estado orientará su política hacia el retorno de:','["Los trabajadores españoles en el extranjero", "Los capitales invertidos fuera", "Los funcionarios destinados en el exterior", "Los estudiantes de Erasmus"]'::jsonb,0,'Art. 42 CE','El Estado velará por los derechos de los trabajadores españoles en el extranjero y orientará su política hacia su retorno.',null),
('aux-canarias:1-4b9fddedff','aux-canarias',1,'El contenido del derecho de propiedad y de herencia lo delimita:','["Las ordenanzas fiscales de cada municipio", "La voluntad del propietario", "Su función social, de acuerdo con las leyes", "El Registro de la Propiedad"]'::jsonb,2,'Art. 33.2 CE','La función social de estos derechos delimitará su contenido, de acuerdo con las leyes.',null),
('aux-canarias:1-8ce1365534','aux-canarias',1,'Según el art. 23.1, los ciudadanos participan en los asuntos públicos:','["Solo por medio de los partidos políticos con representación parlamentaria", "Directamente o por medio de representantes elegidos en elecciones periódicas por sufragio censitario", "Por medio de representantes designados por las Cortes Generales y por los Parlamentos autonómicos", "Directamente o por medio de representantes libremente elegidos en elecciones periódicas por sufragio universal"]'::jsonb,3,'Art. 23.1 CE','Participan directamente o por medio de representantes libremente elegidos en elecciones periódicas por sufragio universal.',null),
('aux-canarias:1-5a2bb7111c','aux-canarias',1,'Las bases de la organización militar se regulan mediante:','["Un real decreto", "Una ley ordinaria", "Una ley orgánica", "Una orden del Ministerio de Defensa"]'::jsonb,2,'Art. 8.2 CE','Una ley orgánica regulará las bases de la organización militar.',null),
('aux-canarias:1-da5b9d8c8e','aux-canarias',1,'Según el art. 51.1, los poderes públicos garantizarán la defensa de:','["Los consumidores y usuarios, protegiendo mediante procedimientos eficaces su seguridad, salud e intereses económicos", "Los comerciantes minoristas exclusivamente", "Las empresas frente a la competencia desleal y los productores frente a las importaciones de terceros países", "Los productores agrarios"]'::jsonb,0,'Art. 51.1 CE','Garantizarán la defensa de los consumidores y usuarios mediante procedimientos eficaces.',null),
('aux-canarias:1-5ab4086072','aux-canarias',1,'En el control y la gestión de los centros sostenidos con fondos públicos intervienen:','["Solo la Administración educativa competente", "Los sindicatos más representativos y la Administración", "Solo el director del centro y el titular, en el caso de los centros concertados", "Los profesores, los padres y, en su caso, los alumnos"]'::jsonb,3,'Art. 27.7 CE','Intervienen los profesores, los padres y, en su caso, los alumnos, en los términos que la ley establezca.',null),
('aux-canarias:1-10333058b2','aux-canarias',1,'Según el art. 19, los españoles tienen derecho a:','["Una vivienda pública en su lugar de residencia", "Cambiar de nacionalidad libremente y entrar y salir de España sin requisitos", "Viajar sin pasaporte a cualquier país y residir en el extranjero sin requisitos", "Elegir libremente su residencia y a circular por el territorio nacional"]'::jsonb,3,'Art. 19 CE','Tienen derecho a elegir libremente su residencia y a circular por el territorio nacional.',null),
('aux-canarias:1-9a3e4d62bf','aux-canarias',1,'Según el art. 54 CE, el Defensor del Pueblo es:','["Alto comisionado del Gobierno, designado por el Consejo de Ministros para supervisar a la Administración", "Alto comisionado de las Cortes Generales, designado por estas para la defensa de los derechos del Título I", "Alto comisionado de las Cortes Generales, designado por el Rey a propuesta del Congreso", "Órgano del Poder Judicial encargado de la defensa de los derechos fundamentales"]'::jsonb,1,'Art. 54 CE','Puede supervisar la actividad de la Administración, dando cuenta a las Cortes Generales.',null),
('aux-canarias:1-a0b1607df8','aux-canarias',1,'La reforma del artículo 49 de la Constitución aprobada en 2024 sustituyó la expresión «disminuidos físicos, sensoriales y psíquicos» por:','["Personas con discapacidad", "Personas dependientes", "Personas con capacidades diferentes", "Personas con diversidad funcional"]'::jsonb,0,'Art. 49 CE (reforma de 17 de febrero de 2024)','Fue la tercera reforma de la Constitución, tras las de 1992 (art. 13.2) y 2011 (art. 135).',null),
('aux-canarias:2-5a79ffe05e','aux-canarias',2,'Según el art. 152.1 CE, el Tribunal Superior de Justicia:','["Culmina la organización judicial en el ámbito territorial de la Comunidad Autónoma, sin perjuicio de la jurisdicción del Tribunal Supremo", "Es el órgano jurisdiccional superior en todos los órdenes dentro de la Comunidad, sin que quepa recurso ante el Tribunal Supremo", "Es el órgano de gobierno de los jueces de la Comunidad Autónoma", "Depende del Gobierno autonómico, que nombra a su Presidente"]'::jsonb,0,'Art. 152.1 CE','Las sucesivas instancias procesales se agotan ante órganos radicados en el mismo territorio de la CA en que esté el órgano competente en primera instancia.',null),
('aux-canarias:2-813217ed97','aux-canarias',2,'Según el artículo 137 de la Constitución, el Estado se organiza territorialmente en:','["Provincias, Comunidades Autónomas y Ciudades Autónomas", "Municipios, islas y Comunidades Autónomas", "Municipios, provincias y Comunidades Autónomas", "Municipios, comarcas, provincias y regiones"]'::jsonb,2,'Art. 137 CE','Todas estas entidades gozan de autonomía para la gestión de sus respectivos intereses.',null),
('aux-canarias:2-975eb421e7','aux-canarias',2,'Según la Constitución, el gobierno y la administración de los municipios corresponde a:','["Las Diputaciones Provinciales, a través de sus delegaciones comarcales en cada municipio", "Los Delegados del Gobierno, con la colaboración de los Concejales elegidos por los vecinos", "Las asambleas vecinales abiertas, presididas por el Alcalde y el Secretario municipal", "Sus respectivos Ayuntamientos, integrados por los Alcaldes y los Concejales"]'::jsonb,3,'Art. 140 CE','Los Concejales son elegidos por los vecinos por sufragio universal, igual, libre, directo y secreto.',null),
('aux-canarias:2-37c44953c6','aux-canarias',2,'Según el artículo 140 de la Constitución, los Alcaldes serán elegidos:','["Por el Delegado del Gobierno, a propuesta de los Concejales", "Por el Pleno de la Diputación Provincial", "Por los Concejales o por los vecinos", "Siempre por sufragio universal directo de los vecinos"]'::jsonb,2,'Art. 140 CE','La ley regula las condiciones en las que procede el régimen del concejo abierto.',null),
('aux-canarias:2-187e04b18e','aux-canarias',2,'¿Qué tipo de ley es necesaria para alterar los límites provinciales?','["Una ley orgánica aprobada por las Cortes Generales", "Un real decreto del Consejo de Ministros", "Una ley ordinaria de las Cortes Generales, por mayoría absoluta", "Una ley de la Comunidad Autónoma afectada, previo informe estatal"]'::jsonb,0,'Art. 141.1 CE','La provincia es una entidad local con personalidad jurídica propia, agrupación de municipios y división territorial para el cumplimiento de las actividades del Estado.',null),
('aux-canarias:2-b2fb0d1b6f','aux-canarias',2,'En los archipiélagos, las islas tendrán además su administración propia en forma de:','["Diputaciones forales", "Cabildos o Consejos", "Juntas Generales", "Mancomunidades insulares"]'::jsonb,1,'Art. 141.4 CE','Los Cabildos existen en Canarias y los Consejos Insulares en Baleares.',null),
('aux-canarias:2-a76acbf024','aux-canarias',2,'Según el artículo 143.2 de la Constitución, la iniciativa del proceso autonómico corresponde a todas las Diputaciones interesadas o al órgano interinsular correspondiente y a:','["Los municipios que representen un tercio del censo electoral de la región histórica", "Las tres cuartas partes de los municipios que representen la mayoría absoluta de los electores", "La mitad de los municipios de cada provincia, sea cual sea su población", "Las dos terceras partes de los municipios cuya población represente, al menos, la mayoría del censo electoral de cada provincia o isla"]'::jsonb,3,'Art. 143.2 CE','Los requisitos deben cumplirse en el plazo de seis meses desde el primer acuerdo de una Corporación local.',null),
('aux-canarias:2-abffe64371','aux-canarias',2,'¿En qué plazo deben cumplirse los requisitos de iniciativa autonómica del artículo 143.2 de la Constitución?','["Dos años desde que se constituya la asamblea de parlamentarios", "Seis meses desde el primer acuerdo adoptado por alguna de las Corporaciones locales interesadas", "Tres meses desde el acuerdo de la última de las Diputaciones interesadas", "Un año desde la publicación de la Constitución en el Boletín Oficial del Estado y en los diarios oficiales"]'::jsonb,1,'Art. 143.2 CE','Si la iniciativa no prospera, solo puede reiterarse pasados cinco años.',null),
('aux-canarias:2-63ab67fd57','aux-canarias',2,'Si la iniciativa autonómica del artículo 143 no prospera:','["Podrá reiterarse pasados tres años", "Solo podrá reiterarse pasados cinco años", "Podrá reiterarse al año siguiente", "No podrá volver a plantearse nunca"]'::jsonb,1,'Art. 143.3 CE','Así lo dispone el artículo 143.3 de la Constitución.',null),
('aux-canarias:2-7c55b31439','aux-canarias',2,'Según el artículo 144 de la Constitución, las Cortes Generales, mediante ley orgánica y por motivos de interés nacional, podrán:','["Integrar dos Comunidades Autónomas limítrofes en una sola, sin necesidad de referéndum", "Disolver una Comunidad Autónoma que incumpla de forma grave las obligaciones que le imponen la Constitución u otras leyes", "Suspender la autonomía de una Comunidad Autónoma por un plazo máximo de seis meses", "Autorizar la constitución de una Comunidad Autónoma cuyo ámbito territorial no supere el de una provincia y no reúna las condiciones del artículo 143.1"]'::jsonb,3,'Art. 144 a) CE','El artículo 155 no permite disolver Comunidades, sino adoptar medidas para obligarlas a cumplir.',null),
('aux-canarias:2-87e0cabf95','aux-canarias',2,'¿Qué prohíbe el artículo 145 de la Constitución?','["Que una Comunidad Autónoma tenga varias provincias", "La federación de Comunidades Autónomas", "Los convenios entre Comunidades Autónomas", "Que las Comunidades Autónomas tengan himno propio"]'::jsonb,1,'Art. 145.1 CE','Sí se permiten convenios entre Comunidades para la gestión de servicios propios, que deben comunicarse a las Cortes Generales.',null),
('aux-canarias:2-9fb0855561','aux-canarias',2,'Los acuerdos de cooperación entre Comunidades Autónomas, distintos de los convenios para gestión de servicios propios, requieren:','["El dictamen del Consejo de Estado", "La aprobación del Consejo de Ministros", "La autorización de las Cortes Generales", "Una simple comunicación a las Cortes Generales"]'::jsonb,2,'Art. 145.2 CE','Los convenios para la gestión y prestación de servicios propios solo deben comunicarse a las Cortes.',null),
('aux-canarias:2-fb504bf285','aux-canarias',2,'Según el artículo 147 de la Constitución, el Estatuto de Autonomía es:','["Un tratado entre el Estado y la Comunidad Autónoma", "Un reglamento del Gobierno de la Nación para cada Comunidad", "La norma institucional básica de cada Comunidad Autónoma", "Una ley ordinaria aprobada por el Parlamento autonómico"]'::jsonb,2,'Art. 147.1 CE','El Estado lo reconoce y ampara como parte integrante de su ordenamiento jurídico.',null),
('aux-canarias:2-46c64ca846','aux-canarias',2,'¿Cuál de los siguientes contenidos NO exige la Constitución que figure en los Estatutos de Autonomía?','["La delimitación de su territorio", "La denominación de la Comunidad", "La lengua cooficial de la Comunidad", "Las competencias asumidas"]'::jsonb,2,'Art. 147.2 CE','El art. 147.2 exige denominación, delimitación del territorio, denominación, organización y sede de las instituciones propias y competencias asumidas.',null),
('aux-canarias:2-43b1bae131','aux-canarias',2,'La reforma de los Estatutos de Autonomía requiere, en todo caso:','["Un referéndum en todo el territorio nacional", "La aprobación por las Cortes Generales mediante ley orgánica", "El acuerdo del Senado por mayoría de tres quintos", "La aprobación por el Gobierno de la Nación mediante real decreto"]'::jsonb,1,'Art. 147.3 CE','El procedimiento lo fija cada Estatuto.',null),
('aux-canarias:2-e329be8f4c','aux-canarias',2,'Según el artículo 148.2 de la Constitución, las Comunidades Autónomas podían ampliar sucesivamente sus competencias transcurridos:','["Diez años", "Dos años", "Tres años", "Cinco años"]'::jsonb,3,'Art. 148.2 CE','Mediante la reforma de sus Estatutos, dentro del marco del artículo 149.',null),
('aux-canarias:2-bb43f6d555','aux-canarias',2,'Las materias no atribuidas expresamente al Estado por la Constitución podrán corresponder a las Comunidades Autónomas:','["Por acuerdo de la Conferencia de Presidentes", "Solo mediante ley de transferencia", "En virtud de sus respectivos Estatutos", "Siempre, de forma automática"]'::jsonb,2,'Art. 149.3 CE','Las no asumidas por los Estatutos corresponden al Estado, cuyo derecho es en todo caso supletorio del de las Comunidades Autónomas.',null),
('aux-canarias:2-cef9843825','aux-canarias',2,'En caso de conflicto, las normas del Estado prevalecen sobre las de las Comunidades Autónomas:','["En todo lo que no esté atribuido a la exclusiva competencia de estas", "Solo en materia de relaciones internacionales", "Solo si la norma estatal es posterior", "En todo caso, sin excepción alguna"]'::jsonb,0,'Art. 149.3 CE','Es la cláusula de prevalencia del derecho estatal.',null),
('aux-canarias:2-c6fa9f78b0','aux-canarias',2,'¿Qué leyes permiten a las Cortes atribuir a las Comunidades Autónomas la facultad de dictar normas legislativas en el marco de principios, bases y directrices fijados por una ley estatal?','["Las leyes de bases", "Las leyes marco", "Las leyes de armonización", "Las leyes orgánicas de transferencia"]'::jsonb,1,'Art. 150.1 CE','Las leyes de bases sirven para delegar en el Gobierno la elaboración de textos articulados.',null),
('aux-canarias:2-1deadce544','aux-canarias',2,'La transferencia o delegación a las Comunidades Autónomas de facultades de titularidad estatal se hace mediante:','["Ley ordinaria", "Real decreto legislativo", "Ley orgánica", "Ley marco"]'::jsonb,2,'Art. 150.2 CE','Debe prever la correspondiente transferencia de medios financieros y las formas de control que se reserve el Estado.',null),
('aux-canarias:2-a6decd5120','aux-canarias',2,'¿Quién aprecia la necesidad de dictar una ley de armonización?','["El Senado, por mayoría de dos tercios, a propuesta de la Comisión General de las CCAA", "El Tribunal Constitucional, a instancia del Gobierno o de cincuenta diputados", "Las Cortes Generales, por mayoría absoluta de cada Cámara", "El Gobierno de la Nación, previo dictamen favorable del Consejo de Estado"]'::jsonb,2,'Art. 150.3 CE','Lo exige el interés general, aunque se trate de materias atribuidas a la competencia de las Comunidades Autónomas.',null),
('aux-canarias:2-e466557fff','aux-canarias',2,'En la vía del artículo 151 de la Constitución, la iniciativa autonómica debía ratificarse mediante referéndum por:','["La mayoría absoluta de los votos válidos emitidos en el conjunto de toda España", "El voto afirmativo de la mayoría absoluta de los electores de cada provincia", "La mayoría simple de los votos emitidos en el conjunto del territorio de la futura Comunidad", "Dos tercios de los votantes de cada provincia"]'::jsonb,1,'Art. 151.1 CE','Además, la iniciativa debía acordarse por las Diputaciones y por las tres cuartas partes de los municipios de cada provincia.',null),
('aux-canarias:2-fa15375259','aux-canarias',2,'Según el artículo 152 de la Constitución, el Presidente de la Comunidad Autónoma es:','["Elegido por el Senado entre los senadores de la Comunidad", "Elegido directamente por los ciudadanos de la Comunidad en las elecciones autonómicas y nombrado por el Rey", "Nombrado por el Presidente del Gobierno, a propuesta de la Asamblea", "Elegido por la Asamblea Legislativa de entre sus miembros y nombrado por el Rey"]'::jsonb,3,'Art. 152.1 CE','Dirige el Consejo de Gobierno y ostenta la suprema representación de la Comunidad y la ordinaria del Estado en ella.',null),
('aux-canarias:2-4eb286cc34','aux-canarias',2,'El control económico y presupuestario de los órganos de las Comunidades Autónomas corresponde, según el artículo 153 de la Constitución, a:','["La jurisdicción contencioso-administrativa", "El Tribunal de Cuentas", "El Ministerio de Hacienda", "El Tribunal Constitucional"]'::jsonb,1,'Art. 153 d) CE','El TC controla las disposiciones con fuerza de ley y la jurisdicción contencioso-administrativa, la administración autónoma y sus reglamentos.',null),
('aux-canarias:2-1f8f06a0d8','aux-canarias',2,'¿Quién controla las funciones delegadas a las Comunidades Autónomas conforme al artículo 150.2 de la Constitución?','["El Tribunal de Cuentas, previo informe de la Intervención General", "El Tribunal Constitucional, previo recurso del Senado", "Los Tribunales Superiores de Justicia", "El Gobierno, previo dictamen del Consejo de Estado"]'::jsonb,3,'Art. 153 b) CE','Es una de las cuatro vías de control de la actividad autonómica que enumera el artículo 153.',null),
('aux-canarias:2-1c5c97f9de','aux-canarias',2,'Para aplicar las medidas del artículo 155 de la Constitución, el Gobierno necesita:','["Requerir previamente al Presidente de la Comunidad Autónoma y la aprobación de la mayoría absoluta del Senado", "La aprobación del Consejo de Estado y del Congreso", "La autorización del Congreso de los Diputados por mayoría de tres quintos", "Un dictamen favorable del Tribunal Constitucional"]'::jsonb,0,'Art. 155.1 CE','Se aplica si una Comunidad no cumple las obligaciones de la Constitución o las leyes o actúa contra el interés general de España.',null),
('aux-canarias:2-0f99be4b76','aux-canarias',2,'¿Qué fondo prevé el artículo 158.2 de la Constitución para corregir desequilibrios económicos interterritoriales?','["El Fondo de Suficiencia Global", "El Fondo de Compensación", "El Fondo de Garantía de Servicios Públicos Fundamentales", "El Fondo de Cohesión Territorial"]'::jsonb,1,'Art. 158.2 CE','Sus recursos se distribuyen por las Cortes Generales entre las Comunidades Autónomas y provincias.',null),
('aux-canarias:3-cb29a8fb89','aux-canarias',3,'¿Qué clases de competencias ejerce la Comunidad Autónoma de Canarias según su Estatuto?','["Exclusivas, de desarrollo legislativo y de ejecución, y ejecutivas", "Plenas, compartidas y residuales, según la cláusula de cierre del Estatuto", "Exclusivas, concurrentes y delegadas", "Exclusivas, compartidas con los cabildos, de ejecución y residuales asumidas por cláusula general"]'::jsonb,0,'Art. 94.1 EACan','La Comunidad Autónoma ejerce competencias exclusivas, de desarrollo legislativo y de ejecución y ejecutivas.',null),
('aux-canarias:3-006f6a5106','aux-canarias',3,'En el ámbito de sus competencias exclusivas, ¿qué potestades ejerce la Comunidad Autónoma de Canarias?','["La legislativa, la reglamentaria y la función ejecutiva, de forma íntegra", "Solo la reglamentaria y la ejecutiva, quedando la legislativa reservada al Estado", "La legislativa, en el marco de las bases estatales", "Solo la ejecutiva, salvo que una ley estatal le atribuya potestad reglamentaria"]'::jsonb,0,'Art. 95.1 EACan','En sus competencias exclusivas ejerce de forma íntegra la potestad legislativa, la reglamentaria y la función ejecutiva.',null),
('aux-canarias:3-2f53e683f5','aux-canarias',3,'En las competencias de desarrollo legislativo y de ejecución, ¿en qué marco actúa la Comunidad Autónoma de Canarias?','["Sin sujeción a ninguna norma estatal", "En el marco de las bases que fije el Estado", "En el marco de los acuerdos de la Comisión Bilateral de Cooperación con el Estado", "En el marco de los convenios con los cabildos"]'::jsonb,1,'Art. 96.1 EACan','Le corresponden la potestad legislativa, reglamentaria y ejecutiva en el marco de las bases que fije el Estado.',null),
('aux-canarias:3-ff2f4999c8','aux-canarias',3,'En el ámbito de las competencias ejecutivas, ¿qué potestad reglamentaria corresponde a Canarias?','["La aprobación de reglamentos ejecutivos de leyes estatales", "Ninguna potestad reglamentaria, que corresponde en exclusiva al Gobierno de Canarias", "Ninguna, porque la potestad reglamentaria se reserva al Estado en las competencias ejecutivas", "La aprobación de reglamentos internos de organización de los servicios"]'::jsonb,3,'Art. 97 b) EACan','En las competencias ejecutivas, la potestad reglamentaria comprende la aprobación de reglamentos internos de organización de los servicios.',null),
('aux-canarias:3-48aa80502b','aux-canarias',3,'¿Qué establece el principio de prevalencia del Estatuto de Autonomía de Canarias?','["Que el derecho propio en competencias exclusivas se aplica con preferencia a cualquier otro", "Que el derecho estatal prevalece siempre sobre el canario", "Que las ordenanzas insulares prevalecen sobre las leyes autonómicas", "Que la ley estatal posterior prevalece sobre la ley autonómica anterior"]'::jsonb,0,'Art. 98 EACan','El derecho propio de Canarias en materia de competencia exclusiva es aplicable en su territorio con preferencia a cualquier otro.',null),
('aux-canarias:3-b48af8858c','aux-canarias',3,'¿Cómo ejerce Canarias las competencias no contempladas expresamente en su Estatuto?','["Asumiéndolas automáticamente por cláusula residual", "En las materias que le sean transferidas o delegadas por el Estado", "Por acuerdo del Gobierno de Canarias, que las asume de forma provisional hasta su transferencia", "Mediante ley del Parlamento de Canarias aprobada por mayoría absoluta de la Cámara"]'::jsonb,1,'Art. 100.1 EACan','La Comunidad ejercerá las competencias no contempladas en el Estatuto en las materias que le sean transferidas o delegadas por el Estado.',null),
('aux-canarias:3-fa8de271d5','aux-canarias',3,'¿Qué debe tener en cuenta la normativa estatal según el artículo 101 del Estatuto de Canarias?','["La opinión vinculante del Parlamento de Canarias", "La previa conformidad del Gobierno de Canarias", "El informe previo de los cabildos insulares", "Las singularidades derivadas del carácter ultraperiférico de Canarias"]'::jsonb,3,'Art. 101 EACan','La normativa del Estado tendrá en cuenta las singularidades derivadas del carácter ultraperiférico de Canarias reconocidas por la Unión Europea.',null),
('aux-canarias:3-175e47c2c1','aux-canarias',3,'¿Qué carácter tiene la competencia de Canarias para establecer la organización y el régimen de funcionamiento de su Administración?','["Ejecutiva", "Exclusiva, sin perjuicio del artículo 149.1.18 de la Constitución", "Compartida con el Estado", "De desarrollo legislativo de las bases estatales"]'::jsonb,1,'Art. 104 EACan','Es competencia exclusiva, sin perjuicio del art. 149.1.18 CE, e incluye crear, modificar y suprimir órganos, unidades y entidades.',null),
('aux-canarias:3-4d71ef22ed','aux-canarias',3,'¿Qué circunstancias de Canarias deben tener en cuenta los poderes públicos al adaptar sus políticas, según el artículo 3 del Estatuto?','["La lejanía, la insularidad y la condición ultraperiférica", "La lengua, la cultura y la historia propias", "La densidad de población, el turismo y la escasez de recursos hídricos", "La riqueza de sus recursos naturales y la vocación atlántica de su economía"]'::jsonb,0,'Art. 3 EACan','Los poderes públicos tendrán en cuenta la lejanía, la insularidad y la condición ultraperiférica al adaptar sus políticas y decisiones.',null),
('aux-canarias:3-c8571c1448','aux-canarias',3,'¿Qué califica el Estatuto de Autonomía como norma institucional básica de Canarias?','["La Ley de Cabildos Insulares", "La Ley de Municipios de Canarias", "La Ley del Gobierno de Canarias", "El propio Estatuto de Autonomía"]'::jsonb,3,'Art. 2.1 EACan','Los poderes de la Comunidad emanan de la Constitución y del pueblo canario, en los términos del Estatuto, que es su norma institucional básica.',null),
('aux-canarias:3-e62f315e89','aux-canarias',3,'¿Qué órgano controla la constitucionalidad de las leyes del Parlamento de Canarias?','["La Audiencia de Cuentas de Canarias", "El Tribunal Superior de Justicia de Canarias", "El Tribunal Constitucional", "El Consejo Consultivo de Canarias"]'::jsonb,2,'Art. 47.2 EACan','El control de constitucionalidad de las leyes y normas con fuerza de ley de Canarias corresponde al Tribunal Constitucional.',null),
('aux-canarias:3-a408780120','aux-canarias',3,'¿Dónde deben publicarse las leyes del Parlamento de Canarias y en qué plazo?','["Solo en el BOE, en el plazo de un mes, sin necesidad de publicarla en el BOC", "En el BOC en 30 días, sin publicación en el BOE", "En el BOC en 15 días desde su promulgación, sin necesidad de publicarlas en el BOE", "En el BOC en 15 días desde su aprobación, y en el BOE"]'::jsonb,3,'Art. 47.1 EACan','Se publican en el BOC en 15 días desde su aprobación y en el BOE; la entrada en vigor se rige por la fecha del BOC.',null),
('aux-canarias:3-814e8cd20b','aux-canarias',3,'¿Dónde se publican, para su plena validez, las normas sin rango de ley de los órganos de la Comunidad Autónoma de Canarias?','["En el Boletín Oficial de Canarias", "En el Boletín Oficial del Estado", "En el boletín oficial del cabildo insular competente", "En el boletín de la provincia correspondiente"]'::jsonb,0,'Art. 63.2 EACan','Las normas sin rango de ley de los órganos de la Comunidad se publicarán, para su plena validez, en el BOC.',null),
('aux-canarias:4-2dd49332e4','aux-canarias',4,'Según el Estatuto de Autonomía de Canarias, ¿cómo ejerce Canarias el derecho al autogobierno?','["Como comunidad histórica foral", "Como nacionalidad", "Como región", "Como comunidad autónoma de régimen común sin la condición de nacionalidad"]'::jsonb,1,'Art. 1.1 EACan','Canarias ejerce el derecho al autogobierno como nacionalidad, constituyéndose en Comunidad Autónoma en el marco del Estado español.',null),
('aux-canarias:4-83bbd5eb7c','aux-canarias',4,'¿A través de qué órganos se ejercen los poderes de la Comunidad Autónoma de Canarias según su Estatuto?','["Del Parlamento, del Gobierno y de los cabildos insulares", "Del Parlamento, de la Presidencia y del Gobierno", "Del Parlamento, de la Presidencia, del Gobierno y de la Diputación del Común", "De la Presidencia, del Gobierno y del Consejo Consultivo"]'::jsonb,1,'Art. 2.2 EACan','Los poderes de la Comunidad Autónoma se ejercen a través del Parlamento, de la Presidencia y del Gobierno.',null),
('aux-canarias:4-4638c10a24','aux-canarias',4,'¿Qué carácter atribuye el Estatuto de Autonomía de Canarias a los cabildos insulares?','["Entidades locales sin carácter de institución autonómica", "Instituciones de la Comunidad Autónoma y órganos de gobierno de cada isla", "Corporaciones de derecho público con funciones delegadas por el Estado y por la Comunidad Autónoma", "Órganos desconcentrados del Gobierno de Canarias en cada una de las islas del archipiélago"]'::jsonb,1,'Art. 2.3 EACan','Los cabildos son, simultáneamente, instituciones de la Comunidad Autónoma y órganos de gobierno, administración y representación de cada isla.',null),
('aux-canarias:4-ebb4ff719a','aux-canarias',4,'¿Cuántas islas con administración propia integran el archipiélago canario según el Estatuto?','["Ocho", "Siete", "Nueve", "Seis"]'::jsonb,1,'Art. 4.1 EACan','Siete islas con administración propia: El Hierro, Fuerteventura, Gran Canaria, La Gomera, Lanzarote, La Palma y Tenerife, además de La Graciosa y los islotes.',null),
('aux-canarias:4-552080e1e8','aux-canarias',4,'¿Dónde tiene su sede el Parlamento de Canarias?','["En la isla cuya capital acoja la Presidencia durante la legislatura", "En Santa Cruz de Tenerife", "Alternativamente en ambas capitales por legislaturas", "En Las Palmas de Gran Canaria"]'::jsonb,1,'Art. 5.2 EACan','El Parlamento de Canarias tiene su sede en la ciudad de Santa Cruz de Tenerife.',null),
('aux-canarias:4-8450518b1e','aux-canarias',4,'¿Cómo se fija la sede de la Presidencia de Canarias?','["La fija cada Presidente al tomar posesión, mediante decreto publicado en el BOC", "Está siempre en Las Palmas de Gran Canaria", "Se fija por ley del Parlamento de Canarias aprobada por mayoría absoluta", "Alterna entre las dos capitales por periodos legislativos"]'::jsonb,3,'Art. 5.1 EACan','La sede de la Presidencia alterna entre Las Palmas de Gran Canaria y Santa Cruz de Tenerife por periodos legislativos; la Vicepresidencia se ubica en la otra capital.',null),
('aux-canarias:4-585abeb072','aux-canarias',4,'¿Quiénes gozan de la condición política de canarios?','["Los españoles que hayan residido al menos diez años en Canarias, aunque ya no tengan allí su vecindad", "Los españoles con vecindad administrativa en cualquier municipio de Canarias", "Los residentes en Canarias, sean o no españoles", "Los nacidos en Canarias, residan donde residan, y sus descendientes de primer grado"]'::jsonb,1,'Art. 6.1 EACan','Gozan de la condición política de canarios las personas con nacionalidad española que tengan vecindad administrativa en cualquier municipio de Canarias.',null),
('aux-canarias:4-45f1aab60e','aux-canarias',4,'¿Cuáles son los colores de la bandera de Canarias, a partir del asta?','["Blanco, amarillo y azul", "Blanco, azul y amarillo", "Amarillo, azul y blanco", "Azul, blanco y amarillo"]'::jsonb,1,'Art. 7.1 EACan','La bandera está formada por tres franjas verticales iguales: blanco, azul y amarillo, a partir del asta.',null),
('aux-canarias:4-9782a89059','aux-canarias',4,'¿Qué día celebra la Comunidad Autónoma de Canarias su festividad institucional?','["El 2 de febrero", "El 25 de julio", "El 12 de octubre", "El 30 de mayo"]'::jsonb,3,'Art. 7.4 EACan','La Comunidad Autónoma de Canarias celebra su festividad institucional el día 30 de mayo.',null),
('aux-canarias:4-9aec4d4731','aux-canarias',4,'¿Qué lema figura en el escudo de Canarias?','["Libertad", "Océano", "Atlántico", "Fortuna"]'::jsonb,1,'Art. 7.2 EACan','El escudo lleva como timbre una corona real con una cinta de plata con el lema Océano.',null),
('aux-canarias:4-6ef7cc0d94','aux-canarias',4,'¿Pueden los derechos del título I del Estatuto de Canarias crear títulos competenciales nuevos?','["Sí, cuando lo prevea una ley del Parlamento de Canarias", "Solo en materia de servicios sociales", "Sí, siempre que se trate de derechos sociales reconocidos expresamente en el Estatuto", "No, no alteran la distribución de competencias"]'::jsonb,3,'Art. 10.2 EACan','Los derechos, deberes y principios del título I no suponen alteración del régimen de competencias ni la creación de títulos competenciales nuevos.',null),
('aux-canarias:4-6c50e79a26','aux-canarias',4,'¿A quién puede dirigirse toda persona en defensa de sus derechos frente a lesiones imputables a las administraciones públicas de Canarias?','["A la Audiencia de Cuentas", "A la Diputación del Común", "Al Consejo Consultivo de Canarias", "Al Comisionado de Transparencia y Acceso a la Información Pública"]'::jsonb,1,'Art. 36.3 EACan','Sin perjuicio de las garantías constitucionales, toda persona puede dirigirse a la Diputación del Común en defensa de sus derechos.',null),
('aux-canarias:4-56ca5e067c','aux-canarias',4,'¿Qué derecho reconoce el Estatuto de Canarias a las personas en situación de exclusión social?','["El derecho a una vivienda gratuita", "El derecho a un empleo público adecuado a la formación de cada persona", "El derecho a una pensión no contributiva complementaria a cargo de los cabildos", "El derecho a acceder a una renta de ciudadanía"]'::jsonb,3,'Art. 24.1 EACan','Las personas en situación de exclusión social tienen derecho a acceder a una renta de ciudadanía en los términos que establezcan las leyes.',null),
('aux-canarias:4-516b2570e8','aux-canarias',4,'¿Cuál de estos derechos forma parte del derecho a una buena administración en el Estatuto de Canarias?','["La elección del funcionario que tramita el expediente", "La tramitación preferente de los asuntos presentados por vecinos de islas no capitalinas", "La gratuidad de todos los procedimientos administrativos", "La resolución de los asuntos en un plazo razonable"]'::jsonb,3,'Art. 32 c) EACan','El derecho a una buena administración incluye, entre otros, la resolución de los asuntos en un plazo razonable.',null),
('aux-canarias:4-60bb6be02e','aux-canarias',4,'¿Cómo define el Estatuto de Canarias el español de Canarias entre sus principios rectores?','["Como dialecto del español peninsular", "Como variedad lingüística del español atlántico", "Como modalidad lingüística protegida con rango de lengua propia de Canarias", "Como lengua cooficial de la Comunidad Autónoma"]'::jsonb,1,'Art. 37.7 EACan','Es principio rector la defensa, promoción y estudio del español de Canarias, como variedad lingüística del español atlántico.',null),
('aux-canarias:4-fa9bb6905b','aux-canarias',4,'¿A quién corresponde la iniciativa de la reforma del Estatuto de Autonomía de Canarias?','["Al Parlamento de Canarias a propuesta de la mayoría absoluta de sus diputados", "Al Gobierno o al Parlamento de Canarias a propuesta de al menos una quinta parte de sus diputados", "Al Gobierno de Canarias o a dos cabildos insulares", "A los cabildos insulares, actuando de forma conjunta, o a la quinta parte de los ayuntamientos canarios"]'::jsonb,1,'Art. 200.1 EACan','La iniciativa de reforma corresponde al Gobierno o al Parlamento de Canarias a propuesta de al menos una quinta parte de sus diputados.',null),
('aux-canarias:4-713d95168b','aux-canarias',4,'¿Qué mayoría del Parlamento de Canarias requiere la propuesta de reforma del Estatuto?','["Cuatro quintos de sus miembros", "Dos tercios de sus miembros", "Mayoría absoluta de sus miembros", "Tres quintos de sus miembros"]'::jsonb,3,'Art. 200.2 EACan','La propuesta requiere la aprobación del Parlamento por tres quintos, la de las Cortes mediante ley orgánica y referéndum de los electores.',null),
('aux-canarias:4-8b6e35bc5c','aux-canarias',4,'Aprobada la reforma del Estatuto por las Cortes, ¿en qué plazo puede el Gobierno de Canarias convocar el referéndum de ratificación?','["En el plazo de tres meses", "En el plazo de seis meses", "En el plazo de un mes", "En el plazo de dos meses"]'::jsonb,0,'Art. 200.4 EACan','La ley orgánica incluye la autorización del Estado para que el Gobierno de Canarias convoque el referéndum en el plazo de tres meses.',null),
('aux-canarias:4-f6044b5dc6','aux-canarias',4,'Si una propuesta de reforma del Estatuto de Canarias no es aprobada, ¿cuánto tiempo debe pasar para volver a debatirla en el Parlamento?','["Dos años", "Tres años", "Seis meses", "Un año"]'::jsonb,3,'Art. 200.5 EACan','No podrá someterse nuevamente a debate y votación del Parlamento hasta que haya transcurrido un año.',null),
('aux-canarias:4-b9399c764d','aux-canarias',4,'¿Cuándo puede seguirse el procedimiento abreviado de reforma del Estatuto de Canarias?','["Cuando la reforma afecte únicamente a la organización territorial de las islas", "Cuando la reforma afecte solo al capítulo II del título I", "Cuando la propuesta se apruebe por unanimidad", "Cuando la reforma afecte solo al título de competencias"]'::jsonb,1,'Art. 201 EACan','El procedimiento abreviado procede cuando la reforma afectare solo al capítulo II del título I del Estatuto.',null),
('aux-canarias:4-6a4c99e482','aux-canarias',4,'En el procedimiento abreviado de reforma del Estatuto de Canarias, ¿de qué plazo disponen las Cortes para declararse afectadas?','["Dos meses", "Quince días", "Tres meses", "Treinta días"]'::jsonb,3,'Art. 201 c) EACan','Si en treinta días desde la recepción de la consulta las Cortes no se declaran afectadas, la reforma se ratifica mediante ley orgánica.',null),
('aux-canarias:4-fc63264ad4','aux-canarias',4,'¿Qué trámite exige el Estatuto cuando la reforma altera la organización de los poderes de Canarias que afecta directamente a las islas?','["La aprobación de cada cabildo por mayoría absoluta", "La audiencia previa de los cabildos insulares", "El informe vinculante de la Conferencia de Presidentes", "El dictamen previo del Consejo de Estado"]'::jsonb,1,'Art. 202 EACan','Se requiere la audiencia previa de los cabildos insulares.',null),
('aux-canarias:5-ac67f81fb7','aux-canarias',5,'¿Cuál es la duración del mandato del Parlamento de Canarias?','["Cinco años", "Cuatro años", "Cinco años, salvo disolución anticipada", "Tres años"]'::jsonb,1,'Art. 38.3 EACan','La duración del mandato es de cuatro años, sin perjuicio de los supuestos de disolución anticipada.',null),
('aux-canarias:5-94b9b9ee82','aux-canarias',5,'¿Entre qué cifras debe estar el número de diputados del Parlamento de Canarias según el Estatuto?','["Entre sesenta y setenta", "Entre setenta y noventa", "Entre cincuenta y setenta y cinco", "Entre cuarenta y sesenta"]'::jsonb,2,'Art. 39.2 b) EACan','El número de diputados no será inferior a cincuenta ni superior a setenta y cinco.',null),
('aux-canarias:5-80d296b517','aux-canarias',5,'¿Qué mayoría exige el Estatuto para la ley electoral de Canarias?','["Cuatro quintos del Parlamento", "Dos tercios del Parlamento", "Mayoría absoluta del Parlamento", "Tres quintos del Parlamento"]'::jsonb,3,'Art. 39.2 EACan','La ley que regula el régimen electoral se aprueba por mayoría de tres quintos, a iniciativa de los miembros del Parlamento.',null),
('aux-canarias:5-288142a10e','aux-canarias',5,'¿Qué ámbito pueden tener las circunscripciones electorales para el Parlamento de Canarias?','["Provincial e insular", "Solo insular", "Autonómico, insular o ambos", "Autonómico, provincial o insular"]'::jsonb,2,'Art. 39.2 c) EACan','Las circunscripciones pueden ser de ámbito autonómico, insular o de ambas; cada isla con administración propia es una circunscripción.',null),
('aux-canarias:5-db048a0883','aux-canarias',5,'¿Cómo está compuesta la Mesa del Parlamento de Canarias?','["Una presidencia, dos vicepresidencias y dos secretarías", "Una presidencia, una vicepresidencia y tres secretarías", "Una presidencia, dos vicepresidencias y cuatro secretarías", "Una presidencia, tres vicepresidencias y una secretaría"]'::jsonb,0,'Art. 41.1 EACan','La Mesa está formada por una presidencia, dos vicepresidencias y dos secretarías.',null),
('aux-canarias:5-60714200a3','aux-canarias',5,'¿Por qué mayoría debe aprobarse el Reglamento del Parlamento de Canarias?','["Mayoría simple de los presentes", "Mayoría absoluta de sus miembros", "Dos tercios de sus miembros", "Tres quintos de sus miembros"]'::jsonb,1,'Art. 41.4 EACan','El Reglamento del Parlamento debe ser aprobado por mayoría absoluta de sus miembros.',null),
('aux-canarias:5-a9664c701c','aux-canarias',5,'¿A través de qué órgano participan los cabildos insulares en el Parlamento de Canarias?','["La Comisión de Asuntos Insulares del Gobierno", "La Conferencia de Presidentes", "El Consejo Municipal de Canarias", "La Comisión General de Cabildos Insulares"]'::jsonb,3,'Art. 41.5 EACan','Los cabildos participan a través de la Comisión General de Cabildos Insulares, cuyo informe es preceptivo en asuntos que les afecten.',null),
('aux-canarias:5-6be079453e','aux-canarias',5,'¿Qué ocurre si dos tercios de los diputados de una circunscripción insular se oponen motivadamente a un acuerdo por considerarlo perjudicial para la isla?','["Se somete a votación en la Comisión General de Cabildos", "El acuerdo queda rechazado definitivamente", "El asunto se pospone a la sesión plenaria siguiente", "Debe dictaminar el Consejo Consultivo"]'::jsonb,2,'Art. 41.6 EACan','Si al menos dos tercios de los diputados de una misma isla se oponen motivadamente, el asunto se pospone a la sesión plenaria siguiente.',null),
('aux-canarias:5-f640ff614b','aux-canarias',5,'¿Quién puede pedir la convocatoria de sesiones extraordinarias del Parlamento de Canarias fuera de los periodos de sesiones?','["La mayoría absoluta de los diputados o tres cabildos", "La Diputación Permanente, una cuarta parte de los diputados, dos grupos o el Gobierno", "Una décima parte de los diputados, un grupo parlamentario o cualquier cabildo insular", "Solo el Presidente de Canarias"]'::jsonb,1,'Art. 41.7 EACan','Las convoca la presidencia del Parlamento a petición de la Diputación Permanente, una cuarta parte de los diputados, dos grupos parlamentarios o el Gobierno.',null),
('aux-canarias:5-75309e871f','aux-canarias',5,'¿Corresponde a los cabildos insulares la iniciativa legislativa ante el Parlamento de Canarias?','["Sí, a cada uno de ellos", "Solo si actúan agrupados al menos tres cabildos", "No, solo al Gobierno y a los diputados", "Solo cuando la iniciativa sea conjunta de todos los cabildos"]'::jsonb,0,'Art. 44.2 EACan','La iniciativa legislativa corresponde también a cada uno de los cabildos insulares, en los términos del Reglamento del Parlamento.',null),
('aux-canarias:5-5f78aa1618','aux-canarias',5,'¿Qué leyes no puede delegar el Parlamento de Canarias en el Gobierno?','["Las que regulen materias de competencia exclusiva de la Comunidad Autónoma", "Las que regulen tributos propios", "Las del presupuesto y las de instituciones o que requieran mayoría cualificada", "Las de organización administrativa"]'::jsonb,2,'Art. 45.1 EACan','No cabe delegación legislativa en las leyes del presupuesto ni en las de instituciones autonómicas o que requieran mayoría cualificada.',null),
('aux-canarias:5-928008678e','aux-canarias',5,'¿En qué plazo deben convalidarse por el Parlamento de Canarias los decretos-leyes?','["Quince días naturales desde su publicación", "Treinta días naturales desde su publicación", "Treinta días hábiles desde su aprobación", "Un mes desde su aprobación por el Gobierno"]'::jsonb,1,'Art. 46.3 EACan','Los decretos-leyes deben convalidarse en el plazo de treinta días naturales contados desde su publicación.',null),
('aux-canarias:5-840423da49','aux-canarias',5,'En la investidura del Presidente de Canarias, si no se obtiene mayoría absoluta en primera votación, ¿qué ocurre?','["Se vota de nuevo pasadas 48 horas y basta la mayoría simple", "Se vota al día siguiente y se exige de nuevo mayoría absoluta", "Se repite la votación en el plazo de siete días exigiendo mayoría absoluta", "Queda disuelto el Parlamento"]'::jsonb,0,'Art. 48.3 EACan','Pasadas 48 horas se procede a una nueva votación y la confianza se entiende otorgada por mayoría simple.',null),
('aux-canarias:5-a6614772e6','aux-canarias',5,'¿Cuándo queda automáticamente disuelto el Parlamento de Canarias por falta de investidura?','["Tras tres votaciones fallidas", "Si tras cuatro votaciones ningún candidato obtiene la mayoría absoluta", "Si en un mes desde la constitución del Parlamento no hay Presidente", "Si en dos meses desde la primera votación ningún candidato obtiene la confianza"]'::jsonb,3,'Art. 48.4 EACan','Si transcurridos dos meses desde la primera votación de investidura ninguna candidatura obtiene la confianza, el Parlamento queda disuelto.',null),
('aux-canarias:5-434b688980','aux-canarias',5,'¿Quién nombra al Presidente de Canarias una vez elegido por el Parlamento?','["El Presidente del Parlamento de Canarias", "El Presidente del Tribunal Superior de Justicia de Canarias", "El Rey", "El Presidente del Gobierno de España"]'::jsonb,2,'Art. 48.5 EACan','Una vez elegida, la persona titular de la Presidencia es nombrada por el Rey.',null),
('aux-canarias:5-ff40c26ded','aux-canarias',5,'¿Qué requisito debe cumplir la persona titular de la Vicepresidencia de Canarias?','["Residir en la capital donde no esté la Presidencia", "Haber nacido en una isla distinta a la de la persona titular de la Presidencia", "Haber sido consejero en la legislatura anterior", "Ser miembro del Parlamento de Canarias"]'::jsonb,3,'Art. 49.5 EACan','La persona titular de la Vicepresidencia habrá de ser miembro del Parlamento y sustituye a la Presidencia en caso de vacancia, ausencia o enfermedad.',null),
('aux-canarias:5-8baca74338','aux-canarias',5,'¿Cómo responde el Gobierno de Canarias de su gestión política ante el Parlamento?','["Solo a través del Presidente", "Solidariamente", "Individualmente cada consejero", "Mancomunadamente con los cabildos insulares"]'::jsonb,1,'Art. 53 EACan','El Gobierno responde solidariamente de su gestión política ante el Parlamento; no puede exigirse responsabilidad política individual a sus miembros.',null),
('aux-canarias:5-a32b0e0070','aux-canarias',5,'¿Qué mayoría se exige para que el Parlamento de Canarias apruebe una moción de censura?','["Mayoría absoluta", "Dos tercios", "Mayoría simple", "Tres quintos"]'::jsonb,0,'Art. 55 EACan','La moción de censura se adopta por mayoría absoluta y debe incluir un candidato a la Presidencia.',null),
('aux-canarias:5-9460f9a9de','aux-canarias',5,'¿Qué porcentaje mínimo de diputados debe presentar una moción de censura en el Parlamento de Canarias?','["El veinticinco por ciento", "El diez por ciento", "El quince por ciento", "El veinte por ciento"]'::jsonb,2,'Art. 55 EACan','Toda moción de censura debe ser presentada, al menos, por el quince por ciento de los miembros del Parlamento.',null),
('aux-canarias:5-918b335a62','aux-canarias',5,'¿Con qué mayoría se entiende otorgada la cuestión de confianza en el Parlamento de Canarias?','["Mayoría absoluta de los miembros", "Tres quintos de los votos emitidos", "Mayoría absoluta de los votos emitidos", "Mayoría simple de los votos emitidos"]'::jsonb,3,'Art. 54 EACan','La confianza se entiende otorgada cuando el presidente obtiene la mayoría simple de los votos emitidos.',null),
('aux-canarias:5-aa62286fcc','aux-canarias',5,'¿Cuándo no puede el Presidente de Canarias disolver anticipadamente el Parlamento?','["Con una moción de censura presentada o durante el primer año de legislatura", "Mientras se tramiten los presupuestos generales de la comunidad autónoma en el Parlamento", "Durante el último año de legislatura o mientras se tramite una cuestión de confianza", "Durante los dos últimos años de legislatura"]'::jsonb,0,'Art. 56.2 EACan','La disolución no puede decretarse cuando se haya presentado una moción de censura ni durante el primer año de legislatura.',null),
('aux-canarias:5-69cc0dadf3','aux-canarias',5,'Tras su cese, ¿en qué plazo máximo debe tomar posesión el nuevo Gobierno de Canarias?','["Diez días desde la investidura", "Quince días desde el nombramiento del Presidente", "Un mes desde las elecciones", "Un mes desde el nombramiento del Presidente"]'::jsonb,1,'Art. 52.2 EACan','El Gobierno cesante continúa en funciones hasta la toma de posesión del nuevo, en el plazo máximo de quince días desde el nombramiento del Presidente.',null),
('aux-canarias:5-12b8b15d38','aux-canarias',5,'¿Por qué mayoría se elige a la persona titular de la Diputación del Común y para cuánto tiempo?','["Tres quintos del Parlamento, para cinco años", "Mayoría absoluta, para cuatro años", "Mayoría absoluta, para cinco años", "Dos tercios, para seis años"]'::jsonb,0,'Art. 57.3 EACan','Es elegida por tres quintas partes del Parlamento para un mandato de cinco años.',null),
('aux-canarias:5-8db769b46e','aux-canarias',5,'¿Qué es el Consejo Consultivo de Canarias?','["El órgano de asesoramiento jurídico del Parlamento", "El órgano de participación de los cabildos", "El órgano de fiscalización externa de las cuentas", "El supremo órgano consultivo de la Comunidad Autónoma"]'::jsonb,3,'Art. 58.1 EACan','Es el supremo órgano consultivo de la Comunidad, encargado de dictaminar sobre la adecuación a la Constitución y al Estatuto.',null),
('aux-canarias:5-fbe29e2cac','aux-canarias',5,'¿Qué órgano realiza la fiscalización externa de la gestión económica del sector público de Canarias?','["El Consejo Consultivo", "La Intervención General", "La Audiencia de Cuentas", "El Comisionado de Transparencia"]'::jsonb,2,'Art. 59.1 EACan','La Audiencia de Cuentas, dependiente del Parlamento, realiza la fiscalización externa, sin perjuicio de las competencias del Tribunal de Cuentas.',null),
('aux-canarias:5-15e69f9725','aux-canarias',5,'¿Por qué mayoría se elige al Comisionado de Transparencia y Acceso a la Información Pública de Canarias?','["Mayoría absoluta del Parlamento", "Tres quintas partes del Parlamento", "Mayoría simple del Parlamento", "Por el Gobierno, oído el Parlamento"]'::jsonb,1,'Art. 60.3 EACan','El Comisionado de Transparencia es elegido por mayoría de tres quintas partes del Parlamento.',null),
('aux-canarias:5-0a9ac4155c','aux-canarias',5,'¿Cuál de estas funciones corresponde al Parlamento de Canarias?','["Aprobar los reglamentos ejecutivos de las leyes aprobadas por el Parlamento de Canarias", "Ejercer el derecho de gracia respecto de los condenados por tribunales canarios", "Nombrar al Presidente del Tribunal Superior de Justicia", "Designar a los senadores representantes de la Comunidad Autónoma"]'::jsonb,3,'Art. 43 d) EACan','Entre las funciones del Parlamento está designar, para cada legislatura, a los senadores representantes de la Comunidad Autónoma.',null),
('aux-canarias:5-7f7cfacb8e','aux-canarias',5,'¿Quién compone el Gobierno de Canarias?','["La Presidencia, la Vicepresidencia y los consejeros", "La Presidencia y los presidentes de los cabildos", "La Presidencia, los consejeros y los viceconsejeros", "La Presidencia, la Vicepresidencia, los consejeros y los presidentes de los cabildos"]'::jsonb,0,'Art. 51.1 EACan','El Gobierno está compuesto por las personas titulares de la Presidencia y de la Vicepresidencia y por los consejeros o consejeras.',null),
('aux-canarias:6-e8ed456c73','aux-canarias',6,'¿Qué norma regula actualmente la Presidencia y el Gobierno de Canarias?','["La Ley 1/1983, de 14 de abril", "La Ley 4/2023, de 23 de marzo", "El Decreto 212/1991, de 11 de septiembre", "La Ley 14/1990, de 26 de julio"]'::jsonb,1,'Art. 1 Ley 4/2023 Canarias','La Ley 4/2023, de 23 de marzo, de la Presidencia y del Gobierno de Canarias, derogó la Ley 1/1983 con efectos desde el 4 de abril de 2023.',null),
('aux-canarias:6-bdd3629a3d','aux-canarias',6,'¿Qué requisito exige la Ley 4/2023 para ser presidente o presidenta de Canarias?','["Ser diputado o diputada del Parlamento de Canarias", "Haber nacido en Canarias y residir en el archipiélago al menos cinco años", "Haber sido miembro del Gobierno en una legislatura anterior", "Tener al menos cinco años de vecindad en Canarias"]'::jsonb,0,'Art. 3 Ley 4/2023 Canarias','Para ser presidente o presidenta de Canarias se requiere tener la condición de diputado o diputada del Parlamento de Canarias.',null),
('aux-canarias:6-2a38e1a84c','aux-canarias',6,'¿Qué es el Gobierno de Canarias según la Ley 4/2023?','["El órgano supremo consultivo de la comunidad autónoma", "El órgano de coordinación de los cabildos insulares y de los ayuntamientos del archipiélago con el Estado", "El órgano superior colegiado de dirección política de la comunidad autónoma y de su administración", "El órgano unipersonal que ostenta la más alta representación de la comunidad autónoma y la ordinaria del Estado"]'::jsonb,2,'Art. 20 Ley 4/2023 Canarias','El Gobierno es el órgano superior colegiado de dirección política de la comunidad y de su administración.',null),
('aux-canarias:6-29a9ecdf4e','aux-canarias',6,'¿Dónde tiene su sede el Gobierno de Canarias?','["En la capital donde resida la Presidencia en cada legislatura", "En Santa Cruz de Tenerife", "En Las Palmas de Gran Canaria", "Compartida entre las dos capitales de Canarias"]'::jsonb,3,'Art. 22 Ley 4/2023 Canarias','La sede del Gobierno y de sus comisiones delegadas es compartida entre las dos capitales, aunque puede reunirse en cualquier localidad.',null),
('aux-canarias:6-8920433371','aux-canarias',6,'¿Cómo funciona el Gobierno de Canarias según la Ley 4/2023?','["En Consejo de Gobierno y en la Conferencia de Consejeros y Viceconsejeros", "En Consejo de Gobierno y en comisiones delegadas del Gobierno", "Exclusivamente en Consejo de Gobierno", "En Pleno y en Comisión Permanente, presidida por el vicepresidente del Gobierno"]'::jsonb,1,'Art. 23 Ley 4/2023 Canarias','El Gobierno de Canarias funciona en Consejo de Gobierno y en comisiones delegadas del Gobierno.',null),
('aux-canarias:6-d1a2547d25','aux-canarias',6,'¿Qué límite establece la Ley 4/2023 para garantizar la presencia equilibrada de mujeres y hombres en el Gobierno de Canarias?','["Ningún sexo puede superar el 60 % ni bajar del 40 %", "Ningún sexo puede superar el 55 % ni bajar del 45 %", "Al menos un tercio de los consejeros deben ser mujeres", "Debe haber igual número de consejeras y consejeros"]'::jsonb,0,'Art. 24.2 Ley 4/2023 Canarias','El número de personas de cada sexo no puede superar el 60 % ni ser inferior al 40 % del total del órgano.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
