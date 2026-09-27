"""Only NEW proof-derived m=1 coefficient terminals. No old P-shell or m=2 scan."""
from __future__ import annotations
from math import gcd, lcm
from fractions import Fraction
import hashlib
from collections import Counter
from core import eta, active, original_row, sources, witness, factor, lucas, binomial_valuation, digest

HEADER='d,u,epsilon,x0,P,Q,n,j,T2,LCM,remainder\n'

def z2_record(d,u,eps,P):
    k=(d*u+1)//2
    if (P-eps*k)%d: return None
    x=(P-eps*k)//d+2
    if not (0<=x<=d and 5<=P and P%2 and max(d,k)<P): return None
    if not P<d*max(d,k)<2*P: return None
    Q=k*P+d; n=P*Q+1
    if Q%2==0 or n%4 or gcd(P,Q)!=1:return None
    assert (2*P-eps)%d==0
    Y=(2*P-eps)//d; t=(eps+1)//2; j=Q*Y+t
    if not (1<=Y<=(P-1)//2 and 4<=j<=n//2):return None
    assert j==(u*P+x)*P+1-t
    R=(k-2*(d+2), k+2*(d-2), k-(d-2)*(2*d-2))
    assert R[0]<0<R[1] and R[2]<0
    T2=(n-2)//(2*eta(n-2));L=lcm(*R)
    return (d,u,eps,x,P,Q,n,j,T2,L,L%T2)

def z2_primary():
    ans=[]
    for u in (1,3):
        for d in range(5,(1152-1)//u+1,2):
            k=(d*u+1)//2
            for eps in (-1,1):
                for x in range(d+1):
                    P=d*(x-2)+eps*k
                    row=z2_record(d,u,eps,P)
                    if row is not None: ans.append(row)
    return sorted(ans)

def z2_secondary():
    # A separate interval traversal in the ORIGINAL P, not an x0 loop.
    ans=[]
    for d in range(5,1152,2):
        for u in (1,3):
            if u*d>=1152:continue
            k=(d*u+1)//2;H=max(d,k)
            for eps in (-1,1):
                lo=max(5,d+1,k+1,d*H//2+1)
                hi=min(d*H-1,d*(d-2)+eps*k)
                P0=lo+(eps*k-lo)%d
                for P in range(P0,hi+1,d):
                    if P%2==0:continue
                    Q=k*P+d;n=P*Q+1
                    if Q%2==0 or n%4:continue
                    y_num=2*P-eps
                    assert y_num%d==0
                    Y=y_num//d; t=1 if eps==1 else 0;j=Q*Y+t
                    if not 1<=Y<=(P-1)//2 or not 4<=j<=n//2:continue
                    x=(P-eps*k)//d+2
                    if not 0<=x<=d:continue
                    assert gcd(P,Q)==1 and j==(u*P+x)*P+1-t
                    # Independent source normalization: preserve complete powers of 3.
                    F=n-2
                    et=3 if F%3==0 and F%9!=0 else 1
                    T=F//(2*et)
                    a=k-2*d-4;b=k+2*d-4;c=k-2*d*d+6*d-4
                    L=abs(a*b)//gcd(abs(a),abs(b))
                    L=L*abs(c)//gcd(L,abs(c))
                    ans.append((d,u,eps,x,P,Q,n,j,T,L,L%T))
    return sorted(ans)

def ledger_bytes(rows):
    return (HEADER+''.join(','.join(map(str,r))+'\n' for r in rows)).encode()

def z2_certificate(rows):
    C=Counter(); endpoints=[]
    for r in rows:
        d,u,eps,x,P,Q,n,j,T,L,rem=r
        if T>L:C['strict_size_rejection']+=1
        elif rem:C['exact_nondivisibility_rejection']+=1;endpoints.append(list(r))
        else:C['survivors']+=1
    assert not C['survivors']
    return dict(theorem='M1-LOWZ / z=2',bound='u*d<1152, u in {1,3}, d odd >=5',
       count=len(rows),outcomes=dict(C),capacity_endpoints=endpoints,
       ledger_sha256=hashlib.sha256(ledger_bytes(rows)).hexdigest(),
       max_actual_P=max(r[4] for r in rows),powers_required_in_this_superset=False,status='PASS')

def small_terminals():
    # h=-1: d=2 is handled symbolically by Y>(P-1)/2, not truncated.
    before4=[]; after4=[]
    for d in range(3,7):
        for z in range(1,d//2+1):
            if gcd(d,z)!=1:continue
            for k in range(2,(2*d*z-1)//(d-2)+1):
                if (z*k+1)%d:continue
                for x in range(d+1):
                    P=d*(z-x)+k
                    if not (P>=5 and P%2 and max(d,k)<P):continue
                    if not P<d*max(d,k)<2*P:continue
                    Q=k*P+d;n=P*Q+1
                    if Q%2==0:continue
                    Y=(P*z+1)//d
                    if not 1<=Y<=(P-1)//2:continue
                    rec=dict(d=d,z=z,k=k,x0=x,P=P,Q=Q,n=n)
                    before4.append(rec)
                    if n%4==0:after4.append(rec)
    assert len(before4)==1 and before4[0]['n']==66 and not after4
    return dict(h_negative_small=before4,h_negative_survivors=after4,
        z1_small=[dict(d=3,k=7,reason='Q even for odd P'),
                  dict(d=3,k=10,reason='band and top force 15<P<=16; no odd P'),
                  dict(d=4,k=9,P=21,Q=193,n=4054,reason='n not divisible by 4')],
        old_zero_cases_replayed=False,status='PASS')

def weak_values(r):
    d=3*r-1; P=6*r*r-5*r+4;Q=3*P+d;n=P*Q+1;j=P*(P+d)
    R=(-(r-1)*(4*r+3),2*r*r-r+3,-(r-1)*(10*r+1))
    L=lcm(*R);T0=active(n);T2=active(n-2)
    assert j==Q*(2*r*r-r+1)+1
    assert P<d*d<2*P and n%4==0 and 4<=j<=n//2
    return dict(r=r,d=d,z=r,k=3,P=P,Q=Q,n=n,j=j,R=R,LCM=L,T0=T0,T2=T2,
        capacity_ratio=str(Fraction(L,T2)),T0_remainder=j%T0,T2_LCM_remainder=L%T2)

def weak_certificate():
    out=[]
    for t in (0,1,2,15,16,30,100,1000):
        r=312*t+235;w=weak_values(r)
        a,b,c=map(abs,w['R']);L=w['LCM']
        assert L==a*b*c//(2*(r-1))
        assert 45*L>8*r*w['T2']
        assert w['n']%8==4 and w['n']%3!=0
        assert w['T0']<w['j']<2*w['T0']
        out.append(w)
    # Check BOTH eta0 branches for the broader row consumer r=8s+3.
    Cs=Counter()
    for r in range(3,804,8):
        w=weak_values(r);et=eta(w['n']);Cs[et]+=1
        assert w['n']%8==4
        if et==1:assert w['T0']<w['j']<2*w['T0']
        else:assert 4*w['T0']<w['j']<5*w['T0']
    return dict(family='r=312t+235; t>=0 (weaker than NC3)',samples=out,
       broader_EDGE3_T0_eta_counts=dict(Cs),
       missing_universal_assumptions=['P,Q single-prime complete powers are not asserted for all t',
         'complete prime-base Lucas is asserted only for separately certified actual prime pairs',
         'T2 divisibility/individual source slots are NOT asserted',
         'T0|j is uniformly FALSE'],status='PASS')

def direct_checks(pairs):
    from math import comb
    out=[]
    for P,Q in pairs:
        n=P*Q+1;Cn3=comb(n,3);bad=[];count=0
        for j in range(4,n//2+1):
            g=gcd(Cn3,comb(n,j))
            while g%2==0:g//=2
            if g==1:bad.append(j)
            count+=1
        assert not bad
        out.append(dict(P=P,Q=Q,n=n,legal_pairs=count,failures=bad))
    return dict(rows=out,total_pairs=sum(r['legal_pairs'] for r in out),status='PASS')
