"""Small exact Laurent polynomial checker over Q[d,y,B,B^-1]. Standard library."""
from fractions import Fraction
from typing import Dict, Tuple
F=Fraction
Poly=Dict[Tuple[int,int,int],F]
def mon(d=0,y=0,B=0,c=1):
    c=F(c)
    return {(d,y,B):c} if c else {}
def add(*polys):
    ans={}
    for poly in polys:
        for exp,c in poly.items():ans[exp]=ans.get(exp,F(0))+c
    return {e:c for e,c in ans.items() if c}
def scale(poly,c):return {e:v*F(c) for e,v in poly.items() if v*F(c)}
def mul(a,b):
    ans={}
    for e,x in a.items():
        for f,y in b.items():
            k=tuple(i+j for i,j in zip(e,f));ans[k]=ans.get(k,F(0))+x*y
    return {e:c for e,c in ans.items() if c}
def power(a,n):
    assert isinstance(n,int) and n>=0
    ans=mon()
    for _ in range(n):ans=mul(ans,a)
    return ans
def reduce_pell(poly):
    """Exactly replace y^2 by (d^2+d+1)/3. No evaluation or floating point."""
    ans={}
    base=scale(add(mon(d=2),mon(d=1),mon()),F(1,3))
    for (d,y,B),c in poly.items():
        assert d>=0 and y>=0
        ans=add(ans,mul(mon(d,y%2,B,c),power(base,y//2)))
    return ans
def serial(poly):
    return [{'d':d,'y':y,'B':B,'coefficient':str(c)} for (d,y,B),c in sorted(poly.items())]

def source_target():
    d,y,B=mon(d=1),mon(y=1),mon(B=1)
    v=scale(mul(mul(add(d,mon(c=-1)),y),mon(B=-1)),3)
    W=mul(B,y)
    S=add(power(v,4),scale(mul(d,power(v,3)),5),scale(mul(power(d,2),power(v,2)),10),scale(mul(power(d,3),v),10),scale(power(d,4),5),mul(power(d,2),W))
    T=add(power(v,2),scale(mul(d,v),F(5,2)),scale(power(d,2),F(15,8)),scale(mul(B,y),F(5,16)),scale(power(B,2),-F(5,384)))
    return d,y,B,v,W,S,T
