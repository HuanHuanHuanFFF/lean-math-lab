"""Independent integer/local-convolution reconstruction of all chosen minors.
No floating point, symbolic algebra package, or discovery rank routine is used.
"""
from __future__ import annotations
from fractions import Fraction as F
from functools import lru_cache
from math import comb
from pathlib import Path
import json


def mul(a,b):
    out=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    return out


def mono_series(a,r):return [comb(a,i)*r**(a-i) for i in range(a+1)]


def lagrange120(r):
    p=[1];d=1
    for t in range(3,9):
        if t!=r:p=mul(p,[-t,1]);d*=r-t
    assert 120%d==0
    return [x*(120//d) for x in p]


def det_mod(a,p):
    a=[[v%p for v in row] for row in a];n=len(a);value=1
    for k in range(n):
        piv=next((r for r in range(n-1,k-1,-1) if a[r][k]),None)
        if piv is None:return 0
        if piv!=k:a[k],a[piv]=a[piv],a[k];value=-value
        v=a[k][k];value=value*v%p;iv=pow(v,-1,p)
        for r in range(k+1,n):
            c=a[r][k]*iv%p
            if c:
                for j in range(k+1,n):a[r][j]=(a[r][j]-c*a[k][j])%p
                a[r][k]=0
    return value%p


def det_integer(a):
    """Bareiss fraction-free determinant, exact divisibility checked at each step."""
    a=[row[:] for row in a];n=len(a);previous=1;sign=1
    for k in range(n-1):
        r=next((r for r in range(k,n) if a[r][k]),None)
        if r is None:return 0
        if r!=k:a[k],a[r]=a[r],a[k];sign=-sign
        pivot=a[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                v=a[i][j]*pivot-a[i][k]*a[k][j]
                assert v%previous==0
                a[i][j]=v//previous
            a[i][k]=0
        previous=pivot
    return sign*a[-1][-1]


@lru_cache(None)
def local_coeff(a,b,r,s,i,j):
    """Expand (r+u)^a*(v+shear*u+t)^b by local series convolution."""
    if j>b:return 0
    v=s*(r-s);shear=s if 2*s==r else 0
    n=mono_series(a,r)
    x=[comb(b,j)*comb(b-j,k)*v**(b-j-k)*shear**k for k in range(b-j+1)]
    c=mul(n,x)
    return c[i] if i<len(c) else 0


@lru_cache(None)
def variable_row(q,r,s,i,j):
    # Keep the discovery variable ordering but use local W(r+u) multiplication.
    w=[1]
    for t in range(3,9):w=mul(w,[r-t,1])
    out=[];v=s*(r-s);shear=s if 2*s==r else 0
    for b in range(q-3,-1,-1):
        for a in range(2*q-6-2*b,-1,-1):
            if j>b:out.append(0);continue
            n=mono_series(a,r)
            x=[comb(b,j)*comb(b-j,k)*v**(b-j-k)*shear**k for k in range(b-j+1)]
            vals=mul(mul(w,n),x);out.append(vals[i] if i<len(vals) else 0)
    assert len(out)==(q-2)**2
    return tuple(out)


def check_gate(line):
    x=list(map(int,line.split()));assert len(x)==31
    q,da,db,den=x[:4];assert q in(5,6,7) and (da,db)in((4,5),(4,7),(5,7)) and den==120
    nums=x[4:10];rows=[];at=10;S=[];T=[];load=[0]*9;z=0;H={}
    for r in range(3,9):
        m=x[at:at+r//2+1];at+=r//2+1;assert min(m)>=0
        assert sum(m)==q-int(r in(da,db));z+=sum(k>0 for k in m)
        roots=[];poly=[1]
        for s,k in enumerate(m):
            value=s*(r-s);roots +=[F(value)]*k
            for _ in range(k):poly=mul(poly,[-value,1])
            load[s]+=k;load[r-s]+=k
        if r in(da,db):
            lam=F(nums[r-3],den)
            assert all(lam!=s*(r-s) or m[s]>0 for s in range(len(m)))
            roots.append(lam);p120=mul(poly,[-nums[r-3],120])
        else:
            assert nums[r-3]==0;p120=[120*c for c in poly]
        assert len(roots)==q and len(p120)==q+1
        S.append(sum(roots,F(0)));T.append(sum((roots[i]*roots[j]for i in range(q)for j in range(i)),F(0)))
        for a,c in enumerate(lagrange120(r)):
            for b,v in enumerate(p120):H[a,b]=H.get((a,b),0)+c*v
        rows.append(m)
    assert z>=14 and max(load)<=2*q
    for k in range(3):assert -S[k]+3*S[k+1]-3*S[k+2]+S[k+3]==0
    assert sum(c*t for c,t in zip((-1,5,-10,10,-5,1),T))==0
    assert all(c==0 or a+2*b<=2*q for (a,b),c in H.items())
    assert H.get((0,q))==14400 and all(c==0 for (a,b),c in H.items()if b==q and a!=0)
    return q,rows,{key:v for key,v in H.items()if v}


def check_minor(gate,minor,p,do_integer=False):
    q,mm,H=check_gate(gate);v=list(map(int,minor.split()));number,rank,recorded=v[:3];ids=v[3:];K=(q-2)**2+1
    assert rank==K and len(ids)==K and len(set(ids))==K and 0<recorded<p
    matrix=[]
    for code in ids:
        r=code//100000;s=(code%100000)//10000;i=(code%10000)//100;j=code%100
        assert 3<=r<=8 and 0<=s<=r//2 and i>=1
        m=mm[r-3][s]
        assert (i+2*j<2*m) if 2*s==r else (i+j<m)
        row=list(variable_row(q,r,s,i,j))
        row.append(sum(c*local_coeff(a,b,r,s,i,j)for(a,b),c in H.items()))
        matrix.append(row)
    d=det_mod(matrix,p);assert d
    target=recorded*14400%p
    assert d==target or d==(-target)%p
    result={'index':number,'rank':K,'det_scaled_mod':d}
    if do_integer:
        e=det_integer(matrix);assert e!=0 and e%p==d;result['det_integer']=str(e)
    return result


def verify_dir(dest):
    dest=Path(dest);reports=[]
    for q in(5,6,7):
        for a,b in((4,5),(4,7),(5,7)):
            name=f'q{q}_{a}{b}';gs=(dest/f'{name}.gates').read_text().splitlines();alt=(dest/f'{name}.alt').read_text().splitlines()
            assert len(gs)==len(set(gs)) and sorted(gs)==sorted(alt)
            for p in(32749,32719):
                rs=(dest/f'{name}.{p}.minors').read_text().splitlines();assert len(rs)==len(gs)
                for i,row in enumerate(rs):assert int(row.split()[0])==i and int(row.split()[1])==(q-2)**2+1
            rs=(dest/f'{name}.32719.minors').read_text().splitlines()
            results=[check_minor(g,m,32719,q==5)for g,m in zip(gs,rs)]
            (dest/f'{name}.independent.json').write_text(json.dumps(results,indent=2)+'\n')
            reports.append({'q':q,'deficits':[a,b],'gates':len(gs),'columns':(q-2)**2+1,'integer_minors':len(gs)if q==5 else 0})
    assert sum(x['gates']for x in reports)==2351
    return {'status':'PASS_ALL_2351_LOCAL_MINORS_AND_109_INTEGER_MINORS','cases':reports}

if __name__=='__main__':
    import sys
    print(json.dumps(verify_dir(sys.argv[1]),indent=2))
