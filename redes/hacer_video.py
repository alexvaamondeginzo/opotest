"""Genera un vídeo vertical de «Pregunta del día» de OpoNota (1080x1920, 30 fps) con música original sintetizada.
Uso: python3 redes/hacer_video.py redes/preguntas.json assets/redes [id]  (añade --frames para ver solo capturas)
"""
import json, os, sys, subprocess, math, wave
import numpy as np
from PIL import Image, ImageDraw, ImageFont, ImageFilter

W, H, FPS = 1080, 1920, 30
DUR = 18.0
RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# Fuentes de la marca: se convierten de woff a ttf en una carpeta temporal
import tempfile, glob
from fontTools.ttLib import TTFont
F = tempfile.mkdtemp()
for _f in glob.glob(os.path.join(RAIZ, 'assets/fuentes/*.woff')):
    _t = TTFont(_f); _t.flavor = None; _t.save(os.path.join(F, os.path.basename(_f)[:-5] + '.ttf'))
INK, TEAL, MINT, BG, WHITE = (5, 47, 46), (16, 119, 109), (153, 246, 228), (245, 248, 247), (255, 255, 255)
MUTED, LINE = (88, 112, 110), (214, 225, 222)

def font(name, size): return ImageFont.truetype(os.path.join(F, name + '.ttf'), size)
COND = lambda s: font('BarlowCondensed-ExtraBold', s)
CONDB = lambda s: font('BarlowCondensed-Bold', s)
BODY = lambda s: font('Barlow-Medium', s)
BODYS = lambda s: font('Barlow-SemiBold', s)

# logotipo: quitar el fondo blanco del jpg
logo = Image.open(os.path.join(RAIZ, 'assets/marca/', 'oponota-logotipo-original.jpg')).convert('RGBA')
a = np.array(logo).astype(np.int32)
blanco = (255 * 3 - a[..., :3].sum(-1))
a[..., 3] = np.clip(blanco * 2, 0, 255)
logo = Image.fromarray(a.astype(np.uint8))
icono = Image.open(os.path.join(RAIZ, 'assets/marca/', 'oponota-icono-1024.png')).convert('RGBA')

def wrap(d, text, f, maxw):
    words, lines, cur = text.split(), [], ''
    for w in words:
        t = (cur + ' ' + w).strip()
        if d.textlength(t, font=f) <= maxw: cur = t
        else: lines.append(cur); cur = w
    if cur: lines.append(cur)
    return lines

def ease(x): x = max(0.0, min(1.0, x)); return 1 - (1 - x) ** 3
def mix(c1, c2, t): return tuple(int(c1[i] + (c2[i] - c1[i]) * t) for i in range(3))

def frame(q, t):
    im = Image.new('RGB', (W, H), BG)
    d = ImageDraw.Draw(im, 'RGBA')
    end = 13.6
    if t < end:
        # cabecera
        k = ease(t / 0.6)
        d.rectangle([0, 0, W, 470], fill=INK)
        ic = icono.resize((92, 92)); im.paste(ic, (80, 200), ic)
        d.text((196, 200), 'PREGUNTA DEL DÍA', font=COND(78), fill=WHITE)
        d.text((198, 282), q['oposicion'].upper(), font=CONDB(34), fill=MINT)
        # etiqueta del examen
        etq = 'CAYÓ EN EL EXAMEN OFICIAL · ' + q['examen'].upper()
        fe = CONDB(32); tw = d.textlength(etq, font=fe)
        y0 = 370 + int((1 - k) * 20)
        d.rounded_rectangle([80, y0, 80 + tw + 44, y0 + 58], 29, fill=MINT + (int(255 * k),))
        d.text((102, y0 + 10), etq, font=fe, fill=INK + (int(255 * k),))
        # enunciado
        kq = ease((t - 0.4) / 0.7)
        fq = font('Barlow-SemiBold', 60)
        lines = wrap(d, q['pregunta'], fq, W - 160)
        y = 540 + int((1 - kq) * 40)
        for ln in lines:
            d.text((80, y), ln, font=fq, fill=INK + (int(255 * kq),)); y += 76
        # opciones
        y = max(y + 40, 820)
        reveal = t >= 8.4
        kr = ease((t - 8.4) / 0.35)
        for i, op in enumerate(q['opciones']):
            ko = ease((t - 1.0 - i * 0.25) / 0.45)
            if ko <= 0: continue
            x0 = 80 + int((1 - ko) * 60)
            ok = i == q['correcta']
            fill, txt, brd, alpha = WHITE, INK, LINE, 1.0
            if reveal and ok: fill, txt, brd = mix(WHITE, TEAL, kr), mix(INK, WHITE, kr), mix(LINE, TEAL, kr)
            if reveal and not ok: alpha = 1 - 0.55 * kr
            A = int(255 * ko * alpha)
            d.rounded_rectangle([x0, y, x0 + W - 160, y + 118], 22, fill=fill + (A,), outline=brd + (A,), width=4)
            circ = TEAL if not (reveal and ok) else mix(TEAL, MINT, kr)
            d.ellipse([x0 + 26, y + 27, x0 + 90, y + 91], fill=circ + (A,))
            if reveal and ok and kr > .5:
                cx, cy = x0 + 58, y + 59
                d.line([(cx - 15, cy + 1), (cx - 4, cy + 12), (cx + 16, cy - 11)], fill=INK + (A,), width=8, joint='curve')
            else:
                fl = COND(44); lt = 'ABCD'[i]; lw = d.textlength(lt, font=fl)
                d.text((x0 + 58 - lw / 2, y + 30), lt, font=fl, fill=WHITE + (A,))
            d.text((x0 + 116, y + 34), op, font=BODYS(46), fill=txt + (A,))
            y += 140
        # cuenta atrás
        if 2.4 <= t < 8.4:
            p = (t - 2.4) / 6.0
            d.rounded_rectangle([80, y + 20, W - 80, y + 44], 12, fill=LINE)
            d.rounded_rectangle([80, y + 20, 80 + int((W - 160) * (1 - p)), y + 44], 12, fill=TEAL)
            n = str(max(1, math.ceil(6 * (1 - p))))
            d.text((80, y + 70), '¿A, B, C o D? Responde en comentarios', font=BODYS(40), fill=MUTED)
            fn = COND(92); d.text((W - 80 - d.textlength(n, font=fn), y + 52), n, font=fn, fill=TEAL)
        # explicación
        if t >= 9.0:
            ke = ease((t - 9.0) / 0.5)
            yb = y + 10 + int((1 - ke) * 30)
            fx = BODY(38)
            xl = wrap(d, q['explicacion'], fx, W - 220)
            hgt = 96 + 50 * len(xl)
            d.rounded_rectangle([80, yb, W - 80, yb + hgt], 22, fill=INK + (int(255 * ke),))
            d.text((112, yb + 26), q['fuente'].upper(), font=CONDB(38), fill=MINT + (int(255 * ke),))
            yy = yb + 80
            for ln in xl:
                d.text((112, yy), ln, font=fx, fill=WHITE + (int(255 * ke),)); yy += 50
        # fundido de salida hacia el cierre
        if t > end - 0.4:
            fo = (t - (end - 0.4)) / 0.4
            im = Image.blend(im, Image.new('RGB', (W, H), BG), min(1, fo))
        return im
    # cierre
    k = ease((t - end) / 0.6)
    ic = icono.resize((300, 300)); im.paste(ic, ((W - 300) // 2, 420 + int((1 - k) * 30)), ic)
    lg = logo.resize((720, int(720 * logo.height / logo.width)))
    if k < 1:
        lg = lg.copy(); al = lg.split()[3].point(lambda v: int(v * k)); lg.putalpha(al)
    im.paste(lg, ((W - 720) // 2, 790), lg)
    d = ImageDraw.Draw(im, 'RGBA')
    k2 = ease((t - end - 0.4) / 0.6)
    for i, (txt, f_, c) in enumerate([('Tests y simulacros de oposiciones', BODYS(52), INK),
                                      ('comprobados con el BOE', BODYS(52), INK)]):
        tw = d.textlength(txt, font=f_); d.text(((W - tw) / 2, 1040 + i * 68), txt, font=f_, fill=c + (int(255 * k2),))
    k3 = ease((t - end - 0.9) / 0.6)
    cta = 'PRUÉBALA GRATIS · OPONOTA.PAGES.DEV'
    fc = COND(54); tw = d.textlength(cta, font=fc)
    d.rounded_rectangle([(W - tw) / 2 - 40, 1250, (W + tw) / 2 + 40, 1350], 50, fill=TEAL + (int(255 * k3),))
    d.text(((W - tw) / 2, 1268), cta, font=fc, fill=WHITE + (int(255 * k3),))
    return im

# ---------- música original: acordes suaves + arpegio, sin voz ----------
def musica(path, dur=DUR, sr=44100):
    n = int(dur * sr); tt = np.arange(n) / sr; out = np.zeros(n)
    nota = lambda m: 440 * 2 ** ((m - 69) / 12)
    acordes = [[48, 55, 59, 64], [45, 52, 55, 60], [41, 48, 52, 57], [43, 50, 55, 59]]  # Cmaj7 Am7 Fmaj7 G
    seg = dur / 4
    for i, ac in enumerate(acordes):
        s, e = int(i * seg * sr), int(min(n, (i + 1) * seg * sr + 1.2 * sr))
        x = tt[s:e] - tt[s]; L = len(x)
        env = np.minimum(1, x / 1.2) * np.clip((L / sr - x) / 1.2, 0, 1)
        for m in ac:
            f = nota(m)
            out[s:e] += env * (np.sin(2 * np.pi * f * x) + 0.25 * np.sin(2 * np.pi * 2 * f * x + .3)) * 0.06
        # arpegio
        for j in range(6):
            m = ac[[1, 2, 3, 2, 3, 1][j]] + 12
            st = s + int(j * seg / 6 * sr); L2 = min(int(1.6 * sr), n - st)
            if L2 <= 0: continue
            x2 = np.arange(L2) / sr
            out[st:st + L2] += np.exp(-x2 * 3.2) * np.sin(2 * np.pi * nota(m) * x2) * 0.05 * np.minimum(1, x2 / 0.01)
    # campanita suave al mostrar la respuesta (8,4 s)
    st = int(8.4 * sr); x3 = np.arange(int(1.5 * sr)) / sr
    out[st:st + len(x3)] += np.exp(-x3 * 4) * (np.sin(2 * np.pi * 1046.5 * x3) + .5 * np.sin(2 * np.pi * 1568 * x3)) * 0.08
    # reverberación sencilla
    for dl, g in [(0.11, .35), (0.23, .22), (0.37, .14)]:
        k = int(dl * sr); out[k:] += out[:-k] * g
    fade = np.minimum(1, tt / 1.0) * np.minimum(1, (dur - tt) / 1.5)
    out *= fade; out = out / np.abs(out).max() * 0.35
    st = np.stack([out, np.roll(out, 200)], 1)
    with wave.open(path, 'wb') as w:
        w.setnchannels(2); w.setsampwidth(2); w.setframerate(sr)
        w.writeframes((st * 32767).astype(np.int16).tobytes())

def render(q, out):
    wav = out.replace('.mp4', '.wav'); musica(wav)
    p = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', f'{W}x{H}', '-r', str(FPS), '-i', '-',
                          '-i', wav, '-c:v', 'libx264', '-preset', 'veryfast', '-crf', '20', '-pix_fmt', 'yuv420p',
                          '-c:a', 'aac', '-b:a', '160k', '-shortest', '-movflags', '+faststart', out], stdin=subprocess.PIPE)
    for i in range(int(DUR * FPS)):
        p.stdin.write(frame(q, i / FPS).tobytes())
    p.stdin.close(); p.wait(); os.remove(wav)

if __name__ == '__main__':
    qs = json.load(open(sys.argv[1])); od = sys.argv[2]; os.makedirs(od, exist_ok=True)
    only = sys.argv[3] if len(sys.argv) > 3 else None
    for q in qs:
        if only and q['id'] != only: continue
        if '--frames' in sys.argv:
            for t in (1.5, 6, 11, 16): frame(q, t).save(f"{od}/{q['id']}-{t}.png")
        else:
            render(q, f"{od}/{q['id']}.mp4"); print('ok', q['id'])
