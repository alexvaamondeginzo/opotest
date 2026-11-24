"""Imágenes de publicaciones de Instagram (carruseles 1080x1350) con la marca de OpoNota.
Uso: python3 redes/hacer_posts.py assets/redes
"""
import os, sys, tempfile, glob
from PIL import Image, ImageDraw, ImageFont
from fontTools.ttLib import TTFont

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
FD = tempfile.mkdtemp()
for f in glob.glob(os.path.join(RAIZ, 'assets/fuentes/*.woff')):
    t = TTFont(f); t.flavor = None; t.save(os.path.join(FD, os.path.basename(f)[:-5] + '.ttf'))
fnt = lambda n, s: ImageFont.truetype(os.path.join(FD, n + '.ttf'), s)
COND = lambda s: fnt('BarlowCondensed-ExtraBold', s)
CONDB = lambda s: fnt('BarlowCondensed-Bold', s)
BODY = lambda s: fnt('Barlow-Medium', s)
BODYS = lambda s: fnt('Barlow-SemiBold', s)
INK, TEAL, MINT, BG, WHITE, MUTED, LINE = (5, 47, 46), (16, 119, 109), (153, 246, 228), (245, 248, 247), (255, 255, 255), (88, 112, 110), (214, 225, 222)
W, H = 1080, 1350
icono = Image.open(os.path.join(RAIZ, 'assets/marca/oponota-icono-1024.png')).convert('RGBA')

def wrap(d, text, f, maxw):
    out, cur = [], ''
    for w in text.split():
        t = (cur + ' ' + w).strip()
        if d.textlength(t, font=f) <= maxw: cur = t
        else: out.append(cur); cur = w
    return out + ([cur] if cur else [])

def lienzo(oscuro=False):
    im = Image.new('RGB', (W, H), INK if oscuro else BG); return im, ImageDraw.Draw(im, 'RGBA')

def pie(im, d, n, total, oscuro=False):
    ic = icono.resize((56, 56)); im.paste(ic, (80, H - 120), ic)
    d.text((150, H - 108), 'OPONOTA', font=COND(40), fill=WHITE if oscuro else INK)
    if total > 1:
        for i in range(total):
            x = W - 80 - (total - i) * 34
            d.ellipse([x, H - 100, x + 18, H - 82], fill=(MINT if oscuro else TEAL) if i == n else ((255, 255, 255, 70) if oscuro else LINE))

def flecha(d, x, y, c):
    d.line([(x, y), (x + 60, y)], fill=c, width=8); d.line([(x + 40, y - 20), (x + 62, y), (x + 40, y + 20)], fill=c, width=8, joint='curve')

def titulo(d, lines, y, size=118, color=INK):
    for ln in lines: d.text((80, y), ln, font=COND(size), fill=color); y += int(size * 0.98)
    return y

def lista(d, items, y, color=INK):
    for it in items:
        d.ellipse([80, y + 14, 108, y + 42], fill=TEAL)
        d.line([(87, y + 28), (93, y + 34), (102, y + 22)], fill=WHITE, width=4)
        for k, ln in enumerate(wrap(d, it, BODYS(44), W - 220)):
            d.text((132, y), ln, font=BODYS(44), fill=color); y += 56
        y += 26
    return y

def ofrecemos(od):
    S = []
    # 1 portada
    im, d = lienzo(True)
    ic = icono.resize((150, 150)); im.paste(ic, (80, 150), ic)
    y = titulo(d, ['TESTS DE', 'OPOSICIONES', 'COMPROBADOS', 'CON EL BOE'], 360, 132, WHITE)
    d.text((80, y + 30), 'Cada respuesta, con su artículo exacto.', font=BODYS(48), fill=MINT)
    d.text((80, H - 250), 'Desliza', font=CONDB(48), fill=WHITE); flecha(d, 230, H - 222, MINT)
    pie(im, d, 0, 5, True); S.append(im)
    # 2 el artículo exacto
    im, d = lienzo()
    y = titulo(d, ['CADA RESPUESTA,', 'CON SU ARTÍCULO'], 130, 112)
    d.text((80, y + 10), 'Sin dudas sobre si la solución está bien:', font=BODY(42), fill=MUTED)
    d.text((80, y + 62), 'te decimos de dónde sale y te llevamos al BOE.', font=BODY(42), fill=MUTED)
    y += 170
    d.rounded_rectangle([80, y, W - 80, y + 520], 28, fill=WHITE, outline=LINE, width=3)
    for i, ln in enumerate(wrap(d, '¿En qué plazo sanciona el Rey las leyes aprobadas por las Cortes Generales?', BODYS(42), W - 240)):
        d.text((120, y + 40 + i * 54), ln, font=BODYS(42), fill=INK)
    yy = y + 40 + 3 * 54 + 20
    d.rounded_rectangle([120, yy, W - 120, yy + 96], 18, fill=TEAL)
    d.ellipse([142, yy + 22, 194, yy + 74], fill=MINT); d.line([(156, yy + 48), (166, yy + 58), (182, yy + 38)], fill=INK, width=6)
    d.text((216, yy + 48), 'Quince días', font=BODYS(42), fill=WHITE, anchor='lm')
    yy += 130
    d.text((120, yy), 'ART. 91 DE LA CONSTITUCIÓN', font=CONDB(40), fill=TEAL)
    d.text((120, yy + 52), 'Ver el artículo en el BOE', font=BODYS(38), fill=INK)
    d.line([(120, yy + 98), (120 + d.textlength('Ver el artículo en el BOE', font=BODYS(38)), yy + 98)], fill=TEAL, width=3)
    pie(im, d, 1, 5); S.append(im)
    # 3 simulacros
    im, d = lienzo()
    y = titulo(d, ['SIMULACROS', 'COMO EL EXAMEN', 'REAL'], 130, 112)
    lista(d, ['El mismo número de preguntas y el mismo tiempo que el examen oficial',
              'Con penalización: cada fallo resta un tercio, como en el examen',
              'Tu nota al terminar y su evolución en una gráfica',
              'Preguntas repartidas entre los temas como en las bases de la convocatoria'], y + 70)
    pie(im, d, 2, 5); S.append(im)
    # 4 progreso
    im, d = lienzo()
    y = titulo(d, ['TU PROGRESO,', 'TEMA A TEMA'], 130, 112)
    lista(d, ['Porcentaje de aciertos de cada tema y tus temas más flojos',
              'Repasa solo las preguntas que has fallado',
              'Marca con una estrella las que quieras repasar después',
              'Todo guardado en tu cuenta: sigue en el móvil o en el ordenador'], y + 70)
    pie(im, d, 3, 5); S.append(im)
    # 5 oposiciones y llamada
    im, d = lienzo(True)
    y = titulo(d, ['PRUÉBALA', 'GRATIS'], 130, 140, WHITE)
    d.text((80, y + 20), '2 días con todo incluido, sin tarjeta.', font=BODYS(48), fill=MINT)
    d.text((80, y + 80), 'Después, pago único: sin suscripción.', font=BODYS(48), fill=WHITE)
    y += 200
    d.text((80, y), 'YA DISPONIBLES', font=CONDB(44), fill=MINT); y += 64
    for o in ['Auxiliar Administrativo · Comunidad de Madrid', 'Auxiliar Administrativo del Estado', 'Auxiliar Administrativo · Ayuntamiento de Madrid']:
        d.text((80, y), o, font=BODYS(42), fill=WHITE); y += 58
    d.text((80, y + 6), 'Y llegan más muy pronto.', font=BODY(40), fill=(200, 225, 220)); y += 90
    cta = 'OPONOTA.PAGES.DEV'
    d.rounded_rectangle([80, y, 80 + d.textlength(cta, font=COND(60)) + 80, y + 104], 52, fill=MINT)
    d.text((120, y + 52), cta, font=COND(60), fill=INK, anchor='lm')
    pie(im, d, 4, 5, True); S.append(im)
    for i, im in enumerate(S): im.save(f'{od}/post-ofrecemos-{i + 1}.jpg', quality=92)

def como_funciona(od):
    pasos = [('1', 'ELIGE TU OPOSICIÓN', 'Y los temas que quieras practicar, separados por bloques: legislación, ofimática y psicotécnicos.'),
             ('2', 'PRACTICA', 'Corrección al momento, explicación y el artículo exacto de la ley, con enlace al BOE.'),
             ('3', 'HAZ SIMULACROS', 'Con el tiempo y la penalización del examen real. Mira tu nota y repasa tus fallos.')]
    S = []
    im, d = lienzo(True)
    ic = icono.resize((150, 150)); im.paste(ic, (80, 150), ic)
    y = titulo(d, ['CÓMO', 'FUNCIONA', 'OPONOTA'], 380, 150, WHITE)
    d.text((80, y + 30), 'En 3 pasos.', font=BODYS(52), fill=MINT)
    d.text((80, H - 250), 'Desliza', font=CONDB(48), fill=WHITE); flecha(d, 230, H - 222, MINT)
    pie(im, d, 0, 3, True); S.append(im)
    im, d = lienzo()
    y = 150
    for n, t, x in pasos:
        d.ellipse([80, y, 180, y + 100], fill=TEAL); d.text((130, y + 50), n, font=COND(64), fill=WHITE, anchor='mm')
        d.text((214, y + 4), t, font=COND(64), fill=INK)
        yy = y + 80
        for ln in wrap(d, x, BODY(40), W - 300): d.text((214, yy), ln, font=BODY(40), fill=MUTED); yy += 52
        y = yy + 70
    pie(im, d, 1, 3); S.append(im)
    im, d = lienzo(True)
    y = titulo(d, ['EMPIEZA', 'HOY'], 200, 160, WHITE)
    d.text((80, y + 30), 'Crea tu cuenta y prueba 2 días gratis,', font=BODYS(48), fill=WHITE)
    d.text((80, y + 90), 'con todo incluido y sin tarjeta.', font=BODYS(48), fill=WHITE)
    y += 230
    cta = 'OPONOTA.PAGES.DEV'
    d.rounded_rectangle([80, y, 80 + d.textlength(cta, font=COND(60)) + 80, y + 104], 52, fill=MINT)
    d.text((120, y + 52), cta, font=COND(60), fill=INK, anchor='lm')
    d.text((80, y + 150), 'Enlace en la bio', font=BODY(40), fill=(200, 225, 220))
    pie(im, d, 2, 3, True); S.append(im)
    for i, im in enumerate(S): im.save(f'{od}/post-como-funciona-{i + 1}.jpg', quality=92)

if __name__ == '__main__':
    od = sys.argv[1]; os.makedirs(od, exist_ok=True); ofrecemos(od); como_funciona(od)
