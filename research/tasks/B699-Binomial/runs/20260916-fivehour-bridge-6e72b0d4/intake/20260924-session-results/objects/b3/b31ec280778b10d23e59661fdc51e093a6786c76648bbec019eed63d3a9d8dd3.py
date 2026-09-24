from __future__ import annotations
from fractions import Fraction as F
from math import gcd
from functools import reduce

OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
ROWS=tuple(range(3,9))

def elementary123(xs):
    e1=e2=e3=F(0)
    for xx in xs:
        x=F(xx);e3+=e2*x;e2+=e1*x;e1+=x
    return e1,e2,e3

def fmt(q):
    q=F(q)
    return q.numerator if q.denominator==1 else f'{q.numerator}/{q.denominator}'

def rref(A,b,nvar):
    m=len(A);M=[list(row)+[rhs] for row,rhs in zip(A,b)]
    C=[[F(int(i==j)) for j in range(m)] for i in range(m)]
    piv=[];rr=0
    for cc in range(nvar):
        p=next((i for i in range(rr,m) if M[i][cc]),None)
        if p is None:continue
        M[rr],M[p]=M[p],M[rr];C[rr],C[p]=C[p],C[rr]
        z=M[rr][cc];M[rr]=[x/z for x in M[rr]];C[rr]=[x/z for x in C[rr]]
        for i in range(m):
            if i!=rr and M[i][cc]:
                z=M[i][cc];M[i]=[a-z*c for a,c in zip(M[i],M[rr])];C[i]=[a-z*c for a,c in zip(C[i],C[rr])]
        piv.append(cc);rr+=1
    for i,row in enumerate(M):
        if all(not row[c] for c in range(nvar)) and row[-1]:return False,None,len(piv),(C[i],row[-1])
    x=[F(0)]*nvar
    for i,c in enumerate(piv):x[c]=M[i][-1]
    return True,x,len(piv),None

def integerize(weights,rhs):
    from math import lcm
    L=1
    for q in list(weights)+[rhs]:L=lcm(L,F(q).denominator)
    nums=[int(F(q)*L) for q in weights];rr=int(F(rhs)*L)
    g=reduce(gcd,[abs(x) for x in nums+[rr] if x],0) or 1
    nums=[x//g for x in nums];rr//=g
    # canonical first nonzero positive is not required; preserve equation orientation.
    return nums,rr

def row_model(st,special_count,delta,kappa):
    sk=[0,0,0,special_count,0,0]
    rows=[]
    for i,r in enumerate(ROWS):
        v=st['v'][i];fixed=[]
        off=[max(a-v,0) for a in OFF[i]]
        for s,m in enumerate(off):fixed += [s*(r-s)]*m
        B=max(DIAG[i]-v,0);kt=sk[i]+kappa[i];diag=None
        if DIAG[i]:
            assert (B+kt)%2==0
            diag=(B+kt)//2;s=r//2;fixed += [s*(r-s)]*diag
        if r==5:fixed += [6]*special_count
        free=delta[i]
        assert len(fixed)+free==st['h'],(r,len(fixed),free,st['h'])
        e1,e2,e3=elementary123(fixed)
        rows.append(dict(r=r,fixed_count=len(fixed),free_count=free,fixed_e1=e1,fixed_e2=e2,fixed_e3=e3,
                         off_mult=off,diag_B=B,diag_mult=diag,total_kappa=kt))
    return rows

def first_moment(rows):
    A=[];b=[];labels=[]
    for z in rows:
        if z['free_count']==0:
            r=F(z['r']);A.append([F(1),r,r*r]);b.append(z['fixed_e1']);labels.append(f"S({z['r']})")
    ok,x,rank,bad=rref(A,b,3)
    if not ok:
        w,rhs=bad;iw,ir=integerize(w,rhs)
        return dict(compatible=False,equations=len(A),rank=rank,labels=labels,
                    contradiction_weights=[fmt(q) for q in w],contradiction_rhs=fmt(rhs),
                    integer_weights=iw,integer_rhs=ir)
    return dict(compatible=True,equations=len(A),rank=rank,S_coefficients=[fmt(q) for q in x])

def first_second_moment(rows):
    # Variables: S_0..S_2 and T_0..T_4, where S=e1 and T=e2.
    A=[];b=[];labels=[]
    for z in rows:
        r=F(z['r']);a=z['fixed_e1'];bb=z['fixed_e2'];f=z['free_count']
        sv=[F(1),r,r*r];tv=[F(1),r,r*r,r**3,r**4]
        if f==0:
            A.append(sv+[F(0)]*5);b.append(a);labels.append(f"S({z['r']})")
            A.append([F(0)]*3+tv);b.append(bb);labels.append(f"E2({z['r']})")
        elif f==1:
            A.append([-a*x for x in sv]+tv);b.append(bb-a*a);labels.append(f"E2-onefree({z['r']})")
    ok,x,rank,bad=rref(A,b,8)
    if not ok:
        w,rhs=bad;iw,ir=integerize(w,rhs)
        return dict(compatible=False,equations=len(A),rank=rank,labels=labels,
                    contradiction_weights=[fmt(q) for q in w],contradiction_rhs=fmt(rhs),
                    integer_weights=iw,integer_rhs=ir)
    S=x[:3];T=x[3:];cert=[]
    for z in rows:
        r=F(z['r']);s=sum(c*r**j for j,c in enumerate(S));t=sum(c*r**j for j,c in enumerate(T))
        a=z['fixed_e1'];bb=z['fixed_e2'];f=z['free_count'];fs=s-a
        if f==0:assert fs==0 and t==bb;poly=[F(1)]
        elif f==1:assert t==bb+a*fs;poly=[-fs,F(1)]
        else:
            fp=t-bb-a*fs;poly=[F(0)]*(f+1);poly[f-2]=fp;poly[f-1]=-fs;poly[f]=F(1)
        cert.append(dict(r=z['r'],free_count=f,S=fmt(s),E2=fmt(t),free_sum=fmt(fs),
                         free_polynomial_low_to_high=[fmt(q) for q in poly]))
    return dict(compatible=True,equations=len(A),rank=rank,S_coefficients=[fmt(q) for q in S],
                E2_coefficients=[fmt(q) for q in T],row_certificate=cert)
