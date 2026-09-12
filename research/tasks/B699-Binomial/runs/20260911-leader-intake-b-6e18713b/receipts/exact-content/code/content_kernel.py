"""Exact binomial-content kernels. Prime arguments are assumed prime.
No floating point or external mathematical libraries are used.
"""
from math import comb,gcd,isqrt
from functools import reduce
U=(0,0,0);V=(1,0,0);W=(0,1,0);Z=(0,0,1)
STATES={0:(U,V),1:(U,),2:(W,Z)}

def prime_list(n):
    if n<2:return []
    a=bytearray(b'\x01')*(n+1);a[:2]=b'\x00\x00'
    for p in range(2,isqrt(n)+1):
        if a[p]:a[p*p::p]=b'\x00'*((n-p*p)//p+1)
    return [p for p in range(2,n+1) if a[p]]

def vp(n,p):
    if n<=0 or p<2:raise ValueError('invalid valuation arguments')
    z=0
    while n%p==0:n//=p;z+=1
    return z

def factorial_vp(n,p):
    if n<0 or p<2:raise ValueError('invalid factorial valuation arguments')
    z=0
    while n:n//=p;z+=n
    return z

def choose_vp(n,k,p):
    if not 0<=k<=n:raise ValueError('invalid binomial arguments')
    return factorial_vp(n,p)-factorial_vp(k,p)-factorial_vp(n-k,p)

def pade_exponent(A,B,C,p):
    if min(A,B,C)<0 or p<2:raise ValueError('invalid content parameters')
    q=p;z=0
    while q<=A+B+C+1:
        z+=(A%q+B%q+C%q>=2*q-1);q*=p
    return int(z)

def predecessor(s,t,a,b,c,p,target):
    if s==0:
        if t==0:return V if target==V else U
        if t==1:return V if a+b+c==2*p-1 else U
        return U
    if s==1:return U
    if t==0:return W
    if t==1:return W if b<=p-2 else Z
    return target

def transition(s,a,b,c,p,target):
    if p<2 or s not in STATES or not all(0<=x<p for x in (a,b,c)):
        raise ValueError('invalid digit input')
    t=(a+b+c+s)//p
    if target not in STATES[t]:raise ValueError('invalid target state')
    source=predecessor(s,t,a,b,c,p,target)
    d,u,v=source;dn,un,vn=target;beta=b+u;gamma=c+v
    lx,hx=max(0,p*un-beta),min(p-1,p*(un+1)-beta-1)
    ly,hy=max(0,p*vn-gamma),min(p-1,p*(vn+1)-gamma-1)
    total=a-d+p*dn
    if not (lx<=hx and ly<=hy and lx+ly<=total<=hx+hy):
        raise AssertionError(('transition feasibility',s,a,b,c,p,target,source))
    x=max(lx,total-hy);y=total-x
    assert 0<=x<p and 0<=y<p and a-x-d+p*dn==y
    assert int(x+d>a)==dn and (b+x+u)//p==un and (c+y+v)//p==vn
    assert un+vn==int(t==2)
    return source,x,t

def attaining_index(A,B,C,p):
    if min(A,B,C)<0 or p<2:raise ValueError('invalid content input')
    states={U:0};s=1;place=1
    while place<=A+B+C+1:
        a,b,c=(A//place)%p,(B//place)%p,(C//place)%p
        t=(a+b+c+s)//p;nxt={}
        for target in STATES[t]:
            source,x,t2=transition(s,a,b,c,p,target)
            assert source in states and t==t2
            nxt[target]=states[source]+place*x
        states,s,place=nxt,t,place*p
    assert s==0 and U in states
    r=states[U];assert 0<=r<=A
    return r

def pade_coefficients(A,B,C):
    return [comb(A+C-r,C)*comb(B+r,r) for r in range(A+1)]

def pade_content_direct(A,B,C):return reduce(gcd,pade_coefficients(A,B,C))

def vandermonde_exponent(i,j,k,p):
    if not 0<=i<=min(j,k) or p<2:raise ValueError('invalid Vandermonde input')
    q=p;z=0
    while q<=j+k:z+=(i%q>j%q+k%q);q*=p
    return int(z)

def quotient_exponent(i,j,k,p):
    if not 0<=i<=min(j,k) or p<2:raise ValueError('invalid content quotient input')
    q=p;z=0
    while q<=j+k:
        t=j%q+k%q;z+=(q<=t<q+i%q);q*=p
    return int(z)

def vandermonde_witness(i,j,k,p):
    if not 0<=i<=min(j,k) or p<2:raise ValueError('invalid Vandermonde input')
    M=p
    while M<=max(i,j,k):M*=p
    return attaining_index(i,M-j-1,M-k-1,p)

def cubic_gate(n,j):
    if not (n%4==0 and 4<=j<=n//2):return False
    a=vp(n,2);s=a-min(a,vp(j,2))
    return 27*2**(4*s)<16*(n-1)**3
