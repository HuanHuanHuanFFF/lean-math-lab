"""Coefficient-exact proofs of the new identities using a small sparse polynomial ring."""
from __future__ import annotations
import argparse,math
from fractions import Fraction as F
from pathlib import Path
from common import dump, coeff_phi, coeff_transform,eval_poly

class Poly:
    # variables n,j,a,b,h
    def __init__(self,t=0):
        self.d={}
        if isinstance(t,dict):self.d={m:F(c) for m,c in t.items() if c}
        elif t:self.d[(0,)*5]=F(t)
    @staticmethod
    def var(i):
        m=[0]*5;m[i]=1;return Poly({tuple(m):1})
    def __add__(self,other):
        if not isinstance(other,Poly):other=Poly(other)
        d=self.d.copy()
        for m,c in other.d.items():d[m]=d.get(m,F(0))+c
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.d.items()})
    def __sub__(self,o):return self+-aspoly(o)
    def __rsub__(self,o):return aspoly(o)+-self
    def __mul__(self,o):
        o=aspoly(o);d={}
        for a,c in self.d.items():
            for b,e in o.d.items():
                m=tuple(x+y for x,y in zip(a,b));d[m]=d.get(m,F(0))+c*e
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,k):
        if k<0:raise ValueError
        out=Poly(1)
        for _ in range(k):out=out*self
        return out
    def value(self,v):return sum(c*math.prod(F(x)**e for x,e in zip(v,m)) for m,c in self.d.items())

def aspoly(x):return x if isinstance(x,Poly) else Poly(x)

def run(out):
    n,j,a,b,h=[Poly.var(i) for i in range(5)]
    # Q6=6*b^3*Phi(a/b), integral homogeneous form.
    Q6=n*(n-1)*(n-2)*a**3-3*j*(n-1)*(n-2)*a*a*b+3*j*(j-1)*(n-2)*a*b*b-j*(j-1)*(j-2)*b**3
    delta=n*a-b*j
    centered=(n-1)*(n-2)*delta**3-3*b*b*j*(n-j)*(n-2)*delta-2*b**3*j*(n-j)*(n-2*j)
    identities=[('central_identity',n*n*Q6-centered),
                ('divisor_45',16*n*(3*n-8)-(4*n-9)*(12*n-5)+45)]
    # Explicit substitutions for a=3j,b=n, and a=3j-n,b=n.
    def q6(A,B):return n*(n-1)*(n-2)*A**3-3*j*(n-1)*(n-2)*A*A*B+3*j*(j-1)*(n-2)*A*B*B-j*(j-1)*(j-2)*B**3
    identities.append(('root_candidate_zero',q6(3*j,n)-2*j*n*n*(j-1)*(4*j*n-9*j+n)))
    D=n-2*j
    identities.append(('root_candidate_one',4*q6(3*j-n,n)+n*n*D*((4*n-9)*D*D-3*n*n+8*n)))
    for name,po in identities:
        assert po.d=={},(name,po.d)
    # Independently evaluate the centered identity from the original 4 coefficients.
    grid=0
    for N in (12,16,20,28,40):
        for J in range(4,N//2):
            co=coeff_transform(N,J)
            assert co==coeff_phi(N,J)
            for A in (-2,0,1,2,3):
                for B in (1,2,3,5):
                    D=N*A-B*J
                    lhs=6*B**3*N**2*eval_poly(co,F(A,B))
                    rhs=(N-1)*(N-2)*D**3-3*B*B*J*(N-J)*(N-2)*D-2*B**3*J*(N-J)*(N-2*J)
                    assert lhs==rhs
                    grid+=1
    div45=[d for d in range(1,46) if 45%d==0]
    assert not [d for d in div45 if (d+9)%16==0 and (d+9)//4>=8]
    # Generic denominator statement is sharp; it is NOT by itself irreducibility.
    sharp=[]
    for power in range(1,11):
        L=2**power;r=1
        # (L Z-r)(Z^2+Z+1); the generic coefficient condition is not irreducibility.
        co=[-r,L-r,L-r,L]
        assert eval_poly(co,F(r,L))==0 and co[2]%2
        sharp.append([power,r,L])
    dump(out/'algebra.json',{'symbolic_identities':[a for a,_ in identities], 'independent_exact_numeric_identities':grid,
      'positive_divisors_45':div45,'denominator_sharpness_cases':sharp,
      'bounds_sum':'1/2 + 3/16 + 1/4 = 15/16',
      'interpretation':'Sparse polynomial coefficient identities are exact; numeric identities and generic sharpness are implementation regressions, not a proof over all n,j.'})
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
