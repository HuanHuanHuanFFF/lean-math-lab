"""Exact arithmetic for B699 i=3. Standard library only; no binomial expansion at large n."""
from math import gcd, isqrt, comb

def cut3(x: int) -> int:
    if x <= 0:
        raise ValueError('positive input required')
    return x // 3 if x % 3 == 0 and x % 9 else x

def parameters(n: int, j: int) -> dict:
    if n < 8 or n % 4 or not 4 <= j < n - j:
        raise ValueError('require 4|n and 4<=j<n/2')
    k = n-j
    N, K = cut3(n-1), cut3((n-2)//2)
    la, mu = (n-1)//N, ((n-2)//2)//K
    g = gcd(n,j)
    return dict(n=n,j=j,k=k,N=N,K=K,la=la,mu=mu,ell=la*mu,V=la**3*mu**2,
                g=g,alpha=n//g,beta=j//g,gamma=k//g,delta=n-2*j)

def exact_projection(n: int, j: int) -> bool:
    p=parameters(n,j)
    return j*(j-1)%p['N']==0 and j*(j-1)*(j-2)%p['K']==0

def model(n: int, j: int) -> dict:
    p=parameters(n,j)
    if not exact_projection(n,j):
        raise ValueError('not an exact-projection input; do not truncate quotients')
    C=[gcd(p['K'],j-r) for r in range(3)]
    A=[gcd(p['N'],j-r) for r in range(2)]
    assert C[0]*C[1]*C[2]==p['K'] and A[0]*A[1]==p['N']
    F=C[0]*C[2]
    def div(a,b):
        assert a%b==0
        return a//b
    H=div(j*p['k'],p['N']*F)
    R=div(H,p['g']**2)
    U=div((j-1)*(p['k']-1),p['N']*C[1]**2)
    h0=div(p['ell']*C[0]*p['k']*(p['k']-1),(n-1)*(n-2))
    h2=div(p['ell']*C[2]*j*(j-1),(n-1)*(n-2))
    p.update(C=C,A=A,F=F,H=H,R=R,U=U,h0=h0,h2=h2,
             z=p['ell']*C[1]-2*H)
    return p

def consumers(n: int, j: int) -> dict:
    p=parameters(n,j)
    A=p['delta']**2-3*n+2
    umin=8 if j%2 else (3 if p['la']==1 else 1)
    return {
      'edge_exact':2*p['V']*j*j*(j-1)**2 <= p['g']**2*(n-1)**3,
      'edge_uniform':54*j*j*(j-1)**2 <= (n-1)**3,
      'centre_exact':A<=0 or p['V']*A*A <= 4*umin*(n-1)**3,
      'centre_uniform':27*p['delta']**4 <= 4*(n-1)**3,
      'middle_nine':gcd(p['K'],j-1)==9,
      'allocation_nine':any(gcd(p['K'],j-r)==9 for r in range(3)),
    }

def v2(x: int) -> int:
    assert x>0
    return (x & -x).bit_length()-1

def vp_binomial(n: int, j: int, p: int) -> int:
    """Legendre floors, accumulating the full exponent."""
    v=0; q=p
    while q<=n:
        v+=n//q-j//q-(n-j)//q
        q*=p
    return v

def vp_binomial_carries(n: int, j: int, p: int) -> int:
    """Independent addition-with-carry implementation."""
    a,b,c,v=j,n-j,0,0
    while a or b or c:
        c=(a%p+b%p+c)//p
        v+=c; a//=p; b//=p
    return v

def is_prime_trial(p: int) -> bool:
    if p<2:return False
    if p%2==0:return p==2
    d=3
    while d*d<=p:
        if p%d==0:return False
        d+=2
    return True

def generalized_crt(congruences: list[tuple[int,int]]) -> tuple[int,int]:
    x,m=0,1
    for r,q in congruences:
        assert gcd(m,q)==1
        x+=m*((r-x)*pow(m,-1,q)%q)
        m*=q
    return x%m,m
