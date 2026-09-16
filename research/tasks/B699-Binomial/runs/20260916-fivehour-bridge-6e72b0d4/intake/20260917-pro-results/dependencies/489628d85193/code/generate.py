#!/usr/bin/env python3
"""Generate the new finite certificates; standard library only.
All unbounded quantifiers are proved in PROOFS.md, not inferred from this run.
"""
from pathlib import Path
from math import gcd, isqrt, comb, prod
import hashlib, json, time
BASE = Path(__file__).resolve().parents[1]

def val(n,p):
    assert n>0 and p>1
    e=0
    while n%p==0:n//=p;e+=1
    return e

def small(n,i):
    assert n>0 and i in (5,6)
    a=1
    for p in ((2,3) if i==5 else (2,3,5)):
        while n%p==0:n//=p;a*=p
    if i==5 and n%5==0 and n%25!=0:a*=5
    return a

def h02(n):return n%72 in (18,56)
def native6(n):return h02(n) and n%5 in (0,2)

def qig(n,i):
    T=prod(small(n-r,i) for r in range(4))
    return T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3

def factor(n):
    out=[];p=2
    while p*p<=n:
        e=0
        while n%p==0:n//=p;e+=1
        if e:out.append([p,e])
        p=3 if p==2 else p+2
    if n>1:out.append([n,1])
    return out

def choose_v(n,j,p):
    ans=0;q=p
    while q<=n:
        ans+=n//q-j//q-(n-j)//q;q*=p
    return ans

def intersects(a,M,lo,hi):
    return a+max(0,(lo-a+M-1)//M)*M<=hi

def row_certificate(n,i):
    fs=[factor(n-r) for r in range(i)]
    parts=[]
    for r,ff in enumerate(fs):
        for p,e in ff:
            if p>i or (p==i and e>=2):parts.append((p**e,r,p,e))
    # i=6 has no prime equal to i; i=5 retains every complete 5^e, e>=2.
    parts.sort(reverse=True)
    M=1;active=[0];steps=[];ops=0
    for Q,r,p,e in parts:
        if not active:break
        assert gcd(Q,M)==1 and choose_v(n,i,p)>0
        newM=M*Q;ns=set();inv=pow(M,-1,Q)
        for a in active:
            for b in range(r+1):
                v=a+M*(((b-a)*inv)%Q);ops+=1
                if intersects(v,newM,i+1,n//2):ns.add(v)
        active=sorted(ns);M=newM
        steps.append({'p':p,'e':e,'r':r,'modulus':M,'residues':active})
    # Any remaining residue is an actual integer after the combined modulus
    # exceeds the legal interval. Otherwise enumerate precisely its interval.
    tails=[]
    for a in active:
        j=a+max(0,(i+1-a+M-1)//M)*M
        while j<=n//2:
            pp=next((p for Q,r,p,e in parts if choose_v(n,j,p)>0),None)
            assert pp is not None,(n,i,j,'unclosed')
            tails.append({'j':j,'p':pp,'source_v':choose_v(n,i,pp),'target_v':choose_v(n,j,pp)})
            j+=M
    return {'n':n,'i':i,'factors':fs,'steps':steps,'tails':tails,'operations':ops}

# Small sparse integer polynomial routines, two variables.
def clean(p):return {k:v for k,v in p.items() if v}
def const(c):return {(0,0):c} if c else {}
def add(*ps):
    d={}
    for p in ps:
        for k,v in p.items():d[k]=d.get(k,0)+v
    return clean(d)
def scale(p,c):return clean({k:v*c for k,v in p.items()})
def mul(a,b):
    d={}
    for (i,j),u in a.items():
        for (k,l),v in b.items():d[i+k,j+l]=d.get((i+k,j+l),0)+u*v
    return clean(d)
def power(a,k):
    b=const(1)
    for _ in range(k):b=mul(b,a)
    return b
def subst(p,a,b):
    ap=[const(1)];bp=[const(1)]
    for _ in range(max((i for i,j in p),default=0)):ap.append(mul(ap[-1],a))
    for _ in range(max((j for i,j in p),default=0)):bp.append(mul(bp[-1],b))
    return add(*(scale(mul(ap[i],bp[j]),v) for (i,j),v in p.items()))
def enc(p):return [[a,b,c] for (a,b),c in sorted(p.items())]
def taylor(p,a,b):return subst(p,{(1,0):1,(0,0):a},{(0,1):1,(0,0):b})

def algebra_certificate():
    X={(1,0):1};Y={(0,1):1};one=const(1)
    N=add(X,Y);W=mul(X,Y)
    A=add(W,scale(N,-1),one)
    B=add(power(N,2),scale(W,-1),scale(N,-4),const(3))
    Q=add(scale(power(N,4),10),scale(mul(power(N,2),W),-36),scale(power(W,2),27),scale(power(N,3),-54),scale(mul(N,W),117),scale(power(N,2),90),scale(W,-81),scale(N,-58),const(12))
    F=mul(mul(A,B),power(Q,2))
    positive=subst(F,add(X,const(7)),add(X,Y,const(7)))
    qpositive=subst(Q,add(X,const(7)),add(X,Y,const(7)))
    assert all(c>0 for c in positive.values()) and positive.get((0,0),0)>0
    assert all(c>0 for c in qpositive.values())
    conditions=[]
    for r,w,bs in [(1,6,range(2)),(3,3,range(4)),(4,4,range(1,4))]:
        for b in bs:
            tt=taylor(F,b,r-b)
            for a in range(w):
                for c in range(w-a):
                    assert tt.get((a,c),0)==0
                    conditions.append([r,b,a,c])
    n=X;u=Y
    d=mul(power(add(n,const(-1)),2),mul(add(n,const(-3)),add(n,const(-4))))
    imax=add(power(n,10),scale(mul(add(power(n,2),scale(u,-4)),power(u,4)),-3125))
    rhs=mul(power(add(power(n,2),scale(u,-5)),2),add(power(n,6),scale(mul(power(n,4),u),10),scale(mul(power(n,2),power(u,2)),75),scale(power(u,3),500)))
    assert imax==rhs
    polys={
      'g_ge_4':add(scale(d,256),scale(mul(power(n,2),power(add(n,const(-2)),2)),-150)),
      'cost_6':add(scale(d,16),scale(mul(power(n,2),power(add(n,const(-2)),2)),-6)),
      'denominator_90':add(scale(d,10),scale(power(n,4),-9)),
      'r3_outer':add(power(n,2),scale(n,-16),const(12)),
    }
    shifted={}
    for name,p in polys.items():
        v=subst(p,add(X,const(90 if name=='denominator_90' else 18)),Y)
        assert all(c>0 for c in v.values());shifted[name]=enc(v)
    checks={
      'power2_base':2**64*2**19-3*(30*63)**6,
      'power3_base':2*3**64*2**19-3*(120*64)**6,
      'power2_ratio':2*63**6-64**6,
      'power3_ratio':3*64**6-65**6,
      'max_rational_gap':81-80,
    }
    assert min(checks.values())>0
    return {'F':enc(F),'F_positive_at_7':enc(positive),'Q':enc(Q),'Q_positive_at_7':enc(qpositive),'zero_conditions':conditions,'weighted_degree':13,'degree':12,'cost6':432,'height6':21600,'max_identity':enc(imax),'positive_shifts':shifted,'integer_checks':checks}

def main():
    start=time.monotonic();alg=algebra_certificate()
    pure=[];ends=[]
    for family in ('2','3'):
        for exponent in range(1,64):
            n=2**exponent if family=='2' else 2*3**exponent
            if not h02(n):continue
            accepted=qig(n,5)
            pure.append({'family':family,'exponent':exponent,'n':n,'qig':accepted})
            if not accepted:ends.append(row_certificate(n,5))
    native=[row_certificate(n,6) for n in range(14,21600) if native6(n)]
    cert={'schema':'B699-center-residual-cubic-v1','algebra':alg,'pure_exponent_cap':64,'pure_rows':pure,'pure_terminals':ends,'native6_cap':21600,'native6_rows':native,'small_rows':[{'n':18,'i':5,'p':17},{'n':56,'i':5,'p':53}]}
    raw=json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2).encode()
    (BASE/'evidence/new-certificate.json').write_bytes(raw)
    stats={'status':'PASS','pure_rows':len(pure),'pure_qig':sum(r['qig'] for r in pure),'pure_terminal_rows':len(ends),'native6_rows':len(native),'max_terminal_n':max(r['n'] for r in ends+native),'crt_operations':sum(r['operations'] for r in ends+native),'crt_steps':sum(len(r['steps']) for r in ends+native),'tail_witnesses':sum(len(r['tails']) for r in ends+native),'taylor_zero_conditions':len(alg['zero_conditions']),'positive_coefficients':len(alg['F_positive_at_7'])+len(alg['Q_positive_at_7']),'certificate_sha256':hashlib.sha256(raw).hexdigest(),'seconds':time.monotonic()-start}
    (BASE/'outputs/generation.json').write_text(json.dumps(stats,indent=2)+'\n');print(json.dumps(stats))
if __name__=='__main__':main()
