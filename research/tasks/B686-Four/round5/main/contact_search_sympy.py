"""Exact contact-space audit. A finite rational algebra computation, not a proof of B686."""
import json, math, itertools
from fractions import Fraction
from functools import reduce
from pathlib import Path
from datetime import datetime, timezone
import sympy as S
z,d=S.symbols('z d')
F=z**5-40*z**3*d**2-200*z**2*d**3-420*z*d**4-340*d**5-45*z**3+540*z*d**2+900*d**3+324*z

def mul(a,b,R):
    return [sum(a[j]*b[i-j] for j in range(i+1)) for i in range(R)]
def power(a,e,R):
    out=[S.Integer(1)]+[S.Integer(0)]*(R-1)
    for _ in range(e):out=mul(out,a,R)
    return out

def evaluate_series(poly,root,R):
    out=[S.Integer(0)]*R
    for (a,b),c in S.Poly(poly,z,d).terms():
        if b>=R:continue
        term=power(root,a,R)
        for i in range(b,R):out[i]+=c*term[i-b]
    return out

def branch(i,R):
    a=[S.Integer(9-3*i)]+[S.Integer(0)]*(R-1)
    deriv=S.diff(F,z).subs({z:a[0],d:0})
    for k in range(1,R):a[k]=-evaluate_series(F,a,R)[k]/deriv
    assert all(x==0 for x in evaluate_series(F,a,R))
    return a

def primitive(v):
    m=S.ilcm(*[q.q for q in v]); w=[int(q*m) for q in v]
    g=reduce(math.gcd,w);w=[x//g for x in w]
    if next(x for x in w if x)<0:w=[-x for x in w]
    return w

def search(slots,D=5,R=6):
    mons=[z**a*d**b for a in range(min(4,D)+1) for b in range(D-a+1)]
    branches={i:branch(i,R) for i in slots}
    A=S.Matrix([[evaluate_series(m,branches[i],R)[r] for m in mons] for i in slots for r in range(R)])
    basis=A.nullspace(); rows=[primitive(v) for v in basis]
    # LLL reduces integer basis coefficients, preserving the contact constraints.
    reduced=S.Matrix(rows).lll().tolist() if rows else []
    gs=[]
    for v in reduced:
        G=S.expand(sum(c*m for c,m in zip(v,mons)))
        assert all(not x for root in branches.values() for x in evaluate_series(G,root,R))
        assert S.rem(G,F,z)!=0
        res=S.factor(S.resultant(F,G,z))
        bound=sum(abs(c)*9**a for (a,b),c in S.Poly(G,z,d).terms())
        gs.append(dict(G=str(G),coarse_bound=int(bound),resultant=str(res)))
    return dict(slots=list(slots),D=D,R=R,rank=A.rank(),nullity=len(basis),branches={str(i):[str(x) for x in a] for i,a in branches.items()},auxiliaries=gs)

if __name__=='__main__':
    row=search((1,2,4)); print(json.dumps(row,indent=2),flush=True)
    Path(__file__).with_suffix('.json').write_text(json.dumps(dict(utc=datetime.now(timezone.utc).isoformat(),evidence='exact rational finite-dimensional computation; p-adic and height bridges not yet Lean',rows=[row]),indent=2)+'\n')
