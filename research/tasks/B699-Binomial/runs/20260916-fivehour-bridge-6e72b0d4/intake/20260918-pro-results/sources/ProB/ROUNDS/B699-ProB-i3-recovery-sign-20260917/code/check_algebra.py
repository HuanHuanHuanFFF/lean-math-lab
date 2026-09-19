#!/usr/bin/env python3
"""Exact sparse-polynomial checks; standard-library implementation.
These are symbolic polynomial identities, not sample evaluations.
"""
from __future__ import annotations
import argparse
import itertools
import json
from pathlib import Path

N = 6  # x, eps, T, A, Y, delta
class P:
    def __init__(self, data=0):
        self.d = ({(0,)*N: int(data)} if isinstance(data,int) and data else
                  {} if isinstance(data,int) else {k:v for k,v in data.items() if v})
    @staticmethod
    def var(i):
        a=[0]*N;a[i]=1;return P({tuple(a):1})
    def __add__(self,b):
        b=b if isinstance(b,P) else P(b);d=self.d.copy()
        for k,v in b.d.items():d[k]=d.get(k,0)+v
        return P(d)
    __radd__=__add__
    def __neg__(self):return P({k:-v for k,v in self.d.items()})
    def __sub__(self,b):return self+-as_p(b)
    def __rsub__(self,b):return as_p(b)+-self
    def __mul__(self,b):
        b=as_p(b);d={}
        for a,av in self.d.items():
            for bb,bv in b.d.items():
                k=tuple(a[i]+bb[i] for i in range(N));d[k]=d.get(k,0)+av*bv
        return P(d)
    __rmul__=__mul__
    def __pow__(self,e):
        if e<0:raise ValueError('negative exponent')
        a=P(1);b=self
        while e:
            if e&1:a=a*b
            b=b*b;e//=2
        return a

def as_p(x):return x if isinstance(x,P) else P(x)

def determinant(m):
    z=P(0);n=len(m)
    for perm in itertools.permutations(range(n)):
        inv=sum(perm[i]>perm[j] for i in range(n) for j in range(i+1,n))
        term=P((-1)**inv)
        for i in range(n):term=term*m[i][perm[i]]
        z=z+term
    return z

def run():
    x,e,T,A,Y,d=[P.var(i) for i in range(N)]
    rho=e*T; w=2*x+e; Z=x*T-A
    Cbar=4*Z*x+4*Z*e+T*e**2
    Nbar=2*Cbar*w+2*A*e**2
    Sbar=4*Z*x+6*Z*e+3*T*e**2
    f=(8*T**2*x**3+4*T*(3*rho-4*A)*x**2
       +(6*rho**2-21*A*rho+8*A**2)*x+e*(rho-3*A)**2)
    a,b,c,dd=rho,-2*A,-2*A,A
    syl=[[a,b,c,dd,0],[0,a,b,c,dd],
         [3*a,2*b,c,0,0],[0,3*a,2*b,c,0],[0,0,3*a,2*b,c]]
    disc=-A**2*(27*rho**2-104*A*rho-48*A**2)
    C=121*T-24; z=5*T-1; nn=22*C+2
    j=11*(C-d)+1;k=11*(C+d)+1
    ell=d**2-1331*T**2+511*T-49
    claims={
      'cubic_discriminant_via_sylvester':determinant(syl)+a*disc,
      'scaled_norm':x*Cbar-Z*w**2-A*e**2,
      'actual_row_cubic':Nbar-2*(T*w**3-A*(2*w**2+2*w*e-e**2)),
      'actual_second_defect':Nbar-4*x*Sbar-2*(rho-3*A)*e**2,
      'coupled_delta_cubic':Cbar**2-Z*(Nbar-A*e**2)-e*f,
      'all_tail_factorization':Y**3-2*Y**2-2*Y+1-(Y+1)*(Y**2-3*Y+1),
      'weak_family_matrix_norm':(10*x+33*Y)**2-11*(3*x+10*Y)**2-x**2+11*Y**2,
      'weak_family_Pell_transform':(2662*T-511)**2-11*(22*d)**2-245+5324*ell,
      'weak_family_norm':5*C-121*z-1,
      'weak_family_jk':j*k-5*C*(nn-1)+121*ell,
      'weak_family_Q':C**2-d**2-z*(nn-1)+ell,
      'weak_family_disc_positive':27*(Y+29)**2-104*(Y+29)-48-(27*Y**2+1462*Y+19643),
    }
    for name,p in claims.items():
        if p.d:raise ValueError('identity failed: '+name+str(p.d))
    return {'status':'PASS','exact_polynomial_identities':list(claims),
            'identity_count':len(claims),'implementation':'sparse integer polynomials; Sylvester determinant by permutations'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    r=run();a.output.parent.mkdir(parents=True,exist_ok=True)
    a.output.write_text(json.dumps(r,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':r['status'],'identity_count':r['identity_count']}))
if __name__=='__main__':main()
