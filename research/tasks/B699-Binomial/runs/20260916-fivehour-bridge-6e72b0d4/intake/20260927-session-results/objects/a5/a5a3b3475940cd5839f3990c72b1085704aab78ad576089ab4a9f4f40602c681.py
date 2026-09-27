"""Exact, dependency-free arithmetic for this evidence package (Python 3.10+)."""
from __future__ import annotations
from math import gcd, lcm
from pathlib import Path
import hashlib

# Sparse Z[z,b] polynomials: {(z_degree,b_degree): coefficient}.
def poly(terms):
    p={}
    for c,i,j in terms:p[i,j]=p.get((i,j),0)+int(c)
    return {m:c for m,c in p.items() if c}
def add(*items):
    out={}
    for p in items:
        for m,c in p.items():out[m]=out.get(m,0)+c
    return {m:c for m,c in out.items() if c}
def scale(p,k):return {m:c*k for m,c in p.items() if c*k}
def mul(p,q):
    out={}
    for (i,j),c in p.items():
        for (u,v),d in q.items():out[i+u,j+v]=out.get((i+u,j+v),0)+c*d
    return {m:c for m,c in out.items() if c}
def const(n):return {(0,0):n} if n else {}
def power(p,n):
    out=const(1)
    for _ in range(n):out=mul(out,p)
    return out
def ev(p,z,b=0):return sum(c*z**i*b**j for (i,j),c in p.items())
def subst_z(p,q):
    return add(*(scale(mul(power(q,i),{(0,j):1}),c) for (i,j),c in p.items()))
def subst_b(p,v):
    return add(*({(i,0):c*v**j} for (i,j),c in p.items()))
def formulas():
    Z={(1,0):1};B={(0,1):1};D=add(scale(Z,3),const(-1));A=add(scale(Z,2),const(-1),scale(B,-1))
    P=add(mul(D,A),const(-3));Q=add(scale(P,3),D)
    N=add(mul(P,Q),const(1));J=mul(Q,add(mul(Z,A),const(-1)))
    C=poly([[-13,0,0],[-72,1,0],[-54,2,0],[108,3,0]])
    return Z,B,D,A,P,Q,N,J,C

def values(z:int,b:int=0):
    if z<2 or b<0:raise ValueError('z>=2 and b>=0 required')
    d=3*z-1;a=2*z-1-b;p=d*a-3;q=3*p+d;n=p*q+1;j=q*(z*a-1)
    return {'z':z,'b':b,'d':d,'a':a,'P':p,'Q':q,'n':n,'j':j}
def vp(n:int,p:int):
    if n<=0 or p<2:raise ValueError('positive integer and p>=2 required')
    e=0
    while n%p==0:n//=p;e+=1
    return e
def odd(n):
    n=abs(n)
    if not n:raise ValueError('odd(0) is deliberately undefined')
    return n//(n&-n)
def eta(n):return 3 if vp(n,3)==1 else 1
def constants(b):return [b*(6*b+7),3*b*b+2*b+31,(3*b+2)*(5*b-4)]
def capacity(b):
    if b<1:raise ValueError('b=0 has a separate cubic proof')
    return lcm(*(odd(v) for v in constants(b)))
def lucas_ok(n,j,p):
    if not 0<=j<=n:raise ValueError('invalid original binomial input')
    while n or j:
        if j%p>n%p:return False
        n//=p;j//=p
    return True
def factorial_v(n,p):
    s=0
    while n:n//=p;s+=n
    return s
def binom_v(n,j,p):return factorial_v(n,p)-factorial_v(j,p)-factorial_v(n-j,p)
def hash_file(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def tree_hashes(root):return {str(p.relative_to(root)):hash_file(p) for p in sorted(Path(root).rglob('*')) if p.is_file()}
def ensure_external_output(output,root):
    output=Path(output).resolve();root=Path(root).resolve()
    if output==root or root in output.parents:raise ValueError('Output must be outside the evidence/extraction tree')
    output.parent.mkdir(parents=True,exist_ok=True)
    return output

def check_prime(p,catalog,verified=None):
    """Full n-1/order proof; no probable-prime test is trusted."""
    if verified is None:verified=set()
    if p in verified:return
    record=catalog[str(p)]
    assert record['p']==p
    if p==2:
        assert record.get('base_case') is True;verified.add(p);return
    assert p>2 and p%2==1
    fs=record['factors_p_minus_1'];product=1;seen=set()
    for q,e in fs:
        assert 2<=q<p and q not in seen and e>=1;seen.add(q)
        check_prime(q,catalog,verified);product*=q**e
    assert product==p-1
    g=record['g'];assert 1<g<p and pow(g,p-1,p)==1
    for q,e in fs:assert gcd(pow(g,(p-1)//q,p)-1,p)==1
    verified.add(p)
def check_factorization(n,fs,catalog,verified):
    product=1;seen=set()
    for p,e in fs:
        assert p not in seen and e>=1;seen.add(p)
        check_prime(p,catalog,verified);product*=p**e
    assert product==n
