from sympy import factorint, divisors
from math import isqrt,gcd
import json,time
hits=[];squares=[];ct=0;st=time.time()
for d in range(1,1000000,2):
    for v in divisors(d**3-1) if d>1 else [2]:
        if v%2 or v<=d//2: continue
        Q=v+d; W=(d**3-1)//v
        F=(Q**5-d*d)//v; Y=isqrt(F)
        if Y*Y!=F: continue
        squares.append((d,v,Q,W,Y))
        if (Y+Q*Q)%d: continue
        nu=(Y+Q*Q)//d
        if (2*nu+Q)%d: continue
        h=(2*nu+Q)//d; P=Q+h*v
        assert v*nu*nu==P*Q*Q-1
        n=P*Q*nu+2
        hits.append(dict(d=d,v=v,Q=Q,W=W,Y=Y,nu=nu,h=h,P=P,n=n,factQ=str(factorint(Q)),factP=str(factorint(P)),factn=str(factorint(n))))
print(json.dumps({'range':'odd d <1000000, even v>d/2 divisor of d^3-1; d1/Q3 manually included','hits':hits,'square_points':squares,'elapsed':time.time()-st},indent=2))
