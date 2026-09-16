#!/usr/bin/env python3
"""Supplementary exact symbolic SQG audit; requires SymPy.
The main finite covering checker uses only the standard library.
"""
import argparse,json,platform
from pathlib import Path
from fractions import Fraction
from math import gcd,isqrt
import sympy as s

p=argparse.ArgumentParser();p.add_argument('--output',required=True);args=p.parse_args()
g,u,z,H,la,mu,w,d,C=s.symbols('g u z H la mu w d C',nonzero=True)
L=la*mu;q=u*z*g;a0=u*g*g
A=2*L*w-q;D=2*la*L*d;B=u*z*z*(4*L*H+u*g*g)
# Clear the known norm relation w^2-lambda^2*d^2=C*u*z.
expr=s.expand(A*A-D*D-B-4*L*L*(w*w-la*la*d*d-C*u*z))
assert s.factor(expr.subs(w,(L*C-z*H)/g))==0
Cdef=(z*H*H+la)/(u*g*g)
Adef=s.factor(A.subs(w,(L*C-z*H)/g).subs(C,Cdef))
T=a0*(1+q)/L
S=a0*a0*(q+2+1/q)/(4*L*L)-la/z
assert s.factor((B-2*Adef+1)*u*g**3/(4*L*L*z)-(-H*H+T*H+S))==0
assert s.factor(S-(T*T/(4*q)-la/z))==0
# Tail inequalities as polynomials with nonnegative coefficients.
x=s.symbols('x',nonnegative=True)
assert s.Poly(s.expand(8*(x+2)**4-27*(x+2)-16),x).all_coeffs()==[8,64,192,229,58]
assert Fraction(19683,2048)<10
# Test actual nonempty weak-window inputs, not hypothetical NC witnesses.
models=[]
for n,j in [(76672,26775),(175492,60606)]:
 k=n-j;G=gcd(n,j);Lam=3 if n%9 in (4,7) else 1;Mu=3 if n%9 in (5,8) else 1
 N=(n-1)//Lam;K=(n-2)//(2*Mu);HH=gcd(K,j-1);CC=K//HH
 U=(j//G)*(k//G)//(N*CC);Z=(j-1)*(k-1)//(N*HH*HH)
 assert (n//2-j)%(G*HH)==0
 dd=(n//2-j)//(G*HH)
 assert (Lam*Mu*CC-Z*HH)%G==0
 ww=(Lam*Mu*CC-Z*HH)//G
 assert ww*ww-Lam*Lam*dd*dd==CC*U*Z
 QQ=U*Z*G;AA=2*Lam*Mu*ww-QQ;DD=2*Lam*Lam*Mu*dd;BB=U*Z*Z*(4*Lam*Mu*HH+U*G*G)
 assert AA*AA-DD*DD==BB
 assert 8*Lam*Mu*HH<9*U*G*G*(1+QQ)
 assert n<11*U**5*Z**4*G**7
 models.append(dict(n=n,j=j,g=G,u=U,z=Z,H=HH))
out={'status':'PASS_EXACT_SQG_IDENTITIES','sympy':s.__version__,'python':platform.python_version(),'models_not_NC':models,
'limits':'Symbolic identities and two regression models checked. Universal inequalities and original-problem bridge are the written paper proof, not Lean.'}
Path(args.output).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
