"""Imagen para redes sociales (web/og-image.png), con la marca OpoNota."""
import json, os
from PIL import Image, ImageDraw, ImageFont
n = len(json.load(open("all.json"))) + sum(len(json.load(open("bancos/" + f))) for f in os.listdir("bancos") if f.endswith(".json"))
W, H = 1200, 630
INK = (5, 47, 46); TEAL = (16, 119, 109); MINT = (153, 246, 228); MUTED = (74, 99, 97); BG = (245, 248, 247); WHITE = (255, 255, 255)
F = "/usr/share/fonts/truetype/google-fonts/ofl/dmsans/DMSans[opsz,wght].ttf"
def f(peso, s):
    fo = ImageFont.truetype(F, s)
    try: fo.set_variation_by_axes([14, peso])
    except Exception: pass
    return fo
img = Image.new("RGB", (W, H), BG)
d = ImageDraw.Draw(img)
wm = Image.open("assets/marca/oponota.png").convert("RGBA")
wm = wm.resize((int(wm.width * 64 / wm.height), 64), Image.LANCZOS)
img.paste(wm, (80, 70), wm)
d.text((80, 190), "Tests de oposiciones", font=f(800, 76), fill=INK)
d.text((80, 278), "comprobados con el BOE", font=f(800, 76), fill=INK)
d.text((80, 390), "Explicación y artículo de cada respuesta.", font=f(400, 32), fill=MUTED)
d.text((80, 432), "Simulacros con el formato real del examen.", font=f(400, 32), fill=MUTED)
txt = f"{n:,} preguntas · gratis durante la beta".replace(",", ".")
fo = f(600, 28); w = d.textlength(txt, font=fo)
d.rounded_rectangle([80, 510, 80 + w + 48, 566], radius=28, fill=TEAL)
d.text((104, 522), txt, font=fo, fill=WHITE)
# anillo del logotipo
cx, cy, r, g = 1040, 130, 78, 24
d.arc([cx - r, cy - r, cx + r, cy + r], 0, 360, fill=MINT, width=g)
d.arc([cx - r, cy - r, cx + r, cy + r], -90, 180, fill=TEAL, width=g)
for ang in (-90, 180):
    import math
    x = cx + (r - g / 2) * math.cos(math.radians(ang)); y = cy + (r - g / 2) * math.sin(math.radians(ang))
    d.ellipse([x - g / 2, y - g / 2, x + g / 2, y + g / 2], fill=TEAL)
d.line([(cx - 26, cy + 2), (cx - 7, cy + 21), (cx + 29, cy - 18)], fill=TEAL, width=15, joint="curve")
img.save("web/og-image.png", optimize=True)
print("ok", n)
