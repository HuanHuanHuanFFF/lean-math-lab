"""Combine the i6 single-/two-high finite components and certify original rows.

The three-high component is excluded by the paper's direct QIG estimate. This
file does not use the historical i7 position theorem or transfer i7 witnesses.
"""
from functools import lru_cache
from math import isqrt
from pathlib import Path
import json
import time
import i6_two_high_lattice_probe as lattice


def number(k):
    a,b,c,h=k
    return 2**a*3**b*5**c+h


@lru_cache(None)
def prime(p):
    return p>=2 and (p==2 or (p%2 and all(p%q for q in range(3,isqrt(p)+1,2))))


def factor(n):
    f={};p=2
    while p*p<=n:
        while n%p==0:
            f[p]=f.get(p,0)+1
            n//=p
        p=3 if p==2 else p+2
    if n>1:
        f[n]=f.get(n,0)+1
    assert all(prime(p) for p in f)
    return f


def binomial_v(n,j,p):
    value=0;q=p
    while q<=n:
        value+=n//q-j//q-(n-j)//q
        q*=p
    return value


def cover(n,k):
    fs=[factor(n-r) for r in range(6)]
    ps=sorted({p for f in fs for p in f if p>=7 and binomial_v(n,6,p)>0},reverse=True)
    cursor=7;high=n//2;segments=[]
    while cursor<=high:
        best=None
        for p in ps:
            q=p;exponent=1
            while q<=n:
                if cursor%q>n%q:
                    end=min(high,(cursor//q+1)*q-1)
                    if best is None or end>best['last']:
                        best={'first':cursor,'last':end,'p':p,'power':exponent,'q':q}
                exponent+=1;q*=p
        assert best is not None, ('no i6 original witness',n,cursor)
        segments.append(best);cursor=best['last']+1
    return {'n':n,'i':6,'representative':dict(zip(('A','B','C','h'),k)),
            'pairs':max(0,high-6),'factorizations':fs,
            'source_valuations':{p:binomial_v(n,6,p) for p in ps},'intervals':segments}


def main():
    start=time.perf_counter()
    here=Path(__file__).resolve().parent
    single=json.loads((here/'i7_window_unit_probe.json').read_text(encoding='utf-8'))
    two=json.loads((here/'i6_two_high_lattice_probe.json').read_text(encoding='utf-8'))
    candidates=set()
    for st in single['strips']:
        if st['d']!=1 or st['h']>5:
            continue
        for a in st['candidate_exponents']:
            abc=tuple(a if x is None else x for x in st['fixed'])
            candidates.add(abc+(st['h'],))
    for z in single['bottom']:
        if z['d']==1 and z['h']<=5:
            candidates.add(tuple(z[k] for k in ('A','B','C','h')))
    single_count=len(candidates)
    for q in lattice.BASES:
        p,r=[z for z in lattice.BASES if z!=q]
        for delta in range(lattice.THRESHOLD[q]):
            for h in range(6):
                for a in range(lattice.THRESHOLD[p],lattice.SUM_CUT-lattice.THRESHOLD[r]):
                    for b in range(lattice.THRESHOLD[r],lattice.SUM_CUT-a):
                        powers={q:delta,p:a,r:b}
                        candidates.add(tuple(powers[z] for z in lattice.BASES)+(h,))
    for z in two['high_candidates']:
        candidates.add(tuple(z[k] for k in ('A','B','C','h')))
    non_qig={};counts={}
    for k in sorted(candidates):
        n=number(k)
        result=lattice.classify(n)
        counts[result]=counts.get(result,0)+1
        if result not in ('QIG','empty'):
            if n in non_qig:
                assert non_qig[n]['result']==result
            else:
                non_qig[n]={'n':str(n),'representative':dict(zip(('A','B','C','h'),k)),'result':result}
    remaining=[(n,z['representative']) for n,z in sorted(non_qig.items()) if z['result']=='needs_original']
    rows=[cover(n,tuple(k[x] for x in ('A','B','C','h'))) for n,k in remaining]
    screen={'scope':'all i6 candidate representations from single-high and two-high components',
            'single_and_box_count':single_count,'all_candidate_count':len(candidates),'counts':counts,
            'rows':[non_qig[n] for n in sorted(non_qig)]}
    (here/'i6_window_unit_screen.json').write_text(json.dumps(screen,indent=2),encoding='utf-8')
    cert={'status':'complete i6 original finite boundary','rows':rows,
          'pairs':sum(z['pairs'] for z in rows),'intervals':sum(len(z['intervals']) for z in rows)}
    (here/'i6_window_unit_certificate.json').write_text(json.dumps(cert,indent=2),encoding='utf-8')
    print(json.dumps({'single_and_box':single_count,'all_candidates':len(candidates),'counts':counts,
                      'unique_non_QIG':len(non_qig),'original_rows':len(rows),'largest_original_n':max(n for n,_ in remaining),
                      'pairs':cert['pairs'],'intervals':cert['intervals'],'seconds':time.perf_counter()-start}))


if __name__=='__main__':
    main()
