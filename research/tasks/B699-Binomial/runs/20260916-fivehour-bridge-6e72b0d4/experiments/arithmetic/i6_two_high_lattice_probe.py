"""Bounded cost probe: two-high 235-smooth i6 rows, shifts 0..5.

The paper supplies H<1e8 and the safe norm cap 1e9. Three exact Gauss-reduced
lattices replace a two-dimensional scan up to that cap. No float is used.
"""
from pathlib import Path
import json
import time

BASES=(2,3,5)
THRESHOLD={2:3,3:2,5:2}
SUM_CUT=64
NORM_CAP=10**9


def dot(a,b):
    return a[0]*b[0]+a[1]*b[1]


def gauss(modulus,logarithm):
    b1=(modulus,0);b2=(-logarithm,1)
    while True:
        if dot(b2,b2)<dot(b1,b1):
            b1,b2=b2,b1
        numerator=dot(b1,b2)
        denominator=dot(b1,b1)
        quotient,remainder=divmod(abs(numerator),denominator)
        if 2*remainder>denominator:
            quotient+=1
        if numerator<0:
            quotient=-quotient
        if quotient==0:
            assert dot(b1,b1)<=dot(b2,b2)
            assert 2*abs(dot(b1,b2))<=dot(b1,b1)
            assert abs(b1[0]*b2[1]-b1[1]*b2[0])==modulus
            return b1,b2
        b2=(b2[0]-quotient*b1[0],b2[1]-quotient*b1[1])


def vp(n,p):
    v=0
    while n%p==0:
        n//=p
        v+=1
    return v


def s6(n):
    return 2**vp(n,2)*3**vp(n,3)*5**vp(n,5)


def classify(n):
    if n<14:
        return 'empty'
    smalls=[s6(n-r) for r in range(6)]
    t4=smalls[0]*smalls[1]*smalls[2]*smalls[3]
    if t4**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:
        return 'QIG'
    if n>=16:
        t6=t4*smalls[4]*smalls[5]
        if t6**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:
            return 'SIXG'
    return 'needs_original'


def row(q,delta,p,r,a,b,h):
    exps={q:delta,p:a,r:b}
    n=2**exps[2]*3**exps[3]*5**exps[5]+h
    return {'A':exps[2],'B':exps[3],'C':exps[5],'h':h,'n':str(n),'classification':classify(n)}


def lattice_trace(q):
    p,r=[x for x in BASES if x!=q]
    multiplier=2 if q==2 else q-1
    pp,rr=p**multiplier,r**multiplier
    v=3 if q==2 else 1
    mod=q**v
    order=1;logarithm=0
    trace=[]
    while True:
        assert pow(pp,logarithm,mod)==rr%mod
        b1,b2=gauss(order,logarithm)
        rec={'v':v,'prime_power':mod,'order':order,'logarithm':logarithm,
             'basis':[list(b1),list(b2)],'shortest_squared':dot(b1,b1)}
        trace.append(rec)
        if dot(b1,b1)>=NORM_CAP**2:
            rec['stop']='norm_cap'
            break
        assert v<200
        lifts=[logarithm+z*order for z in range(q)
               if pow(pp,logarithm+z*order,mod*q)==rr%(mod*q)]
        assert len(lifts)==1
        logarithm=lifts[0]
        v,mod,order=v+1,mod*q,order*q
    return {'q':q,'p':p,'r':r,'power_multiplier':multiplier,'P':pp,'R':rr,'norm_cap':NORM_CAP,'levels':trace}


def positive_vectors(order,logarithm,bound):
    for b in range(1,bound):
        a0=(-logarithm*b)%order
        if a0==0:
            a0=order
        for a in range(a0,bound-b+1,order):
            yield a,b


def main():
    started=time.perf_counter()
    traces=[lattice_trace(q) for q in BASES]
    screened={};high=[];low_count=0
    linear={2:6,3:12,5:18}
    for tr in traces:
        q,p,r=tr['q'],tr['p'],tr['r']
        for delta in range(THRESHOLD[q]):
            for h in range(6):
                for a in range(THRESHOLD[p],SUM_CUT-THRESHOLD[r]):
                    for b in range(THRESHOLD[r],SUM_CUT-a):
                        z=row(q,delta,p,r,a,b,h)
                        low_count+=1
                        if z['classification']!='QIG':
                            screened[(z['A'],z['B'],z['C'],h)]=z
        for level in tr['levels']:
            if 'stop' in level:
                continue
            v,order,L=level['v'],level['order'],level['logarithm']
            upper=linear[q]*(v+THRESHOLD[q]-1)
            if upper<SUM_CUT-2 or level['shortest_squared']>upper**2:
                continue
            vectors=list(positive_vectors(order,L,upper))
            for delta in range(THRESHOLD[q]):
                for h in range(6):
                    for rho in range(-h,4-h):
                        if rho==0 or vp(abs(rho),q)!=delta:
                            continue
                        unit=abs(rho)//q**delta
                        sp=vp(unit,p);unit//=p**sp
                        sr=vp(unit,r);unit//=r**sr
                        assert unit==1
                        for a,b in vectors:
                            aa,bb=a+sp,b+sr
                            total=aa+bb
                            if aa<THRESHOLD[p] or bb<THRESHOLD[r] or total<SUM_CUT or total>linear[q]*(v+delta):
                                continue
                            mod=q**(v+delta+1)
                            rem=(pow(q,delta,mod)*pow(p,aa,mod)*pow(r,bb,mod)-rho)%mod
                            if rem==0 or rem%(mod//q)!=0:
                                continue
                            z=row(q,delta,p,r,aa,bb,h)
                            high.append(dict(z,q=q,delta=delta,rho=rho,v=v,a_reduced=a,b_reduced=b))
                            if z['classification']!='QIG':
                                screened[(z['A'],z['B'],z['C'],h)]=z
    out={'status':'cost probe; Theorem3 and Gauss shortest-vector proof separate',
         'sum_cut':SUM_CUT,'traces':traces,'low_pair_count':low_count,
         'high_candidates':high,'non_QIG_rows':list(screened.values())}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    raw=[z for z in screened.values() if z['classification']=='needs_original']
    print(json.dumps({'lattice_stops':[{'q':t['q'],'last_v':t['levels'][-1]['v'],'shortest_squared':t['levels'][-1]['shortest_squared']} for t in traces],
                      'low_pairs':low_count,'high_candidate_representations':len(high),
                      'non_QIG':len(screened),'non_QIG_non_SIXG':len(raw),
                      'largest_original_n':max((int(z['n']) for z in raw),default=0),
                      'seconds':time.perf_counter()-started,'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
