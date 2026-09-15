#!/usr/bin/env python3
"""Exact new identities. Integer coefficients only; no CAS dependency."""
from pathlib import Path
import argparse,json,math

class Poly:
    def __init__(self,d=0):
        if isinstance(d,int):d={(0,0,0):d}
        self.d={k:v for k,v in d.items() if v}
    def __add__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d=self.d.copy()
        for k,v in o.d.items():d[k]=d.get(k,0)+v
        return Poly(d)
    __radd__=__add__
    def __neg__(self):return Poly({k:-v for k,v in self.d.items()})
    def __sub__(self,o):return self+-o if isinstance(o,Poly) else self+(-o)
    def __rsub__(self,o):return -self+o
    def __mul__(self,o):
        o=o if isinstance(o,Poly) else Poly(o);d={}
        for a,c in self.d.items():
            for b,e in o.d.items():
                k=tuple(x+y for x,y in zip(a,b));d[k]=d.get(k,0)+c*e
        return Poly(d)
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly(1);p=self
        while n:
            if n&1:r=r*p
            p=p*p;n//=2
        return r
    def iszero(self):return not self.d

def dense(p):
    assert all(k[1:]==(0,0) for k in p.d)
    d=max((k[0] for k in p.d),default=0)
    return [p.d.get((i,0,0),0) for i in range(d+1)]

def rem_fold(p,k,c):
    a=dense(p);r=[0]*k
    for e,v in enumerate(a):r[e%k]+=v*c**(e//k)
    return r

def rem_division(p,k,c):
    a=dense(p)
    for e in range(len(a)-1,k-1,-1):
        t=a[e];a[e]=0;a[e-k]+=c*t
    return (a+[0]*k)[:k]

def shift(a,t):
    out=[0]*len(a)
    for e,c in enumerate(a):
        for k in range(e+1):out[k]+=c*math.comb(e,k)*t**(e-k)
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument("--out",type=Path,required=True)
    out=ap.parse_args().out
    a=Poly({(1,0,0):1});q=Poly({(0,1,0):1});D=Poly({(0,0,1):1})
    f=3*a*(3*a-1);g=6*a**3+q
    h=9*g-(6*a+2)*f
    assert (h-(6*a+9*q)).iszero()
    assert (h*(9*q-6*a+2)+4*f-9*q*(9*q+2)).iszero()
    z=a
    tail=(z+1)**4-3*z**3-2
    assert (tail-(z**4+z**3+6*z**2+4*z-1)).iszero()
    tail_pos=shift(dense(tail),1)
    assert all(c>0 for c in tail_pos)
    P=a*(a-1)*(a*a+1)
    full=6*P*(P-4)*(P-8)
    expected=[36,72,-48,18]
    assert rem_fold(full,4,2)==expected
    assert rem_division(full,4,2)==expected
    old=a*(a-1);old_full=6*old*(old-2)*(old-4)
    assert rem_fold(old_full,2,2)==[0,12]
    assert rem_division(old_full,2,2)==[0,12]
    T=3*a**3-8*a**2+12*a+6
    posT=shift(dense(T),4)
    pos_gap=shift(dense(a**4-2-2*T),4)
    assert all(c>0 for c in posT)
    assert pos_gap==[18,72,40,10,1]
    assert (6*a*(a-D)*(a-2*D)-6*a**3).d
    assert all(e[2]>=1 for e in (6*a*(a-D)*(a-2*D)-6*a**3).d)
    # Three-variable exact remainder identity for a periodic perturbation.
    S=q;e=D;j=a*S+e
    assert (j*(j-1)-e*(e-1)-a*S*(a*S+2*e-1)).iszero()
    # Independent finite-grid certificate for the two-variable Bezout identity.
    grid=0
    for aa in range(5):
        for qq in range(3):
            ff=3*aa*(3*aa-1);gg=6*aa**3+qq
            hh=9*gg-(6*aa+2)*ff
            assert hh*(9*qq-6*aa+2)+4*ff==9*qq*(9*qq+2)
            grid+=1
    ans={"identity_checks":9,"bezout_grid_points":grid,
         "bezout_bidegree_bound":[4,2],
         "repeat_four_tail_shift_coefficients":tail_pos,
         "double_run_remainder_coefficients":expected,
         "double_run_positive_T_shift":posT,
         "double_run_positive_gap_shift":pos_gap,
         "old_square_remainder":[0,12],
         "methods":["sparse integer multiplication","dense high-to-low long division",
                    "finite-grid identity with stated bidegree bound"],
         "status":"passed"}
    (out/"identities.json").write_text(json.dumps(ans,indent=2)+"\n")
    print(json.dumps({"identities":ans["identity_checks"],"status":"passed"}))
if __name__=="__main__":main()
