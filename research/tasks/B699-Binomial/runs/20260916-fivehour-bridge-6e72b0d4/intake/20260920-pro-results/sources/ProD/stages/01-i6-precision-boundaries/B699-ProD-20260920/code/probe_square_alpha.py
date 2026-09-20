"""Bounded route-falsification probe, NOT finite termination of NC6."""
from math import isqrt, gcd
import json, time
hits=[]; tested=0
for a in range(2,15):
    alpha=3**a
    for z in range(1,isqrt(alpha//400)+1):
        # g has v2(g)=v5(g)=1 in the B tail; no source-window assumptions.
        maxg=(alpha*alpha+40*z*z)//(40*alpha*z*z)
        for g in range(10,maxg+1,20):
            if g%25==0: continue
            tested+=1
            D=alpha*alpha-40*z*z*(g*alpha-1)
            if D<0: continue
            m=isqrt(D)
            if m*m!=D: continue
            beta=(alpha-m)//2
            if not beta or gcd(beta,alpha)!=1: continue
            n=g*alpha;j=g*beta
            assert gcd(n,j)==g and j*(n-j)==10*g*g*z*z*(n-1)
            hits.append(dict(a=a,alpha=alpha,g=g,z=z,n=n,j=j,tail=n%1800,res=n%9000))
print(json.dumps(dict(purpose='route falsification only',a_range=[2,14],tested=tested,hits=hits),indent=2))
