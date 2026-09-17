#!/usr/bin/env python3
"""Exact sparse-polynomial identities and explicit failure-model checks.
Standard library only; this does not claim to check the infinite inequalities.
"""
from __future__ import annotations
import argparse
from dataclasses import dataclass
import json
from math import comb,gcd,isqrt
from pathlib import Path

DIM=7
@dataclass
class P:
    d:dict[tuple[int,...],int]
    def __post_init__(self):
        self.d={k:v for k,v in self.d.items() if v}
    @staticmethod
    def const(v:int): return P({(0,)*DIM:v})
    def __add__(self,b):
        if isinstance(b,int):b=P.const(b)
        d=self.d.copy()
        for k,v in b.d.items():d[k]=d.get(k,0)+v
        return P(d)
    __radd__=__add__
    def __neg__(self):return P({k:-v for k,v in self.d.items()})
    def __sub__(self,b):return self+(-b if isinstance(b,P) else -int(b))
    def __rsub__(self,b):return -self+b
    def __mul__(self,b):
        if isinstance(b,int):b=P.const(b)
        d={}
        for k,v in self.d.items():
            for l,w in b.d.items():
                t=tuple(a+c for a,c in zip(k,l));d[t]=d.get(t,0)+v*w
        return P(d)
    __rmul__=__mul__
    def __pow__(self,e:int):
        if e<0:raise ValueError("Only nonnegative powers")
        p=P.const(1);a=self
        while e:
            if e&1:p=p*a
            a=a*a;e>>=1
        return p

def var(i):
    k=[0]*DIM;k[i]=1
    return P({tuple(k):1})

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);args=ap.parse_args()
    C,H,z,l,mu,m,x=[var(i) for i in range(DIM)]
    E1=4*C-z*H**2-l
    E2=l*m**2-l*mu**2*C**2+z*(2*mu*C*H+1)
    B=l*mu*C-z*H;T=l*mu*H;A=l*mu*B-2*z
    checks={
      'first_square_norm_ideal':B**2-l**2*m**2-4*C*z+l*E2+z*E1,
      'second_square_norm_ideal':A**2-l**4*mu**2*m**2-4*z**2*(T+1)+l**3*mu**2*E2+l**2*mu**2*z*E1,
      'center_formula':4*A-z*(T**2-4*T-8)-l**3*mu**2-l**2*mu**2*E1,
      'gap_threshold':(4*z+6)**2-4*(z+1)*(4*z+6)-4*z-8-(4*z+4),
      'quartic_factorization':(x-1)*(x+1)*(x*x+1)-(x**4-1),
      'quartic_minus_quotient':(x-1)*(x**3+x*x+x+1)-(x**4-1),
      'quartic_plus_quotient':(x+1)*(x**3-x*x+x-1)-(x**4-1),
      'quartic_minus_residue':x**3+x*x+x+1-4-(x-1)*(x*x+2*x+3),
      'quartic_plus_residue':x**3-x*x+x-1+4-(x+1)*(x*x-2*x+3),
      'sextic_factorization':(x*x-1)*(x*x+x+1)*(x*x-x+1)-(x**6-1),
    }
    for q in (3,5,7,11):
        Q=sum((x**i for i in range(q)),P.const(0))
        M=sum(((-1)**i*x**i for i in range(q)),P.const(0))
        checks[f'Phi_{q}_quotient']=(x-1)*Q-(x**q-1)
        checks[f'Phi_{2*q}_quotient']=(x+1)*M-(x**q+1)
        remainder=sum((comb(q,k)*(x-1)**(k-3) for k in range(3,q+1)),P.const(0))
        checks[f'Q_{q}_second_order']=Q-q-comb(q,2)*(x-1)-(x-1)**2*remainder
        checks[f'Q_{q}_at_square']=sum((x**(2*i) for i in range(q)),P.const(0))-Q*M
    for name,p in checks.items():
        if p.d:raise AssertionError((name,p.d))
    # Exact norm-only models: no j is supplied; do NOT label these NC inputs.
    norm_only=[]
    for r in (0,1,2,5,20):
        h=47+48*r;c=(3*h*h+1)//4;n=2*c*h+2
        assert n%16==0 and n%3==0 and (n-2)//2%3!=0
        assert gcd(c,h)==1 and 4*c-3*h*h==1 and h%8==7
        d2=c*c-3*(n-1);root=isqrt(d2)
        assert root*root<d2<(root+1)**2
        assert h**4>16*n
        norm_only.append({'r':r,'H':str(h),'C':str(c),'z':3,'n':str(n),
                          'm_squared':str(d2),'sqrt_floor':str(root),
                          'original_j':'NOT_RECOVERED','alpha_shape':'NOT_ASSERTED'})
    # Frozen previous weak input, recalculated here rather than trusted from text.
    n=58107298636563670183229460572;j=9206228375889194192273417806;k=n-j
    g=gcd(n,j);lam=3 if (n-1)%3==0 and (n-1)%9!=0 else 1
    V=(n-2)//2;mmu=3 if V%3==0 and V%9!=0 else 1
    N=(n-1)//lam;K=V//mmu;hh=gcd(K,j-1)
    assert j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0
    tt=(j//g)*(k//g)//N;cc=gcd(K,tt);uu=tt//cc
    zz=(j-1)*(k-1)//(N*hh*hh);dm=(n//2-j)//hh
    aa=lam*lam*mmu*mmu*cc-lam*mmu*zz*hh-2*zz
    assert g==2 and uu==1 and 4*cc-zz*hh*hh==lam
    assert aa*aa-(lam*lam*mmu*dm)**2==4*zz*zz*(lam*mmu*hh+1)
    assert lam*mmu*hh<4*zz+6
    assert n%197==0 and j%197==82
    prior={'n':str(n),'j':str(j),'g':g,'u':uu,'H':hh,'lambda':lam,'mu':mmu,
           'square_gap_identity':'PASS','square_gap_inequality':'PASS',
           'sixteen_divides_n':n%16==0,'common_prime_modular_witness':197,
           'new_example':False}
    out={'status':'PASS','polynomial_identities':list(checks),'identity_count':len(checks),
         'norm_only_models':norm_only,'previous_weak_input':prior}
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','identities':len(checks),'norm_only_models':len(norm_only)}))
if __name__=='__main__':main()
