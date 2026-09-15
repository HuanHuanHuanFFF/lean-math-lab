"""General-cofactor discovery only: complete exponent lifting, then QIG.

The paper supplies the cap. Any surviving original row is still pending here.
"""
import json
from math import gcd
from pathlib import Path


def vp(n,p):
    a=0
    while n%p==0:
        n//=p
        a+=1
    return a


def small(n):
    return 2**vp(n,2)*3**vp(n,3)*(5 if vp(n,5)==1 else 1)


def row_test(n):
    t=1
    for r in range(4):
        t*=small(n-r)
    return t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3


def study(d):
    assert d>=5 and gcd(d,6)==1
    k=d.bit_length()
    cap=5360*k*(k.bit_length()+11)**2
    roots={r:next(a for a in range(2) if d*pow(2,a,3)%3==r) for r in (1,2)}
    b,period,mod=1,2,3
    levels=[]
    candidates={}
    while True:
        levels.append({'B':b,'period':period,'modulus':mod,'roots':dict(roots)})
        if min(roots.values())>=cap:
            break
        assert b<200, 'bounded discovery checkpoint, not a mathematical rejection'
        for r,a0 in roots.items():
            low=max(0,(3-a0+period-1)//period)
            high=(min(10*b,cap)-1-a0)//period
            for z in range(low,high+1):
                a=a0+period*z
                n=d*(1<<a)
                if vp(n-r,3)!=b:
                    continue
                assert a not in candidates
                candidates[a]={'A':a,'B':b,'r':r,'n':str(n),'bits':n.bit_length(),
                               'QIG':row_test(n)}
        for r,a0 in roots.items():
            lifts=[a0+period*t for t in range(3)
                   if d*pow(2,a0+period*t,3*mod)%(3*mod)==r]
            assert len(lifts)==1
            roots[r]=lifts[0]
        b,period,mod=b+1,period*3,mod*3
    return {'d':d,'cap':cap,'levels':levels,
            'candidates':[candidates[a] for a in sorted(candidates)],
            'non_QIG':[row for row in candidates.values() if not row['QIG']]}


if __name__=='__main__':
    ds=[d for d in range(5,32) if gcd(d,6)==1]
    rows=[study(d) for d in ds]
    out=Path(__file__).with_suffix('.json')
    out.write_text(json.dumps({'scope':'exponent reduction; original finite rows pending',
                               'rows':rows},indent=2),encoding='utf-8')
    print(json.dumps([{'d':z['d'],'cap':z['cap'],'levels':len(z['levels']),
                       'candidates':len(z['candidates']),'non_QIG':z['non_QIG']} for z in rows]))
