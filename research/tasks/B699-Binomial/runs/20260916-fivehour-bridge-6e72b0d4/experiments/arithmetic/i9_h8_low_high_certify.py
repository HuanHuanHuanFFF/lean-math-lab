"""Original i8 prime/power interval certificates for the finite scalar survivors."""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import json
import time


@lru_cache(None)
def factor(n):
    f={};p=2
    while p*p<=n:
        while n%p==0:
            f[p]=f.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:f[n]=f.get(n,0)+1
    return f


def valuation(n,j,p):
    result=0;q=p
    while q<=n:
        result+=n//q-j//q-(n-j)//q
        q*=p
    return result


def row(n,representative):
    factors=[factor(n-r) for r in range(8)]
    primes=sorted({p for fs in factors for p in fs if p>=11 and valuation(n,8,p)>0},reverse=True)
    high=n//2;cursor=9;segments=[]
    while cursor<=high:
        best=None
        for p in primes:
            q=p;exponent=1
            while q<=n:
                if cursor%q>n%q:
                    last=min(high,(cursor//q+1)*q-1)
                    if best is None or last>best['last']:
                        best={'first':cursor,'last':last,'p':p,'exponent':exponent,'power':q}
                q*=p;exponent+=1
        assert best is not None,('uncovered original i8 pair',n,cursor)
        segments.append(best);cursor=best['last']+1
    return {'n':n,'i':8,'representative':representative,'factorizations':factors,
            'source_valuations':{p:valuation(n,8,p) for p in primes},'intervals':segments,
            'pairs':high-8}


def main():
    start=time.perf_counter();here=Path(__file__).resolve().parent
    source=json.loads((here/'i9_h8_low_high_screen.json').read_text(encoding='utf-8'))
    rows=[row(int(z['n']),z['representative']) for z in source['rows']]
    out={'status':'complete original i8 interval certificate; same p>=11 transfers to i9',
         'rows':rows,'pairs':sum(z['pairs'] for z in rows),
         'intervals':sum(len(z['intervals']) for z in rows)}
    (here/'i9_h8_low_high_certificate.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'rows':len(rows),'max_n':max(z['n'] for z in rows),'pairs':out['pairs'],
                      'intervals':out['intervals'],'max_prime':max(t['p'] for z in rows for t in z['intervals']),
                      'seconds':time.perf_counter()-start}))


if __name__=='__main__':main()
