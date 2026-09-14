"""Independent reconstruction: no import of core.py or generator.
Direct factorization of each whole W; recursive divisor traversal;
digit-carry valuations; exact small-binomial valuation.
"""
from pathlib import Path
from math import gcd, comb, isqrt
import json, sys, copy

def is_prime(n):
    if n<2:return False
    d=2
    while d*d<=n:
        if n%d==0:return False
        d+=1
    return True

def val(n,p):
    e=0
    while n%p==0:
        n//=p;e+=1
    return e

def factor(n):
    fs=[];d=2
    while d*d<=n:
        e=0
        while n%d==0:n//=d;e+=1
        if e:fs.append((d,e))
        d+=1
    if n>1:fs.append((n,1))
    return fs

def rec_divs(fs,k=0,acc=1):
    if k==len(fs):
        yield acc;return
    p,e=fs[k]
    for _ in range(e+1):
        yield from rec_divs(fs,k+1,acc)
        acc*=p

def carry_v(n,j,p):
    z=0;q=p
    while q<=n:
        z+=int(j%q>n%q);q*=p
    return z

def rebuild():
    templates=[];expected=set();instances=0
    for a in range(2,10):
        for b in range(1,1+a//2):
            if gcd(a,b)>1:continue
            for i in range(3,10):
                if any(p>i or (p==i and e>1) for p,e in factor(a)):continue
                pos=[1]+[p for p in range(2,i) if is_prime(p) and a%p]
                R=max(pos);L=1
                for p in pos[1:]:
                    power=1
                    while power*p<=R:power*=p
                    L*=power
                if is_prime(i) and a%i:L*=i
                for r in pos:
                    A=1
                    for s in range(r+1):A*=b*r-a*s
                    assert A
                    W=L*abs(A);fs=factor(W)
                    templates.append(dict(i=i,alpha=a,beta=b,r=r,L=L,W=W,factors={str(p):e for p,e in fs}))
                    for d in rec_divs(fs):
                        instances+=1;n=d+r
                        if n%a==0:
                            j=b*(n//a)
                            if i<j<=n//2:expected.add((i,n,j))
    return templates,expected,instances

def verify(obj,expected_data=None):
    ts,expected,instances=expected_data or rebuild()
    assert obj['scope']=={'indices':list(range(3,10)),'alpha_min':2,'alpha_max':9}
    canonical=lambda z:json.dumps(z,sort_keys=True)
    assert sorted(map(canonical,obj['templates']))==sorted(map(canonical,ts))
    recs=obj['witnesses'];seen=set()
    for z in recs:
        t=z['i'],z['n'],z['j']
        assert t not in seen;seen.add(t)
        i,n,j=t;p=z['p']
        assert i<j<=n//2 and p>=i and is_prime(p)
        assert val(comb(n,i),p)==z['vi']>0
        assert carry_v(n,j,p)==z['vj']>0
    assert seen==expected
    assert obj['statistics']=={'templates':len(ts),'divisor_instances':instances,
      'distinct_candidates':len(expected),'max_n':max(n for i,n,j in expected),
      'max_witness':max(z['p'] for z in recs)}
    return dict(status='PASS',**obj['statistics'])

def main():
    base=Path(__file__).resolve().parents[1]
    src=Path(sys.argv[1]) if len(sys.argv)>1 else base/'evidence/certificate.json'
    obj=json.loads(src.read_text());expected=rebuild();result=verify(obj,expected)
    rejects=[]
    for idx in range(min(8,len(obj['witnesses']))):
        for field in ['n','vi','vj']:
            bad=copy.deepcopy(obj);bad['witnesses'][idx][field]+=1
            try:verify(bad,expected)
            except (AssertionError,ValueError):rejects.append({'record':idx,'field':field,'rejected':True})
            else:raise AssertionError(('CORRUPTION ACCEPTED',idx,field))
    result['mutation_tests']=len(rejects);result['mutations']=rejects
    (base/'evidence/verification.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='mutations'},sort_keys=True))
if __name__=='__main__':main()
