import json
from PIL import Image, ImageDraw, ImageFont
n = len(json.load(open("all.json")))
W, H = 1200, 630
ORANGE = (249, 115, 22); ORANGE_D = (194, 65, 12)
INK = (26, 34, 51); MUTED = (91, 100, 120); BG = (244, 245, 248); WHITE = (255, 255, 255)
OK = (23, 121, 74); OKS = (227, 244, 234)
F = "/usr/share/fonts/truetype/google-fonts/ofl/firasans/FiraSans-"
def f(w, s): return ImageFont.truetype(F + w + ".ttf", s)
img = Image.new("RGB", (W, H), BG)
d = ImageDraw.Draw(img)
d.rectangle([0, 0, 300, H], fill=ORANGE)
logo = Image.open("assets/logo/libro-naranja-1024.png").convert("RGB").resize((220, 220), Image.LANCZOS)
img.paste(logo, (40, 205))
x0 = 360
d.text((x0, 70), "TESTS DE OPOSICIONES · OPOTEST", font=f("SemiBold", 24), fill=ORANGE_D)
d.text((x0, 112), "Practica con preguntas", font=f("ExtraBold", 64), fill=INK)
d.text((x0, 186), "tipo examen", font=f("ExtraBold", 64), fill=INK)
d.text((x0, 282), "Comprobadas con el BOE, con explicación y", font=f("Regular", 30), fill=MUTED)
d.text((x0, 320), "artículo. Simulacros con el formato real.", font=f("Regular", 30), fill=MUTED)
chips = [("Auxiliar Comunidad de Madrid", None), (f"{n} preguntas", None), ("Gratis en beta", "ok")]
cx, cy = x0, 410
for text, kind in chips:
    font = f("SemiBold", 26)
    w = d.textlength(text, font=font)
    fill, col = (OKS, OK) if kind == "ok" else (WHITE, INK)
    d.rounded_rectangle([cx, cy, cx + w + 40, cy + 56], radius=28, fill=fill, outline=(221, 225, 234), width=2)
    d.text((cx + 20, cy + 12), text, font=font, fill=col)
    cx += w + 40 + 14
d.text((x0, 530), "Modo práctica · Repaso de fallos · Progreso por tema", font=f("Medium", 26), fill=INK)
img.save("web/og-image.png", optimize=True)
print("ok", n)
