"""Monta el banco del Auxiliar del Gobierno de Canarias (aux-canarias, 4 opciones).

Programa: Resolución de 23/11/2024 (BOC n.º 239, de 29/11/2024), 40 temas.
En la web, temas 1-20 = parte general y 21-40 = parte práctica (tema práctico n = 20 + n).

- Reutiliza preguntas ya comprobadas de all.json (Madrid) y bancos/aux-age.json (Estado),
  asignándolas a los temas por norma y artículo (función tema_canarias). Se quedan con sus
  opciones y su respuesta; el campo de examen se pone a null (eran exámenes de otras oposiciones).
- Añade las nuevas de canarias/n*.json con formato [tema, enunciado, correcta, [3 incorrectas], ref, expl]
  y reparte la posición de la correcta para que el banco quede al 25 % en A, B, C y D.
- No cambia las opciones de las preguntas ya publicadas en bancos/aux-canarias.json.

Uso: python3 canarias/montar.py
"""
import collections, glob, json, os, random, re

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SALIDA = os.path.join(RAIZ, 'bancos', 'aux-canarias.json')


def art(ref):
    m = re.match(r'\s*Arts?\.\s*(\d+)', ref or '')
    return int(m.group(1)) if m else None


def tema_canarias(q):
    """Tema de Canarias (1-40) para una pregunta de otro banco, o None si no entra en el programa."""
    ref = q[4] or ''
    a = art(ref)
    if re.search(r'\bCE\b', ref) and a is not None:
        if a <= 55:
            return 1
        if 137 <= a <= 158:
            return 2
        return None
    if 'Ley 39/2015' in ref and a is not None:
        if 13 <= a <= 15 or a == 53:
            return 12          # derechos de las personas, relación electrónica, lengua
        if a in (16, 26, 27, 28, 70):
            return 36          # documentos, registro y archivo, expediente
        if 9 <= a <= 12 or 41 <= a <= 43:
            return 22          # identificación, firma y notificaciones electrónicas
        if a == 40:
            return 39          # contenido de la notificación y pie de recurso
        if 34 <= a <= 37 or a in (24, 25):
            return 23          # acto administrativo y silencio
        if 47 <= a <= 52:
            return 24          # validez e invalidez
        if 38 <= a <= 46 or 97 <= a <= 105 or a == 117:
            return 25          # eficacia, notificación, ejecución, suspensión
        if 106 <= a <= 111:
            return 26          # revisión de oficio
        if 1 <= a <= 12 or 29 <= a <= 33:
            return 27          # principios, interesados, términos y plazos
        if 54 <= a <= 96:
            return 28          # fases del procedimiento
        if 112 <= a <= 120:
            return 29          # recursos: principios generales
        if 121 <= a <= 126:
            return 30          # alzada, reposición y revisión
        return None
    if 'Ley 40/2015' in ref and a is not None:
        if 8 <= a <= 14:
            return 16          # competencia
        if 38 <= a <= 40:
            return 22          # sede electrónica, portal e identificación de las Administraciones
        if a == 18:
            return 39          # actas de los órganos colegiados
        if 41 <= a <= 46:
            return 35          # funcionamiento electrónico del sector público
        return None
    if 'TREBEP' in ref and a is not None:
        if 8 <= a <= 13 or 62 <= a <= 68:
            return 17
        if 55 <= a <= 61 or 78 <= a <= 84:
            return 18
        if 85 <= a <= 98:
            return 19
        if 14 <= a <= 54:
            return 20
        return None
    if 'LCSP' in ref and a is not None:
        if a <= 37 or 61 <= a <= 114 or a == 190:
            return 31
        if 115 <= a <= 187:
            return 32
        if 38 <= a <= 60 or 188 <= a <= 320:
            return 33
        return None
    if re.search(r'Ley 19/2013', ref):
        return 14
    if re.search(r'LO 3/2018|RGPD|Reglamento \(UE\) 2016/679', ref):
        return 15
    if re.search(r'LO 3/2007', ref):
        return 10
    if re.search(r'LO 1/2004|RDL 1/2013', ref):
        return 11
    if re.search(r'\bTUE\b|\bTFUE\b|Sedes de las instituciones', ref):
        return 9
    if re.search(r'RD 208/1996|RD 951/2005|Comunicación', ref):
        return 13
    if re.search(r'RD 1708/2011', ref):
        return 36
    if re.search(r'Explorador', ref):
        return 38
    if re.search(r'Windows 11|Atajos de Windows', ref):
        return 37
    return None


def main():
    publicadas = {}
    if os.path.exists(SALIDA):
        for q in json.load(open(SALIDA)):
            publicadas[q[1]] = q
    bancos = json.load(open(os.path.join(RAIZ, 'all.json'))) + json.load(open(os.path.join(RAIZ, 'bancos', 'aux-age.json')))
    salida, vistas = [], set()
    for q in bancos:
        t = tema_canarias(q)
        if t is None or q[1] in vistas:
            continue
        vistas.add(q[1])
        salida.append([t, q[1], list(q[2]), q[3], q[4], q[5], None])
    reutilizadas = len(salida)
    nuevas = []
    for f in sorted(glob.glob(os.path.join(RAIZ, 'canarias', 'n*.json'))):
        for q in json.load(open(f)):
            if q[1] in vistas:
                print('repetida, se omite:', q[1][:70])
                continue
            vistas.add(q[1])
            nuevas.append(q)
    # posición de la correcta: completa el reparto hasta el 25 % en A, B, C y D
    cuenta = collections.Counter(q[3] for q in salida)
    for q in nuevas:
        if q[1] in publicadas:
            p = publicadas[q[1]]
            salida.append([q[0], q[1], p[2], p[3], q[4], q[5], None])
            cuenta[p[3]] += 1
            continue
        pos = min(range(4), key=lambda i: (cuenta[i], random.random()))
        ops = list(q[3])
        random.Random(q[1]).shuffle(ops)
        ops.insert(pos, q[2])
        salida.append([q[0], q[1], ops, pos, q[4], q[5], None])
        cuenta[pos] += 1
    salida.sort(key=lambda q: q[0])
    json.dump(salida, open(SALIDA, 'w'), ensure_ascii=False, indent=0)
    c = collections.Counter(q[0] for q in salida)
    print(f'{len(salida)} preguntas en bancos/aux-canarias.json ({len(nuevas)} nuevas, {reutilizadas} reutilizadas)')
    print('por tema:', sorted(c.items()))
    print('sin preguntas:', [t for t in range(1, 41) if not c[t]])
    n = len(salida)
    print('posición de la correcta:', [f'{100*cuenta[i]//n} %' for i in range(4)])


if __name__ == '__main__':
    random.seed(2026)
    main()
