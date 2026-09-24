#!/usr/bin/env python3
"""Checker A: integer Sylvester/Bareiss, coefficient convolution, full-order primes."""
from __future__ import annotations
import json
from math import comb, gcd, prod, isqrt
from pathlib import Path

def trim(f):
    f=list(f)
    while len(f)>1 and f[-1]==0:f.pop()
    return f

def ev(f,x):
    y=0
    for a in reversed(f):y=y*x+a
    return y

def mul(f,g):
    h=[0]*(len(f)+len(g)-1)
    for i,a in enumerate(f):
        for j,b in enumerate(g):h[i+j]+=a*b
    return trim(h)

def add(f,g):
    h=[0]*max(len(f),len(g))
    for i,a in enumerate(f):h[i]+=a
    for i,a in enumerate(g):h[i]+=a
    return trim(h)

def val(n,p):
    assert n>0 and p>=2
    e=0
    while n%p==0:n//=p;e+=1
    return e

def factorial_val(n,p):
    e=0
    while n:n//=p;e+=n
    return e

def carry_val(n,j,p):
    q=p;s=0
    while q<=n:s+=n//q-j//q-(n-j)//q;q*=p
    return s

def determinant(A):
    A=[list(r) for r in A];n=len(A)
    if n==0:return 1
    last=1;sign=1
    for k in range(n-1):
        pivot=next((i for i in range(k,n) if A[i][k]),None)
        if pivot is None:return 0
        if pivot!=k:A[k],A[pivot]=A[pivot],A[k];sign=-sign
        p=A[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                num=A[i][j]*p-A[i][k]*A[k][j]
                assert num%last==0
                A[i][j]=num//last
            A[i][k]=0
        last=p
    return sign*A[-1][-1]

def resultant(f,g):
    f=trim(f);g=trim(g);m=len(f)-1;n=len(g)-1
    assert f!=[0] and g!=[0]
    if m==0:return f[0]**n
    if n==0:return g[0]**m
    F=f[::-1];G=g[::-1]
    mat=[[0]*i+F+[0]*(n-1-i) for i in range(n)]
    mat += [[0]*i+G+[0]*(m-1-i) for i in range(m)]
    return determinant(mat)

def prime_check(data):
    cert=data['certificates'];done=set();active=set()
    def visit(n):
        if n in done:return
        assert str(n) in cert and n not in active
        c=cert[str(n)];assert c['n']==n
        if n==2:
            assert c['factors']==[];done.add(2);return
        assert n>2 and n%2==1
        active.add(n);pairs=c['factors'];assert len({q for q,e in pairs})==len(pairs)
        assert prod(q**e for q,e in pairs)==n-1
        for q,e in pairs:assert e>=1 and 2<=q<n;visit(q)
        a=c['base'];assert 1<a<n and pow(a,n-1,n)==1
        for q,e in pairs:assert gcd(pow(a,(n-1)//q,n)-1,n)==1
        active.remove(n);done.add(n)
    for n in cert:visit(int(n))
    for n in data['roots']:assert n in done
    return done

def row_check(r,primes):
    p,e,T=r['p'],r['e'],r['T'];assert p in primes and p%2==1 and e>=1 and T==p**e
    f=r['f'];assert len(f)>=2 and f[-1]>0 and all(type(a)is int and a>=0 for a in f)
    d=len(f)-1;n=r['n'];assert n==ev(f,T) and n>=8 and n%2==0
    if r['kind']=='affine_power':
        c,m,dd=r['c'],r['m'],r['d'];assert c in(1,2) and m>=1 and m%2==1 and dd==d and d>=2
        assert f==[c*comb(d,k)*m**k for k in range(d+1)]
        threshold=32*(9 if c==2 else 64)**d*m**((2 if c==2 else 3)*d-1)
        offset=c;s=1 if c==2 else 2;E=e+val(m*d,p)
        B=(16**d*9**(d*d)*m**(2*d*d)) if c==2 else (8**d*64**(d*d)*m**(3*d*d))
    elif r['kind']=='sparse_eisenstein3':
        S=r['positions'];assert S==sorted(set(S)) and len(S)>=2 and len(S)%2==0 and min(S)>=1 and max(S)==d
        expected=[0]*(d+1);expected[0]=2
        for i in S:expected[i]=3
        assert f==expected
        threshold=4*(3*len(S)+4)**4;offset=2;s=1;E=e*min(S)+(p==3)
        F=f.copy();F[0]-=1;rev=F[::-1]
        assert rev[-1]==1 and all(a%3==0 for a in rev[:-1]) and rev[0]%9!=0
        B=(sum(f)+2)**(4*d)
    else:raise AssertionError('unsupported proof contract')
    assert r['threshold']==threshold and T>=threshold and T>max(f)
    assert r['source_offset']==offset and r['transport_offset']==s
    assert r['full_source_exponent']==E and r['full_source']==p**E and E>=e
    assert val(n-offset,p)==E
    assert val(n*(n-1)*(n-2)//6,p)==E-(p==3)>0
    assert n-s>(3 if s==1 else 6)*B
    if s==2:assert n%4==0
    return B

def check_bundle(data):
    primes=prime_check(data['primes']);rows=data['rows']['rows']
    for r in rows:row_check(r,primes)
    for case in data['resultants']['cases']:
        r=case['row'];B=row_check(r,primes);f=r['f'];T=r['T'];n=r['n'];s=r['transport_offset']
        J=trim(case['J']);assert all(type(a)is int and 0<=a<=f[i] for i,a in enumerate(J)) and len(J)<=len(f)
        j=ev(J,T);assert case['j']==j and 4<=j<=n//2
        F=f.copy();F[0]-=s;N=n-s;assert case['N']==N
        expected_iso=3 if val(N if s==1 else N//2,3)==1 else 1
        M=expected_iso*(1 if s==1 else 2);assert case['multiplier']==M
        ws=case['witnesses'];assert [w['a'] for w in ws]==list(range(s+1))
        for w in ws:
            G=J.copy();G[0]-=w['a'];R=resultant(F,G)
            assert R==w['R'] and R!=0
            assert add(mul(w['U'],F),mul(w['V'],G))==[R]
            assert abs(R)<=(sum(f)+2)**(2*(len(f)-1))
        RR=prod(w['R'] for w in ws);assert RR==case['R_product'] and abs(RR)<=B
        assert 0<abs(M*RR)<N
        assert (M*prod(j-a for a in range(s+1)))%N!=0
    reg=data['regressions']
    for pt in reg['points']:
        n,j=pt['n'],pt['j'];C3=comb(n,3);CJ=comb(n,j)
        assert C3==pt['C3'] and val(gcd(C3,CJ),2)==pt['v2_common']
        rest=C3//2**val(C3,2)
        for key,v in pt['valuations'].items():
            p=int(key);assert all(p%t for t in range(2,isqrt(p)+1))
            assert val(CJ,p)==v==carry_val(n,j,p)
            rest//=p**val(rest,p)
        assert rest==1
        assert pt['common_primes']==[int(p) for p,v in pt['valuations'].items() if v>0] or sorted(pt['common_primes'])==sorted(int(p) for p,v in pt['valuations'].items() if v>0)
    for pt in reg['negative_examples']:
        m,p,n,j=pt['m'],pt['P'],pt['n'],pt['j'];assert n==2*(m*p-1)**2 and 4<=j<=n//2
        assert j*(j-1)%(n-1)==0 and carry_val(n,j,p)==0 and (j//p)%p>4*m
        assert [j//p**2,(j//p)%p,j%p]==pt['digits'] and gcd(n,j)==pt['g']
        assert prod(q**e for q,e in pt['N_factorization'])==n-1
        assert all(p%t for t in range(2,isqrt(p)+1))
        fs=pt['binomial3_factors'];assert prod(q**e for q,e in fs)==n*(n-1)*(n-2)//6
        assert all(all(q%t for t in range(2,isqrt(q)+1)) for q,e in fs)
        assert sorted(pt['common_primes'])==[q for q,e in fs if q>=3 and carry_val(n,j,q)>0]
        odd=n//gcd(n,j)
        while odd%2==0:odd//=2
        assert odd not in(1,3)
    z=reg['composite_base_shell'];n,j,T=z['n'],z['j'],z['T']
    assert (n,j,T)==(92,10,45) and n%T==2 and j%T>2
    assert prod(q**e for q,e in z['full_source_factors'])==T
    for q,e in z['full_source_factors']:
        assert val(n-2,q)==e and val(comb(n,3),q)>0 and val(comb(n,j),q)==0
    assert prod(z['common_primes'])*2==gcd(comb(n,3),comb(n,j))
    return {'checker':'A','prime_nodes':len(primes),'rows':len(rows),'resultant_cases':len(data['resultants']['cases']),
            'direct_points':len(reg['points']),'negative_examples':len(reg['negative_examples']),'status':'PASS'}

def load(folder):
    return {'primes':json.loads((folder/'primes.json').read_text()),'rows':json.loads((folder/'rows.json').read_text()),
            'resultants':json.loads((folder/'resultants.json').read_text()),'regressions':json.loads((folder/'direct_regressions.json').read_text())}
if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('directory',type=Path);args=ap.parse_args();print(json.dumps(check_bundle(load(args.directory)),sort_keys=True))
