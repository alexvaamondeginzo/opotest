-- Banco de preguntas, parte 7 de 21. Ejecútalo en Supabase → SQL Editor DESPUÉS de 1-configuracion.sql y 8-oposiciones.sql.
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
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
('aux-age:29-4819e7cf2d','aux-age',29,'Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en segundo lugar? Román, Rosa, Romero, Rubio, Rojas, Rojo','["Rosa", "Román", "Rojo", "Rojas"]'::jsonb,2,'Psicotécnicos','Orden alfabético: Rojas, Rojo, Román, Romero, Rosa, Rubio. La tilde no cuenta y la Ñ va después de la N.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
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
('aux-age:29-67c1215ede','aux-age',29,'Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en segundo lugar? Gálvez Santos, Sara; Gálvez Sanjuán, Pablo; Gálvez Sainz, Óscar; Garcés Salas, Javier; Garcés Santos, Irene','["Gálvez Santos, Sara", "Gálvez Sainz, Óscar", "Garcés Santos, Irene", "Gálvez Sanjuán, Pablo"]'::jsonb,3,'Psicotécnicos','Orden: Gálvez Sainz, Óscar; Gálvez Sanjuán, Pablo; Gálvez Santos, Sara; Garcés Salas, Javier; Garcés Santos, Irene. Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.',null),
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
('aux-age:29-8badcd6ede','aux-age',29,'Una sesión de formación empieza a las 12:40 y dura 3 horas y 25 minutos. ¿A qué hora termina?','["15:05", "15:55", "16:05", "16:15"]'::jsonb,2,'Psicotécnicos','12:40 + 3 h = 15:40; + 25 min = 16:05.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
insert into public.preguntas (id,oposicion,tema,pregunta,opciones,correcta,articulo,explicacion,examen) values
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
('aux-age:29-779e79ef58','aux-age',29,'Una impresora se revisa cada 6 días y otra cada 9. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?','["12 días", "18 días", "54 días", "24 días"]'::jsonb,1,'Psicotécnicos','Es el mínimo común múltiplo de 6 y 9: m.c.m.(6, 9) = 18.',null),
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
¿Qué clave lleva un contrato de Personal de 2024?','["C2-25", "Q2-24", "C9-24", "C2-24"]'::jsonb,3,'Psicotécnicos','Contrato = C; Personal = 2; año 2024 → C2-24.',null)
on conflict (id) do update set oposicion=excluded.oposicion,tema=excluded.tema,pregunta=excluded.pregunta,opciones=excluded.opciones,correcta=excluded.correcta,articulo=excluded.articulo,explicacion=excluded.explicacion,examen=excluded.examen;
