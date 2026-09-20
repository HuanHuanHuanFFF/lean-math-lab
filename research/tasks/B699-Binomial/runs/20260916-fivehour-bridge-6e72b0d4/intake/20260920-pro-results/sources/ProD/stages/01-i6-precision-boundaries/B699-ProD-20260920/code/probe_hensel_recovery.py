"""Exact original-pair countermodels to deliberately weakened implications.
No claim of NC6 or exhaustive original-problem search.
"""
from math import gcd
import json
r=1; A=3
hits=[]; attempted=0
for a in range(1,501):
    if a>1:
        nxt=[r+t*A for t in range(3) if ((r+t*A)**2-40)%(3*A)==0]
        assert len(nxt)==1
        r=nxt[0];A*=3
    assert (r*r-40)%A==0
    for z in range(1,61):
        if z%3==0:continue
        m=(r*z)%A
        if m%2==0:m=A-m
        num=A*A-m*m+40*z*z;den=40*A*z*z
        attempted+=1
        if num%den:continue
        g=num//den;beta=(A-m)//2
        if not g or not beta or gcd(A,beta)!=1:continue
        n=g*A;j=g*beta
        if n%9000!=5130:continue
        assert gcd(n,j)==g
        assert j*(n-j)==10*g*g*z*z*(n-1)
        x=n-5;E=0
        while x%5==0:E+=1;x//=5
        if E<3:continue
        hits.append(dict(a=a,g=str(g),z=z,n=str(n),j=str(j),E=E,q5=str(x),g4_lt_n=(g**4<n)))
        if len(hits)>=3:break
    if len(hits)>=3:break
print(json.dumps(dict(purpose='falsification of alpha+square+tail-only contradiction',attempted=attempted,hits=hits),indent=2))
