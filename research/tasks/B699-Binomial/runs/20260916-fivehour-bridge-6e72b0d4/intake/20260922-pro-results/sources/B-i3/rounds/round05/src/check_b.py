#!/usr/bin/env python3
"""Checker B: rational Euclidean resultants, bounded-degree interpolation, partial-order primes.
Does not import checker A. Shared mathematical theorem is still author-level, not peer review.
"""
from __future__ import annotations
from fractions import Fraction as Q
from math import comb, gcd, isqrt, prod
from pathlib import Path
import json

def clean(a):
    a=list(a)
    while len(a)>1 and a[-1]==0:a.pop()
    return a

def evalp(f,z):return sum(a*z**i for i,a in enumerate(f))

def rem(f,g):
    f=[Q(a) for a in clean(f)];g=[Q(a) for a in clean(g)]
    while len(f)>=len(g) and f!=[0]:
        h=f[-1]/g[-1];k=len(f)-len(g)
        for i,a in enumerate(g):f[i+k]-=h*a
        f=clean(f)
    return f

def res(f,g):
    f=clean(f);g=clean(g);m=len(f)-1;n=len(g)-1
    if f==[0] or g==[0]:return Q(0)
    if n==0:return Q(g[0])**m
    if m==0:return Q(f[0])**n
    r=rem(f,g)
    if r==[0]:return Q(0)
    return (-1)**(m*n)*Q(g[-1])**(m-(len(r)-1))*res(g,r)

def vp(n,p):
    assert n>0
    k=0
    while n%p**(k+1)==0:k+=1
    return k

def lval(n,j,p):
    def vf(x):
        total=0;power=p
        while power<=x:total+=x//power;power*=p
        return total
    return vf(n)-vf(j)-vf(n-j)

def verify_primes(obj):
    cs=obj['certificates'];ok=set();stack=set()
    def one(n):
        if n in ok:return
        assert str(n) in cs and n not in stack
        c=cs[str(n)];assert c['n']==n
        if n<10000:
            assert n>=2 and all(n%t for t in range(2,isqrt(n)+1));ok.add(n);return
        assert n%2 and n>2
        stack.add(n);fac=c['factors'];assert prod(q**e for q,e in fac)==n-1
        F=1;chosen=[]
        for q,e in sorted(fac,key=lambda z:z[0]**z[1],reverse=True):
            assert e>=1 and q<n;one(q);F*=q**e;chosen.append(q)
            if F*F>n:break
        assert F*F>n and (n-1)%F==0
        a=c['base'];assert 1<a<n and pow(a,n-1,n)==1
        assert all(gcd(pow(a,(n-1)//q,n)-1,n)==1 for q in chosen)
        stack.remove(n);ok.add(n)
    for n in cs:one(int(n))
    for n in obj['roots']:assert n in ok
    return ok

def verify_row(z,primes):
    p,e=z['p'],z['e'];assert p in primes and p>2 and e>0
    T=p**e;assert z['T']==T
    f=z['f'];D=len(f)-1;assert D>0 and f[-1]>0 and all(type(v)is int and v>=0 for v in f)
    if z['kind']=='affine_power':
        c,m,d=z['c'],z['m'],z['d'];assert c in(1,2) and m>=1 and m%2 and d==D and d>=2
        # Exact interpolation of F((Z-1)/m); coefficientwise construction is not imported.
        assert all(evalp(f,Q(t-1,m))==c*t**d for t in range(d+1))
        threshold=32*(9**d*m**(2*d-1) if c==2 else 64**d*m**(3*d-1))
        r=c;s=3-c;E=e+vp(m*d,p)
        bound=(16**d*9**(d*d)*m**(2*d*d)) if c==2 else (8**d*64**(d*d)*m**(3*d*d))
    elif z['kind']=='sparse_eisenstein3':
        pos=z['positions'];assert len(pos)>=2 and len(pos)%2==0 and pos==sorted(set(pos)) and min(pos)>=1 and max(pos)==D
        assert f[0]==2 and all(f[t]==(3 if t in pos else 0) for t in range(1,D+1))
        threshold=4*(3*len(pos)+4)**4;r=2;s=1;E=e*min(pos)+(p==3)
        g=list(reversed([f[0]-1]+f[1:]));assert g[-1]==1 and g[0]%3==0 and g[0]%9!=0 and all(v%3==0 for v in g[:-1])
        bound=(sum(f)+2)**(4*D)
    else:raise AssertionError('unknown row proof')
    assert T>=threshold==z['threshold'] and max(f)<T
    assert z['source_offset']==r and z['transport_offset']==s
    n=evalp(f,T);assert n==z['n'] and n>=8 and n%2==0
    assert z['full_source_exponent']==E and E>=e and z['full_source']==p**E
    assert (n-r)%p**E==0 and (n-r)//p**E%p!=0
    assert (n*(n-1)*(n-2)//6)%p==0
    assert n-s>(3 if s==1 else 6)*bound
    if s==2:assert n%4==0
    return bound

def check_bundle(all_data):
    ps=verify_primes(all_data['primes'])
    for row in all_data['rows']['rows']:verify_row(row,ps)
    count=0
    for c in all_data['resultants']['cases']:
        row=c['row'];bound=verify_row(row,ps);T=row['T'];n=row['n'];s=row['transport_offset'];f=row['f']
        J=c['J'];assert len(J)<=len(f) and all(type(v)is int and 0<=v<=f[i] for i,v in enumerate(J))
        j=evalp(J,T);assert j==c['j'] and 4<=j<=n//2
        F=[f[0]-s]+f[1:];N=n-s;assert N==c['N']
        multiplier=(3 if vp(N if s==1 else N//2,3)==1 else 1)*(1 if s==1 else 2)
        assert c['multiplier']==multiplier
        assert [w['a'] for w in c['witnesses']]==list(range(s+1))
        rp=1
        for w in c['witnesses']:
            G=[J[0]-w['a']]+J[1:];R=res(F,G)
            assert R.denominator==1 and R==w['R'] and R!=0
            U,V=w['U'],w['V'];deg=max(len(U)+len(F)-2,len(V)+len(G)-2,0)
            assert all(evalp(U,t)*evalp(F,t)+evalp(V,t)*evalp(G,t)==R for t in range(deg+1))
            assert abs(R)<=(sum(f)+2)**(2*(len(f)-1));rp*=R
        assert rp==c['R_product'] and abs(rp)<=bound and 0<abs(multiplier*rp)<N
        assert multiplier*prod(j-i for i in range(s+1))%N
        count+=1
    reg=all_data['regressions']
    for a in reg['points']:
        n,j=a['n'],a['j'];assert a['C3']==n*(n-1)*(n-2)//6
        # Valuation of the gcd at 2, independently through factorial sums.
        assert a['v2_common']==min(lval(n,3,2),lval(n,j,2))
        remaining=a['C3']//2**lval(n,3,2)
        for p,v in a['valuations'].items():
            p=int(p);assert all(p%t for t in range(2,isqrt(p)+1))
            assert lval(n,j,p)==v and lval(n,3,p)>0
            remaining//=p**lval(n,3,p)
        assert remaining==1
        assert sorted(a['common_primes'])==sorted(int(p) for p,v in a['valuations'].items() if v>0)
    for z in reg['negative_examples']:
        n,j,m,p=z['n'],z['j'],z['m'],z['P'];assert n==2*(m*p-1)**2 and 4<=j<=n//2
        assert j*(j-1)%(n-1)==0 and lval(n,j,p)==0 and j//p%p>4*m
        assert z['digits']==[j//p**2,j//p%p,j%p] and z['g']==gcd(n,j)
        assert prod(q**e for q,e in z['N_factorization'])==n-1
        assert all(p%t for t in range(2,isqrt(p)+1))
        factors=z['binomial3_factors'];assert prod(q**e for q,e in factors)==n*(n-1)*(n-2)//6
        assert all(all(q%t for t in range(2,isqrt(q)+1)) for q,e in factors)
        assert sorted(z['common_primes'])==[q for q,e in factors if q>=3 and lval(n,j,q)>0]
        a=n//gcd(n,j);a//=2**vp(a,2);assert a not in(1,3)
    z=reg['composite_base_shell'];n,j,T=z['n'],z['j'],z['T']
    assert (n,j,T)==(92,10,45) and j%T>n%T==2
    assert prod(q**e for q,e in z['full_source_factors'])==T
    for q,e in z['full_source_factors']:
        assert (n-2)%q**e==0 and (n-2)//q**e%q and lval(n,3,q)>0 and lval(n,j,q)==0
    for q in z['common_primes']:assert lval(n,3,q)>0 and lval(n,j,q)>0
    assert sorted(z['common_primes'])==[7,13,23]
    return {'checker':'B','prime_nodes':len(ps),'rows':len(all_data['rows']['rows']),'resultant_cases':count,
            'direct_points':len(reg['points']),'negative_examples':len(reg['negative_examples']),'status':'PASS'}

def load(p):return {'primes':json.loads((p/'primes.json').read_text()),'rows':json.loads((p/'rows.json').read_text()),
                     'resultants':json.loads((p/'resultants.json').read_text()),'regressions':json.loads((p/'direct_regressions.json').read_text())}
if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('directory',type=Path);args=ap.parse_args();print(json.dumps(check_bundle(load(args.directory)),sort_keys=True))
