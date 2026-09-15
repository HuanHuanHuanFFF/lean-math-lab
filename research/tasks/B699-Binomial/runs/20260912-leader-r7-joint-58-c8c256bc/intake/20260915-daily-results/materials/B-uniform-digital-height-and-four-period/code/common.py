"""Discovery-side exact integer polynomial routines. No external packages."""
from math import gcd

def trim(p):
    p=list(p)
    while len(p)>1 and p[-1]==0:p.pop()
    return p or [0]
def add(p,q):
    r=[0]*max(len(p),len(q))
    for i,a in enumerate(p):r[i]+=a
    for i,a in enumerate(q):r[i]+=a
    return trim(r)
def scale(p,a):return trim([a*x for x in p])
def subconst(p,a):
    r=list(p);r[0]-=a;return trim(r)
def mul(p,q):
    r=[0]*(len(p)+len(q)-1)
    for i,a in enumerate(p):
        for j,b in enumerate(q):r[i+j]+=a*b
    return trim(r)
def val(p,x):
    a=0
    for c in reversed(p):a=a*x+c
    return a
def norm(p):return sum(map(abs,p))
def reduced(p,k,A,r,power):
    """A**power times p, reduced using A*X**k=r."""
    assert k>=1 and A>=1 and len(p)-1<=power*k
    out=[0]*k
    for e,c in enumerate(p):
        q,t=divmod(e,k);out[t]+=c*A**(power-q)*r**q
    return trim(out)
def windows(p,d,k,A):
    f=scale(mul(p,subconst(p,d)),3)
    h=scale(mul(mul(p,subconst(p,d)),subconst(p,2*d)),6)
    return f,h,reduced(f,k,A,1,2),reduced(h,k,A,2,3)
def support(j,b):
    out=[];e=0
    while j:
        j,r=divmod(j,b)
        if r:out.append((e,r))
        e+=1
    return out
def simultaneous(exponents,v,Q=8):
    """Exact pigeonhole discovery; no float approximations."""
    seen={};bound=Q**len(exponents)
    for u in range(bound+1):
        key=tuple(Q*((u*e)%v)//v for e in exponents)
        if key in seen:
            a=seen[key];k=u-a
            deg=[(u*e)//v-(a*e)//v for e in exponents]
            assert all(Q*abs(k*e-v*m)<v for e,m in zip(exponents,deg))
            return k,deg,u,a
        seen[key]=u
    raise AssertionError('pigeonhole failed')
def compression(exponents,v):
    k,degs,u,a=simultaneous(exponents,v)
    t,s=divmod(v,k);shift=t//8
    coeff_exps=[e+shift-m*t for e,m in zip(exponents,degs)]
    assert all(0<=r<=2*shift+k for r in coeff_exps)
    return dict(v=v,exponents=list(exponents),k=k,degrees=degs,t=t,s=s,
                shift=shift,coefficient_exponents=coeff_exps,pair=[a,u])
def rank3(k,x):
    assert k>=8 and k&(k-1)==0 and x%k==0
    n=x**k;R=3*x**4+x**3-x*x+x
    den=k*(x**4-1)
    assert ((n-1)*R)%den==0
    return n,(n-1)*R//den
