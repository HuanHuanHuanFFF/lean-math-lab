from math import gcd,isqrt
from collections import Counter
rows=[];supports=[];res=[]
for g in range(1,108):
    cap=10*(107//g)**2+1
    s=2
    while (n:=g*2**s)<=cap**2:
        X=isqrt(n)
        if X*X==n and n>2097153:
            rows.append((g,s,X,n))
            for eps in [-1,1]:
                for u in range(1,107//g+1,2):
                    if (X-eps)%u:continue
                    d=(X-eps)//u
                    if d<33 or d>10*u:continue
                    if 2*g*(n-2)>=21*d**3:continue
                    a=n//g
                    lo=a//(2*d*d)+1;hi=(a-(4+g-1)//g)//(d*d)
                    h=(n-1)//d
                    supports.append((g,s,X,eps,d,u,lo,hi))
                    for m in range(lo,hi+1):
                        gam=m*d*d;bet=a-gam;j=g*bet
                        if gcd(a,gam)!=1 or gcd(gam,n-1)!=d:continue
                        if 3*(g*gam-1)%h:continue
                        res.append((n,j,g,d,m,eps,u,(6*j*(j-1)*(j-2))%(n-2)))
        s+=1
print('rows',len(rows),rows)
print('supports',len(supports),supports)
print('res',len(res),res)
