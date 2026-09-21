#!/usr/bin/env python3
import sys,json,math,time
from fractions import Fraction as Q
from pathlib import Path
from sympy import symbols,Poly,factor_list
from signatures import decode
from recover import sparse
ROOT=Path(__file__).resolve().parents[1]
obj=json.loads((ROOT/'evidence/nf10_h3_solutions.json').read_text())
f=next(f for f in obj['solutions'] if f['index']==755)
A,B=map(decode,f['polynomials']);t=Q(-504,5)
P={k:A.get(k,0)+t*B.get(k,0) for k in A.keys()|B.keys()};P={k:v for k,v in P.items() if v}
den=math.lcm(*(v.denominator for v in P.values()));d=math.gcd(*(int(v*den) for v in P.values()));P={k:int(v*den)//d for k,v in P.items()}
N,X=symbols('N X');expr=sum(v*N**a*X**b for (a,b),v in P.items())
start=time.monotonic();fc=factor_list(expr);print('FACTOR',str(fc), 'seconds',time.monotonic()-start,flush=True)
q=10;a=[Q(P.get((2*q-2*i,i),0),4**i) for i in range(q+1)]
b=[sum(a[i]*Q(math.comb(k,i),math.comb(q,i)) for i in range(k+1)) for k in range(q+1)]
print('TOP_COEFFICIENTS',a,flush=True);print('BERNSTEIN',b,flush=True)
same=all(x>0 for x in b) or all(x<0 for x in b)
res={'family_index':755,'parameter':[-504,5],'primitive_polynomial':sparse(P),'factorization':str(fc),'bernstein':[[x.numerator,x.denominator] for x in b],'constant_sign':same}
if same:
 c=min(abs(x) for x in b);T=sum(abs(v) for v in P.values());Bnd=Q(T)/c;bits=Bnd.numerator.bit_length()-Bnd.denominator.bit_length()+2
 while Q(2)**(bits-1)>Bnd:bits-=1
 while Q(2)**bits<=Bnd:bits+=1
 res.update({'l1':T,'min_bernstein':[c.numerator,c.denominator],'strict_n_threshold':[Bnd.numerator,Bnd.denominator],'power2_sufficient':bits})
 print('NONVANISH',bits,'bits',flush=True)
(ROOT/'evidence/nf59_special_probe.json').write_text(json.dumps(res,sort_keys=True,separators=(',',':'))+'\n')
