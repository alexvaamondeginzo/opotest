"""Banco de Auxiliar Administrativo del Ayuntamiento de Madrid (aux-ayto-mad) -> bancos/aux-ayto-mad.json

El examen del Ayuntamiento tiene preguntas de TRES opciones (a, b, c) con -1/3 por fallo
(bases específicas, BOAM núm. 9.128 de 29/04/2022, base cuarta), así que este banco usa tres opciones.

1. Reutiliza preguntas ya comprobadas de los bancos de Madrid (all.json) y del Estado (bancos/aux-age.json)
   y las asigna a los temas del Ayuntamiento según la norma y el artículo que citan. Como allí tienen cuatro
   opciones, se quita uno de los distractores eligiéndolo de forma que la correcta no destaque por su longitud.
2. Añade las preguntas nuevas de ayto/nNN.json: [tema, enunciado, correcta, [2 incorrectas], ref, explicación].
3. Las preguntas ya publicadas en bancos/aux-ayto-mad.json conservan sus opciones y su orden.

Uso: python3 ayto/montar.py
"""
import json, glob, os, re, random, collections

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(RAIZ)
random.seed(2028)
SALIDA = 'bancos/aux-ayto-mad.json'


def art(ref):
    m = re.search(r'Arts?\.\s*(\d+)', ref or '')
    return int(m.group(1)) if m else None


def es_ce(ref):
    return bool(re.search(r'\bCE\b', ref or ''))


def tema_ayto(origen, t, ref):
    """Tema del Ayuntamiento para una pregunta reutilizada (o None si no encaja)."""
    a = art(ref)
    if es_ce(ref):
        if a is None:
            return 1
        if 137 <= a <= 158:
            return 2
        if a <= 55 or 166 <= a <= 169:
            return 1
        return None
    if 'Ley 39/2015' in ref and a:
        if 127 <= a <= 133:
            return 13
        if a in (16, 17) and (origen, t) in (('cm', 15), ('age', 19)):
            return 18
        if 12 <= a <= 14:
            return 19
        if 1 <= a <= 52:
            return 3
        if 53 <= a <= 126:
            return 4
        return None
    if 'LCSP' in ref:
        return 14
    if 'TREBEP' in ref:
        return 15
    if 'LO 3/2007' in ref:
        return 16
    if 'LBRL' in ref:
        return 5
    if origen == 'cm' and t == 17:
        return 21
    if origen == 'cm' and t == 18:
        return 22
    if origen == 'age' and t == 24:
        return 21
    if origen == 'age' and t == 25:
        return 22
    return None


# Preguntas nuevas que encajan mejor en otro tema que el del archivo en que se escribieron
RETEMA = {
    'Acordar al inicio del mandato el número, denominación y competencias de las áreas en que se estructura la Administración municipal corresponde:': 11,
    'Establecer la organización y estructura de la Administración municipal ejecutiva y nombrar y cesar a los titulares de los órganos directivos corresponde:': 11,
    'Según la Ley 22/2006, la creación de órganos directivos en el ámbito de la Administración del Ayuntamiento de Madrid corresponde a:': 11,
    'Los titulares de los órganos directivos del Ayuntamiento de Madrid serán nombrados atendiendo a criterios de:': 11,
    'Los titulares de los órganos directivos del Ayuntamiento de Madrid quedan sometidos al régimen de incompatibilidades de:': 11,
    '¿Cuál de los siguientes es un órgano superior, y no directivo, en los municipios de gran población?': 11,
    'El nombramiento de los coordinadores generales y directores generales de los municipios de gran población debe hacerse, como regla general, entre funcionarios de carrera del subgrupo:': 11,
    'Según la Ley 22/2006, la creación de Distritos como divisiones territoriales con órganos de gestión desconcentrada es, para el Pleno:': 12,
    'La Presidencia de un Distrito del Ayuntamiento de Madrid corresponderá:': 12,
    'Nombrar y cesar a los Presidentes de los Distritos corresponde:': 12,
    'En los municipios de gran población, la creación de los distritos y la determinación del porcentaje mínimo de recursos presupuestarios que deben gestionar corresponde a:': 12,
    'El órgano especializado para la defensa de los derechos de los vecinos ante la Administración municipal deberá dar cuenta al Pleno de su actividad mediante:': 20,
    'Según la Ley 22/2006, la creación de un órgano para la defensa de los derechos de los vecinos es:': 20,
    'La Comisión especial de Sugerencias y Reclamaciones de los municipios de gran población está formada por:': 20,
}

ABS = re.compile(r'\b(siempre|nunca|solo|sólo|exclusivamente|únicamente|en ningún caso|en todo caso|sin excepción|todos|todas|ninguna|ninguno)\b', re.I)


def rango_correcta(opciones, c):
    """0 = la correcta es la más larga, 2 = la más corta (empates a favor de la correcta)."""
    L = [len(x) for x in opciones]
    return sum(1 for j in range(len(L)) if j != c and L[j] > L[c])


def a_tres(q, cuenta):
    """Quita un distractor de una pregunta de cuatro opciones equilibrando la longitud de la correcta."""
    ops, c = q[2], q[3]
    mejores = []
    for quitar in [j for j in range(4) if j != c]:
        nuevas = [o for j, o in enumerate(ops) if j != quitar]
        nc = nuevas.index(ops[c])
        r = rango_correcta(nuevas, nc)
        # Objetivo: compensar las nuevas, en las que la correcta tiende a ser la más larga
        peso = {0: 1.5, 1: 1.0, 2: 1.0}[r]
        mejores.append((cuenta[r] * peso, random.random(), nuevas, nc, r))
    _, _, nuevas, nc, r = min(mejores)
    cuenta[r] += 1
    return nuevas, nc


def main():
    previo = {}
    if os.path.exists(SALIDA):
        previo = {q[1]: q for q in json.load(open(SALIDA))}
    banco, vistos = [], set()
    cuenta = collections.Counter()

    # 1) Reutilizadas
    for origen, f in (('cm', 'all.json'), ('age', 'bancos/aux-age.json')):
        for q in json.load(open(f)):
            if q[1] in vistos or len(q[2]) != 4:
                continue
            t = tema_ayto(origen, q[0], q[4] or '')
            if t is None:
                continue
            vistos.add(q[1])
            if q[1] in previo:
                p = previo[q[1]]
                banco.append([t, q[1], p[2], p[3], q[4], q[5], None])
                continue
            ops, c = a_tres(q, cuenta)
            # La posición de la correcta se reparte después junto con las nuevas
            banco.append([t, q[1], ops, c, q[4], q[5], None])

    # 2) Nuevas
    nuevas = []
    for f in sorted(glob.glob('ayto/n*.json')):
        for q in json.load(open(f)):
            t, preg, ok, mal, ref, ex = q[:6]
            assert len(mal) == 2 and ok not in mal and len(set(mal)) == 2, (f, preg)
            if preg in vistos:
                print('ya estaba en otro banco, se usa la existente:', preg[:70])
                continue
            vistos.add(preg)
            nuevas.append((RETEMA.get(preg, t), preg, ok, mal, ref, ex))

    # 3) Reparto de la posición de la correcta (33 % cada una) para todo lo no publicado antes
    pendientes = [i for i, q in enumerate(banco) if q[1] not in previo]
    pos = [0, 1, 2] * ((len(pendientes) + len(nuevas)) // 3 + 1)
    random.shuffle(pos)
    k = 0
    for i in pendientes:
        q = banco[i]
        correcta = q[2][q[3]]
        resto = [o for j, o in enumerate(q[2]) if j != q[3]]
        random.shuffle(resto)
        resto.insert(pos[k], correcta)
        k += 1
        q[2], q[3] = resto, pos[k - 1]
    for t, preg, ok, mal, ref, ex in nuevas:
        if preg in previo and previo[preg][2][previo[preg][3]] == ok and sorted(previo[preg][2]) == sorted(mal + [ok]):
            p = previo[preg]
            banco.append([t, preg, p[2], p[3], ref, ex, None])
            continue
        o = mal[:]
        random.shuffle(o)
        o.insert(pos[k], ok)
        banco.append([t, preg, o, pos[k], ref, ex, None])
        k += 1

    banco.sort(key=lambda q: q[0])
    textos = collections.Counter(q[1] for q in banco)
    assert not [x for x, n in textos.items() if n > 1]
    assert all(len(q[2]) == 3 and 0 <= q[3] < 3 for q in banco)
    json.dump(banco, open(SALIDA, 'w'), ensure_ascii=False, indent=0)

    n = collections.Counter(q[0] for q in banco)
    rk = collections.Counter(rango_correcta(q[2], q[3]) for q in banco)
    ps = collections.Counter(q[3] for q in banco)
    print(f'{len(banco)} preguntas en {SALIDA} ({len(nuevas)} nuevas, {len(banco) - len(nuevas)} reutilizadas)')
    print('por tema:', sorted(n.items()))
    print('posición de la correcta (A/B/C):', [f'{100 * ps[i] // len(banco)} %' for i in range(3)])
    print('la correcta es la más larga / la 2.ª / la más corta:', [f'{100 * rk[i] // len(banco)} %' for i in range(3)])


if __name__ == '__main__':
    main()
