#!/usr/bin/env python3
"""Second verifier. Does not import generator or its arithmetic helpers."""
from pathlib import Path
from math import gcd,isqrt,comb,prod
from functools import lru_cache
import json,time,hashlib,sys
ROOT=Path(__file__).resolve().parents[1]

@lru_cache(None)
def prime(p):
    if p<2:return False
    if p in(2,3):return True
    if p%2==0 or p%3==0:return False
    for a in range(5,isqrt(p)+1,6):
        if p%a==0 or p%(a+2)==0:return False
    return True

def valuation(x,p):
    y=p;e=0
    while x%y==0:e+=1;y*=p
    return e

def smallpart(x,i):
    s=prod(p**valuation(x,p) for p in ((2,3) if i==5 else (2,3,5)))
    if i==5 and valuation(x,5)==1:s*=5
    return s

def qig5(n):
    u=prod(smallpart(n-r,5) for r in range(4))
    return u**6*(3*n*n-12*n+8)<1048576*(n-1)**6*(n-3)**3

def val_choose(n,j,p):
    # Independent: the number of remainder carries, not floor subtraction.
    z=p;v=0
    while z<=n:
        v+=int(j%z+(n-j)%z>=z);z*=p
    return v

def in_interval(a,M,n,i):
    return (n//2-a)//M-((i-a)//M)>0

def check_row(rec,expect_i,stats):
    n=rec['n'];i=rec['i'];assert i==expect_i and n>=2*(i+1)
    fs=rec['factors'];assert len(fs)==i
    parts=[]
    for r,row in enumerate(fs):
        assert row==sorted(row) and len({p for p,e in row})==len(row)
        assert all(isinstance(p,int) and isinstance(e,int) and e>=1 and prime(p) for p,e in row)
        assert prod(p**e for p,e in row)==n-r
        for p,e in row:
            stats['primes'].add(p)
            if p>=i and val_choose(n,i,p)>0:
                # This selection is made from the exact SOURCE valuation.
                assert p>i or e>=2
                parts.append((p**e,r,p,e))
    parts.sort(reverse=True)
    M=1;roots={0};steps=[];ops=0
    for Q,r,p,e in parts:
        if not roots:break
        assert gcd(M,Q)==1 and Q>r
        new=set()
        for b in range(r+1):
            for a in roots:
                # Reversed CRT representation compared to the generator.
                v=(b+Q*(((a-b)*pow(Q,-1,M))%M))%(M*Q) if M!=1 else b
                ops+=1
                if in_interval(v,M*Q,n,i):new.add(v)
        M*=Q;roots=new
        steps.append({'p':p,'e':e,'r':r,'modulus':M,'residues':sorted(roots)})
    assert steps==rec['steps'] and ops==rec['operations']
    actual=[]
    for a in sorted(roots):
        low=(i-a)//M+1;high=(n//2-a)//M
        actual.extend(a+k*M for k in range(low,high+1))
    actual.sort()
    assert sorted(t['j'] for t in rec['tails'])==actual
    for t in rec['tails']:
        assert prime(t['p']) and t['p']>=i
        assert val_choose(n,i,t['p'])==t['source_v']>0
        assert val_choose(n,t['j'],t['p'])==t['target_v']>0
    # A distinct order reconstructs the final candidate set without reading
    # saved intermediate residues. All classes are intersected with [i+1,n/2].
    M=1;rs={0}
    for Q,r,p,e in sorted(parts,key=lambda a:(a[1],a[0])):
        if not rs:break
        new=set()
        for a in rs:
            for b in range(r+1):
                v=(b+Q*(((a-b)*pow(Q,-1,M))%M))%(Q*M) if M!=1 else b
                if in_interval(v,Q*M,n,i):new.add(v)
        rs=new;M*=Q
        stats['alt_max_active']=max(stats['alt_max_active'],len(rs))
    aa=sorted(a+k*M for a in rs for k in range((i-a)//M+1,(n//2-a)//M+1))
    assert aa==actual
    stats['rows']+=1;stats['crt_operations']+=ops;stats['tail_witnesses']+=len(actual)

def pdecode(a):
    assert a==sorted(a) and len({(i,j) for i,j,c in a})==len(a)
    assert all(i>=0 and j>=0 and isinstance(c,int) and c!=0 for i,j,c in a)
    return {(i,j):c for i,j,c in a}
def pev(p,x,y):return sum(c*x**i*y**j for (i,j),c in p.items())
def enc(p):return [[i,j,c] for (i,j),c in sorted(p.items()) if c]
def transform7(p):
    out={}
    for (a,b),v in p.items():
        for e in range(b+1):
            for d in range(a+b-e+1):
                out[d,e]=out.get((d,e),0)+v*comb(b,e)*comb(a+b-e,d)*7**(a+b-e-d)
    return {k:v for k,v in out.items() if v}

def q_formula(x,y):
    n=x+y;w=x*y
    return 10*n**4-36*n*n*w+27*w*w-54*n**3+117*n*w+90*n*n-81*w-58*n+12

def algebra(a):
    assert a['cost6']==432 and a['height6']==21600
    assert a['degree']==12 and a['weighted_degree']==13
    F=pdecode(a['F']);Q=pdecode(a['Q'])
    assert max(i+j for i,j in F)==12 and max(i+j for i,j in Q)==4
    # Degree-bounded interpolation: not a heuristic numerical test.
    for x in range(13):
        for y in range(13):
            N=x+y;W=x*y
            assert pev(F,x,y)==(x-1)*(y-1)*(N*N-W-4*N+3)*q_formula(x,y)**2
    for x in range(5):
        for y in range(5):assert pev(Q,x,y)==q_formula(x,y)
    for p,key in [(F,'F_positive_at_7'),(Q,'Q_positive_at_7')]:
        got=transform7(p);assert enc(got)==a[key]
        assert got.get((0,0),0)>0 and min(got.values())>0
    expected=[]
    for r,w,bs in [(1,6,range(2)),(3,3,range(4)),(4,4,range(1,4))]:
        for b in bs:
            for u in range(w):
                for v in range(w-u):
                    c=sum(c*comb(i,u)*comb(j,v)*b**(i-u)*(r-b)**(j-v) for (i,j),c in F.items() if i>=u and j>=v)
                    assert c==0;expected.append([r,b,u,v])
    assert expected==a['zero_conditions']
    identity=pdecode(a['max_identity'])
    assert max(i for i,j in identity)<=10 and max(j for i,j in identity)<=5
    for n in range(11):
        for u in range(6):
            left=n**10-3125*(n*n-4*u)*u**4
            right=(n*n-5*u)**2*(n**6+10*n**4*u+75*n*n*u*u+500*u**3)
            assert pev(identity,n,u)==left==right
    funcs={
       'g_ge_4':(18,lambda n:256*(n-1)**2*(n-3)*(n-4)-150*n*n*(n-2)**2),
       'cost_6':(18,lambda n:16*(n-1)**2*(n-3)*(n-4)-6*n*n*(n-2)**2),
       'denominator_90':(90,lambda n:10*(n-1)**2*(n-3)*(n-4)-9*n**4),
       'r3_outer':(18,lambda n:n*n-16*n+12),
    }
    assert set(a['positive_shifts'])==set(funcs)
    for name,(offset,fn) in funcs.items():
        p=pdecode(a['positive_shifts'][name]);assert min(p.values())>0
        assert all(j==0 and i<=4 for i,j in p)
        for x in range(5):assert pev(p,x,0)==fn(x+offset)
    checks={
       'power2_base':2**64*2**19-3*(30*63)**6,
       'power3_base':2*3**64*2**19-3*(120*64)**6,
       'power2_ratio':2*63**6-64**6,
       'power3_ratio':3*64**6-65**6,
       'max_rational_gap':81-80,
    }
    assert checks==a['integer_checks'] and min(checks.values())>0
    # These two finite cycles are complete because all free 2/3 valuations
    # are fixed modulo 72 and isolated 5 is determined modulo 25.
    v5=[];v6=[]
    for n in range(1800,3600):
        if n%72 not in(18,56):continue
        s1,s3,s4=[smallpart(n-r,5) for r in(1,3,4)]
        v5.append(s1*s1*s3*s4);assert v5[-1]<=150
        if n%5==0:assert v5[-1]<=6
        if n%5 in(0,2):
            s1,s3,s4=[smallpart(n-r,6) for r in(1,3,4)]
            assert s1==1 and s1*s1*s3*s4<=6
            assert s1**6*s3**3*s4**4<=432;v6.append(s1*s1*s3*s4)
    assert max(v5)==150 and max(v6)==6

def verify(cert):
    assert cert['schema']=='B699-center-residual-cubic-v1'
    assert cert['pure_exponent_cap']==64 and cert['native6_cap']==21600
    algebra(cert['algebra'])
    ex=[]
    for family in ('2','3'):
        for a in range(1,64):
            n=2**a if family=='2' else 2*3**a
            if n%72 in(18,56):ex.append({'family':family,'exponent':a,'n':n,'qig':qig5(n)})
    assert cert['pure_rows']==ex
    need=[r['n'] for r in ex if not r['qig']]
    assert [r['n'] for r in cert['pure_terminals']]==need
    native=[n for n in range(14,21600) if n%72 in(18,56) and n%5 in(0,2)]
    assert [r['n'] for r in cert['native6_rows']]==native
    stats={'rows':0,'primes':set(),'alt_max_active':0,'crt_operations':0,'tail_witnesses':0}
    for r in cert['pure_terminals']:check_row(r,5,stats)
    for r in cert['native6_rows']:check_row(r,6,stats)
    assert cert['small_rows']==[{'n':18,'i':5,'p':17},{'n':56,'i':5,'p':53}]
    for r in cert['small_rows']:
        n,i,p=r['n'],r['i'],r['p'];assert prime(p) and n-i<p<=n and p>n//2
    stats['distinct_primes']=len(stats['primes']);stats['max_prime']=max(stats.pop('primes'))
    stats['taylor_zero_conditions']=len(cert['algebra']['zero_conditions'])
    return stats

if __name__=='__main__':
    t=time.monotonic();path=Path(sys.argv[1]) if len(sys.argv)>1 else ROOT/'evidence/new-certificate.json'
    out=verify(json.loads(path.read_text()));out.update(status='PASS',seconds=time.monotonic()-t)
    (ROOT/'outputs/verification.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
