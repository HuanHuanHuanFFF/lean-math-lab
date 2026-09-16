"""Exact helpers; no conjecture, symbolic library, or floating arithmetic required."""
import math
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PRIMES=(2,3,5,7)

def small_part(x: int, i: int)->int:
    if x<=0:raise ValueError('positive integer required')
    ans=1
    for p in PRIMES:
        if p>=i:break
        while x%p==0:x//=p;ans*=p
    if i in (5,7) and x%i==0 and x%(i*i)!=0:ans*=i
    return ans

def full_power(x:int,p:int)->int:
    if x<=0:raise ValueError('positive integer required')
    ans=1
    while x%p==0:x//=p;ans*=p
    return ans

def scope(n:int,i:int)->bool:
    return i in (5,6) and n>=2*(i+1) and n%72 in (18,56) and (i==5 or n%5 in (0,2))

def qig(n:int,i:int)->bool:
    T=math.prod(small_part(n-r,i) for r in range(4))
    return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def sixg(n:int,i:int)->bool:
    T=math.prod(small_part(n-r,i) for r in range(6))
    return T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2

def polynomial(rows):return {(int(a),int(b)):int(c)for a,b,c in rows if c}
def rows(P):return [[a,b,c] for (a,b),c in sorted(P.items()) if c]

def multiply(A,B):
    C={}
    for(a,b),c in A.items():
        for(u,v),d in B.items():
            k=(a+u,b+v);C[k]=C.get(k,0)+c*d
    return {k:c for k,c in C.items()if c}

def shift(P,x0,y0):
    mid={};out={}
    for(a,b),c in P.items():
        for u in range(a+1):
            k=u,b;mid[k]=mid.get(k,0)+c*math.comb(a,u)*x0**(a-u)
    for(a,b),c in mid.items():
        if not c:continue
        for v in range(b+1):
            k=a,v;out[k]=out.get(k,0)+c*math.comb(b,v)*y0**(b-v)
    return {k:c for k,c in out.items()if c}

def value(P,x,y):
    deg=max(a+b for a,b in P);xs=[1];ys=[1]
    for _ in range(deg):xs.append(xs[-1]*x);ys.append(ys[-1]*y)
    return sum(c*xs[a]*ys[b]for(a,b),c in P.items())

def taylor(P,x,y,u,v):
    return sum(c*math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)
               for(a,b),c in P.items()if a>=u and b>=v)

def factor_small(n):
    if n<=0:raise ValueError('positive integer required')
    ans=[];p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            ans.append((p,e))
        p=3 if p==2 else p+2
    if n>1:ans.append((n,1))
    return ans

def valuation_choose(n,j,p):
    q=p;ans=0
    while q<=n:
        ans+=int(j%q>n%q);q*=p
    return ans

def has_common(n,j,i):
    d=math.gcd(math.comb(n,i),math.comb(n,j))
    for p in PRIMES:
        if p>=i:break
        while d%p==0:d//=p
    return d>1

def missing_slot_consumer(n:int,j:int,i:int)->bool:
    """True is sufficient for Common_i; False makes no mathematical claim."""
    if not scope(n,i) or not(i<j<=n//2):return False
    q=(n-3)//small_part(n-3,i)
    return any(math.gcd(q,j-b)==1 for b in range(4))
