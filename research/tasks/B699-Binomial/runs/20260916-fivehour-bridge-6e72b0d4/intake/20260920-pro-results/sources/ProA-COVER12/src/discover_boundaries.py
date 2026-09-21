"""Discovery of auxiliary irreducible examples and genuine legal-point zeros.
No example is claimed to be an NC9 point or a factor of the unknown fixed G.
"""
from pathlib import Path
from fractions import Fraction as F
from math import comb
import json
import sympy as S
D=Path(__file__).resolve().parents[1]
N,X=S.symbols('N X')
records=json.loads((D/'certificates/nf59_exact_families.json').read_text())
irreds=[];zeros=[]
for rec in records:
    basis=[sum(S.Rational(c)*N**a*X**b for a,b,c in b) for b in rec['basis']]
    found=False
    for p in list(S.primerange(101,500)):
        for n in range(3):
            f=S.Poly(basis[0].subs(N,n),X)
            if any(int(c.q)%p==0 for c in f.all_coeffs()):continue
            fm=S.Poly(sum((int(c.p)*pow(int(c.q),-1,p)%p)*X**(f.degree()-i) for i,c in enumerate(f.all_coeffs())),X, modulus=p)
            if fm.is_irreducible:
                irreds.append({'case':rec['case'],'parameters':['0']*rec['affine_dimension'],'specialization_N':n,'prime':int(p),'coefficients_low_to_high':[int(fm.nth(i))%p for i in range(11)]})
                print('IRREDUCIBLE',rec['case'],'N',n,'p',p,flush=True);found=True;break
        if found:break
    if not found:print('NO_RABIN_WITNESS_FOUND',rec['case'],flush=True)
    if len(basis)>1:
        n=400;j=10;J=j*(n-j)
        B=basis[0].subs({N:n,X:J});d=basis[1].subs({N:n,X:J});assert d!=0
        t=-B/d;params=[str(t)]+['0']*(len(basis)-2)
        assert S.expand(basis[0]+t*basis[1]).subs({N:n,X:J})==0
        zeros.append({'case':rec['case'],'n':n,'j':j,'J':J,'parameters':params,'common_prime':11,'binomial_mod_prime':[comb(n,9)%11,comb(n,j)%11],'NC9':False,'factor_of_fixed_G':'not established'})
        print('LEGAL_ZERO_WITH_COMMON11',rec['case'],params,flush=True)
(D/'certificates/auxiliary_boundaries.json').write_text(json.dumps({'irreducible_members':irreds,'legal_zeros_not_NC9':zeros},indent=2))
