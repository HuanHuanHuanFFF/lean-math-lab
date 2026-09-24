"""Bounded falsification probe, not a proof of the infinite frontier."""
from math import prod, gcd
from sympy import primerange, factorint
import json
from pathlib import Path

def carries(n,j,p):
    k=n-j; out=[]; q=p
    while q<=n:
        if n//q-j//q-k//q: out.append(q)
        q*=p
    return out

def residues(moduli):
    out=[0]; M=1
    for q in moduli:
        nxt=[]
        for a in out:
            for b in [0,1]: nxt.append(a+M*((b-a)*pow(M,-1,q)%q))
        out=nxt; M*=q
    return out
out={'kind':'bounded_negative_first_window_falsification','m_values':[1,3,5], 'p_interval':[17,5000], 'rows':0,'examples':[]}
for m in out['m_values']:
 for p in primerange(*out['p_interval']):
    if p<=4*m or m%p==0: continue
    n=2*(m*p-1)**2; N=n-1; out['rows']+=1
    fs=factorint(N); moduli=[int(q)**int(e) for q,e in fs.items()]
    for j in residues(moduli):
        if not 4<=j<=n//2: continue
        if carries(n,j,p): continue
        fac3=factorint(n*(n-1)*(n-2)//6)
        common=[int(q) for q in fac3 if q>=3 and carries(n,j,int(q))]
        out['examples'].append({'m':m,'P':int(p),'n':n,'j':j,'digits':[j//p**2,(j//p)%p,j%p],'g':gcd(n,j),'N_factorization':[[int(q),int(e)] for q,e in fs.items()], 'common_primes':common})
        if len(out['examples'])>=6: break
    if len(out['examples'])>=6: break
 if len(out['examples'])>=6: break
out['termination']='stopped_after_six_examples' if len(out['examples'])>=6 else 'completed_bounded_probe'
root=Path(__file__).resolve().parents[1]
(root/'outputs/negative_probe.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
