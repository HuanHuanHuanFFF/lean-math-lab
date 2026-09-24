#!/usr/bin/env python3
from __future__ import annotations
import json
from pathlib import Path
import sympy as s
x,a,b=s.symbols('x a b')
u3,u2,u1,u0,w3,w2,w1,w0=s.symbols('u3 u2 u1 u0 w3 w2 w1 w0')
vars=[u3,u2,u1,u0,w3,w2,w1,w0]
rows=[]
for k,l in [(0,1),(0,2),(1,0),(1,2),(2,0),(2,1)]:
    ds=[0,0,0]; ds[k]+=2; ds[l]+=1
    t=s.Rational(8-(ds[1]+2*ds[2]),9)
    U=x**4+u3*x**3+u2*x**2+u1*x+u0
    W=t*x**4+w3*x**3+w2*x**2+w1*x+w0
    A=x**2+a*x+b; R=x*A
    fac=[s.Integer(1)]*3; fac[k]=A; fac[l]=x
    S=s.expand(fac[0]*s.diff(fac[1],x)*fac[2]+2*fac[0]*fac[1]*s.diff(fac[2],x))
    D=s.expand(W*s.diff(R,x)-R*(3*s.diff(W,x)-2*s.diff(U,x))-U*S)
    eqs=[D.coeff(x,i) for i in range(7)]
    eqs.append((W-l*U).subs(x,0))
    rem=s.Poly(W-k*U,x).rem(s.Poly(A,x)).as_expr()
    eqs += [s.expand(rem).coeff(x,i) for i in range(2)]
    M,bb=s.linear_eq_to_matrix(eqs,vars)
    rank=M.rank(); aug=M.row_join(bb).rank()
    assert rank==aug==6
    rows.append({"quadratic_slot":k,"linear_slot":l,"degree_triple":ds,"t":str(t),"linear_rank":rank,"free_UW_parameters":8-rank})
out={"rows":rows,"status":"COST_PROBE_21=PASS"}
path=Path(__file__).resolve().parents[1]/'outputs'/'cost_probe_21.json'
path.write_text(json.dumps(out,indent=2,sort_keys=True)+"\n")
print(out['status'])
