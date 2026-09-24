"""Diagnostic only: exact polynomial first-source CRT; no infinite inference."""
from pathlib import Path
from itertools import product
import sympy as s
import json,time
X=s.Symbol('X')

def emit_rows(cap=8):
    t=time.time(); counts={'f':0,'reducible':0,'first_zero_box':0,'both':0}; first=[]; both=[]
    for d in [2,3]:
      for coeff in product(range(cap+1),repeat=d):
        if not coeff[-1] or sum(coeff)%2:continue
        f=s.Poly(2+sum(a*X**(i+1) for i,a in enumerate(coeff)),X,domain=s.QQ)
        F=f-1; counts['f']+=1
        fac=s.factor_list(F)[1]
        if len(fac)<2:continue
        counts['reducible']+=1
        for mask in range(1,2**len(fac)-1):
          U=s.Poly(1,X,domain=s.QQ);V=U
          for i,(a,k) in enumerate(fac):
            if mask>>i&1:U*=a**k
            else:V*=a**k
          E=(U*s.invert(U,V)).rem(F)
          for c in [0,1,2]:
            J=E+(c-E.nth(0))*F
            b=[J.nth(i) for i in range(d+1)]
            if any(v.q!=1 or not 0<=v<=f.nth(i) for i,v in enumerate(b)):continue
            if J.degree()==0:continue
            D=f-2*J
            if D.is_zero or D.LC()<=0:continue
            assert (J*(J-1)).rem(F).is_zero
            counts['first_zero_box']+=1
            rem=(J*(J-1)*(J-2)).rem(f-2)
            row={'f':list(map(int,[f.nth(i) for i in range(d+1)])), 'J':list(map(int,b)), 'rem2':str(rem.as_expr())}
            first.append(row)
            if rem.is_zero:
              counts['both']+=1;both.append(row)
    return {'cap':cap,'counts':counts,'first':first,'both':both,'elapsed':time.time()-t}
if __name__=='__main__':
 import sys
 cap=int(sys.argv[1]) if len(sys.argv)>1 else 8
 r=emit_rows(cap);Path(__file__).parents[1].joinpath('outputs/probe_poly_pairs.json').write_text(json.dumps(r,indent=2))
 print(json.dumps({k:v for k,v in r.items() if k!='first'},indent=2));print('first few:',r['first'][:15])
