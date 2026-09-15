"""Cost probe for n=7*2^A*3^B*5^C, conditional on old i7 position closure.

The new exponent bounds remain paper candidates. Finite raw rows are classified
without factoring; this script does not claim their original acceptance.
"""
import json
from pathlib import Path
import time


def vp(n,p):
    answer=0
    while n%p==0:
        n//=p
        answer+=1
    return answer


def s7(n):
    z=1
    for p in (2,3,5):
        z*=p**vp(n,p)
    if vp(n,7)==1:
        z*=7
    return z


def classify(n):
    if n<16:
        return {'kind':'empty'}
    t=1
    for r in range(4):
        t*=s7(n-r)
    if t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:
        return {'kind':'QIG'}
    powers={p:[p**vp(n-r,p) for r in range(7)] for p in (2,3,5)}
    maxima={p:max(xs) for p,xs in powers.items()}
    if min(maxima.values())<=6:
        return {'kind':'old_minQ','maxima':maxima}
    for r in range(7):
        for s in range(r+1,7):
            if all(max(powers[p][r],powers[p][s])==maxima[p] for p in powers):
                return {'kind':'old_two_position','maxima':maxima,'H':[r,s]}
    return {'kind':'needs_original','maxima':maxima}


def strips():
    out=[]
    for b in (0,1):
        for c in (0,1):
            out.append({'p':2,'e':7*3**b*5**c,'fixed':[None,b,c],'minimum':3})
    for a in range(3):
        for c in (0,1):
            out.append({'p':3,'e':7*2**a*5**c,'fixed':[a,None,c],'minimum':2})
    for a in range(3):
        for b in (0,1):
            out.append({'p':5,'e':7*2**a*3**b,'fixed':[a,b,None],'minimum':2})
    return out


def make_row(strip,a):
    exps=[a if x is None else x for x in strip['fixed']]
    n=strip['e']*strip['p']**a
    return {'A':exps[0],'B':exps[1],'C':exps[2],'n':str(n),'classification':classify(n)}


def odd_lifts(strip,q,r):
    p,e=strip['p'],strip['e']
    delta=vp(e,q)
    if vp(r,q)!=delta:
        return None
    c=e//q**delta
    rr=r//q**delta
    cap=300000000*(5*e).bit_length()
    period=q-1
    a0=next(a for a in range(period) if c*pow(p,a,q)%q==rr%q)
    v,mod=1,q
    levels=[];rows=[]
    while True:
        levels.append({'v':v,'modulus':mod,'period':period,'least_a':a0})
        if a0>=cap:
            break
        assert v<200
        lo=max(0,(108-a0+period-1)//period)
        hi=(min(cap,36*(v+delta))-1-a0)//period
        for z in range(lo,hi+1):
            a=a0+z*period
            if vp(e*p**a-r,q)==v+delta:
                rows.append(make_row(strip,a))
        choices=[a0+t*period for t in range(q)
                 if c*pow(p,a0+t*period,mod*q)%(mod*q)==rr%(mod*q)]
        assert len(choices)==1
        a0=choices[0]
        v,mod,period=v+1,mod*q,period*q
    return {'q':q,'r':r,'delta':delta,'coefficient':c,'rhs':rr,'cap_a':cap,'levels':levels,'rows':rows}


def even_lifts(strip,r,eps):
    p,e=strip['p'],strip['e']
    delta=vp(e,2)
    if vp(r,2)!=delta:
        return None
    c=e//2**delta*p**eps
    rr=r//2**delta
    if c%8!=rr%8:
        return {'q':2,'r':r,'epsilon':eps,'excluded_by_mod8':True,'rows':[],'levels':[]}
    cap=100000000*(5*e).bit_length()
    u0,v,mod,period=0,3,8,1
    levels=[];rows=[]
    while True:
        levels.append({'v':v,'modulus':mod,'period':period,'least_u':u0})
        if u0>=cap:
            break
        assert v<200
        lo=max(0,(54-u0+period-1)//period)
        top=min(cap-1,(36*(v+delta)-1-eps)//2)
        for z in range(lo,(top-u0)//period+1):
            u=u0+z*period
            a=2*u+eps
            if vp(e*p**a-r,2)==v+delta:
                rows.append(make_row(strip,a))
        choices=[u0+z*period for z in range(2)
                 if c*pow(p*p,u0+z*period,mod*2)%(mod*2)==rr%(mod*2)]
        assert len(choices)==1
        u0=choices[0]
        v,mod,period=v+1,mod*2,period*2
    return {'q':2,'r':r,'epsilon':eps,'delta':delta,'coefficient':c,'rhs':rr,
            'cap_u':cap,'excluded_by_mod8':False,'levels':levels,'rows':rows}


def main():
    start=time.perf_counter()
    edges=[];all_rows=[]
    for st in strips():
        rows=[make_row(st,a) for a in range(st['minimum'],108)]
        branches=[]
        for q in (2,3,5):
            if q==st['p']:
                continue
            for r in (1,2,3):
                items=([even_lifts(st,r,eps) for eps in (0,1)] if q==2 else [odd_lifts(st,q,r)])
                for br in items:
                    if br is not None:
                        branches.append(br)
                        rows.extend(br['rows'])
        keyed={(z['A'],z['B'],z['C']):z for z in rows}
        record=dict(st,branches=branches,rows=list(keyed.values()))
        edges.append(record)
        all_rows.extend(record['rows'])
    bottom=[]
    for a in range(3):
        for b in (0,1):
            for c in (0,1):
                n=7*2**a*3**b*5**c
                bottom.append({'A':a,'B':b,'C':c,'n':str(n),'classification':classify(n)})
    all_rows.extend(bottom)
    counts={}
    for row in all_rows:
        k=row['classification']['kind']
        counts[k]=counts.get(k,0)+1
    raw=[z for z in all_rows if z['classification']['kind']=='needs_original']
    out={'status':'cost probe; new finite caps and old position theorem are external paper obligations',
         'd':7,'strips':edges,'bottom':bottom,'raw_original_rows':raw,'counts':counts}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    largest=sorted(raw,key=lambda z:int(z['n']))[-12:]
    print(json.dumps({'strips':len(edges),'finite_representations':len(all_rows),'counts':counts,
                      'largest_original_rows':largest,'max_raw_bits':max((int(z['n']).bit_length() for z in raw),default=0),
                      'seconds':time.perf_counter()-start}))


if __name__=='__main__':
    main()
