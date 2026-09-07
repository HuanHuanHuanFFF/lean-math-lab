"""Exact finite audit of the monic low-order auxiliary-polynomial template.

All 10 triples and all 5 quadruples of the five slots; fractions only.
This is a limitation of this template, not of all auxiliary methods.
"""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
from datetime import datetime, timezone
import json


def trim(a):
    while len(a) > 1 and not a[-1]:
        a.pop()
    return a


def add(a, b):
    out = [F(0)] * max(len(a), len(b))
    for i, x in enumerate(a): out[i] += x
    for i, x in enumerate(b): out[i] += x
    return trim(out)


def mul(a, b):
    out = [F(0)] * (len(a) + len(b) - 1)
    for i, x in enumerate(a):
        for j, y in enumerate(b): out[i+j] += x*y
    return trim(out)


def ev(a, x):
    value = F(0)
    for c in reversed(a): value = value*x+c
    return value


def interpolate(points):
    out = [F(0)]
    for x, y in points:
        term, denom = [F(y)], F(1)
        for xx, yy in points:
            if xx != x:
                term = mul(term, [-xx, F(1)])
                denom *= x-xx
        out = add(out, [c/denom for c in term])
    assert all(ev(out, x) == y for x, y in points)
    return out


def main():
    z = {i: F(3*(3-i)) for i in range(1,6)}
    R0 = dict(enumerate([24,-6,4,-6,24],1))
    R1 = dict(enumerate([50,-5,0,5,-50],1))
    R2 = dict(enumerate([35,5,-5,5,35],1))
    lam = {i:F(4*R1[i],3*R0[i]) for i in z}
    mu = {i:F(20*R2[i],9*R0[i]) for i in z}
    rows=[]
    for r in (3,4):
        for slots in combinations(range(1,6),r):
            A=[F(1)]
            for i in slots: A=mul(A,[-z[i],F(1)])
            derivative=[(j+1)*A[j+1] for j in range(len(A)-1)]
            B=interpolate([(z[i],ev(derivative,z[i])*lam[i]) for i in slots])
            C=interpolate([(z[i],ev(derivative,z[i])*mu[i]) for i in slots])
            eligible=len(B)-1<=r-2 and (r==3 or len(C)-1<=r-3)
            rows.append(dict(slots=slots,A=list(map(str,A)),B=list(map(str,B)),
                             C=list(map(str,C)),degB=len(B)-1,degC=len(C)-1,
                             template_eligible=eligible))
    assert [x['slots'] for x in rows if x['template_eligible']]==[(1,3,5),(2,3,4)]
    special=next(x for x in rows if x['slots']==(1,2,4,5))
    assert special['B']==['-540','0','40']
    assert special['C']==['0','75','0','25/9']
    out=dict(utc=datetime.now(timezone.utc).isoformat(),
             evidence='exact rational finite template audit; not an unrestricted impossibility result',
             lambda_i={i:str(v) for i,v in lam.items()},mu_i={i:str(v) for i,v in mu.items()},rows=rows)
    path=Path(__file__).resolve().parent/'interpolation-audit.json'
    path.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(dict(output=str(path),cases=len(rows),eligible=[x['slots'] for x in rows if x['template_eligible']],quadruple=special),indent=2))


if __name__=='__main__':main()
