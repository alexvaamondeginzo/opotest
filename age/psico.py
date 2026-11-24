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
def descartar(*_):
    """Retiradas el 24/11/2026: el conteo y la comparación de pares no salen en el examen del Estado.
    Se siguen generando (sin guardarlas) para no cambiar el sorteo de las preguntas siguientes."""
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


# =====================================================================
# AMPLIACIÓN (24/11/2026): tablas, ordenación, claves, series difíciles,
# problemas y más verbales. Usa su propio generador aleatorio para no
# cambiar las 139 preguntas anteriores (sus ids dependen del enunciado).
# =====================================================================
R2 = random.Random(2029)

def numops(v, deltas, sufijo=""):
    """Tres distractores cercanos, al menos uno por encima y otro por debajo."""
    arr = [v + d for d in deltas if v + d > 0 and v + d != v]
    arr = list(dict.fromkeys(arr))
    up = [x for x in arr if x > v]; dn = [x for x in arr if x < v]
    R2.shuffle(up); R2.shuffle(dn)
    sel = []
    if up: sel.append(up.pop())
    if dn: sel.append(dn.pop())
    resto = up + dn; R2.shuffle(resto)
    sel += resto
    return [fmt(x) + sufijo for x in sel[:3]]

MESES = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio"]
UNIDADES = [["Registro", "Personal", "Contratación", "Información"],
            ["Sede A", "Sede B", "Sede C", "Sede D"],
            ["Ventanilla 1", "Ventanilla 2", "Ventanilla 3", "Ventanilla 4"],
            ["Ana", "Luis", "Marta", "Jorge"]]
DATO = [("expedientes", "o", "tramitó", "qué unidad"), ("solicitudes", "a", "registró", "qué sede"),
        ("personas", "a", "atendió", "qué ventanilla"), ("documentos", "o", "digitalizó", "qué auxiliar")]
QUE = ["expedientes tramitados por cuatro unidades de una consejería",
       "solicitudes registradas en cuatro sedes de un organismo",
       "personas atendidas en cuatro ventanillas de una oficina",
       "documentos digitalizados por cuatro auxiliares"]

# ---------- 7. Tablas de datos ----------
for nt in range(19):
    g = nt % 4
    uni = UNIDADES[g]
    m0 = R2.randint(0, 2); meses = MESES[m0:m0 + 4]
    while True:
        T = [[R2.randint(60, 240) for _ in range(4)] for _ in range(4)]
        tot_u = [sum(r) for r in T]
        tot_m = [sum(T[i][j] for i in range(4)) for j in range(4)]
        if len(set(tot_u)) == 4 and len(set(tot_m)) == 4 and sorted(tot_u)[-1] - sorted(tot_u)[-2] >= 3 and sorted(tot_m)[-1] - sorted(tot_m)[-2] >= 3:
            break
    cab = f"La tabla recoge las {QUE[g]}:" if g in (1, 2) else f"La tabla recoge los {QUE[g]}:"
    tabla = cab + "\n" + " | ".join(["Unidad" if g == 0 else ("Sede" if g == 1 else ("Ventanilla" if g == 2 else "Auxiliar"))] + meses) + "\n" + \
        "\n".join(" | ".join([uni[i]] + [str(x) for x in T[i]]) for i in range(4)) + "\n"
    nom, ge, vb, quien = DATO[g]; cu = "Cuánt" + ge + "s"
    tipos = ["suma", "dif", "maxu", "maxm", "pct", "media", "minu", "summes"]
    R2.shuffle(tipos)
    for tipo in tipos[:4]:
        i = R2.randrange(4); j = R2.randrange(4)
        if tipo == "suma":
            v = tot_u[i]
            add(tabla + f"¿{cu} {nom} {vb} {uni[i]} en total entre {meses[0].lower()} y {meses[3].lower()}?", fmt(v), numops(v, [-10, 10, -20, 20, -T[i][0], 9, -11]),
                f"{' + '.join(map(str, T[i]))} = {v}.")
        elif tipo == "dif":
            a, b = R2.sample(range(4), 2)
            if T[i][a] == T[i][b]:
                continue
            if T[i][a] < T[i][b]:
                a, b = b, a
            v = T[i][a] - T[i][b]
            add(tabla + f"¿{cu} {nom} más {vb} {uni[i]} en {meses[a].lower()} que en {meses[b].lower()}?", fmt(v), numops(v, [-10, 10, -1, 1, 20, -5, 5]),
                f"{T[i][a]} − {T[i][b]} = {v}.")
        elif tipo in ("maxu", "minu"):
            k = tot_u.index(max(tot_u) if tipo == "maxu" else min(tot_u))
            if tipo == "minu" and sorted(tot_u)[1] - sorted(tot_u)[0] < 3:
                continue
            palabra = "más" if tipo == "maxu" else "menos"
            add(tabla + f"Sumando los cuatro meses, ¿{quien} {vb} {palabra} {nom}?", uni[k], [u for u in uni if u != uni[k]],
                "Totales: " + "; ".join(f"{uni[x]}, {tot_u[x]}" for x in range(4)) + ".")
        elif tipo == "maxm":
            k = tot_m.index(max(tot_m))
            add(tabla + f"¿En qué mes hubo más {nom} sumando las cuatro filas?", meses[k], [m for m in meses if m != meses[k]],
                "Totales por mes: " + "; ".join(f"{meses[x].lower()}, {tot_m[x]}" for x in range(4)) + ".")
        elif tipo == "summes":
            v = tot_m[j]
            add(tabla + f"¿{cu} {nom} hubo en total en {meses[j].lower()}?", fmt(v), numops(v, [-10, 10, -20, 20, 9, -9]),
                f"{' + '.join(str(T[x][j]) for x in range(4))} = {v}.")
        elif tipo == "pct":
            p = 100 * T[i][j] / tot_m[j]
            if abs(p - int(p) - 0.5) < 0.15:
                continue
            v = round(p)
            add(tabla + f"¿Qué porcentaje del total de {nom} de {meses[j].lower()} corresponde a {uni[i]}, redondeado a la unidad?", f"{v} %", numops(v, [-3, 3, -6, 6, 5, -5], " %"),
                f"{T[i][j]} / {tot_m[j]} × 100 = {p:.1f}".replace(".", ",") + f" %, que redondeado es {v} %.")
        elif tipo == "media":
            resto = tot_u[i] % 4
            if resto:
                continue
            v = tot_u[i] // 4
            add(tabla + f"¿Cuál es la media mensual de {nom} de {uni[i]}?", fmt(v), numops(v, [-4, 4, -8, 8, 3, -3]),
                f"{tot_u[i]} / 4 = {v}.")

# ---------- 8. Ordenación alfabética ----------
ORD = "abcdefghijklmnñopqrstuvwxyz"
TILDES = str.maketrans("áéíóúüÁÉÍÓÚÜ", "aeiouuAEIOUU")
def clave(s):
    return tuple(tuple(ORD.index(ch) for ch in w.translate(TILDES).lower() if ch in ORD) for w in s.replace(",", "").split())
GRUPOS = [
    ["García", "Garcés", "Gallego", "Galán", "Garrido", "Gálvez", "Gamero", "Garzón", "Gallardo", "Gascón"],
    ["Martín", "Martínez", "Marín", "Mármol", "Márquez", "Marco", "Mariño", "Mas", "Mata", "Matas"],
    ["Peña", "Pena", "Peral", "Pérez", "Perea", "Pereira", "Pedraza", "Penalva", "Peñalver", "Pelayo"],
    ["Sánchez", "Sancho", "Sanz", "Santos", "Sandoval", "Sanjuán", "Salas", "Salinas", "Saez", "Sainz"],
    ["Romero", "Román", "Romo", "Roldán", "Rojas", "Rojo", "Rosales", "Rosa", "Rubio", "Ruano"],
    ["Navarro", "Nadal", "Naranjo", "Núñez", "Nieto", "Nieves", "Noguera", "Nogales", "Nava", "Navas"],
    ["Castro", "Castillo", "Castaño", "Casado", "Casas", "Cano", "Campos", "Calvo", "Camacho", "Cantero"],
    ["Ortega", "Ortiz", "Ortuño", "Otero", "Osorio", "Olmo", "Olmedo", "Oliva", "Oliver", "Orozco"],
]
POS = ["primer", "segundo", "tercer", "cuarto", "quinto", "sexto"]
for n in range(32):
    grupo = GRUPOS[n % len(GRUPOS)]
    lista = R2.sample(grupo, 6)
    orden = sorted(lista, key=clave)
    k = R2.randint(1, 4)
    corr = orden[k]
    otros = [orden[k - 1], orden[k + 1]] + [x for x in orden if x not in (corr, orden[k - 1], orden[k + 1])]
    add(f"Si se ordenan alfabéticamente estos apellidos, ¿cuál queda en {POS[k]} lugar? {', '.join(lista)}", corr, otros[:2] + [R2.choice(otros[2:])],
        "Orden alfabético: " + ", ".join(orden) + ". La tilde no cuenta y la Ñ va después de la N.")
NOMBRES = ["Ana", "Luis", "Elena", "Pablo", "Sara", "Javier", "Lucía", "Diego", "Carmen", "Raúl", "Irene", "Óscar"]
for n in range(14):
    g = GRUPOS[n % len(GRUPOS)]
    p1 = R2.sample(g, 3)
    gente = []
    for _ in range(5):
        gente.append(f"{R2.choice(p1)} {R2.choice(GRUPOS[(n + 3) % len(GRUPOS)])}, {R2.choice(NOMBRES)}")
    if len(set(gente)) < 5 or len({clave(x) for x in gente}) < 5:
        continue
    orden = sorted(gente, key=clave)
    k = R2.randint(1, 3)
    corr = orden[k]
    otros = [x for x in orden if x != corr]
    R2.shuffle(otros)
    add(f"Se archivan estas fichas por orden alfabético (primer apellido, segundo apellido y nombre). ¿Cuál va en {POS[k]} lugar? " + "; ".join(gente), corr, otros,
        "Orden: " + "; ".join(orden) + ". Si coincide el primer apellido, decide el segundo; si también coincide, el nombre.")

# ---------- 9. Ordenación de fechas y números de expediente ----------
for n in range(14):
    año = R2.choice([2024, 2025, 2026])
    fechas = set()
    while len(fechas) < 5:
        d = R2.randint(1, 28); m = R2.randint(1, 12); a = año + R2.choice([0, 0, 1])
        fechas.add((a, m, d))
    fechas = list(fechas); R2.shuffle(fechas)
    f = lambda t: f"{t[2]:02d}/{t[1]:02d}/{t[0]}"
    orden = sorted(fechas)
    k = R2.randint(1, 3)
    corr = f(orden[k]); otros = [f(x) for x in orden if x != orden[k]]
    R2.shuffle(otros)
    add(f"Ordenadas de la más antigua a la más reciente, ¿qué fecha ocupa el {POS[k]} lugar? {', '.join(f(x) for x in fechas)}", corr, otros,
        "Orden: " + ", ".join(f(x) for x in orden) + ". Se compara primero el año, luego el mes y por último el día.")
for n in range(12):
    base = R2.sample("0123456789", 4)
    nums = set()
    while len(nums) < 5:
        dig = base[:]; R2.shuffle(dig)
        nums.add("".join(dig))
    año = R2.choice(["2025", "2026"])
    nums = sorted(nums); random.Random(1000 + n).shuffle(nums)  # orden fijo (un set de textos cambia en cada ejecución)
    orden = sorted(nums, key=int)
    k = R2.randint(1, 3)
    asc = R2.random() < 0.5
    if not asc:
        orden = orden[::-1]
    e = lambda x: f"{año}/0{x}"
    corr = e(orden[k]); otros = [e(x) for x in orden if x != orden[k]]
    R2.shuffle(otros)
    add(f"Ordenados de {'menor a mayor' if asc else 'mayor a menor'}, ¿qué número de expediente ocupa el {POS[k]} lugar? {', '.join(e(x) for x in nums)}", corr, otros,
        "Orden: " + ", ".join(e(x) for x in orden) + ".")

# ---------- 10. Claves y correspondencias ----------
PALABRAS = ["PLAZO", "NORMA", "CORTES", "SENADO", "DECRETO", "FIRMA", "SELLO", "RECURSO", "TRAMITE", "ARCHIVO",
            "ACTAS", "LEY", "PLENO", "MOCION", "CONSEJO", "ORDEN", "CENSO", "TASA", "VOTO", "MUNICIPIO",
            "JUZGADO", "CUERPO", "PERMISO", "LICENCIA", "OFICIO", "REGISTRO"]
for n in range(18):
    w = PALABRAS[n % len(PALABRAS)]
    letras = list(dict.fromkeys(w))
    extra = [c for c in "ABCDEFGHIJLMNOPRSTUVZ" if c not in letras]
    clv = letras + R2.sample(extra, 2)
    if len(clv) > 10:
        clv = letras
    dig = R2.sample("0123456789", len(clv))
    mapa = dict(zip(clv, dig))
    orden_clave = clv[:]; R2.shuffle(orden_clave)
    tabla = "Clave:\n" + " | ".join(orden_clave) + "\n" + " | ".join(mapa[c] for c in orden_clave) + "\n"
    cod = "".join(mapa[c] for c in w)
    incs = []
    for _ in range(12):
        x = list(cod); a = R2.randrange(len(x) - 1)
        if R2.random() < 0.6:
            x[a], x[a + 1] = x[a + 1], x[a]
        else:
            x[a] = R2.choice([mapa[c] for c in clv if mapa[c] != x[a]])
        incs.append("".join(x))
    if n % 2 == 0:
        add(tabla + f"Con esta clave, ¿cómo se escribe la palabra {w}?", cod, [i for i in dict.fromkeys(incs) if i != cod],
            "Letra a letra: " + ", ".join(f"{c}={mapa[c]}" for c in w) + f" → {cod}.")
    else:
        inv = {v: k for k, v in mapa.items()}
        winc = []
        for i in incs:
            winc.append("".join(inv[d] for d in i))
        add(tabla + f"Con esta clave, ¿qué palabra corresponde al código {cod}?", w, [x for x in dict.fromkeys(winc) if x != w],
            "Cifra a cifra: " + ", ".join(f"{d}={inv[d]}" for d in cod) + f" → {w}.")
PARECIDOS = {"8": "B", "B": "8", "0": "O", "O": "0", "1": "I", "I": "1", "5": "S", "S": "5", "2": "Z", "Z": "2", "6": "G", "G": "6", "E": "F", "F": "E", "M": "N", "N": "M", "3": "8", "7": "1"}
CH = "0123456789ABEFGIMNOSZ"
for n in range(16):
    k = R2.randint(0, 5)
    iguales = [True] * k + [False] * (5 - k); R2.shuffle(iguales)
    lineas = []
    for ig in iguales:
        c = "".join(R2.choice(CH) for _ in range(3)) + "-" + "".join(R2.choice(CH) for _ in range(3))
        d = c
        if not ig:
            pos = [i for i, ch in enumerate(c) if ch in PARECIDOS]
            if not pos:
                pos = [0]; c = "8" + c[1:]
            p = R2.choice(pos)
            d = c[:p] + PARECIDOS[c[p]] + c[p + 1:]
        lineas.append(f"{c} | {d}")
    descartar("¿Cuántos de estos pares de códigos son exactamente iguales?\nCódigo 1 | Código 2\n" + "\n".join(lineas), str(k),
        [str(x) for x in [k + 1, k - 1, k + 2, k - 2, k + 3, k - 3] if 0 <= x <= 5],
        f"Coinciden {k} de los 5 pares. En cada par distinto cambia un solo carácter parecido (8 y B, 0 y O, 1 e I, 5 y S…).")
for n in range(14):
    if n % 2 == 0:
        alf = "bdpq"; obj = R2.choice(alf); txt = "".join(R2.choice(alf) for _ in range(26)); que = f"la letra «{obj}»"
        mostrado = txt
    else:
        alf = "6989"; obj = R2.choice("69"); txt = "".join(R2.choice("689") for _ in range(24)); que = f"el número {obj}"
        mostrado = " ".join(txt)
    v = txt.count(obj)
    descartar(f"¿Cuántas veces aparece {que} en esta serie? {mostrado}", str(v), [str(x) for x in [v + 1, v - 1, v + 2, v - 2, v + 3] if x >= 0],
        f"Aparece {v} veces.")

# ---------- 11. Series más difíciles ----------
for _ in range(8):  # letras con saltos crecientes
    s = R2.randint(0, 5); salto = 1; idx = [s]
    for i in range(4):
        idx.append(idx[-1] + salto + i)
    n = idx[-1] + salto + 4
    if n > 26:
        continue
    cands = [L(n + 1), L(n - 1), L(n - 2), L(n + 2)]
    add(f"Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? {', '.join(L(i) for i in idx)}, …", L(n), cands,
        f"Los saltos aumentan de uno en uno (se avanzan 1, 2, 3, 4 letras…); ahora toca avanzar 5: tras la {L(idx[-1])} viene la {L(n)}.")
for _ in range(6):  # letras hacia atrás
    s = R2.randint(18, 26); k = R2.choice([2, 3])
    idx = [s - i * k for i in range(5)]; n = s - 5 * k
    if n < 0:
        continue
    add(f"Teniendo en cuenta el alfabeto español (con la Ñ), ¿qué letra continúa la serie? {', '.join(L(i) for i in idx)}, …", L(n), [L(n + 1), L(n - 1), L(n + k + 1), L(n - 2)],
        f"Se retroceden {k} letras cada vez: antes de la {L(idx[-1])}, contando hacia atrás {k}, está la {L(n)}. Recuerda la Ñ.")
for _ in range(8):  # alternas ×k, +c
    a = R2.randint(1, 6); k = R2.choice([2, 3]); c = R2.choice([1, 2, 3, 4, 5])
    t = [a]
    for i in range(5):
        t.append(t[-1] * k if i % 2 == 0 else t[-1] + c)
    n = t[-1] * k if 5 % 2 == 0 else t[-1] + c
    n = t[-1] * k  # i=5 es impar en la lista de 6 términos -> toca multiplicar
    serie(t, n, f"Se alternan dos operaciones: multiplicar por {k} y sumar {c}. Tras sumar {c} toca multiplicar: {fmt(t[-1])} × {k} = {fmt(n)}.", [t[-1] + c, n + c, n - c, n + k])
for _ in range(8):  # alternas +a, −b
    a = R2.randint(5, 30); s1 = R2.randint(4, 12); s2 = R2.randint(1, s1 - 1)
    t = [a]
    for i in range(6):
        t.append(t[-1] + s1 if i % 2 == 0 else t[-1] - s2)
    n = t[-1] + s1
    serie(t, n, f"Se alterna sumar {s1} y restar {s2}. Ahora toca sumar: {fmt(t[-1])} + {s1} = {fmt(n)}.", [t[-1] - s2, n + s2, n - 1, n + 1, n - s2 - s2])
for _ in range(6):  # diferencias que se duplican
    a = R2.randint(1, 20); d = R2.randint(1, 3)
    t = [a]
    for i in range(5):
        t.append(t[-1] + d * 2 ** i)
    n = t[-1] + d * 2 ** 5
    serie(t, n, f"Las diferencias se duplican ({', '.join(str(d * 2 ** i) for i in range(5))}…); la siguiente es {d * 32}: {fmt(t[-1])} + {d * 32} = {fmt(n)}.", [t[-1] + d * 16, n + d, n - d * 2, n + d * 8])
for _ in range(5):  # cubos
    s0 = R2.randint(1, 4)
    t = [(s0 + i) ** 3 for i in range(5)]; n = (s0 + 5) ** 3
    serie(t, n, f"Son los cubos de números consecutivos: {s0 + 5}³ = {fmt(n)}.", [n - (s0 + 5) ** 2, n + s0 + 5, (s0 + 5) ** 2 * 2, n - 1])

# ---------- 12. Problemas de nivel medio y alto ----------
for _ in range(7):  # porcentajes encadenados
    P = R2.choice([200, 300, 400, 500, 800, 1000, 1200]); p = R2.choice([10, 20, 25, 30, 40]); q = R2.choice([10, 20, 25, 50])
    v = Fraction(P * (100 + p) * (100 - q), 10000)
    add(f"Un artículo cuesta {fmt(P)} €. Primero sube un {p} % y después baja un {q} %. ¿Cuánto cuesta al final?", fmt(v) + " €",
        [fmt(Fraction(P * (100 + p - q), 100)) + " €", fmt(v + P // 20) + " €", fmt(v - P // 25) + " €", fmt(Fraction(P * (100 - p) * (100 + q), 10000)) + " €"],
        f"{fmt(P)} × {fmt(Fraction(100 + p, 100))} = {fmt(Fraction(P * (100 + p), 100))}; × {fmt(Fraction(100 - q, 100))} = {fmt(v)} €. Los porcentajes no se suman: cada uno se aplica sobre el precio que ya ha cambiado.")
for _ in range(6):  # descuento + IVA
    P = R2.choice([100, 200, 300, 400, 500, 600]); d = R2.choice([10, 20, 25, 30])
    v = Fraction(P * (100 - d) * 121, 10000)
    add(f"Un equipo cuesta {fmt(P)} € sin IVA y tiene un descuento del {d} %. ¿Cuánto se paga si después se aplica el IVA del 21 %?", fmt(v) + " €",
        [fmt(Fraction(P * (100 - d + 21), 100)) + " €", fmt(Fraction(P * (100 - d), 100)) + " €", fmt(Fraction(P * 121, 100)) + " €", fmt(v + 10) + " €"],
        f"Con el descuento: {fmt(P)} × {fmt(Fraction(100 - d, 100))} = {fmt(Fraction(P * (100 - d), 100))} €. Con el IVA: × 1,21 = {fmt(v)} €.")
for a, b in R2.sample([(3, 6), (4, 12), (6, 12), (10, 15), (12, 24), (20, 30), (5, 20), (8, 24), (15, 30), (10, 40), (9, 18), (14, 35), (6, 30), (12, 36)], 8):
    v = a * b // (a + b)
    add(f"Un auxiliar tarda {a} horas en ordenar un archivo y otro tarda {b} horas. Trabajando juntos, ¿cuánto tardan?", f"{v} horas",
        [f"{(a + b) // 2} horas", f"{v + 1} horas", f"{v - 1} horas", f"{b - a} horas"],
        f"En una hora hacen 1/{a} + 1/{b} = {fmt(Fraction(1, a) + Fraction(1, b)) if False else str(Fraction(1, a) + Fraction(1, b))} del trabajo, así que tardan {a} × {b} / ({a} + {b}) = {v} horas.")
for _ in range(7):  # reparto proporcional
    p, q, r = R2.choice([(1, 2, 3), (2, 3, 5), (1, 3, 4), (2, 5, 3), (3, 4, 5), (1, 2, 5)])
    k = R2.choice([50, 100, 120, 150, 200, 250])
    T = k * (p + q + r)
    cual = R2.randrange(3); nom = ["A", "B", "C"][cual]; parte = [p, q, r][cual]
    v = k * parte
    add(f"Se reparten {fmt(T)} € entre tres unidades, A, B y C, en proporción a {p}, {q} y {r}. ¿Cuánto recibe {nom}?", fmt(v) + " €",
        numops(v, [k, -k, k // 2, -k // 2, 2 * k], " €"),
        f"Hay {p} + {q} + {r} = {p + q + r} partes; cada parte vale {fmt(T)} / {p + q + r} = {fmt(k)} €. {nom} recibe {parte} × {fmt(k)} = {fmt(v)} €.")
for _ in range(7):  # horas
    h = R2.randint(8, 12); m = R2.choice([5, 15, 20, 35, 40, 45, 50, 55]); dh = R2.randint(1, 3); dm = R2.choice([25, 35, 40, 45, 50, 55])
    fin = h * 60 + m + dh * 60 + dm
    hh = lambda x: f"{x // 60:02d}:{x % 60:02d}"
    add(f"Una sesión de formación empieza a las {hh(h * 60 + m)} y dura {dh} hora{'s' if dh > 1 else ''} y {dm} minutos. ¿A qué hora termina?", hh(fin),
        [hh(fin - 60), hh(fin + 10), hh(fin - 10), hh(fin + 60)],
        f"{hh(h * 60 + m)} + {dh} h = {hh(h * 60 + m + dh * 60)}; + {dm} min = {hh(fin)}.")
for _ in range(6):  # edades: suma y diferencia
    b = R2.randint(8, 30); d = R2.randint(2, 12); S = 2 * b + d
    add(f"Entre dos hermanos suman {S} años y el mayor tiene {d} años más que el pequeño. ¿Cuántos años tiene el pequeño?", f"{b} años",
        [f"{b + d} años", f"{S // 2} años" if S // 2 != b else f"{b + 2} años", f"{b - 1} años", f"{b + 1} años"],
        f"Si al total se le quita la diferencia quedan dos edades iguales: ({S} − {d}) / 2 = {b} años.")
from math import gcd
for a, b in R2.sample([(6, 8), (4, 6), (9, 12), (10, 15), (8, 12), (6, 10), (12, 18), (14, 21), (15, 20), (6, 9)], 7):
    v = a * b // gcd(a, b)
    add(f"Una impresora se revisa cada {a} días y otra cada {b}. Si hoy coinciden las dos revisiones, ¿dentro de cuántos días volverán a coincidir?", f"{v} días",
        [f"{a * b} días" if a * b != v else f"{v + a} días", f"{v + a} días", f"{v - a} días", f"{a + b} días"],
        f"Es el mínimo común múltiplo de {a} y {b}: m.c.m.({a}, {b}) = {v}.")
for _ in range(6):  # tiempo de viaje
    v = R2.choice([60, 80, 90, 100, 120]); t_min = R2.choice([45, 75, 90, 105, 135, 150])
    D = v * t_min // 60
    if v * t_min % 60:
        continue
    th = lambda x: (f"{x // 60} h " if x >= 60 else "") + (f"{x % 60} min" if x % 60 else "").strip()
    add(f"Un coche recorre {D} km a una velocidad constante de {v} km/h. ¿Cuánto tarda?", th(t_min).strip(),
        [th(t_min + 15).strip(), th(t_min - 15).strip(), th(t_min + 30).strip(), th(t_min - 10).strip()],
        f"Tiempo = distancia / velocidad = {D} / {v} = {fmt(Fraction(D, v))} h, es decir, {th(t_min).strip()}.")

# ---------- 13. Más verbales (revisados a mano con el diccionario de la RAE) ----------
VERB2 = [
 ("Señala el sinónimo de «acatar»:", "Obedecer", ["Acotar", "Rechazar", "Atacar"], "Acatar es aceptar con sumisión una norma u orden: obedecer."),
 ("Señala el sinónimo de «ratificar»:", "Confirmar", ["Rectificar", "Revocar", "Retirar"], "Ratificar es aprobar o confirmar algo que se ha dicho o hecho. Rectificar es corregir."),
 ("Señala el sinónimo de «derogar»:", "Abolir", ["Promulgar", "Delegar", "Prorrogar"], "Derogar es dejar sin efecto una norma: abolir, anular."),
 ("Señala el sinónimo de «potestativo»:", "Facultativo", ["Obligatorio", "Poderoso", "Preceptivo"], "Potestativo es lo que no es obligatorio, sino que depende de la voluntad: facultativo."),
 ("Señala el sinónimo de «preceptivo»:", "Obligatorio", ["Opcional", "Preventivo", "Perceptivo"], "Preceptivo es lo ordenado por un precepto: obligatorio."),
 ("Señala el sinónimo de «sucinto»:", "Breve", ["Extenso", "Sugerente", "Confuso"], "Sucinto es breve, compendioso."),
 ("Señala el sinónimo de «inocuo»:", "Inofensivo", ["Nocivo", "Inútil", "Inicuo"], "Inocuo es lo que no hace daño. Inicuo significa injusto."),
 ("Señala el sinónimo de «vetusto»:", "Antiguo", ["Moderno", "Robusto", "Vistoso"], "Vetusto es muy antiguo o de mucha edad."),
 ("Señala el sinónimo de «óbice»:", "Obstáculo", ["Ayuda", "Óbolo", "Motivo"], "Óbice es un obstáculo o impedimento («no es óbice para…»)."),
 ("Señala el sinónimo de «nimio»:", "Insignificante", ["Esencial", "Nítido", "Numeroso"], "Nimio es lo pequeño o sin importancia."),
 ("Señala el sinónimo de «recabar»:", "Solicitar", ["Recalcar", "Terminar", "Rechazar"], "Recabar es pedir o reclamar algo, o conseguirlo a base de pedirlo («recabar información»)."),
 ("Señala el sinónimo de «proscribir»:", "Prohibir", ["Prescribir", "Permitir", "Proponer"], "Proscribir es prohibir o excluir. Prescribir es ordenar o recetar."),
 ("Señala el sinónimo de «incoar»:", "Iniciar", ["Concluir", "Incluir", "Inculcar"], "Incoar es comenzar algo, sobre todo un proceso o expediente."),
 ("Señala el sinónimo de «avenencia»:", "Acuerdo", ["Disputa", "Llegada", "Avenida"], "Avenencia es convenio o conformidad entre partes."),
 ("Señala el sinónimo de «somero»:", "Superficial", ["Profundo", "Sombrío", "Severo"], "Somero es ligero, superficial, hecho sin detenimiento."),
 ("Señala el sinónimo de «baladí»:", "Trivial", ["Importante", "Vistoso", "Grave"], "Baladí es lo de poca importancia."),
 ("Señala el sinónimo de «pertinaz»:", "Obstinado", ["Pertinente", "Dócil", "Breve"], "Pertinaz es obstinado o terco, y también muy duradero («sequía pertinaz»)."),
 ("Señala el sinónimo de «conculcar»:", "Vulnerar", ["Respetar", "Inculcar", "Conciliar"], "Conculcar es quebrantar una ley o un derecho."),
 ("Señala el antónimo de «exiguo»:", "Copioso", ["Escaso", "Mínimo", "Reducido"], "Exiguo es escaso; su contrario es copioso o abundante."),
 ("Señala el antónimo de «prolífico»:", "Estéril", ["Fecundo", "Productivo", "Fértil"], "Prolífico es lo que produce mucho; las otras tres son sinónimos."),
 ("Señala el antónimo de «diligente»:", "Negligente", ["Cuidadoso", "Esmerado", "Solícito"], "Diligente es cuidadoso y activo; su contrario es negligente."),
 ("Señala el antónimo de «locuaz»:", "Taciturno", ["Hablador", "Parlanchín", "Charlatán"], "Locuaz es quien habla mucho; taciturno, quien habla poco."),
 ("Señala el antónimo de «benévolo»:", "Malévolo", ["Indulgente", "Bondadoso", "Clemente"], "Benévolo es quien tiene buena voluntad; su contrario es malévolo."),
 ("Señala el antónimo de «perenne»:", "Caduco", ["Perpetuo", "Permanente", "Duradero"], "Perenne es lo que dura siempre; caduco, lo que se acaba o pierde vigencia."),
 ("Señala el antónimo de «verosímil»:", "Increíble", ["Creíble", "Probable", "Plausible"], "Verosímil es lo que parece verdadero y es creíble."),
 ("Señala el antónimo de «afable»:", "Arisco", ["Amable", "Cordial", "Simpático"], "Afable es agradable en el trato; arisco, áspero e intratable."),
 ("Señala el antónimo de «tácito»:", "Expreso", ["Implícito", "Sobreentendido", "Callado"], "Tácito es lo que no se dice pero se supone; su contrario es expreso."),
 ("Señala el antónimo de «promulgar»:", "Derogar", ["Publicar", "Sancionar", "Proclamar"], "Promulgar una ley es publicarla solemnemente; derogarla es dejarla sin efecto."),
 ("Pez es a agua como ave es a:", "Aire", ["Nido", "Pluma", "Árbol"], "El pez se mueve en el agua; el ave, en el aire."),
 ("Médico es a hospital como maestro es a:", "Escuela", ["Alumno", "Pizarra", "Lección"], "Es la relación entre la profesión y su lugar de trabajo."),
 ("Alcalde es a ayuntamiento como presidente autonómico es a:", "Comunidad autónoma", ["Diputación provincial", "Senado", "Municipio"], "Cada uno preside el gobierno de su territorio."),
 ("Senado es a senador como Congreso es a:", "Diputado", ["Concejal", "Ministro", "Procurador"], "Los miembros del Congreso de los Diputados son los diputados."),
 ("Hambre es a comer como sed es a:", "Beber", ["Agua", "Sequía", "Vaso"], "Es la relación entre una necesidad y la acción que la satisface."),
 ("Grande es a enorme como pequeño es a:", "Diminuto", ["Corto", "Mediano", "Bajo"], "Enorme es grado máximo de grande; diminuto, de pequeño."),
 ("Ley es a Cortes Generales como real decreto es a:", "Gobierno", ["Senado", "Tribunal Supremo", "Defensor del Pueblo"], "Las leyes las aprueban las Cortes Generales; los reales decretos, el Gobierno."),
 ("Kilogramo es a gramo como kilómetro es a:", "Metro", ["Litro", "Milla", "Centímetro"], "Un kilogramo son 1.000 gramos y un kilómetro, 1.000 metros."),
 ("Escribir es a bolígrafo como cortar es a:", "Tijeras", ["Papel", "Recorte", "Tela"], "Es la relación entre una acción y el instrumento con que se hace."),
 ("¿Qué palabra NO pertenece al grupo? Lunes, miércoles, enero, viernes, domingo", "Enero", ["Lunes", "Viernes", "Domingo"], "Todas son días de la semana salvo enero, que es un mes."),
 ("¿Qué palabra NO pertenece al grupo? Congreso, Senado, Tribunal Supremo, Cortes Generales", "Tribunal Supremo", ["Congreso", "Senado", "Cortes Generales"], "Congreso y Senado forman las Cortes Generales (poder legislativo); el Tribunal Supremo es un órgano judicial."),
 ("¿Qué palabra NO pertenece al grupo? Word, Excel, PowerPoint, Windows, Outlook", "Windows", ["Excel", "Outlook", "PowerPoint"], "Todas son aplicaciones de Microsoft 365 salvo Windows, que es el sistema operativo."),
 ("¿Qué palabra NO pertenece al grupo? Cuadrado, triángulo, rombo, cubo, pentágono", "Cubo", ["Rombo", "Triángulo", "Pentágono"], "Todas son figuras planas salvo el cubo, que es un cuerpo geométrico."),
 ("¿Qué palabra NO pertenece al grupo? Alcalde, concejal, pleno, senador, junta de gobierno local", "Senador", ["Concejal", "Pleno", "Alcalde"], "Todos son órganos o cargos municipales salvo el senador."),
 ("¿Qué palabra NO pertenece al grupo? Kilogramo, metro, litro, segundo, euro", "Euro", ["Litro", "Metro", "Segundo"], "Todas son unidades de medida salvo el euro, que es una moneda."),
 ("¿Cuál de estas palabras está bien escrita?", "Exhibición", ["Exibición", "Exhivición", "Ecxibición"], "Exhibición se escribe con h intercalada y con b."),
 ("Indica la palabra correctamente escrita:", "Accesible", ["Accesivle", "Acesible", "Acsesible"], "Accesible lleva doble c y termina en -ible, con b."),
 ("¿Qué palabra está escrita correctamente?", "Garaje", ["Garage", "Garraje", "Guaraje"], "En español se escribe garaje, con j."),
 ("¿Cuál de las siguientes palabras está escrita sin faltas?", "Ahínco", ["Ahinco", "Aínco", "Ahíngo"], "Ahínco lleva h intercalada y tilde en la í para marcar el hiato."),
 ("¿Qué palabra está bien escrita?", "Cónyuge", ["Cónyugue", "Cónyujue", "Conyuge"], "Se escribe cónyuge: con g y sin u, y con tilde por ser esdrújula."),
 ("Indica la forma correcta:", "Espontáneo", ["Expontáneo", "Espontaneo", "Espontánio"], "Espontáneo se escribe con s y lleva tilde (esdrújula)."),
 ("¿Qué forma verbal es correcta en «Hay que ___ los posibles retrasos»?", "Prever", ["Preveer", "Proveer", "Preber"], "El verbo es prever (ver con anticipación), que se conjuga como ver. «Preveer» no existe; proveer significa suministrar."),
 ("Completa correctamente: «Espero que no ___ problemas con la solicitud»", "haya", ["halla", "aya", "allá"], "Haya es el subjuntivo de haber. Halla es del verbo hallar (encontrar), aya es una cuidadora y allá un adverbio de lugar."),
]
for p, c, i, e in VERB2:
    add(p, c, i, e)


# =====================================================================
# AMPLIACIÓN 2 (24/11/2026), según los exámenes oficiales de 2024 y 2025:
# tablas de caso práctico con 6 preguntas, definiciones, ecuaciones,
# probabilidad, operaciones con signos y códigos binarios.
# =====================================================================
R3 = random.Random(2031)

def ops3(v, cands, sufijo=""):
    return [fmt(x) + sufijo for x in dict.fromkeys(cands) if x != v and x >= 0]

# ---------- 14. Tablas de caso práctico: archivo por plantas ----------
MATERIAS = ["Contratos", "Personal", "Subvenciones", "Tributos", "Urbanismo", "Sanciones", "Licencias", "Patrimonio", "Becas", "Nóminas"]
for n in range(7):
    mats = R3.sample(MATERIAS, 6)
    filas = []
    usados = set()
    for m in mats:
        while True:
            pl = R3.randint(1, 3); pa = R3.choice("ABC")
            if (pl, pa) not in usados:
                usados.add((pl, pa)); break
        ini = R3.randint(1, 9); num = R3.randint(6, 18)
        filas.append([m, pl, pa, ini, ini + num - 1])
    filas.sort(key=lambda f: (f[1], f[2]))
    tot = {f[0]: f[4] - f[3] + 1 for f in filas}
    if sorted(tot.values())[-1] == sorted(tot.values())[-2]:
        filas[0][4] += 3; tot[filas[0][0]] += 3
        if sorted(tot.values())[-1] == sorted(tot.values())[-2]:
            continue
    cab = ("Un archivo guarda los expedientes por materias. Cada expediente se localiza con el código planta-pasillo-estantería "
           "(por ejemplo, 2-B-07 es la planta 2, pasillo B, estantería 7).\n"
           "Materia | Planta | Pasillo | Estanterías\n" +
           "\n".join(f"{f[0]} | {f[1]} | {f[2]} | de la {f[3]} a la {f[4]}" for f in filas) + "\n")
    # 1) código de un expediente
    f = R3.choice(filas); e = R3.randint(f[3], f[4])
    corr = f"{f[1]}-{f[2]}-{e:02d}"
    otras = [g for g in filas if g is not f]
    g = R3.choice(otras)
    add(cab + f"¿Qué código corresponde a un expediente de {f[0]} guardado en su estantería n.º {e}?", corr,
        [f"{g[1]}-{g[2]}-{e:02d}", f"{f[1]}-{'ABC'[('ABC'.index(f[2]) + 1) % 3]}-{e:02d}", f"{f[2]}-{f[1]}-{e:02d}", f"{(f[1] % 3) + 1}-{f[2]}-{e:02d}"],
        f"{f[0]} está en la planta {f[1]}, pasillo {f[2]}: {corr}.")
    # 2) de qué materia es un código
    f = R3.choice(filas); e = R3.randint(f[3], f[4])
    add(cab + f"¿De qué materia es el expediente con código {f[1]}-{f[2]}-{e:02d}?", f[0], [g[0] for g in R3.sample(otras if False else [x for x in filas if x is not f], 3)],
        f"La planta {f[1]}, pasillo {f[2]}, corresponde a {f[0]}, que ocupa de la estantería {f[3]} a la {f[4]}.")
    # 3) cuántas estanterías ocupa una materia
    f = R3.choice(filas); v = f[4] - f[3] + 1
    add(cab + f"¿Cuántas estanterías ocupa {f[0]}?", str(v), ops3(v, [v - 1, v + 1, f[4] - f[3], v + 2]),
        f"De la {f[3]} a la {f[4]}, ambas incluidas: {f[4]} − {f[3]} + 1 = {v}.")
    # 4) materia con más estanterías
    v = max(tot.values()); k = [m for m in tot if tot[m] == v][0]
    add(cab + "¿Qué materia ocupa más estanterías?", k, [m for m in R3.sample([x for x in tot if x != k], 3)],
        "Estanterías por materia: " + ", ".join(f"{m} {tot[m]}" for m in tot) + ".")
    # 5) estanterías por planta
    p = R3.choice(sorted({f[1] for f in filas})); v = sum(f[4] - f[3] + 1 for f in filas if f[1] == p)
    add(cab + f"¿Cuántas estanterías hay en total en la planta {p}?", str(v), ops3(v, [v - 1, v + 1, v + 10, v - 5, v + 5]),
        (f"Se suman las estanterías de las materias de la planta {p}: " + " + ".join(str(f[4] - f[3] + 1) for f in filas if f[1] == p) + f" = {v}.")
        if sum(1 for f in filas if f[1] == p) > 1 else f"En la planta {p} solo hay una materia, con {v} estanterías.")
    # 6) existe un código
    f = R3.choice(filas); fuera = f[4] + R3.randint(1, 3)
    validos = []
    for g in R3.sample(filas, 3):
        validos.append(f"{g[1]}-{g[2]}-{R3.randint(g[3], g[4]):02d}")
    malo = f"{f[1]}-{f[2]}-{fuera:02d}"
    if malo in validos:
        continue
    add(cab + "¿Cuál de estos códigos NO puede existir en el archivo?", malo, validos,
        f"En la planta {f[1]}, pasillo {f[2]} ({f[0]}), las estanterías solo llegan a la {f[4]}; los demás códigos están dentro de los tramos de la tabla.")

# ---------- 15. Tablas de caso práctico: cursos de formación ----------
CURSOS = ["Excel avanzado", "Atención al público", "Protección de datos", "Inglés", "Igualdad", "Contratación pública", "Administración electrónica", "Prevención de riesgos"]
for n in range(7):
    cs = R3.sample(CURSOS, 5)
    filas = []
    for _ in range(200):
        filas = []
        for c in cs:
            plazas = R3.choice([20, 24, 28, 32, 36, 40, 48])
            ins = R3.choice([x for x in range(plazas // 2, plazas + 1) if x % 4 == 0])
            apr = ins * R3.choice([25, 50, 75]) // 100
            horas = R3.choice([10, 15, 20, 25, 30, 40])
            filas.append([c, plazas, ins, apr, horas])
        occ = [f[2] / f[1] for f in filas]; sus = [f[2] - f[3] for f in filas]
        if len(set(occ)) == 5 and sorted(sus)[-1] != sorted(sus)[-2] and sum(f[2] for f in filas) % 5 == 0:
            break
    else:
        continue
    cab = ("La tabla recoge los cursos de formación de una consejería:\n"
           "Curso | Plazas | Inscritos | Aprobados | Horas\n" +
           "\n".join(f"{f[0]} | {f[1]} | {f[2]} | {f[3]} | {f[4]}" for f in filas) + "\n")
    f = R3.choice(filas); v = 100 * f[3] // f[2]
    add(cab + f"¿Qué porcentaje de los inscritos aprobó {f[0]}?", f"{v} %", ops3(v, [v - 25, v + 25, round(100 * f[3] / f[1]), v - 10, v + 10], " %"),
        f"{f[3]} / {f[2]} × 100 = {v} %.")
    tot_ins = sum(f[2] for f in filas)
    if tot_ins % 5 == 0:
        v = tot_ins // 5
        add(cab + "¿Cuál es la media de inscritos por curso?", fmt(v), ops3(v, [v - 2, v + 2, v + 5, v - 5, tot_ins // 4]),
            f"({' + '.join(str(f[2]) for f in filas)}) / 5 = {tot_ins} / 5 = {v}.")
    libres = sum(f[1] - f[2] for f in filas)
    add(cab + "¿Cuántas plazas quedaron libres en total?", str(libres), ops3(libres, [libres - 5, libres + 5, libres + 10, libres - 2, libres + 3]),
        "Plazas menos inscritos en cada curso: " + " + ".join(str(f[1] - f[2]) for f in filas) + f" = {libres}.")
    occ = {f[0]: f[2] / f[1] for f in filas}; k = max(occ, key=occ.get)
    if sorted(occ.values())[-1] != sorted(occ.values())[-2]:
        add(cab + "¿Qué curso tiene el mayor porcentaje de plazas ocupadas?", k, R3.sample([x for x in occ if x != k], 3),
            "Inscritos / plazas: " + "; ".join(f"{c}, {round(100 * o)} %" for c, o in occ.items()) + ".")
    v = sum(f[3] * f[4] for f in filas)
    f = R3.choice(filas); v1 = f[3] * f[4]
    add(cab + f"Si cada aprobado de {f[0]} recibe un certificado con las horas del curso, ¿cuántas horas de formación certifica ese curso en total?", fmt(v1),
        ops3(v1, [f[2] * f[4], v1 + f[4], v1 - f[4], f[3] + f[4]]), f"{f[3]} aprobados × {f[4]} horas = {fmt(v1)} horas.")
    susp = {f[0]: f[2] - f[3] for f in filas}; mx = max(susp.values())
    if list(susp.values()).count(mx) == 1:
        k = [c for c in susp if susp[c] == mx][0]
        add(cab + "¿En qué curso hubo más inscritos sin aprobar?", k, R3.sample([x for x in susp if x != k], 3),
            "Inscritos menos aprobados: " + "; ".join(f"{c}, {s}" for c, s in susp.items()) + ".")

# ---------- 16. Tablas de caso práctico: claves de registro ----------
TIPOS = [("Contrato", "C"), ("Factura", "F"), ("Informe", "I"), ("Resolución", "R"), ("Solicitud", "S"), ("Queja", "Q")]
UNIS = ["Personal", "Hacienda", "Cultura", "Sanidad", "Educación", "Vivienda"]
for n in range(5):
    tipos = R3.sample(TIPOS, 4); unis = R3.sample(UNIS, 4); nums = R3.sample(range(1, 10), 4)
    cab = ("En un registro, cada documento recibe una clave con la letra del tipo, el número de la unidad y las dos últimas cifras del año (por ejemplo, " +
           f"{tipos[0][1]}{nums[0]}-25 es un documento de tipo {tipos[0][0].lower()} de {unis[0]} de 2025).\n"
           "Tipo | Letra\n" + "\n".join(f"{t} | {l}" for t, l in tipos) + "\n"
           "Números de las unidades:\n"
           "Unidad | Número\n" + "\n".join(f"{u} | {m}" for u, m in zip(unis, nums)) + "\n")
    for q in range(6):
        i = R3.randrange(4); j = R3.randrange(4); a = R3.choice([23, 24, 25, 26])
        clave = f"{tipos[i][1]}{nums[j]}-{a}"
        if q % 2 == 0:
            i2 = (i + 1) % 4; j2 = (j + 1) % 4
            add(cab + f"¿Qué clave lleva {('una ' if tipos[i][0] in ('Factura', 'Resolución', 'Solicitud', 'Queja') else 'un ')}{tipos[i][0].lower()} de {unis[j]} de 20{a}?", clave,
                [f"{tipos[i2][1]}{nums[j]}-{a}", f"{tipos[i][1]}{nums[j2]}-{a}", f"{tipos[i][1]}{nums[j]}-{a + 1}", f"{tipos[i2][1]}{nums[j2]}-{a}"],
                f"{tipos[i][0]} = {tipos[i][1]}; {unis[j]} = {nums[j]}; año 20{a} → {clave}.")
        else:
            i2 = (i + 1) % 4; j2 = (j + 1) % 4
            def desc(ii, jj, aa): return f"{tipos[ii][0]} de {unis[jj]} de 20{aa}"
            add(cab + f"¿A qué documento corresponde la clave {clave}?", desc(i, j, a),
                [desc(i2, j, a), desc(i, j2, a), desc(i, j, a - 1), desc(i2, j2, a)],
                f"{tipos[i][1]} = {tipos[i][0].lower()}; {nums[j]} = {unis[j]}; {a} = 20{a}.")

# ---------- 17. Ecuaciones y operaciones con signos ----------
for _ in range(10):
    a = R3.randint(2, 9); x = R3.randint(2, 15); b = R3.randint(1, 30)
    c = a * x + b
    add(f"Si {a}x + {b} = {c}, ¿cuánto vale x?", str(x), [str(v) for v in [x + 1, x - 1, (c + b) // a if (c + b) % a == 0 else x + 2, x + 3, c // a] if v != x and v > 0],
        f"{a}x = {c} − {b} = {a * x}; x = {a * x} / {a} = {x}.")
for _ in range(8):
    x = R3.randint(5, 40); k = R3.choice([2, 3, 4]); s = R3.randint(3, 20)
    tot = k * x + s
    add(f"Si al {'doble' if k == 2 else ('triple' if k == 3 else 'cuádruple')} de un número se le suman {s}, se obtiene {tot}. ¿Cuál es el número?", str(x),
        [str(v) for v in [x + 1, x - 1, x + s // k if s // k else x + 2, (tot + s) // k, tot // k] if v != x and v > 0],
        f"{k}x + {s} = {tot} → {k}x = {tot - s} → x = {x}.")
for _ in range(6):
    p = R3.choice([2, 3]); q = 1
    total = R3.choice([30, 36, 40, 45, 48, 60])
    if total % (p + q):
        continue
    menor = total // (p + q); mayor = total - menor
    add(f"Entre dos departamentos tienen {total} empleados y uno tiene {'el doble' if p == 2 else 'el triple'} que el otro. ¿Cuántos tiene el más grande?", str(mayor),
        [str(v) for v in [menor, mayor + p, mayor - p, total // 2] if v != mayor],
        f"x + {p}x = {total} → x = {menor}; el grande tiene {p} × {menor} = {mayor}.")
def sg(v): return f"({v})" if v < 0 else str(v)
for _ in range(10):
    a, b, c, d = R3.randint(-9, -1), R3.randint(2, 9), R3.randint(-12, -2) * 2, R3.choice([2, -2])
    v = a * b - c // d
    add(f"Calcula: {sg(a)} × {b} − {sg(c)} ÷ {sg(d)}".replace("-", "−"), str(v).replace("-", "−"),
        [str(w).replace("-", "−") for w in [a * b + c // d, -v, v + 2, v - 2] if w != v],
        f"Primero multiplicaciones y divisiones: {sg(a)} × {b} = {a * b}; {sg(c)} ÷ {sg(d)} = {c // d}. Después: {a * b} − {sg(c // d)} = {v}.".replace("-", "−"))

# ---------- 18. Probabilidad ----------
from math import gcd as _gcd
def frac(a, b):
    g = _gcd(a, b); return f"{a // g}/{b // g}"
for _ in range(10):
    r, z, v = R3.randint(1, 8), R3.randint(1, 8), R3.randint(1, 8)
    tot = r + z + v; col = R3.choice(["roja", "azul", "verde"]); k = {"roja": r, "azul": z, "verde": v}[col]
    c = frac(k, tot)
    incs = [frac(k, tot - k) if k < tot - k else frac(k - 1, tot), frac(tot - k, tot), frac(k + 1, tot) if k + 1 < tot else frac(1, tot), f"{k}/{tot + 1}"]
    def bolas(nn, col1, col2): return f"{nn} bola {col1}" if nn == 1 else f"{nn} {col2}"
    add(f"En una caja hay {bolas(r, 'roja', 'bolas rojas')}, {bolas(z, 'azul', 'azules')} y {bolas(v, 'verde', 'verdes')}. Si se saca una al azar, ¿qué probabilidad hay de que sea {col}?", c, [x for x in incs if x != c] + [frac(1, 3), frac(1, 4)],
        f"Casos favorables / casos posibles = {k} / {tot}" + (f" = {c}." if f"{k}/{tot}" != c else "."))
DADO = [("un número par", 3, "2, 4 y 6"), ("un número mayor que 4", 2, "5 y 6"), ("un múltiplo de 3", 2, "3 y 6"), ("un número menor que 3", 2, "1 y 2"),
        ("un número primo", 3, "2, 3 y 5"), ("un 6", 1, "solo el 6")]
for txt, k, cuales in DADO:
    add(f"Al lanzar un dado normal de seis caras, ¿qué probabilidad hay de sacar {txt}?", frac(k, 6), [x for x in [frac(k + 1, 6), frac(k, 5), frac(6 - k, 6), "1/6", "1/3", "1/2"] if x != frac(k, 6)],
        (f"Hay {k} casos favorables ({cuales}) de 6 posibles: {k}/6" if k > 1 else f"Hay 1 caso favorable ({cuales}) de 6 posibles: 1/6") + (f" = {frac(k, 6)}." if frac(k, 6) != f"{k}/6" else "."))
add("Se lanzan dos monedas. ¿Qué probabilidad hay de que salgan dos caras?", "1/4", ["1/2", "1/3", "3/4"],
    "Los resultados posibles son cara-cara, cara-cruz, cruz-cara y cruz-cruz; solo uno es favorable: 1/4.")
add("Se lanzan dos monedas. ¿Qué probabilidad hay de que salga al menos una cruz?", "3/4", ["1/2", "1/4", "2/3"],
    "De los 4 resultados (CC, CX, XC, XX) tres tienen alguna cruz: 3/4.")
add("Se lanzan dos dados. ¿Qué probabilidad hay de que sumen 7?", "1/6", ["1/12", "7/36", "1/9"],
    "Hay 6 combinaciones que suman 7 (1-6, 2-5, 3-4, 4-3, 5-2, 6-1) de 36 posibles: 6/36 = 1/6.")

# ---------- 19. Códigos binarios ----------
for n in range(12):
    letras = R3.sample("ABCDEFGHIJLMNOPRST", 6)
    codigos = R3.sample([format(i, "04b") for i in range(16)], 6)
    m = dict(zip(letras, codigos))
    cab = "Clave:\n" + " | ".join(letras) + "\n" + " | ".join(codigos) + "\n"
    pal = [R3.choice(letras) for _ in range(4)]
    cad = " ".join(m[c] for c in pal); corr = "".join(pal)
    incs = []
    for _ in range(10):
        x = pal[:]; a = R3.randrange(4)
        if R3.random() < 0.5:
            b = (a + 1) % 4; x[a], x[b] = x[b], x[a]
        else:
            x[a] = R3.choice([c for c in letras if c != x[a]])
        incs.append("".join(x))
    if n % 2 == 0:
        add(cab + f"Según la clave, ¿qué letras corresponden a la cadena {cad}?", corr, [i for i in dict.fromkeys(incs) if i != corr],
            "Grupo a grupo: " + ", ".join(f"{m[c]}={c}" for c in pal) + f" → {corr}.")
    else:
        ci = []
        for i in dict.fromkeys(incs):
            if i != corr:
                ci.append(" ".join(m[c] for c in i))
        add(cab + f"Según la clave, ¿qué cadena corresponde a las letras {corr}?", cad, ci,
            "Letra a letra: " + ", ".join(f"{c}={m[c]}" for c in pal) + f" → {cad}.")

# ---------- 20. Definiciones (revisadas a mano) ----------
DEF = [
 ("fehaciente", "Que prueba algo de forma indudable", ["Que se hace con prisa y sin cuidado", "Que se refiere a la fe religiosa", "Que muestra entusiasmo y alegría"]),
 ("subsidiario", "Que suple a otra cosa principal", ["Que recibe una subvención pública", "Que se repite de forma periódica", "Que está situado debajo de otro"]),
 ("taxativo", "Que limita y no admite discusión", ["Que está sujeto al pago de tasas e impuestos", "Que se dice de forma vaga", "Que avanza con mucha lentitud"]),
 ("dádiva", "Cosa que se da gratuitamente", ["Deuda que está pendiente de pago", "Cantidad que se cobra como multa", "Duda sobre una decisión"]),
 ("ínfulas", "Presunción o vanidad", ["Influencia sobre los demás", "Inflamación de una herida", "Falta de ganas de trabajar"]),
 ("ambiguo", "Que puede entenderse de varios modos", ["Que tiene mucha ambición", "Que se mueve a la vez en dos direcciones opuestas", "Que es propio de un ambiente"]),
 ("inexorable", "Que no se puede evitar", ["Que no se puede explicar", "Que no tiene ningún valor", "Que todavía no ha terminado"]),
 ("exhortar", "Animar a alguien a hacer algo", ["Extraer algo por la fuerza", "Expulsar a alguien de un lugar", "Exagerar los hechos al contarlos"]),
 ("paliar", "Atenuar o mitigar un daño", ["Pelear con palabras", "Empeorar una situación que ya era complicada", "Hablar en voz muy baja"]),
 ("ufano", "Orgulloso y satisfecho de sí mismo", ["Triste y sin ánimo", "Que tiene mucha prisa", "Que desconoce por completo un asunto o materia"]),
 ("lacónico", "Que usa pocas palabras", ["Que siente mucha tristeza", "Que trabaja con lentitud", "Que tiene un color oscuro"]),
 ("diatriba", "Escrito o discurso violento contra alguien", ["Alabanza pública de una persona", "Conversación tranquila entre dos o más personas", "División de un territorio en partes"]),
 ("enmendar", "Corregir un error o defecto", ["Enviar algo a otra persona", "Pedir dinero prestado a un familiar o amigo", "Añadir un adorno a algo"]),
 ("pernicioso", "Muy perjudicial", ["Muy duradero", "Muy detallista y cuidadoso", "Muy rápido"]),
 ("escueto", "Breve y sin rodeos", ["Escondido y secreto", "Estricto y severo", "Abundante y variado"]),
 ("dirimir", "Resolver una controversia", ["Dirigir una reunión", "Disminuir una cantidad", "Aplazar una decisión hasta otro momento"]),
 ("coercitivo", "Que obliga o reprime", ["Que es lógico y coherente", "Que colabora con otros", "Que se desarrolla despacio"]),
 ("fútil", "De poca importancia", ["De gran utilidad", "De mucha dificultad", "De larga duración"]),
 ("venial", "Leve y fácil de perdonar", ["Que se puede vender", "Que es muy grave", "Que se repite cada año"]),
 ("acérrimo", "Muy tenaz o decidido", ["Muy ácido o amargo", "Muy cercano o próximo", "Muy antiguo o viejo"]),
 ("compulsar", "Cotejar una copia con su original", ["Obligar a alguien a hacer algo", "Comprar algo de forma impulsiva", "Pulsar una tecla varias veces"]),
 ("recusar", "Rechazar a quien no ofrece imparcialidad", ["Volver a acusar a una persona", "Negarse a pagar una deuda", "Corregir un error ya publicado"]),
 ("notificar", "Comunicar formalmente una resolución", ["Anotar algo en un registro", "Firmar ante un notario", "Publicar algo en un periódico"]),
 ("caducidad", "Fin de un derecho o trámite por el paso del tiempo", ["Caída de un documento en un archivo", "Pérdida de un objeto por descuido", "Cuidado especial de un expediente"]),
 ("desestimar", "Denegar una petición", ["Retrasar una petición", "Aceptar en parte una petición", "Calcular el valor de algo"]),
 ("diligencia", "Cuidado y rapidez al hacer algo", ["Pereza al hacer las tareas", "Orden de detener a alguien", "Reunión de varios dirigentes"]),
]
for w, c, i in DEF:
    add(f"¿Qué significa «{w}»?", c, i, f"«{w.capitalize()}» significa: {c[0].lower() + c[1:]}.")

json.dump(OUT, open("age/n29.json", "w"), ensure_ascii=False, indent=0)
print(len(OUT), "psicotécnicos")
