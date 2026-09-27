"""Exact integer interfaces for the k=3,u=1 branch. Python 3.10+, stdlib only.
No source scan, old endpoint scan, network, or repository access occurs here.
"""
from __future__ import annotations
import csv, hashlib, io, math
from typing import Iterator


def v2(n:int)->int:
    if n<=0: raise ValueError('v2 needs a positive integer')
    return (n & -n).bit_length()-1

def vp(n:int,p:int)->int:
    if n<=0 or p<2: raise ValueError('positive n and p>=2 required')
    e=0
    while n%p==0: n//=p; e+=1
    return e

def eta(n:int)->int:
    return 3 if n%3==0 and n%9!=0 else 1

def odd(n:int)->int:
    if n<=0: raise ValueError('positive integer required')
    return n>>v2(n)

def is_prime(n:int)->bool:
    # Exact trial division, not a probable-prime designation.
    if n<2:return False
    if n%2==0:return n==2
    if n%3==0:return n==3
    d=5
    while d*d<=n:
        if n%d==0 or n%(d+2)==0:return False
        d+=6
    return True

def prime_power(n:int):
    if n<3 or n%2==0:return None
    d=3
    while d*d<=n and n%d: d+=2
    if d*d>n:return [n,1]
    e=0;m=n
    while m%d==0:m//=d;e+=1
    return [d,e] if m==1 else None

def lucas(n:int,j:int,p:int)->bool:
    if not (0<=j<=n):return False
    while n or j:
        if j%p>n%p:return False
        n//=p;j//=p
    return True

def vbinom(n:int,j:int,p:int)->int:
    if not 0<=j<=n:raise ValueError('invalid binomial input')
    m=n-j;r=0
    while n:
        n//=p;j//=p;m//=p;r+=n-j-m
    return r

def reconstruct(z:int,a:int,eps:int)->dict:
    if z<3 or eps not in (-1,1):raise ValueError('z>=3, eps=+-1 required')
    d=3*z-1;P=d*a+3*eps;Q=3*P+d;n=P*Q+1
    j=P*(P+a+z)+(1-eps)//2
    if n<=2 or P<=d:raise ValueError('outside positive canonical reconstruction')
    G=(z+1)*(2*z-3);x0=a+z;Y=z*a+eps
    R=[3-z*(d+z),3+z*(d-z),3-(d-z)*(2*d-z)]
    S=math.prod(R);L=math.lcm(*map(abs,R));T0=odd(n)//eta(n)
    T2=odd(n-2)//eta(n-2)
    U=P+a+z if eps==1 else 2*P+d-a-z
    b=2*z-1-a
    C=9*(b-3)*(3*b+11) if eps==1 else 9*(b+2)*(3*b-4)
    return dict(z=z,a=a,eps=eps,d=d,P=P,Q=Q,n=n,j=j,x0=x0,Y=Y,
        G=G,alpha=v2(n),eta0=eta(n),eta2=eta(n-2),T0=T0,T2=T2,
        R=R,S=S,L=L,U=U,b=b,C=C,T0_j_remainder=j%T0,
        T0_G_remainder=G%T0,T2_L_remainder=L%T2)

def valid_top(w:dict)->bool:
    P,Q,d,z,a,e,n,j=(w[t] for t in ['P','Q','d','z','a','eps','n','j'])
    return (z>=3 and z%4==3 and a>=d//2+(e==-1) and a<=2*z-1
       and P>=5 and P%2==1 and Q%2==1 and math.gcd(P,Q)==1
       and 2*P<=Q<P*P and P<d*d<2*P and n%4==0
       and 4<=j<=n//2 and 0<=w['x0']<=d
       and j==Q*w['Y']+(e+1)//2)

def f(D:int,a:int,eps:int)->int:
    if D%2!=1:raise ValueError('D must be odd')
    return 6*D*D*a*a+D*(2*D+9*eps)*a+(7+3*eps*D)//2

def hensel_bit(D:int,eps:int,r:int)->int:
    a=0
    for i in range(r):
        if (f(D,a,eps)>>i)&1:a+=1<<i
    assert f(D,a,eps)%(1<<r)==0
    return a

def hensel_newton(D:int,eps:int,r:int)->int:
    # Independent root reconstruction: doubling precision, both signs separately.
    a=f(D,0,eps)&1;t=1
    while t<r:
        t=min(2*t,r);M=1<<t
        derivative=12*D*D*a+D*(2*D+9*eps)
        a=(a-f(D,a,eps)*pow(derivative,-1,M))%M
    assert f(D,a,eps)%(1<<r)==0
    return a

def root_rows(limit:int,algorithm:str='bit')->Iterator[list[int]]:
    for z in range(7,limit+1,8):
        D=(3*z-1)//4;r=(2*D*D).bit_length();M=1<<r
        if algorithm=='bit':
            plus=hensel_bit(D,1,r);minus=(-plus-pow(3,-1,M))%M
        elif algorithm=='newton':
            plus=hensel_newton(D,1,r);minus=hensel_newton(D,-1,r)
        else:raise ValueError('unknown algorithm')
        assert f(D,plus,1)%M==f(D,minus,-1)%M==0
        assert (3*(plus+minus)+1)%M==0
        yield [z,D,r,plus,minus]

def candidate(z:int,D:int,r:int,a:int,eps:int)->dict|None:
    if not (2*D+(eps==-1)<=a<=(8*D-1)//3):return None
    w=reconstruct(z,a,eps);assert valid_top(w)
    assert (1<<w['alpha'])>w['d']**2
    return {k:w[k] for k in ['z','a','eps','d','P','Q','n','j','alpha','eta0',
                'T0','G','T0_j_remainder','T0_G_remainder','T2_L_remainder']} | {
        'D':D,'r':r,'M':1<<r,'gcd_T0_j':math.gcd(w['T0'],w['j']),
        'T0_pass':w['j']%w['T0']==0,'T0_size_pass':w['T0']<=w['G']}

def exhaustion(limit:int,algorithm:str='bit')->tuple[dict,bytes]:
    buf=io.StringIO(newline='');cw=csv.writer(buf,lineterminator='\n')
    cw.writerow(['z','D','r','a_plus_root','a_minus_root'])
    hits=[];count=0
    for z,D,r,ap,am in root_rows(limit,algorithm):
        cw.writerow([z,D,r,ap,am]);count+=1;local=[]
        for a,e in [(ap,1),(am,-1)]:
            c=candidate(z,D,r,a,e)
            if c is not None:local.append(c)
        assert len(local)<=1
        hits+=local
    data=buf.getvalue().encode()
    return {'limit_z':limit,'z_values':count,'candidate_count':len(hits),
        'T0_size_pass':sum(x['T0_size_pass'] for x in hits),
        'T0_pass':sum(x['T0_pass'] for x in hits),'candidates':hits,
        'ledger_sha256':hashlib.sha256(data).hexdigest()},data

def weak_quartic(z:int)->int:
    return 108*z**4-270*z**3+342*z*z-217*z+71

def weak_family(m:int)->dict:
    if m<3:raise ValueError('m>=3')
    r=0
    for i in range(m+1):
        if (weak_quartic(r)>>i)&1:r+=1<<i
    s=r^(1<<m);z=s+(1<<(m+1));w=reconstruct(z,2*z-2,1)
    assert valid_top(w) and w['n']==weak_quartic(z) and w['alpha']==m
    assert (1<<m)<w['d']**2 and w['T0_j_remainder']!=0
    return {k:w[k] for k in ['z','a','eps','P','Q','n','j','alpha','T0','T0_j_remainder']}|{'m':m}

def actual_record(z:int,a:int,e:int,witness:int)->dict:
    w=reconstruct(z,a,e);assert valid_top(w)
    p=prime_power(w['P']);q=prime_power(w['Q'])
    assert p and q and p[0]!=q[0] and is_prime(p[0]) and is_prime(q[0])
    assert is_prime(witness) and witness>=3
    v3=vbinom(w['n'],3,witness);vj=vbinom(w['n'],w['j'],witness)
    assert v3>0 and vj>0 and w['n']%witness==0
    assert (1<<w['alpha'])<=w['d']**2
    assert not(e==1 and a==2*z-1 and z%8==3) # explicitly exclude old EDGE3
    return w|{'P_power':p,'Q_power':q,'p_lucas':lucas(w['n'],w['j'],p[0]),
        'q_lucas':lucas(w['n'],w['j'],q[0]),'witness':witness,
        'v_witness_Cn3':v3,'v_witness_Cnj':vj}
