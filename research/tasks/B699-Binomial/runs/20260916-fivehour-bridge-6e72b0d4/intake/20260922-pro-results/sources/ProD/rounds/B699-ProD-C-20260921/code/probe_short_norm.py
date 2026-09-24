"""Bounded candidate finder for falsifying automatic source recovery.
Euclidean remainders are proposals only; every returned pair is verified exactly.
No completeness claim about this generator or its finite range is used.
"""
from math import gcd, isqrt
from pathlib import Path
import json

def coarse(x):
    for p in (2,3,5):
        while x%p==0:x//=p
    return x

def sqrt3unit(value, exponent):
    r=1;m=3
    assert value%3==1
    for h in range(1,exponent):
        digit=((value-r*r)//m)*pow(2*r,-1,3)%3
        r+=digit*m;m*=3
    assert (r*r-value)%m==0
    return r,m

def proposals(a,g):
    alpha=3**a;n=g*alpha;D=40*(n-1);m=alpha*alpha
    r,_=sqrt3unit(-D,2*a)
    for root in (r,m-r):
        x,y=m,root
        while y>alpha:x,y=y,x%y
        if y==0:continue
        rhs=m-y*y
        if rhs<=0 or rhs%D:continue
        z=isqrt(rhs//D)
        if z*z*D!=rhs or gcd(y,z)!=1 or y%2==0:continue
        beta=(alpha-y)//2;j=g*beta;k=n-j
        if gcd(n,j)!=g or not (7<=j<=n//2):continue
        U=10*g*g*z*z
        assert j*k==(n-1)*U
        yield dict(a=a,g=g,n=n,j=j,z=z,delta=y,beta=beta,
                   first_source=True,W10=True,low_mass=8*g**4<n,
                   q2_full=(U*U*(U-1))%(coarse(n-2)**2)==0,
                   q5_near=(U-1)%coarse(n-5)==0,
                   q0_unit=coarse(n)==1)

def main():
    trials=0;found=[]
    # Stated bounded route test, stop at the first low-mass, non-unit q0 example.
    for a in range(4,161):
        alpha=3**a
        for g in range(10,10001,20):
            n=g*alpha
            if n%9000!=5130 or not 8*g**4<n or coarse(n)==1:continue
            trials+=1
            for rec in proposals(a,g):
                found.append(rec)
                if not rec['q2_full']:
                    result=dict(purpose='falsification only; no completeness claim',
                                a_max=160,g_max=10000,trials=trials,models=found)
                    p=Path(__file__).resolve().parents[1]/'outputs'/'short_norm_probe.json'
                    p.write_text(json.dumps(result,indent=2)+'\n')
                    print(json.dumps(result,indent=2));return
    result=dict(purpose='falsification only',trials=trials,models=found)
    (Path(__file__).resolve().parents[1]/'outputs'/'short_norm_probe.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
