#!/usr/bin/env python3
"""UNFINISHED DISCOVERY EXPERIMENT; not part of default replay.
Computing Res_r(K,S) was stopped without a result in this research round.
No timeout or modular observation proves that the exceptional chart is empty.
"""
from pathlib import Path
import json
from sympy import QQ
from sympy.polys.rings import ring
root=Path(__file__).resolve().parents[1]
data=json.loads((root/'certificates'/'scale.json').read_text())
R,r,u,y=ring('r,u,y',QQ)
def load(n):
    assert all(m[3]==0 for m,c in data[n])
    return R.from_dict({(m[2],m[0],m[1]):QQ(c) for m,c in data[n]})
K,S=load('K'),load('S')
print('Input terms:',len(K),len(S),flush=True)
# Deliberately not run by the replay entry point. This can be expensive.
print(K.resultant(S),flush=True)
