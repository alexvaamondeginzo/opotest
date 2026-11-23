import json
from collections import Counter
from openpyxl import Workbook
from openpyxl.styles import Font, PatternFill, Alignment
from openpyxl.worksheet.datavalidation import DataValidation
d=json.load(open('all.json'))
d.sort(key=lambda q:q[0])
wb=Workbook(); ws=wb.active; ws.title='Preguntas'
H=['Nº','Tema','Pregunta','A','B','C','D','Correcta','Artículo','Explicación','Cayó en examen oficial','Revisada por experto','Comentarios del revisor']
ws.append(H)
hdr=PatternFill('solid',fgColor='9B1B30')
for c in ws[1]: c.font=Font(bold=True,color='FFFFFF'); c.fill=hdr; c.alignment=Alignment(wrap_text=True,vertical='center')
for i,qq in enumerate(d,1):
    t,q,o,k,a,e=qq[:6]; ex=qq[6] if len(qq)>6 else ''
    ws.append([i,t,q,*o,'ABCD'[k],a,e,ex,'No',''])
dv=DataValidation(type='list',formula1='"Sí,No"',allow_blank=True); ws.add_data_validation(dv); dv.add(f'L2:L{len(d)+1}')
for col,w in zip('ABCDEFGHIJKLM',[6,7,55,30,30,30,30,9,20,55,24,12,35]): ws.column_dimensions[col].width=w
for row in ws.iter_rows(min_row=2):
    for c in row: c.alignment=Alignment(wrap_text=True,vertical='top')
ws.freeze_panes='C2'; ws.auto_filter.ref=ws.dimensions
r=wb.create_sheet('Resumen'); r.append(['Tema','Nº preguntas','Revisadas'])
for c in r[1]: c.font=Font(bold=True,color='FFFFFF'); c.fill=hdr
cnt=Counter(q[0] for q in d)
for i,t in enumerate(sorted(cnt),2):
    r.append([t,f'=COUNTIF(Preguntas!B:B,{t})',f'=COUNTIFS(Preguntas!B:B,{t},Preguntas!L:L,"Sí")'])
n=len(cnt)+1
r.append(['Total',f'=SUM(B2:B{n})',f'=SUM(C2:C{n})'])
for c in r[n+1]: c.font=Font(bold=True)
r.column_dimensions['A'].width=10; r.column_dimensions['B'].width=14; r.column_dimensions['C'].width=12
wb.save('banco-preguntas-auxiliar-cm.xlsx'); print('ok',len(d))
