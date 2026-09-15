"""Deterministic i4/i5 original certificates for the canonical i5-window family.

Factor proposals are accepted only after full trial-prime and product checks.
The extra n=10,11 rows cover i4's low boundary; n=28 calibrates the p=i=5 endpoint.
"""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import json
import time


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%d for d in range(3,isqrt(p)+1,2))))


def factor(n):
    f={};p=2
    while p*p<=n:
        while n%p==0:
            f[p]=f.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:
        f[n]=f.get(n,0)+1
    return f


def binomial_v(n,j,p):
    v=0;q=p
    while q<=n:
        v+=n//q-j//q-(n-j)//q;q*=p
    return v


def cover(row,i):
    n=row['n'];rep=row['representative']
    assert n==rep['d']*2**rep['A']*3**rep['B']+rep['h']
    fs=[]
    for r,raw in enumerate(row['factorizations'][:i]):
        f={int(p):e for p,e in raw.items()}
        product=1
        for p,e in f.items():
            assert prime(p) and e>=1
            product*=p**e
        assert product==n-r
        fs.append(f)
    assert len(fs)==i
    ps=sorted({p for f in fs for p in f if p>=i and binomial_v(n,i,p)>0},reverse=True)
    cursor=i+1;high=n//2;segments=[]
    while cursor<=high:
        best=None
        for p in ps:
            q=p;exponent=1
            while q<=n:
                if cursor%q>n%q:
                    end=min(high,(cursor//q+1)*q-1)
                    if best is None or end>best['last']:
                        best={'first':cursor,'last':end,'p':p,'power':exponent,'q':q}
                q*=p;exponent+=1
        assert best is not None, ('no original witness',n,i,cursor)
        segments.append(best);cursor=best['last']+1
        assert len(segments)<1000000, 'finite-cover cost checkpoint exceeded'
    return {'n':n,'i':i,'representative':rep,'pairs':max(0,high-i),
            'factorizations':fs,'source_valuations':{p:binomial_v(n,i,p) for p in ps},'intervals':segments}


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    proposed=json.loads((here/'i5_window_unit_factor_probe.json').read_text(encoding='utf-8'))
    rows=list(proposed['rows'])
    for n in (10,11,28):
        assert all(z['n']!=n for z in rows)
        rep={'d':1,'A':0,'B':3,'h':1} if n==28 else {'d':5,'A':1,'B':0,'h':n-10}
        rows.append({'n':n,'representative':rep,
                     'factorizations':[factor(n-r) for r in range(5)]})
    originals=[cover(row,i) for row in sorted(rows,key=lambda z:z['n']) for i in (4,5)]
    out={'status':'all finite original rows certified by deterministic trial primes',
         'scope':'i4 and i5 separately on the canonical i5-window family',
         'rows':originals,'pairs':sum(z['pairs'] for z in originals),
         'intervals':sum(len(z['intervals']) for z in originals),
         'seconds':time.perf_counter()-start}
    path=here/'i5_window_unit_certificate.json'
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'indexed_rows':len(originals),'unique_n':len(rows),'pairs':out['pairs'],
                      'intervals':out['intervals'],'seconds':out['seconds'],'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
