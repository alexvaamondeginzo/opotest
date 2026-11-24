"""Añade preguntas nuevas al banco de Madrid (all.json).

Uso: python3 madrid/anadir.py madrid/nXX.json [...]

Cada archivo tiene preguntas con formato
[tema, enunciado, correcta, [3 incorrectas], ref, explicacion]
(igual que age/nNN.json). El script:
- se salta las que ya están en all.json (mismo enunciado);
- reparte la posición de la correcta para que A, B, C y D queden equilibradas;
- no cambia ninguna pregunta ya publicada;
- informa de cuántas veces la correcta es la más larga entre las nuevas.
"""
import json, sys, random, collections

BANCO = 'all.json'
B = json.load(open(BANCO))
vistos = {q[1] for q in B}
cuenta = collections.Counter(q[3] for q in B)
rng = random.Random(1983)
nuevas = []
for f in sys.argv[1:]:
    for t, enun, ok, mal, ref, expl in json.load(open(f)):
        assert len(mal) == 3 and ok not in mal, enun
        if enun in vistos:
            print('ya existe, no se añade:', enun[:70]); continue
        vistos.add(enun)
        minimo = min(cuenta[i] for i in range(4))
        pos = rng.choice([i for i in range(4) if cuenta[i] == minimo])
        cuenta[pos] += 1
        ops = mal[:]; rng.shuffle(ops); ops.insert(pos, ok)
        nuevas.append([t, enun, ops, pos, ref, expl, None])
B += nuevas
open(BANCO, 'w').write(json.dumps(B, ensure_ascii=False, indent=0) + '\n')
larga = sum(1 for q in nuevas if len(q[2][q[3]]) == max(len(o) for o in q[2]))
print(f'añadidas {len(nuevas)}; la correcta es la más larga en {larga} ({100*larga//max(1,len(nuevas))} %)')
print('reparto A-D:', [cuenta[i] for i in range(4)])
