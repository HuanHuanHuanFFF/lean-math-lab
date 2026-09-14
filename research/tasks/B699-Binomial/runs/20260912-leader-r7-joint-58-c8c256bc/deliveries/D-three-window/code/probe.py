from core import *
from math import comb
found={}
for n in range(8,501):
    c3=comb(n,3);pr=list(factor(c3))
    for j in range(4,n//2+1):
        B=comb(n,j);source=[p for p in pr if B%p==0]
        for m in range(3,min(9,j-1)+1):
            good=[p for p in source if p>=m and comb(n,m)%p==0]
            if good:continue
            ss=[badpart(n-r,m) for r in range(3)];lhs=64*eta(n)*(n-1)**3
            if isprime(m):
                fake=[s//m if vp(n-r,m)==1 else s for r,s in enumerate(ss)]
                if lhs>fake[0]**4*fake[1]**3*fake[2]**2:
                    found.setdefault('single_endpoint_'+str(m),{'n':n,'j':j,'m':m,'source':source,'parts':ss,'fake_parts':fake})
            if n%4 and 512*(n-1)**3>ss[0]**4*ss[1]**3*ss[2]**2:
                found.setdefault('wrong_eta_'+str(n%4),{'n':n,'j':j,'m':m,'source':source,'parts':ss})
print(found)
for n,j in [(244,122),(52,10)]:print(n,j,comb(n,3),gcd(comb(n,3),comb(n,j)),{m:row_data(n,m)['accepted'] for m in range(3,10)})
