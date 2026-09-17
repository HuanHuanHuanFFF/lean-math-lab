"""Deterministic original-row certificates for every non-QIG d7 strip row.

All factor proposals are checked by complete trial primality before use. The old
minQ/two-position labels are ignored here, keeping the finite strip acceptance
independent of those old paper consumers.
"""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import json
import time


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2!=0 and all(p%t for t in range(3,isqrt(p)+1,2))))


def choose_v(n,j,p):
    out=0
    q=p
    while q<=n:
        v=n//q-j//q-(n-j)//q
        assert v in (0,1)
        out+=v
        q*=p
    return out


def cover(row):
    n=row['n']
    assert n==7*2**row['A']*3**row['B']*5**row['C']
    assert len(row['factorizations'])==7
    factors=[]
    for r,f in enumerate(row['factorizations']):
        product=1
        ff={int(p):v for p,v in f.items()}
        for p,v in ff.items():
            assert prime(p) and v>=1
            product*=p**v
        assert product==n-r
        factors.append(ff)
    ps=sorted({p for f in factors for p in f if p>=7 and choose_v(n,7,p)>0},reverse=True)
    low,high=8,n//2
    position=low
    intervals=[]
    while position<=high:
        best=None
        for p in ps:
            q=p
            exponent=1
            while q<=n:
                if position%q>n%q:
                    end=min(high,(position//q+1)*q-1)
                    if best is None or end>best['last']:
                        best={'first':position,'last':end,'p':p,'power':exponent,'q':q}
                q*=p
                exponent+=1
        assert best is not None, ('no original witness',n,position)
        intervals.append(best)
        assert len(intervals)<1000000, 'cost checkpoint exceeded, no row accepted'
        position=best['last']+1
    return {'A':row['A'],'B':row['B'],'C':row['C'],'n':n,'i':7,
            'pairs':max(0,high-low+1),'factorizations':factors,
            'source_valuations':{p:choose_v(n,7,p) for p in ps},'intervals':intervals}


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    proposal=json.loads((here/'i7_d7_factor_probe.json').read_text(encoding='utf-8'))
    rows=[cover(row) for row in proposal['rows']]
    out={'status':'all finite original rows certified with trial primes',
         'scope':'16 single-power strips and low box; no use of old minQ/two-position in this finite boundary',
         'rows':rows,'pairs':sum(z['pairs'] for z in rows),
         'intervals':sum(len(z['intervals']) for z in rows),
         'largest_prime':max(p for z in rows for p in z['source_valuations']),
         'seconds':time.perf_counter()-start}
    path=here/'i7_d7_certificate.json'
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({k:out[k] for k in ('status','pairs','intervals','largest_prime','seconds')}|{'rows':len(rows),'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
