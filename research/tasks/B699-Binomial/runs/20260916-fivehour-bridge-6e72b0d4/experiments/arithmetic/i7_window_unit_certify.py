"""Permanent SIXG screen and deterministic original interval certificates.

All source factors and primes at the final boundary are checked by trial division.
No old minQ or position consumer is used to cover any finite row here.
"""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import json
import time


def vp(n,p):
    v=0
    while n%p==0:
        n//=p
        v+=1
    return v


def small7(n):
    return 2**vp(n,2)*3**vp(n,3)*5**vp(n,5)*(7 if vp(n,7)==1 else 1)


def sixg(n):
    t=1
    for r in range(6):
        t*=small7(n-r)
    passes=t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
    return passes,t


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%q for q in range(3,isqrt(p)+1,2))))


def factor(n):
    out={}
    p=2
    while p*p<=n:
        while n%p==0:
            out[p]=out.get(p,0)+1
            n//=p
        p=3 if p==2 else p+2
    if n>1:
        out[n]=out.get(n,0)+1
    assert all(prime(p) for p in out)
    return out


def fact_v(n,p):
    total=0
    while n:
        n//=p
        total+=n
    return total


def binom_v(n,j,p):
    return fact_v(n,p)-fact_v(j,p)-fact_v(n-j,p)


def cover(n,representative):
    fs=[factor(n-r) for r in range(7)]
    ps=sorted({p for f in fs for p in f if p>=7 and binom_v(n,7,p)>0},reverse=True)
    cursor=8
    high=n//2
    segments=[]
    while cursor<=high:
        best=None
        for p in ps:
            q=p
            exponent=1
            while q<=n:
                if cursor%q>n%q:
                    end=min(high,(cursor//q+1)*q-1)
                    if best is None or end>best['last']:
                        best={'first':cursor,'last':end,'p':p,'power':exponent,'q':q}
                q*=p
                exponent+=1
        assert best is not None, ('no original witness',n,cursor)
        segments.append(best)
        cursor=best['last']+1
    return {'n':n,'i':7,'representative':{k:representative[k] for k in ('d','A','B','C','h')},
            'pairs':max(0,high-7),'factorizations':fs,
            'source_valuations':{p:binom_v(n,7,p) for p in ps},'intervals':segments}


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    data=json.loads((here/'i7_window_unit_probe.json').read_text(encoding='utf-8'))
    reps={}
    for row in data['non_QIG_representations']:
        reps.setdefault(int(row['n']),row)
    screen=[];remaining=[]
    for n in sorted(reps):
        passed,t=sixg(n)
        screen.append({'n':str(n),'T6':str(t),'SIXG':passed})
        if not passed:
            remaining.append(n)
    rows=[cover(n,reps[n]) for n in remaining]
    screen_path=here/'i7_window_unit_screen.json'
    screen_path.write_text(json.dumps({'scope':'all distinct QIG survivors, exact SIXG comparison','rows':screen},indent=2),encoding='utf-8')
    out={'status':'complete finite original boundary, with deterministic trial primes',
         'rows':rows,'pairs':sum(z['pairs'] for z in rows),'intervals':sum(len(z['intervals']) for z in rows)}
    cert_path=here/'i7_window_unit_certificate.json'
    cert_path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'QIG_survivor_n':len(reps),'SIXG_survivor_n':len(rows),
                      'max_original_n':max(remaining),'pairs':out['pairs'],'intervals':out['intervals'],
                      'largest_prime':max(p for z in rows for p in z['source_valuations']),
                      'seconds':time.perf_counter()-start}))


if __name__=='__main__':
    main()
