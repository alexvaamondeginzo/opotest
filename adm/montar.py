"""Banco de Administrativo C1 de la Comunidad de Madrid (adm-cm).

Programa: Orden 1634/2026, de 30 de junio (BOCM de 14 de julio de 2026), anexo III (acceso libre, 47 temas).
Reutiliza preguntas ya comprobadas en el BOE de los bancos de Auxiliar de Madrid (all.json) y del
Estado (bancos/aux-age.json), y asigna cada una a su tema del C1 según la norma y el artículo que cita.
Las opciones y la posición de la correcta se mantienen como en el banco de origen.

También reutiliza del banco de Canarias (bancos/aux-canarias.json) las de competencia (Ley 40/2015,
arts. 8 a 14) y las de la Ley 38/2003 General de Subvenciones. Añade las nuevas de adm/nNN.json
(formato [tema, enunciado, correcta, [3 incorrectas], ref, expl]) repartiendo la posición de la correcta
al 25 % y sin cambiar las opciones de las ya publicadas en bancos/adm-cm.json.

Uso: python3 adm/montar.py
"""
import json, re, collections, os

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
os.chdir(RAIZ)

TEMAS = {1: 'Constitución: estructura, principios, derechos, deberes y garantías', 2: 'Corona y Cortes Generales',
         3: 'Poder Judicial, CGPJ y Tribunal Constitucional', 4: 'Gobierno y Administración General del Estado',
         5: 'Comunidades Autónomas y Administración local', 6: 'Comunidad de Madrid (I): Estatuto y Asamblea',
         7: 'Comunidad de Madrid (II): Ley de Gobierno y Administración', 8: 'Unión Europea',
         9: 'Fuentes del Derecho administrativo', 10: 'Órganos administrativos y competencia',
         11: 'Procedimiento administrativo (I): interesados, derechos, plazos y silencio',
         12: 'Acto administrativo: eficacia, nulidad, anulabilidad y revisión de oficio',
         13: 'Procedimiento administrativo (II): garantías y fases',
         14: 'Recursos administrativos y jurisdicción contencioso-administrativa', 15: 'Responsabilidad patrimonial',
         16: 'Potestad sancionadora', 17: 'Expropiación forzosa', 18: 'Contratos del sector público',
         19: 'Subvenciones públicas', 20: 'Transparencia', 21: 'Igualdad, violencia de género y LGTBI',
         22: 'Atención al ciudadano y administración electrónica', 23: 'Documentos, registro y archivo',
         24: 'Protección de datos', 25: 'TREBEP y Ley de Función Pública de Madrid',
         26: 'Selección, provisión y movilidad', 27: 'Derechos, deberes y código de conducta',
         28: 'Situaciones, incompatibilidades y régimen disciplinario', 29: 'Personal laboral y convenio colectivo',
         30: 'Contrato de trabajo', 31: 'Seguridad Social (I)', 32: 'Seguridad Social (II): acción protectora',
         33: 'Ingresos públicos y sistema tributario', 34: 'Ley de Hacienda de Madrid (I)',
         35: 'Ley de Hacienda de Madrid (II)', 36: 'Ley de Hacienda de Madrid (III)',
         37: 'Ley de Hacienda de Madrid (IV)', 38: 'Retribuciones', 39: 'Plan General de Contabilidad Pública',
         40: 'Informática básica', 41: 'Entorno Windows', 42: 'Explorador de archivos', 43: 'Word', 44: 'Excel',
         45: 'Access y Power BI', 46: 'Outlook', 47: 'Trabajo colaborativo en Microsoft 365'}


def art(ref):
    m = re.search(r'Arts?\.\s*(\d+)', ref)
    return int(m.group(1)) if m else None


def tema_c1(origen, t, ref, enun):
    a = art(ref)
    if 'CE' in ref.split() or ref.endswith(' CE'):
        if a is None: return 1
        if 56 <= a <= 96: return 2
        if 117 <= a <= 127 or 159 <= a <= 165: return 3
        if 97 <= a <= 107: return 4
        if 137 <= a <= 158: return 5
        if a <= 55 or 166 <= a <= 169: return 1
        if a in (81, 82, 83, 84, 85, 86): return 9
        return None
    if re.search(r'\bEA\b', ref): return 6
    if 'Ley 1/1983' in ref: return 7
    if 'TFUE' in ref or 'TUE' in ref or (origen == 'age' and t == 10): return 8
    if re.search(r'\bCC\b', ref) or (origen == 'cm' and t == 4): return 9
    if 'Ley 50/1997' in ref: return 4
    if 'LBRL' in ref: return 5
    if 'Ley 40/2015' in ref and a:
        if 5 <= a <= 24: return 10
        if 25 <= a <= 31: return 16
        if 32 <= a <= 37: return 15
        if 38 <= a <= 46: return 22
        if 54 <= a <= 80: return 4
        return None
    if 'Ley 39/2015' in ref and a:
        if 112 <= a <= 126: return 14
        if 34 <= a <= 52 or 106 <= a <= 111: return 12
        if 53 <= a <= 105: return 13
        if 1 <= a <= 33: return 22 if (origen, t) in (('cm', 14), ('age', 20)) else (23 if (origen, t) in (('cm', 15), ('age', 19)) else 11)
        if 127 <= a <= 133: return 9
        return None
    if 'Ley 29/1998' in ref: return 14
    if 'LCSP' in ref: return 18
    if 'Ley 19/2013' in ref or 'Ley 10/2019' in ref: return 20
    if 'LO 3/2018' in ref or 'RGPD' in ref: return 24
    if 'Ley 15/2022' in ref or 'LO 3/2007' in ref or 'LO 1/2004' in ref or 'Ley 4/2023' in ref or 'Ley 3/2016 CM' in ref or 'Ley 5/2005 CM' in ref: return 21
    if 'Decreto 21/2002' in ref: return 22
    if 'Ley 6/2023 CM' in ref: return 23
    if 'TREBEP' in ref and a:
        if 55 <= a <= 62 or 63 <= a <= 68 or 78 <= a <= 84: return 26
        if 14 <= a <= 20 or 47 <= a <= 54: return 27
        if 21 <= a <= 30: return 38
        if 85 <= a <= 98: return 28
        return 25
    if 'Ley 1/1986 CM' in ref: return 25
    if 'TRLGSS' in ref and a:
        return 32 if a >= 42 and a not in range(136, 151) else 31
    if 'Ley 5/2025 CM' in ref and a:
        if 73 <= a <= 91: return 35      # créditos, gastos plurianuales y modificaciones
        if 92 <= a <= 104: return 36     # ejecución y liquidación
        if 110 <= a <= 143: return 37    # Intervención General y control interno
        return 34
    if 'Ley 38/2003' in ref: return 19
    if 'ET' in ref.split(): return 30
    if origen == 'age' and t in (21, 28): return 40
    if origen == 'age' and t == 26: return 45
    if origen == 'age' and t == 27: return 46
    if 'LOPJ' in ref or (origen == 'age' and t == 4): return 3
    if origen == 'age' and t == 22: return 41
    if origen == 'cm' and 16 <= t <= 21: return {16: 42, 17: 43, 18: 44, 19: 45, 20: 46, 21: 47}[t]
    return None


SALIDA = 'bancos/adm-cm.json'


def main():
    import glob, random
    publicadas = {q[1]: q for q in json.load(open(SALIDA))} if os.path.exists(SALIDA) else {}
    salida, vistos, sin = [], set(), collections.Counter()
    for origen, f in (('cm', 'all.json'), ('age', 'bancos/aux-age.json'), ('can', 'bancos/aux-canarias.json')):
        for q in json.load(open(f)):
            if q[1] in vistos or (origen != 'can' and q[0] == 29):
                continue
            ref0 = q[4] or ''
            if origen == 'can':   # de Canarias solo competencia y subvenciones
                a0 = art(ref0)
                if not (('Ley 40/2015' in ref0 and a0 and 8 <= a0 <= 14) or 'Ley 38/2003' in ref0):
                    continue
            nt = tema_c1(origen, q[0], ref0, q[1])
            if nt is None:
                sin[(origen, q[0])] += 1
                continue
            vistos.add(q[1])
            salida.append([nt, q[1], q[2], q[3], q[4], q[5], q[6] if len(q) > 6 else None])
    reutilizadas = len(salida)
    cuenta = collections.Counter(q[3] for q in salida)
    rnd = random.Random(2026)
    nuevas = 0
    for f in sorted(glob.glob('adm/n*.json')):
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
    print('sin asignar (origen, tema):', dict(sin))


if __name__ == '__main__':
    main()
