"""Sparse integer-polynomial checks, not point sampling."""
from fractions import Fraction

class Poly:
    def __init__(self, terms=None, dim=4):
        self.dim=dim
        if isinstance(terms,int):terms={(0,)*dim:terms}
        self.t={m:c for m,c in (terms or {}).items() if c}
    def coerce(self,o):return o if isinstance(o,Poly) else Poly(o,self.dim)
    def __add__(self,o):
        o=self.coerce(o);r=self.t.copy()
        for m,c in o.t.items():r[m]=r.get(m,0)+c
        return Poly(r,self.dim)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.t.items()},self.dim)
    def __sub__(self,o):return self+-self.coerce(o)
    def __rsub__(self,o):return self.coerce(o)+-self
    def __mul__(self,o):
        o=self.coerce(o);r={}
        for m,c in self.t.items():
            for n,d in o.t.items():
                mn=tuple(x+y for x,y in zip(m,n));r[mn]=r.get(mn,0)+c*d
        return Poly(r,self.dim)
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly(1,self.dim)
        for _ in range(n):r=r*self
        return r
    def zero(self):return not self.t

def var(i,dim=4):
    m=[0]*dim;m[i]=1
    return Poly({tuple(m):1},dim)

def run():
    P,A,k,d=[var(i) for i in range(4)]
    checks=[]
    for ep in (-1,1):
        diff=P**2*(k+ep*d*A-A**2)-(k*P**2+d*P-1)-(A*P-ep)*((ep*d-A)*P-ep)
        assert diff.zero();checks.append('RES_IDENTITY_eps_'+str(ep))
        for e in (1,2):
            f=e*P**3+k*P**2+d*P-1
            r=e*ep+k*A+ep*d*A**2-A**3
            quotient=e*((A*P)**2+ep*A*P+1)+k*A*(A*P+ep)+d*A**2
            assert (A**3*f-r-(A*P-ep)*quotient).zero()
            checks.append('CUBIC_HOMOGENIZED_RES_eps_'+str(ep)+'_e_'+str(e))
    d,v,z,u=[var(i) for i in range(4)]
    for ep in (-1,1):
        P=d*v+ep;Q=d*(v+1)+ep;t=(1+ep)//2
        expected=[-d,d,d*(3-2*d)]
        for r in (0,1,2):
            a=1+d*(t-r)
            rr=1+ep*d*a-a*a
            assert (rr-expected[r]).zero()
        assert (P*Q-1-d*(d*v*(v+1)+ep*(2*v+1))).zero()
        checks.append('NEAR_COMPLETE_SLOT_CONSTANTS_eps_'+str(ep))
    k=d*u
    rr=[]
    for a in (u,u-d,u-2*d):rr.append(k-d*a-a*a)
    target=[-u*u,u*(2*d-u),-(2*d*d-4*d*u+u*u)]
    for x,y in zip(rr,target):assert (x-y).zero()
    assert (rr[0]*rr[1]*rr[2]-u**3*(2*d-u)*(2*d*d-4*d*u+u*u)).zero()
    checks.append('ZERO_CARRY_FULL_POWER_CONSTANTS')
    table=[]
    for D,U in [(5,2),(7,2),(9,2),(9,4)]:
        upper=6*Fraction((2*D-U)*(2*D*D-4*D*U+U*U),D**3)
        lower=Fraction(D*D,4);margin=lower-upper
        assert margin>0
        table.append(dict(d=D,u=U,upper_6R_over_H3=str(upper),lower=str(lower),positive_margin=str(margin)))
    return dict(polynomial_checks=checks,small_d_exact_bounds=table,
                large_d_bound='d>=11 => d^2/4 >=121/4 >24 >6R/H^3')
