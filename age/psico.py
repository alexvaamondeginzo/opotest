#!/usr/bin/env python3
"""Genera age/n29.json: psicotécnicos verificados por código (tema 29)."""
import json, random
from fractions import Fraction

R = random.Random(2027)
OUT = []
REF = "Psicotécnicos"

def fmt(n):
    if isinstance(n, Fraction):
        n = float(n)
    if isinstance(n, float):
        if abs(n - round(n)) < 1e-9:
            n = int(round(n))
        else:
            s = f"{n:.2f}".rstrip("0").rstrip(".")
            return s.replace(".", ",")
    s = f"{n:,}".replace(",", ".")
    return s

SEEN = set()
def add(preg, corr, incs, expl):
    if preg in SEEN:
        return
    SEEN.add(preg)
    incs = [x for x in dict.fromkeys(incs) if x != corr]
    assert len(incs) >= 3, (preg, corr, incs)
    OUT.append([29, preg, corr, incs[:3], REF, expl])

def near(v, deltas):
    return [v + d for d in deltas if v + d != v]

def nopts(v, cands):
    c = [x for x in dict.fromkeys(cands) if x != v and x >= 0]
    R.shuffle(c)
    return c

# ---------- 1. Series numéricas ----------
def serie(terms, nxt, regla, extra):
    s = ", ".join(fmt(t) for t in terms)
    cands = nopts(nxt, extra)
    add(f"¿Qué número continúa la serie? {s}, …", fmt(nxt), [fmt(x) for x in cands], regla)

for _ in range(11):  # aritméticas
    a = R.randint(2, 40); d = R.choice([3, 4, 6, 7, 8, 9, 11, 12, 13, 15])
    t = [a + i * d for i in range(5)]; n = a + 5 * d
    serie(t, n, f"Cada término suma {d} al anterior: {fmt(t[-1])} + {d} = {fmt(n)}.", near(n, [-d, d, -1, 1, 2, -2, d + 1]))
for _ in range(6):  # geométricas
    a = R.randint(1, 5); r = R.choice([2, 3])
    t = [a * r ** i for i in range(5)]; n = a * r ** 5
    serie(t, n, f"Cada término se multiplica por {r}: {fmt(t[-1])} × {r} = {fmt(n)}.", [n + t[-1], n - t[-1] // 2, n + r, n - r, t[-1] * (r + 1)])
for _ in range(6):  # diferencias crecientes
    a = R.randint(1, 20); d0 = R.randint(1, 4); inc = R.choice([1, 2, 3])
    t = [a]; d = d0
    for i in range(5):
        t.append(t[-1] + d); d += inc
    n = t[-1] + d
    serie(t, n, f"Las diferencias entre términos aumentan de {inc} en {inc} ({', '.join(str(d0 + inc * i) for i in range(5))}…); la siguiente diferencia es {d}: {fmt(t[-1])} + {d} = {fmt(n)}.", near(n, [-inc, inc, -1, 1, 2 * inc, -2 * inc]))
for _ in range(6):  # alternas: dos series intercaladas
    a = R.randint(1, 15); b = R.randint(20, 60); da = R.choice([2, 3, 4, 5]); db = R.choice([-3, -2, 2, 3, 4])
    t = []
    for i in range(7):
        t.append(a + (i // 2) * da if i % 2 == 0 else b + (i // 2) * db)
    n = b + 3 * db  # i=7 -> serie b, índice 3
    serie(t, n, f"Son dos series intercaladas: en las posiciones pares el término varía {db:+d} cada vez ({', '.join(fmt(b + k * db) for k in range(3))}…), así que el siguiente es {fmt(n)}.", [a + 4 * da, n + db, n - db, n + 1, n - 1])
for _ in range(5):  # ×k +c
    a = R.randint(1, 6); k = 2; c = R.choice([1, 2, 3, -1])
    t = [a]
    for i in range(4):
        t.append(t[-1] * k + c)
    n = t[-1] * k + c
    serie(t, n, f"Cada término es el anterior multiplicado por {k} {'más' if c > 0 else 'menos'} {abs(c)}: {fmt(t[-1])} × {k} {'+' if c > 0 else '−'} {abs(c)} = {fmt(n)}.", [n + 2, n - 2, t[-1] * k, n + c * 2 + 1, n + 1])
for _ in range(4):  # cuadrados (+c)
    s0 = R.randint(1, 5); c = R.choice([0, 1, -1, 2])
    t = [(s0 + i) ** 2 + c for i in range(5)]; n = (s0 + 5) ** 2 + c
    desc = "los cuadrados" if c == 0 else f"los cuadrados {'más' if c > 0 else 'menos'} {abs(c)}"
    serie(t, n, f"Son {desc} de números consecutivos: {s0 + 5}² {'' if c == 0 else ('+ ' if c > 0 else '− ') + str(abs(c)) + ' '}= {fmt(n)}.".replace("  ", " "), near(n, [-2, 2, -(2 * s0 + 9), 1, -1, 3]))
for _ in range(3):  # tipo Fibonacci
    a = R.randint(1, 5); b = R.randint(2, 7)
    t = [a, b]
    for i in range(5):
        t.append(t[-1] + t[-2])
    n = t[-1] + t[-2]
    serie(t, n, f"Cada término es la suma de los dos anteriores: {fmt(t[-2])} + {fmt(t[-1])} = {fmt(n)}.", [n - 1, n + 1, t[-1] * 2, n + t[-3], n - 2])

# ---------- 2. Series de letras (alfabeto español con Ñ) ----------
AB = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
def L(i): return AB[i % 27]
for _ in range(16):
    s = R.randint(0, 10); k = R.choice([2, 3, 4])
    idx = [s + i * k for i in range(5)]; n = s + 5 * k
    if n > 26:
        continue
    cands = [L(n + 1), L(n - 1), L(n + k), L(n - 2), L(n + 2)]
    cands = [c for c in dict.fromkeys(cands) if c != L(n)]
    R.shuffle(cands)
    add(f"Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? {', '.join(L(i) for i in idx)}, …", L(n), cands,
        f"Se avanza de {k} en {k} letras (saltando {k - 1}): tras la {L(idx[-1])} viene la {L(n)}. Recuerda contar la Ñ.")
for _ in range(9):  # alterna avanzar / retroceder: dos series
    a = R.randint(0, 6); b = R.randint(18, 26); ka = R.choice([1, 2]); kb = R.choice([1, 2])
    seq = []
    for i in range(6):
        seq.append(L(a + (i // 2) * ka) if i % 2 == 0 else L(b - (i // 2) * kb))
    n = a + 3 * ka
    cands = [L(b - 3 * kb), L(n + 1), L(n - 1), L(n + ka)]
    cands = [c for c in dict.fromkeys(cands) if c != L(n)]
    R.shuffle(cands)
    add(f"Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? {', '.join(seq)}, …", L(n), cands,
        f"Son dos series intercaladas: una avanza {ka} desde la {L(a)} ({', '.join(L(a + j * ka) for j in range(3))}…) y otra retrocede {kb} desde la {L(b)}. Toca la primera: {L(n)}.")

# ---------- 3. Porcentajes ----------
for _ in range(10):
    p = R.choice([5, 12, 15, 18, 25, 35, 40, 45, 60, 75]); base = R.choice([80, 120, 160, 240, 360, 420, 480, 640, 720, 840])
    v = Fraction(p * base, 100)
    add(f"¿Cuánto es el {p} % de {fmt(base)}?", fmt(v), [fmt(v + base // 20), fmt(v - base // 40 if v - base // 40 > 0 else v + 7), fmt(Fraction(base * (p + 5), 100)), fmt(Fraction(base * (p - 3), 100))],
        f"{fmt(base)} × {p} / 100 = {fmt(v)}.")
for _ in range(5):  # subida/bajada
    precio = R.choice([40, 60, 80, 120, 150, 200, 250]); p = R.choice([10, 15, 20, 25, 30])
    up = R.random() < 0.5
    v = Fraction(precio * (100 + (p if up else -p)), 100)
    verbo = "sube" if up else "baja"
    add(f"Un producto cuesta {fmt(precio)} €. Si su precio {verbo} un {p} %, ¿cuál es el nuevo precio?", fmt(v) + " €",
        [fmt(Fraction(precio * (100 + (-p if up else p)), 100)) + " €", fmt(v + 5) + " €", fmt(v - 3) + " €", fmt(precio + (p if up else -p)) + " €"],
        f"{fmt(precio)} × {(100 + (p if up else -p)) / 100:.2f}".replace(".", ",") + f" = {fmt(v)} €.")
for _ in range(5):  # qué porcentaje
    total = R.choice([40, 50, 80, 200, 250, 400]); p = R.choice([10, 15, 20, 25, 30, 35, 40, 60, 75])
    parte = total * p // 100
    if total * p % 100:
        continue
    add(f"En una oficina hay {total} expedientes y se han resuelto {parte}. ¿Qué porcentaje se ha resuelto?", f"{p} %",
        [f"{p + 5} %", f"{p - 5} %", f"{p + 10} %", f"{round(parte / total * 50)} %"], f"{parte} / {total} × 100 = {p} %.")

# ---------- 4. Regla de tres y problemas ----------
for _ in range(6):  # directa
    a = R.choice([3, 4, 5, 6, 8]); pa = R.choice([12, 15, 18, 21, 24, 27]); b = R.choice([7, 9, 10, 12, 14, 15])
    if b == a:
        continue
    v = Fraction(pa * b, a)
    if v.denominator != 1:
        continue
    add(f"Si {a} cuadernos cuestan {pa} €, ¿cuánto cuestan {b} cuadernos?", fmt(v) + " €",
        [fmt(v + Fraction(pa, a)) + " €", fmt(v - Fraction(pa, a)) + " €", fmt(v + 2) + " €", fmt(pa + b - a) + " €"],
        f"Cada cuaderno cuesta {fmt(Fraction(pa, a))} €; {b} × {fmt(Fraction(pa, a))} = {fmt(v)} €.")
for _ in range(6):  # inversa: trabajadores/días
    t1 = R.choice([3, 4, 5, 6, 8, 10]); d1 = R.choice([6, 8, 10, 12, 15, 18, 20]); t2 = R.choice([2, 4, 5, 6, 12, 15])
    if t2 == t1:
        continue
    v = Fraction(t1 * d1, t2)
    if v.denominator != 1:
        continue
    add(f"{t1} personas tardan {d1} días en tramitar unos expedientes. Al mismo ritmo, ¿cuántos días tardarían {t2} personas?", f"{fmt(v)} días",
        [f"{fmt(Fraction(d1 * t2, t1)) if Fraction(d1 * t2, t1).denominator == 1 else fmt(v + 3)} días", f"{fmt(v + 2)} días", f"{fmt(v - 1 if v > 1 else v + 4)} días", f"{fmt(v + 5)} días"],
        f"Es una proporción inversa: {t1} × {d1} = {t1 * d1} días-persona; {t1 * d1} / {t2} = {fmt(v)} días.")
for _ in range(5):  # velocidad
    v = R.choice([60, 72, 80, 90, 100, 120]); h = R.choice([Fraction(3, 2), Fraction(5, 2), 2, 3, Fraction(9, 4)])
    d = v * h
    if Fraction(d).denominator != 1:
        continue
    hs = {Fraction(3, 2): "1 hora y 30 minutos", Fraction(5, 2): "2 horas y 30 minutos", 2: "2 horas", 3: "3 horas", Fraction(9, 4): "2 horas y 15 minutos"}[h]
    add(f"Un vehículo circula a velocidad constante de {v} km/h. ¿Qué distancia recorre en {hs}?", f"{fmt(d)} km",
        [f"{fmt(d + v // 2)} km", f"{fmt(d - v // 4)} km", f"{fmt(v * int(h) + v // 3)} km", f"{fmt(d + 10)} km"],
        f"Distancia = velocidad × tiempo = {v} × {fmt(float(h))} = {fmt(d)} km.")
for _ in range(4):  # edades
    hijo = R.randint(6, 14); k = R.choice([3, 4]); años = R.randint(4, 12)
    padre = hijo * k
    add(f"Un padre tiene {k} veces la edad de su hijo, que tiene {hijo} años. ¿Cuántos años tendrá el padre dentro de {años} años?", f"{padre + años} años",
        [f"{padre} años", f"{(hijo + años) * k} años", f"{padre + años + 2} años", f"{padre + años - 3} años"],
        f"Hoy el padre tiene {hijo} × {k} = {padre} años; dentro de {años} años tendrá {padre + años}.")
for _ in range(4):  # media
    nums = [R.randint(4, 10) for _ in range(4)]
    s = sum(nums)
    if s % 4:
        nums[-1] += 4 - s % 4
    m = sum(nums) // 4
    if any(x > 10 for x in nums):
        continue
    add(f"Un opositor obtiene en cuatro simulacros estas notas: {', '.join(map(str, nums))}. ¿Cuál es su nota media?", fmt(m),
        [fmt(m + 1), fmt(m - 1), fmt(Fraction(sum(nums), 3)), fmt(Fraction(2 * m + 1, 2))],
        f"({' + '.join(map(str, nums))}) / 4 = {sum(nums)} / 4 = {m}.")

# ---------- 5. Fracciones y cálculo ----------
for _ in range(6):
    num, den = R.choice([(3, 4), (2, 3), (3, 5), (5, 8), (4, 5), (5, 6), (7, 10)])
    base = den * R.randint(6, 30)
    v = base * num // den
    add(f"¿Cuánto son los {num}/{den} de {fmt(base)}?", fmt(v),
        [fmt(base * (num + 1) // den if base * (num + 1) % den == 0 else v + den), fmt(v - base // den), fmt(base * den // num if base * den % num == 0 else v + num), fmt(v + 2 * num)],
        f"{fmt(base)} / {den} × {num} = {fmt(v)}.")
for _ in range(6):
    a = R.choice([25, 48, 36, 64, 75, 125, 45, 99]); b = R.choice([12, 16, 24, 32, 8, 44])
    v = a * b
    add(f"¿Cuál es el resultado de {a} × {b}?", fmt(v), [fmt(v + a), fmt(v - b), fmt(v + 10), fmt(v - a)],
        f"{a} × {b} = {fmt(v)}.")
for _ in range(4):
    a = R.choice([144, 196, 225, 324, 576, 729, 841, 961]); r = int(a ** 0.5)
    add(f"¿Cuál es la raíz cuadrada de {a}?", str(r), [str(r + 1), str(r - 1), str(r + 2), str(r * 2)], f"{r} × {r} = {a}.")
for _ in range(4):  # operaciones combinadas
    a, b, c, d = R.randint(2, 9), R.randint(2, 9), R.randint(10, 30), R.randint(2, 6)
    v = a * b + c - d * 2
    add(f"Calcula: {a} × {b} + {c} − {d} × 2", fmt(v), [fmt(a * (b + c) - d * 2), fmt((a * b + c - d) * 2), fmt(v + 2), fmt(v - 4)],
        f"Primero las multiplicaciones: {a * b} + {c} − {d * 2} = {fmt(v)}.")

# ---------- 6. Verbales (revisados a mano) ----------
VERB = [
 ("Señala el sinónimo de «efímero»:", "Pasajero", ["Duradero", "Eficaz", "Esencial"], "Efímero es lo que dura poco: pasajero, fugaz."),
 ("Señala el sinónimo de «exhaustivo»:", "Minucioso", ["Agotado", "Superficial", "Excesivo"], "Exhaustivo es lo que se hace con todo detalle."),
 ("Señala el sinónimo de «inherente»:", "Consustancial", ["Heredado", "Accesorio", "Inerte"], "Inherente es lo que por su naturaleza está unido a algo."),
 ("Señala el sinónimo de «diligente»:", "Cuidadoso", ["Directivo", "Lento", "Delicado"], "Diligente es quien actúa con cuidado, prontitud y esmero."),
 ("Señala el sinónimo de «prolijo»:", "Extenso", ["Breve", "Prolífico", "Limpio"], "Prolijo significa largo, dilatado en exceso. Prolífico es «que produce mucho»."),
 ("Señala el sinónimo de «subsanar»:", "Corregir", ["Sustituir", "Suspender", "Sanear"], "Subsanar es reparar o remediar un defecto."),
 ("Señala el sinónimo de «perentorio»:", "Urgente", ["Perpetuo", "Pertinente", "Aplazable"], "Perentorio es lo urgente o apremiante."),
 ("Señala el sinónimo de «ecuánime»:", "Imparcial", ["Equivalente", "Unánime", "Arbitrario"], "Ecuánime es quien actúa con equidad e imparcialidad."),
 ("Señala el sinónimo de «exiguo»:", "Escaso", ["Exigente", "Abundante", "Excesivo"], "Exiguo es insuficiente, escaso."),
 ("Señala el sinónimo de «dilucidar»:", "Aclarar", ["Diluir", "Complicar", "Dilatar"], "Dilucidar es aclarar y explicar un asunto."),
 ("Señala el antónimo de «prolijo»:", "Conciso", ["Extenso", "Detallado", "Minucioso"], "Lo contrario de prolijo (largo, excesivo) es conciso o breve."),
 ("Señala el antónimo de «escaso»:", "Abundante", ["Exiguo", "Limitado", "Insuficiente"], "Las otras tres palabras son sinónimos de escaso."),
 ("Señala el antónimo de «efímero»:", "Perdurable", ["Fugaz", "Breve", "Transitorio"], "Las otras tres palabras son sinónimos de efímero."),
 ("Señala el antónimo de «diáfano»:", "Opaco", ["Claro", "Transparente", "Nítido"], "Diáfano es claro o transparente; su contrario es opaco."),
 ("Señala el antónimo de «sosegado»:", "Inquieto", ["Tranquilo", "Calmado", "Sereno"], "Sosegado es tranquilo; su contrario es inquieto."),
 ("Señala el antónimo de «pródigo»:", "Tacaño", ["Generoso", "Derrochador", "Espléndido"], "Pródigo es quien gasta o da con generosidad; su contrario es tacaño."),
 ("¿Qué palabra está escrita correctamente?", "Absorber", ["Absorver", "Abzorber", "Avsorber"], "Absorber se escribe con b en ambas sílabas («absorción» con c)."),
 ("¿Cuál de estas palabras está bien escrita?", "Exhaustivo", ["Exaustivo", "Exhaustibo", "Eshaustivo"], "Exhaustivo se escribe con h intercalada y con v."),
 ("Indica la palabra correctamente escrita:", "Adecuado", ["Adequado", "Hadecuado", "Adecuádo"], "Adecuado se escribe con c y sin tilde (palabra llana terminada en vocal)."),
 ("¿Cuál de las siguientes palabras está escrita sin faltas?", "Desahucio", ["Desaucio", "Deshaucio", "Desahúcio"], "Desahucio lleva h intercalada entre la a y la u, y no lleva tilde."),
 ("¿Qué palabra NO pertenece al grupo? Martillo, destornillador, alicates, pincel, llave inglesa", "Pincel", ["Martillo", "Alicates", "Destornillador"], "Todas son herramientas de bricolaje o mecánica salvo el pincel, que es un útil de pintura."),
 ("¿Qué palabra NO pertenece al grupo? Ley, reglamento, orden ministerial, sentencia, real decreto", "Sentencia", ["Reglamento", "Real decreto", "Orden ministerial"], "Todas son normas jurídicas salvo la sentencia, que es una resolución judicial."),
 ("Libro es a biblioteca como cuadro es a:", "Museo", ["Pintor", "Marco", "Pincel"], "Los libros se guardan y exponen en bibliotecas; los cuadros, en museos."),
 ("Juez es a sentencia como legislador es a:", "Ley", ["Tribunal", "Parlamento", "Juicio"], "El juez dicta sentencias; el legislador aprueba leyes."),
]
for p, c, i, e in VERB:
    add(p, c, i, e)

json.dump(OUT, open("age/n29.json", "w"), ensure_ascii=False, indent=0)
print(len(OUT), "psicotécnicos")
