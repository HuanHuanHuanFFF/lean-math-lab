#!/usr/bin/env python3
"""Independent exact sparse-integer-polynomial check, without CAS.
Variables are x, epsilon, T, A. All identities are denominator-cleared.
"""
import argparse,json
from pathlib import Path
from fractions import Fraction
from math import gcd

class P:
    def __init__(self,t=0):
        if isinstance(t,P):self.d=t.d.copy()
        elif isinstance(t,int):self.d={(0,0,0,0):t} if t else {}
        else:self.d={m:a for m,a in t.items() if a}
    def __add__(self,other):
        out=self.d.copy()
        for m,a in P(other).d.items():out[m]=out.get(m,0)+a
        return P(out)
    __radd__=__add__
    def __neg__(self):return P({m:-a for m,a in self.d.items()})
    def __sub__(self,other):return self+-P(other)
    def __rsub__(self,other):return P(other)+-self
    def __mul__(self,other):
        out={}
        for m,a in self.d.items():
            for n,b in P(other).d.items():
                k=tuple(x+y for x,y in zip(m,n));out[k]=out.get(k,0)+a*b
        return P(out)
    __rmul__=__mul__
    def __pow__(self,n):
        assert n>=0
        out=P(1)
        for _ in range(n):out=out*self
        return out

checks=[]
def ck(name,p):
    assert not p.d,(name,p.d)
    checks.append(name)

def run():
    x,E,T,A=[P({tuple(1 if i==j else 0 for i in range(4)):1}) for j in range(4)]
    rho=E*T;Z=x*T-A
    C2=4*Z*x+4*Z*E+T*E**2
    N2=2*C2*(2*x+E)+2*A*E**2
    f=8*T*T*x**3+4*T*(3*rho-4*A)*x*x+(6*rho*rho-21*A*rho+8*A*A)*x+E*(rho-3*A)**2
    ck('cleared_norm',x*C2-Z*(2*x+E)**2-A*E**2)
    ck('integer_n_recovery',N2-4*x*(4*Z*x+6*Z*E+3*T*E*E)-2*E*E*(rho-3*A))
    n_poly=16*T*x**3+8*(3*rho-2*A)*x*x+12*E*(rho-2*A)*x+2*E*E*(rho-3*A)
    ck('n_polynomial',N2-n_poly)
    ck('delta_cubic',C2*C2-Z*(N2-A*E*E)-E*f)
    a=8*T*T;b=4*T*(3*rho-4*A);c=6*rho*rho-21*A*rho+8*A*A;d=E*(rho-3*A)**2
    disc=18*a*b*c*d-4*b**3*d+b*b*c*c-4*a*c**3-27*a*a*d*d
    ck('discriminant_factorization',disc+16*A*A*T**4*E*E*(27*rho*rho-70*A*rho-36*A*A))
    # Exact true-window weak input retained only as an identity regression, NOT NC3.
    n,j=76672,26775;k=n-j;g=gcd(n,j);la=mu=1
    N=n-1;K=(n-2)//2;H=gcd(K,j-1);C=K//H
    u=Fraction(j*k,g*g*N*C);z=Fraction((j-1)*(k-1),N*H*H)
    E0=la*mu*H-2*u*g*g;T0=(z*E0*E0+1)/(u*g*g);delta=Fraction(n-2*j,2*g*H)
    assert all(q.denominator==1 for q in (u,z,E0,T0,delta))
    assert (int(u),int(z),int(E0),int(T0),int(delta))==(5,144,1,29,1051)
    rho0=E0*T0;x0=u*g*g;A0=1
    f0=8*T0*T0*x0**3+4*T0*(3*rho0-4)*x0*x0+(6*rho0*rho0-21*rho0+8)*x0+E0*(rho0-3)**2
    assert f0==E0**3*g*g*delta*delta
    assert n==128*599 and 599>3
    # Full periods, not an exponent cutoff, for the three symbolic tails.
    congruences=[]
    for r in (1,3,5,7):
        assert (4*r**3-102*r*r-159*r-40)%2==1
        v=(8*r**3-132*r*r+465*r+676)%8
        assert v==r
        congruences.append([r,v,(4*r**3-30*r*r-51*r-13)%8])
    assert congruences[0][2]==6
    assert 70**2+4*27*36==4*13**3 and 93**2 < 4*13**3 < 94**2
    return {'status':'PASS_STDLIB_SPARSE_IDENTITIES','identity_names':checks,
            'tail_complete_mod8_table':congruences,
            'weak_input':{'n':n,'j':j,'u':int(u),'z':int(z),'epsilon':int(E0),'T':int(T0),'rho':int(rho0),'delta':int(delta),
                          'is_NC3_claimed':False,'failed_required_shape':'alpha=128*599'},
            'scope':'Exact algebra and congruences, not an integral-point completeness proof.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    out=run();a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'identity_count':len(checks),'weak_pair':[76672,26775]}))
if __name__=='__main__':main()
