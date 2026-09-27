"""Exact, offline arithmetic for the NEW k=5 terminal. No previous ledger is read."""
from __future__ import annotations
import csv, hashlib, io, math
from collections import Counter
from typing import Iterator

HEADER=['u','epsilon','z','a','d','P','Q','n','j','eta0','eta2','T0','T2','C0','C1','C2','Lambda','remainder','reason']
BOUNDS={(1,-1):384,(1,1):640,(2,-1):12,(2,1):313}

def odd(n:int)->int:
    if n<=0: raise ValueError('positive integer required')
    return n//(n&-n)

def eta(n:int)->int:
    return 3 if n%3==0 and n%9!=0 else 1

def valuation(n:int,p:int)->int:
    if n<=0 or p<2: raise ValueError('invalid valuation input')
    v=0
    while n%p==0: n//=p; v+=1
    return v

def lucas(n:int,j:int,p:int)->bool:
    if not 0<=j<=n: return False
    while n or j:
        if j%p>n%p: return False
        n//=p; j//=p
    return True

def binomial_v(n:int,j:int,p:int)->int:
    def facv(x:int)->int:
        total=0
        while x: x//=p; total+=x
        return total
    return facv(n)-facv(j)-facv(n-j)

def is_prime_trial(p:int)->bool:
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def reconstruct(u:int,e:int,z:int,a:int)->dict:
    if u not in (1,2) or e not in (-1,1) or (5*z-1)%u:
        raise ValueError('not the k=5 interface')
    d=(5*z-1)//u;P=d*a+e*5;Q=5*P+d;n=P*Q+1
    X=u*P+a+z;Y=z*a+e*u;j=P*X+(1-e)//2
    C=(5*a-(5+u)*z+1,5*a+(5-u)*z,(5-u)*(10-u)*z-5*u*a-(10-u)) if e==-1 else (5*a+(5+u)*z,5*a-(5-u)*z+1,(5-u)*(10-u)*z+5*u*a-2*(5-u))
    if not (P>=5 and P<Q<P*P and P%2==Q%2==1 and n%4==0 and P<d*d<2*P and 0<=a+z<=d and 4<=j<=n//2):
        raise ValueError('not in the original integer domain')
    assert j==Q*Y+(1+e)//2 and 5*z-d*u==1
    T0=odd(n)//eta(n);T2=(n-2)//(2*eta(n-2))
    L=odd(math.lcm(*map(abs,C))) if all(C) else None
    return dict(u=u,epsilon=e,z=z,a=a,d=d,P=P,Q=Q,n=n,j=j,X=X,Y=Y,
                eta0=eta(n),eta2=eta(n-2),T0=T0,T2=T2,C=C,Lambda=L)

def rows_A(u:int,e:int)->Iterator[list]:
    """Top-block enumeration; exact derived interval, no prime-power filter."""
    step=4 if u==1 else 8
    first=3 if u==1 else 9
    for z in range(first,BOUNDS[(u,e)]+1,step):
        d=(5*z-1)//u
        for a in range(d//2+(e==-1),d-z+1):
            v=reconstruct(u,e,z,a)
            C=v['C']; L=v['Lambda']
            assert L is not None  # all zero branches are outside these exact terminals
            T2=v['T2'];r=L%T2
            reason='size' if L<T2 else ('remainder' if r else 'SURVIVOR')
            assert r!=0
            yield [u,e,z,a,d,v['P'],v['Q'],v['n'],v['j'],v['eta0'],v['eta2'],v['T0'],T2,*C,L,r,reason]

def rows_B(u:int,e:int)->Iterator[list]:
    """Independent d/P enumeration; reconstruct j from QY, C from integer Bezout.
    Does not call reconstruct, eta, odd, or rows_A.
    """
    firstd=14 if u==1 else 22
    dmax=(5*BOUNDS[(u,e)]-1)//u
    for d in range(firstd,dmax+1,20):
        assert (u*d+1)%5==0
        z=(u*d+1)//5
        lo=d*d//2+1;hi=min(d*d-1,d*(d-z)+e*5)
        firstP=lo+(e*5-lo)%d
        for P in range(firstP,hi+1,d):
            a=(P-e*5)//d;Q=5*P+d;n=P*Q+1
            X=u*P+a+z;Y=z*a+e*u;j=Q*Y+(1+e)//2;F=n-2
            assert 4<=j<=n//2 and n%4==0 and P%2==Q%2==1
            assert j==P*X+(1-e)//2 and 0<=a+z<=d and Q<P*P
            if e==-1:
                V=[Y,X,Q-X]
                AA=[u*z,u*z,-(5-u)*((5-u)*z-1)]
                BB=[25-u*d*Q,5-u*d*P,u*a*(5-u)*d*d-25*((5-u)*z-1)]
            else:
                V=[X,Y,2*Q-X]
                AA=[-u*z,-u*z,-(10-u)*((10-u)*z-2)]
                BB=[u*d*P+5,u*d*Q+25,u*a*(10-u)*d*d+25*((10-u)*z-2)]
            C=[AA[s]*F+BB[s]*V[s] for s in range(3)]
            assert all(C)
            L=1
            for x in C:L=L*abs(x)//math.gcd(L,abs(x))
            while L%2==0:L//=2
            o=n
            while o%2==0:o//=2
            n3=n;v3n=0
            while n3%3==0:n3//=3;v3n+=1
            e0=3 if v3n==1 else 1
            f3=F;v3f=0
            while f3%3==0:f3//=3;v3f+=1
            e2=3 if v3f==1 else 1
            T0=o//e0;T2=F//2//e2;r=L%T2
            reason='size' if L<T2 else ('remainder' if r else 'SURVIVOR')
            assert r!=0
            yield [u,e,z,a,d,P,Q,n,j,e0,e2,T0,T2,*C,L,r,reason]

def csv_bytes(rows:Iterator[list])->tuple[bytes,dict]:
    buf=io.StringIO(newline='');wr=csv.writer(buf,lineterminator='\n');wr.writerow(HEADER)
    counts=Counter();size_pass=[]
    for row in rows:
        wr.writerow(row);counts['rows']+=1;counts[row[-1]]+=1
        if row[-1]!='size':size_pass.append(dict(zip(HEADER,row)))
    return buf.getvalue().encode('utf-8'),{'counts':dict(counts),'size_pass':size_pass}

# Small integer-polynomial ring; sparse exponents, no SymPy at replay time.
def pc(v:int,dim:int):return {(0,)*dim:v} if v else {}
def pv(i:int,dim:int):return {tuple(int(j==i) for j in range(dim)):1}
def padd(*ps):
    r={}
    for p in ps:
        for m,c in p.items():r[m]=r.get(m,0)+c
    return {m:c for m,c in r.items() if c}
def pneg(p):return {m:-c for m,c in p.items()}
def psub(p,q):return padd(p,pneg(q))
def pmul(p,q):
    r={}
    for m,c in p.items():
        for n,d in q.items():
            v=tuple(a+b for a,b in zip(m,n));r[v]=r.get(v,0)+c*d
    return {m:c for m,c in r.items() if c}
def pscale(p,c):return {m:v*c for m,v in p.items() if v*c}
def ppow(p,k,dim=None):
    if dim is None:dim=len(next(iter(p)))
    r=pc(1,dim)
    for _ in range(k):r=pmul(r,p)
    return r
def pdecode(records):return {tuple(m):int(c) for m,c in records if int(c)}

def symbolic_identities(u:int,e:int):
    d,z,a=[pv(i,3) for i in range(3)];one=pc(1,3)
    P=padd(pmul(d,a),pc(e*5,3));Q=padd(pscale(P,5),d)
    X=padd(pscale(P,u),a,z);Y=padd(pmul(z,a),pc(e*u,3))
    n=padd(pmul(P,Q),one);F=psub(n,pc(2,3));H=padd(pscale(d,u),pscale(z,-5),one)
    if e==-1:
        Vs=[Y,X,psub(Q,X)]
        As=[pscale(z,u),pscale(z,u),pscale(psub(pscale(z,5-u),one),-(5-u))]
        Bs=[psub(pc(25,3),pscale(pmul(d,Q),u)),psub(pc(5,3),pscale(pmul(d,P),u)),
            psub(pscale(pmul(a,ppow(d,2)),u*(5-u)),pscale(psub(pscale(z,5-u),one),25))]
        Cs=[padd(pscale(a,5),pscale(z,-(5+u)),one),padd(pscale(a,5),pscale(z,5-u)),
            padd(pscale(z,(5-u)*(10-u)),pscale(a,-5*u),pc(-(10-u),3))]
        T0A=pscale(z,u);T0B=Bs[0];T0V=Y;T0C=padd(pscale(a,5),pscale(z,-(5-u)),one)
    else:
        Vs=[X,Y,psub(pscale(Q,2),X)]
        As=[pscale(z,-u),pscale(z,-u),pscale(psub(pscale(z,10-u),pc(2,3)),-(10-u))]
        Bs=[padd(pscale(pmul(d,P),u),pc(5,3)),padd(pscale(pmul(d,Q),u),pc(25,3)),
            padd(pscale(pmul(a,ppow(d,2)),u*(10-u)),pscale(psub(pscale(z,10-u),pc(2,3)),25))]
        Cs=[padd(pscale(a,5),pscale(z,5+u)),padd(pscale(a,5),pscale(z,-(5-u)),one),
            padd(pscale(z,(5-u)*(10-u)),pscale(a,5*u),pc(-2*(5-u),3))]
        T0A=pscale(z,-u);T0B=Bs[0];T0V=X;T0C=padd(pscale(a,5),pscale(z,5-u))
    result=[]
    for s in range(3):result.append((f'U{u}_E{e}_T2_{s}',psub(padd(pmul(As[s],F),pmul(Bs[s],Vs[s])),Cs[s]),H))
    result.append((f'U{u}_E{e}_T0',psub(padd(pmul(T0A,n),pmul(T0B,T0V)),T0C),H))
    return result

def canonical_json(data)->bytes:
    import json
    return (json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n').encode()
