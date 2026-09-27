from pathlib import Path
import numpy as np
from scipy.optimize import linprog
from fractions import Fraction
from functools import reduce
from math import lcm
R=Path(__file__).parent
raw=[tuple(map(int,l.split())) for l in (R/'signatures505.txt').read_text().splitlines()]
C=(0,2,8,0,0,14)
# w dot c + 2e >= b. Max 8b - w dot C.
r=linprog([*C,-8],A_ub=[[-v for v in x[1:]]+[1] for x in raw],b_ub=[2*x[0]for x in raw],bounds=[(0,None)]*6+[(0,None)],method='highs')
print(r.success,r.x,-r.fun)
f=[Fraction(float(x)).limit_denominator(10000)for x in r.x];den=lcm(*(x.denominator for x in f));a=[int(x*den)for x in f];print('scale e',2*den,'w',a[:6],'b',a[6]);print('twice bound',8*a[6]-sum(x*y for x,y in zip(a[:6],C)))
print('bad',[(i,x)for i,x in enumerate(raw)if 2*den*x[0]+sum(v*w for v,w in zip(a[:6],x[1:]))<a[6]])
