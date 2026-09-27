"""Exploratory finite diagnostics ONLY. Requires SymPy; not part of replay proof."""
import sys,sympy as s
from generate import row
print('SymPy',s.__version__)
for q in range(1,6):
    r=row(q);Q=r['d']+4*r['y'];print('A=4 finite factorization',q,Q,s.factorint(Q))
print('A4 probable-prime diagnostic q<=32',[(q,row(q)['d']+4*row(q)['y']) for q in range(1,33) if s.isprime(row(q)['d']+4*row(q)['y'])])
w=s.symbols('w');rt=s.sqrt(3)
for A in [2,4,6,8,10,12,14]:
    f=s.expand((A+rt)*(2+rt)*w**16-2*w**8+(A-rt)*(2-rt))
    _,fs=s.factor_list(f,extension=rt)
    print('A fixed polynomial factor degrees/multiplicities',A,[(int(s.degree(g,w)),e) for g,e in fs])
print('No universal composite-Q conclusion is certified by these finite probes.')
