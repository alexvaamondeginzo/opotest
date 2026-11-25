"""Banco del Administrativo del Gobierno de Navarra (admin-navarra, 4 opciones).

Programa: Resolución 1322/2025 (BON n.º 101, de 22/05/2025), anexo I. En la web:
Parte I (temas 1-5), Parte II (temas 6-23), Parte III ofimática (temas 24-27) y aptitudes (tema 28).

- Reutiliza preguntas ya comprobadas de all.json (Madrid) y bancos/aux-age.json (Estado), asignadas
  a los temas por norma y artículo (función tema_navarra), con sus opciones y su respuesta.
- Añade las nuevas de navarra/n*.json ([tema, enunciado, correcta, [3 incorrectas], ref, expl])
  repartiendo la posición de la correcta al 25 %, sin cambiar las ya publicadas en bancos/admin-navarra.json.

Uso: python3 navarra/montar.py
"""
import collections, glob, json, os, random, re

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(RAIZ)
SALIDA = 'bancos/admin-navarra.json'

TEMAS = {1: 'Derechos de las personas ante la Administración Pública Foral, información, participación, quejas y sugerencias',
         2: 'Protección de datos y seguridad de la información; comunicación oral, telefónica y escrita',
         3: 'Funcionamiento electrónico de la Administración Pública Foral', 4: 'Registros, archivo y documentación',
         5: 'Documentación administrativa, expediente y validez de las copias', 6: 'La Constitución Española de 1978',
         7: 'La Unión Europea: instituciones y fuentes', 8: 'LORAFNA: naturaleza, título preliminar y competencias de Navarra',
         9: 'Parlamento de Navarra, Cámara de Comptos y Defensor del Pueblo', 10: 'Gobierno de Navarra y su Presidente',
         11: 'Fuentes del Derecho y potestad normativa', 12: 'Ley Foral 11/2019 de la Administración de la Comunidad Foral',
         13: 'Actos administrativos, revisión de oficio y recursos', 14: 'Procedimiento administrativo común',
         15: 'Estatuto del Personal: ámbito, exclusiones y tipos de personal',
         16: 'Personal I: ingreso, selección, niveles, grados, carrera y situaciones',
         17: 'Personal II: provisión, derechos y deberes, retribuciones y régimen disciplinario',
         18: 'Igualdad: LO 3/2007 y Ley Foral 17/2019', 19: 'Ley Foral 5/2018 de Transparencia',
         20: 'Hacienda Pública de Navarra: régimen, control y responsabilidades', 21: 'Presupuestos Generales de Navarra',
         22: 'Ley Foral 2/2018 de Contratos Públicos', 23: 'Ley Foral 11/2005 de Subvenciones',
         24: 'Windows y explorador de archivos', 25: 'Word', 26: 'Excel', 27: 'Access', 28: 'Aptitudes (psicotécnicos)'}


def art(ref):
    m = re.search(r'Arts?\.\s*(\d+)', ref or '')
    return int(m.group(1)) if m else None


def tema_navarra(origen, t, ref):
    a = art(ref)
    if origen == 'age' and t == 29:
        return 28
    if re.search(r'\bCE\b', ref):
        if a is not None and 81 <= a <= 86:
            return 11
        return 6
    if re.search(r'\bTUE\b|\bTFUE\b|Sedes de las instituciones', ref):
        return 7
    if re.search(r'\bCC\b', ref):
        return 11
    if 'Ley 39/2015' in ref and a is not None:
        if a in (13, 14, 53):
            return 1
        if 9 <= a <= 12 or 41 <= a <= 43:
            return 3
        if a == 16:
            return 4
        if a in (26, 27, 28, 70):
            return 5
        if 34 <= a <= 52 or 106 <= a <= 126:
            return 13
        if 1 <= a <= 8 or 15 <= a <= 25 or 29 <= a <= 33 or 54 <= a <= 105:
            return 14
        return None
    if 'Ley 40/2015' in ref and a is not None:
        if 38 <= a <= 46:
            return 3
        return None
    if re.search(r'LO 3/2018|RGPD|Reglamento \(UE\) 2016/679', ref):
        return 2
    if re.search(r'RD 208/1996|Comunicación', ref):
        return 2
    if re.search(r'LO 3/2007', ref):
        return 18
    if re.search(r'^(Windows|Explorador|Atajos de Windows)|· ?Windows|Explorador ·|Windows 11', ref):
        return 24
    if ref.startswith('Word'):
        return 25
    if ref.startswith('Excel'):
        return 26
    if ref.startswith('Access'):
        return 27
    return None


def main():
    publicadas = {q[1]: q for q in json.load(open(SALIDA))} if os.path.exists(SALIDA) else {}
    salida, vistos, sin = [], set(), collections.Counter()
    for origen, f in (('cm', 'all.json'), ('age', 'bancos/aux-age.json')):
        for q in json.load(open(f)):
            if q[1] in vistos:
                continue
            nt = tema_navarra(origen, q[0], q[4] or '')
            if nt is None:
                sin[(origen, q[0])] += 1
                continue
            vistos.add(q[1])
            salida.append([nt, q[1], list(q[2]), q[3], q[4], q[5], None])
    reutilizadas = len(salida)
    cuenta = collections.Counter(q[3] for q in salida)
    rnd = random.Random(2026)
    nuevas = 0
    for f in sorted(glob.glob('navarra/n*.json')):
        for q in json.load(open(f)):
            if q[1] in vistos:
                print('repetida, se omite:', q[1][:70]); continue
            vistos.add(q[1]); nuevas += 1
            if q[1] in publicadas:
                p = publicadas[q[1]]; salida.append([q[0], q[1], p[2], p[3], q[4], q[5], None]); cuenta[p[3]] += 1; continue
            pos = min(range(4), key=lambda i: (cuenta[i], rnd.random()))
            ops = list(q[3]); random.Random(q[1]).shuffle(ops); ops.insert(pos, q[2])
            salida.append([q[0], q[1], ops, pos, q[4], q[5], None]); cuenta[pos] += 1
    salida.sort(key=lambda q: q[0])
    json.dump(salida, open(SALIDA, 'w'), ensure_ascii=False, indent=0)
    n = collections.Counter(q[0] for q in salida)
    print(f'{len(salida)} preguntas en {SALIDA} ({nuevas} nuevas, {reutilizadas} reutilizadas)')
    print('posición de la correcta:', [f'{100*cuenta[i]//len(salida)} %' for i in range(4)])
    for t, nombre in TEMAS.items():
        print(f'{t:>2} {n.get(t, 0):>4}  {nombre}' + ('   <- SIN PREGUNTAS' if not n.get(t) else ('   <- flojo' if n[t] < 20 else '')))
    print('sin asignar (origen, tema):', dict(sorted(sin.items())))


if __name__ == '__main__':
    main()
