import json,re
d=json.load(open('all.json'))
O1="oct. 2026 · 1.er ejercicio";O2="oct. 2026 · 2.º ejercicio"
A1="abr. 2026 · 1.er ejercicio";A2="abr. 2026 · 2.º ejercicio"
N1="nov. 2024 · 1.er ejercicio";F2="feb. 2025 · 2.º ejercicio"
# (etiqueta, artículo exacto o None, regex sobre el enunciado o None)
M=[
(O1,"Art. 2 CE",None),(O1,"Art. 10.2 EA",None),(O1,"Arts. 39.3, 44.3 y 45 Ley 1/1983",None),(O1,"Art. 39.1 Ley 1/1983",None),
(O1,"Art. 1.1 CC",None),(N1,"Art. 1.1 CC",None),(O1,"Art. 86.1 CE",r"extraordinaria|pueden dictar|dictar decretos"),
(O1,"Art. 108 Ley 39/2015",None),(O1,"Art. 50 Ley 39/2015",None),(O1,"Art. 77.2 Ley 39/2015",r"periodo de prueba|período de prueba"),
(O1,"Art. 56.2 Ley 39/2015",None),(O1,"Art. 54.1 Ley 29/1998",None),(O1,"Arts. 13 a 18 LO 3/2018",None),
(O1,"Art. 156.1 LCSP",None),(O1,"Art. 118.1 LCSP",r"obras"),(O1,"Art. 85.1 TREBEP",None),
(O1,"Art. 97 TREBEP",r"sanciones impuestas por faltas leves"),(O1,"Arts. 66.1 y 74.1 TRLGSS",None),(O1,"Art. 13.1 LO 3/2007",None),
(O1,"Art. 9.2 Ley 39/2015",None),(O1,"Art. 17.1 Ley 39/2015",None),(O1,"Art. 16.2 Ley 39/2015",None),
(O1,"Art. 91 CE",None),(O1,"Art. 68.1 Ley 39/2015",None),
(A1,"Art. 1.1 CE",None),(A1,"Art. 9 EA",None),(A1,"Art. 82.2 CE",None),(A1,"Art. 97 CE",None),(A1,"Art. 39.1 Ley 39/2015",None),
(A1,"Art. 71.1 Ley 39/2015",None),(A1,"Art. 73.1 Ley 39/2015",None),(A1,"Art. 46.1 Ley 29/1998",r"^Si el acto que pone fin"),
(A1,"Art. 12 Ley 19/2013",None),(A1,"Art. 8.2 TREBEP",None),(A1,"Art. 2.1 TRLGSS",None),(A1,"Art. 9.1 TRLGSS",None),
(A1,"Art. 72.1 Ley 5/2025 CM",None),(A1,"Art. 14 CE",None),(A1,"Art. 3 LO 3/2007",None),(A1,"Art. 43.2 Ley 39/2015",r"rechazada"),
(A1,"Art. 16.5 Ley 39/2015",None),(A1,"Art. 10.1 CE",None),(A1,"Art. 47.1 b) Ley 39/2015",None),(A1,"Art. 23 TREBEP",None),
(A1,"Art. 19.1 TRLGSS",None),(A1,"Art. 7.1 LO 3/2018",None),
(N1,"Art. 39.1 CE",None),(N1,"Art. 4.1 EA",None),(N1,"Art. 10.6 EA",None),(N1,"Art. 6 Ley 1/1983",None),(N1,"Art. 85 CE",None),
(N1,"Art. 114.1 e) Ley 39/2015",None),(N1,"Art. 106.3 Ley 39/2015",None),(N1,"Art. 83.2 Ley 39/2015",None),
(N1,"Art. 46.1 Ley 29/1998",r"no es expreso"),(N1,"Art. 24.4 Ley 19/2013",None),(N1,"Art. 16.1 LCSP",None),(N1,"Art. 13.1 LCSP",None),
(N1,"Art. 95.2 c) TREBEP",None),(N1,"Art. 44.1 TRLGSS",None),(N1,"Art. 9 Decreto 21/2002 CM",None),(N1,"Art. 26.2 Ley 39/2015",None),
(N1,"Art. 84.1 Ley 39/2015",None),(N1,"Art. 1.1 LO 1/2004",None),(N1,"Art. 22.3 LO 3/2018",None),
]
# Ofimática: por texto del enunciado
T=[
(O2,r"Liberador de espacio"),(O2,r"Mapa de caracteres"),(O2,r"entre comillas"),(O2,r"«Solo lectura»"),(O2,r"carpeta anclada"),
(O2,r"panel Editor"),(O2,r"botón Dictar"),(O2,r"barra de herramientas de acceso rápido"),(O2,r"romanos"),(O2,r"nunca lo guardas"),(O2,r"\(coautoría\)"),
(O2,r"=A\$1\*A2"),(O2,r"datos de origen de una tabla dinámica"),(O2,r"tecla F11 con datos"),(O2,r"Cuántas filas tiene"),(O2,r"F1C1"),(O2,r"formato condicional y la validación"),
(O2,r"Vista Presentación"),(O2,r"datos se almacenan en"),(O2,r"Actualizar a|consulta de actualización de Access, el nuevo"),(O2,r"Guardar pasos de importación"),(O2,r"sin eliminación en cascada"),
(O2,r"uso principal de Power BI"),(O2,r"una cita se diferencia"),(O2,r"Autocompletar"),(O2,r"alerta de escritorio"),(O2,r"Al responder a todos"),(O2,r"IMAP y POP3"),(O2,r"Importancia: Alta"),
(O2,r"nube azul"),(O2,r"entre OneDrive y SharePoint"),(O2,r"cambia tu estado a ocupado"),(O2,r"canal General"),(O2,r"controlar la pantalla que compartes"),
(A2,r"abre el Explorador de archivos\?"),(A2,r"procesos que se están ejecutando"),(A2,r"espacio libre de una unidad"),(A2,r"ruta completa"),(A2,r"panel de vista previa del Explorador permite"),
(A2,r"opción Interlineado"),(A2,r"se escribe al principio para introducir una fórmula"),(A2,r"contenido real de la celda activa"),(A2,r"Cuántas hojas puede tener"),(A2,r"resume grandes cantidades de datos"),
(A2,r"«Importar datos»"),(A2,r"Una consulta de selección"),(A2,r"definir los campos de una tabla"),(A2,r"clave principal de una tabla"),(A2,r"datos se almacenan en"),
(A2,r"reglas de Outlook sirven"),(A2,r"campo Para contiene"),(A2,r"SharePoint Online se utiliza"),(A2,r"un equipo es:"),(A2,r"sincronización de archivos de OneDrive"),
(A2,r"afirmaciones sobre las reuniones de Teams es FALSA"),(A2,r"rol con mayor control"),(A2,r"Administración de discos"),(A2,r"tal como se imprimirá"),(A2,r"una celda es:"),(A2,r"asociación lógica entre campos"),
(F2,r"comando Nuevo correo"),(F2,r"una conversación agrupa"),(F2,r"marcas de seguimiento de Outlook pueden"),(F2,r"Adjuntar archivo en un mensaje"),(F2,r"Al reenviar un mensaje"),(F2,r"campo CCO"),
(F2,r"excluye los caracteres"),(F2,r"propiedades personalizadas"),(F2,r"contenido de otro documento"),(F2,r"viñetas y una numerada"),(F2,r"encabezados y pies de página distintos"),
(F2,r"cada cuenta de usuario"),(F2,r"«Expulsar»"),(F2,r"agrupar archivos por tipo"),(F2,r"extensión de un archivo es"),(F2,r"Compartir una carpeta en red"),(F2,r"ninguna aplicación asociada"),
(F2,r"Organizar todo"),(F2,r"desde el final de un texto"),(F2,r"fórmulas está bien escrita"),(F2,r"hipervínculo en Excel"),(F2,r"triángulo rojo"),
(F2,r"un campo es:"),(F2,r"Cuántas bases de datos"),(F2,r"asigna automáticamente un número único"),(F2,r"Formato, Título, Máscara"),(F2,r"extensión tienen las bases de datos de Access"),
]
for q in d:
    while len(q)>6: q.pop()
    tags=[]
    for lab,art,rx in M:
        if q[4]==art and (rx is None or re.search(rx,q[1])) and lab not in tags: tags.append(lab)
    if q[0]>=16:
        for lab,rx in T:
            if re.search(rx,q[1]) and lab not in tags: tags.append(lab)
    if tags: q.append(" · ".join(tags) if len(tags)==1 else " | ".join(tags))
json.dump(d,open('all.json','w'),ensure_ascii=False)
tagged=[q for q in d if len(q)>6]
print(len(tagged),"etiquetadas")
used=set()
for q in tagged: used.add(q[6])
miss=[ (l,a) for l,a,r in M if not any(q[4]==a for q in d)]
print("artículos sin match:",miss)
missT=[ (l,r) for l,r in T if not any(q[0]>=16 and re.search(r,q[1]) for q in d)]
print("ofimática sin match:",missT)
