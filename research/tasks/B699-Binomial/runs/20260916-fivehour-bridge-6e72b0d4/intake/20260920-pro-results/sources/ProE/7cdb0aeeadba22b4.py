"""Exact necessary endpoint: polynomial construction, bounded CRT roots.
No third-party dependencies. Coefficients are in ascending degree order.
"""
from math import gcd


def trim(p):
    p = list(p)
    while len(p)>1 and not p[-1]: p.pop()
    return p

def add(p,q):
    r=[0]*max(len(p),len(q))
    for i,c in enumerate(p):r[i]+=c
    for i,c in enumerate(q):r[i]+=c
    return trim(r)

def mul(p,q):
    r=[0]*(len(p)+len(q)-1)
    for i,a in enumerate(p):
        for j,b in enumerate(q):r[i+j]+=a*b
    return trim(r)

def scale(p,a):return trim([a*c for c in p])
def power(p,n):
    r=[1]
    for _ in range(n):r=mul(r,p)
    return r

def evaluate(p,z,mod=None):
    v=0
    for c in reversed(p):
        v=v*z+c
        if mod is not None:v%=mod
    return v

def bezout(a,b):
    # Returns e,c with a*e-b*c=1.
    aa,bb=abs(a),abs(b);old_r,r=aa,bb;os,s=1,0;ot,t=0,1
    while r:
        q=old_r//r;old_r,r=r,old_r-q*r;os,s=s,os-q*s;ot,t=t,ot-q*t
    assert old_r==1
    return os*(1 if a>=0 else -1),-ot*(1 if b>=0 else -1)

def divisors(n):
    ans=[]
    for z in range(1,__import__('math').isqrt(n)+1):
        if n%z==0:
            ans.append(z)
            if z*z!=n:ans.append(n//z)
    return sorted(ans)

def squarefree(n):
    return all(n%(p*p) for p in range(2,__import__('math').isqrt(n)+1))

def jobs():
    for d in range(1,10):
        if not squarefree(d):continue
        for t in range(-3,4):
            if t==0 or d*t*t>=10:continue
            aa,bb=1-d*t*t,2*d*t;g=gcd(aa,bb);a,b=aa//g,bb//g
            e,c=bezout(a,b)
            K=d*d*t**4-10*d*t*t+5
            num=d*d*t*K*K
            assert num%(g**4)==0
            C=num//g**4
            assert C!=0
            for den in ([1,2] if d%4==3 else [1]):
                for m in sorted([sgn*x for x in divisors(abs(C)) for sgn in [-1,1]]):
                    X,Y=[e*m,-b],[-c*m,a]
                    f=add(add(power(X,4),scale(mul(power(X,2),power(Y,2)),-10*d)),scale(power(Y,4),5*d*d))
                    f[0]-=den**3*g*m
                    assert len(f)==5 and f[-1]!=0
                    yield dict(d=d,t=t,den=den,m=m,g=g,a=a,b=b,e=e,c=c,C=C,coeff=f)

def ceil_root_ratio(num,den,n):
    assert num>=0 and den>0 and n>=1
    if num==0:return 0
    lo,hi=0,1
    while den*hi**n<num:hi*=2
    while lo+1<hi:
        mid=(lo+hi)//2
        if den*mid**n>=num:hi=mid
        else:lo=mid
    return hi

def root_bound(f):
    degree=len(f)-1;lead=abs(f[-1])
    return 2*max(ceil_root_ratio(abs(f[i]),lead,degree-i) for i in range(degree))

def crt_record(f):
    B=root_bound(f);M=1;rs=[0];stages=[]
    for p in [101,103,107,109,113,127,131]:
        roots=[r for r in range(p) if evaluate(f,r,p)==0]
        inv=pow(M,-1,p)
        rs=sorted({a+M*((r-a)*inv%p) for a in rs for r in roots})
        M*=p;stages.append(dict(modulus=p,roots=roots))
        if M>2*B:break
    assert M>2*B
    candidates=[]
    for r in rs:
        z=r+M*((-B-r+M-1)//M)
        if z<=B:candidates.append(z)
    candidates=sorted(set(candidates))
    evaluations=[evaluate(f,z) for z in candidates]
    return dict(bound=B,stages=stages,modulus=M,residues=rs,candidates=candidates,values=evaluations,integer_roots=[z for z,y in zip(candidates,evaluations) if y==0])

def recover(job,z):
    X=job['e']*job['m']-job['b']*z
    Y=-job['c']*job['m']+job['a']*z
    return dict(d=job['d'],t=job['t'],den=job['den'],m=job['m'],z=z,X=X,Y=Y)

def verify(certificate):
    if set(certificate)!={'schema','jobs','raw_roots'}:raise ValueError('bad top-level keys')
    if certificate['schema']!='B699_MAXIMAL_ORDER5_V1':raise ValueError('bad schema')
    js=list(jobs())
    if len(js)!=len(certificate['jobs']):raise ValueError('job count mismatch')
    raw=[]
    for j,row in zip(js,certificate['jobs']):
        expected=dict(parameters=j,crt=crt_record(j['coeff']))
        if row!=expected:raise ValueError('CRT/job mismatch: '+str((j['d'],j['t'],j['den'],j['m'])))
        raw.extend(recover(j,z) for z in expected['crt']['integer_roots'])
    if raw!=certificate['raw_roots']:raise ValueError('raw roots mismatch')
    return raw
