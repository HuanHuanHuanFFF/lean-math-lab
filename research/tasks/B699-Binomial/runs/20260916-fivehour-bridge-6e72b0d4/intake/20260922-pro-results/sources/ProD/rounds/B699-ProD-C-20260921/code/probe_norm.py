"""Bounded route falsification only, not an NC6 search or a finite terminal."""
from math import gcd, isqrt
import json
from pathlib import Path

def coarse(n):
    for p in (2,3,5):
        while n%p==0: n//=p
    return n

def wt3(x):
    w=0
    while x: w+=bool(x%3);x//=3
    return w

def record(a,A,delta,z,g):
    n=g*A; beta=(A-delta)//2;j=g*beta;k=n-j;U=10*g*g*z*z
    q2=coarse(n-2)
    return dict(a=a,n=n,j=j,g=g,z=z,beta=beta,delta=delta,
        tail=n%1800,tail9000=n%9000,low_mass=8*g**4<n,
        first_source=j*k==(n-1)*U,alpha_true=n//g==A and gcd(n,j)==g,
        W10=(n-1)*j*k==10*((n-1)*g*z)**2,
        q2_full=(U*U*(U-1))%(q2*q2)==0,
        q2=q2,wt_beta=wt3(beta),wt_gamma=wt3(A-beta),
        DENminus=min((A-1)//gcd(A-1,x) for x in (beta,A-beta))**3<=A,
        DENplus=min((A+1)//gcd(A+1,x)-1 for x in (beta,A-beta))**3<=A)

def main():
    root=1;A=3;out=[];low=[];count=0
    for a in range(2,301):
        root=next(root+t*A for t in (0,1,2) if ((root+t*A)**2-40)%(3*A)==0)
        A*=3
        # z=1..100 is solely for finding a countermodel. No coverage inferred.
        zmax=100 if a>=9 else isqrt(max(0,(A*A-1)//(40*(10*A-1))))
        for z in range(1,zmax+1):
            if z%3==0:continue
            count+=1
            delta=(root*z)%A
            if delta%2==0:delta=A-delta
            num=A*A-delta*delta+40*z*z;den=40*A*z*z
            if num%den:continue
            g=num//den
            if g<10 or (g*A)%1800!=1530:continue
            r=record(a,A,delta,z,g)
            if r['tail9000']==5130:out.append(r)
            if r['low_mass']:low.append(r)
            if len(out)>=5:break
        if len(out)>=5:break
    result=dict(purpose='route falsification, not complete endpoint',last_a=a,tests=count,models=out,low_mass_models=low)
    p=Path(__file__).resolve().parents[1]/'outputs'/'norm_probe.json'
    p.write_text(json.dumps(result,indent=2))
    print(json.dumps(result,indent=2))
if __name__=='__main__':main()
