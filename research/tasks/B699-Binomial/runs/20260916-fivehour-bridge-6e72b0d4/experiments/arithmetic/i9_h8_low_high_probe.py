"""Complete scalar candidate generation for h=8 smooth shifts with <=2 high exponents.

Paper cap/consumer and independent acceptance remain separate from this generator.
The trace is compact: terminal exact data plus all finite candidates; a verifier
reconstructs every intervening lift rather than trusting a stored random-growth claim.
"""
from collections import Counter
from fractions import Fraction
from functools import lru_cache
from itertools import combinations,product
from pathlib import Path
import json
import time
from i6_two_high_lattice_probe import gauss

P=(2,3,5,7)
TH={2:4,3:2,5:2,7:2}
CUT=80
CAP=10**32


def vp(n,p):
    assert n
    v=0
    while n%p==0:
        n//=p;v+=1
    return v


def inventory():
    cells=[];forms={}
    for dimension in (1,2):
        for high in combinations(P,dimension):
            low=[p for p in P if p not in high]
            for exps in product(*(range(TH[p]) for p in low)):
                fixed=dict(zip(low,exps))
                for h in range(8,9):
                    ci=len(cells)
                    cells.append({'high':list(high),'fixed':[fixed.get(p) for p in P],'h':h})
                    for q in low:
                        delta=fixed[q]
                        for source in range(6):
                            rho=source-h
                            if rho==0 or vp(abs(rho),q)!=delta:
                                continue
                            e=1
                            for p in low:
                                if p!=q:e*=p**fixed[p]
                            coefficient=Fraction(e,rho//q**delta)
                            key=(high,q,coefficient.numerator,coefficient.denominator)
                            forms.setdefault(key,set()).add(ci)
    return cells,forms


@lru_cache(None)
def group(high,q,v):
    multiplier=2 if q==2 else q-1
    base=high[0]**multiplier
    start=vp(base-1,q)
    if v==start:
        log=0
    else:
        old=group(high,q,v-1)
        log=old['L']
        if len(high)==2:
            other=high[1]**multiplier
            choices=[log+z*old['M'] for z in range(q)
                     if pow(base,log+z*old['M'],q**v)==other%(q**v)]
            assert len(choices)==1
            log=choices[0]
    order=q**(v-start)
    basis=gauss(order,log) if len(high)==2 else None
    return {'v':v,'mod':q**v,'M':order,'L':log,'basis':basis,'base':base,'start':start}


def ceildiv(a,b):return -((-a)//b)


def points2(g,offset,lo1,lo2,upper,sumcap,limit):
    b1,b2=g['basis'];det=b1[0]*b2[1]-b1[1]*b2[0]
    v1=[];v2=[]
    for a in (lo1,upper):
        for b in (lo2,upper):
            v1.append(b2[1]*(a-offset)-b2[0]*b)
            v2.append(-b1[1]*(a-offset)+b1[0]*b)
    if det<0:
        det=-det;v1=[-x for x in v1];v2=[-x for x in v2]
    bounds=[ceildiv(min(v1),det),max(v1)//det,ceildiv(min(v2),det),max(v2)//det]
    m0,m1,k0,k1=bounds
    size=max(0,m1-m0+1)*max(0,k1-k0+1)
    if size>limit:return bounds,None,size
    points=[]
    for m in range(m0,m1+1):
        for k in range(k0,k1+1):
            a=offset+m*b1[0]+k*b2[0];b=m*b1[1]+k*b2[1]
            if lo1<=a<=upper and lo2<=b<=upper and a+b<sumcap:
                points.append((a,b))
    return bounds,points,size


def source_rem(high,num,den,powers,mod):
    r=num%mod
    for p,a in zip(high,powers):r=r*pow(p,a,mod)%mod
    return (r-den)%mod


def form_trace(key,links):
    high,q,num,den=key
    dimension=len(high);multiplier=2 if q==2 else q-1
    start=vp(high[0]**multiplier-1,q)
    mod=q**start
    target=pow(den,multiplier,mod)*pow(num,-multiplier,mod)%mod
    answer={'high':list(high),'q':q,'num':num,'den':den,'cells':sorted(links),
            'start':start,'cap':CAP,'candidates':[]}
    if target!=1:
        answer['stop']={'kind':'incompatible_principal_start','v':start,'target':target}
        return answer
    tvalue=0
    v=start
    while v<500:
        g=group(high,q,v);mod=g['mod'];order=g['M']
        target=pow(den,multiplier,mod)*pow(num,-multiplier,mod)%mod
        assert pow(g['base'],tvalue,mod)==target
        if dimension==1:
            lo=TH[high[0]]
            a0=lo+(tvalue-lo)%order
            count=max(0,(CAP-1-a0)//order+1)
            glob=[(a,) for a in range(a0,CAP,order)] if count<=32 else None
            bounds=[a0,CAP-1,order]
        else:
            bounds,glob,count=points2(g,tvalue,TH[high[0]],TH[high[1]],CAP-1,CAP,32)
        if glob is not None:
            examined=[{'powers':list(x),'remainder':source_rem(high,num,den,x,mod)} for x in glob]
            if all(z['remainder']!=0 for z in examined):
                answer['stop']={'kind':'global_no_source_point','v':v,'M':order,'L':g['L'],
                                'T':tvalue,'basis':g['basis'],'bounds':bounds,
                                'box_size':count,'global_points_checked':len(examined)}
                return answer
        kbound=10 if dimension==1 else 8
        maxsum=5+kbound*(v+3)  # actual low delta<=3; strict H<6+k*(v+delta)
        if maxsum>=CUT:
            if dimension==1:
                lo=max(CUT,TH[high[0]])
                a0=lo+(tvalue-lo)%order
                finite=[(a,) for a in range(a0,maxsum+1,order)]
            else:
                _,finite,_=points2(g,tvalue,TH[high[0]],TH[high[1]],maxsum,maxsum+1,1000000)
                assert finite is not None
            for powers in finite:
                if sum(powers)<CUT:continue
                rem=source_rem(high,num,den,powers,mod*q)
                if rem!=0 and rem%mod==0:
                    answer['candidates'].append({'powers':list(powers),'v':v})
        nextmod=mod*q
        nexttarget=pow(den,multiplier,nextmod)*pow(num,-multiplier,nextmod)%nextmod
        choices=[tvalue+z*order for z in range(q)
                 if pow(g['base'],tvalue+z*order,nextmod)==nexttarget]
        assert len(choices)==1
        tvalue=choices[0];v+=1
    raise AssertionError(('no global stop before checkpoint',key))


def scalar(n):
    if n<18:return 'empty'
    t=1
    for r in range(6):
        x=n-r;part=1
        for p in P:
            while x%p==0:
                x//=p;part*=p
        t*=part
        if r==3 and t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:
            return 'QIG'
    if t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:
        return 'SIXG'
    return 'needs_original'


def number(rep):
    out=1
    for p,a in zip(P,rep[:4]):out*=p**a
    return out+rep[4]


def finite_representations(cells,traces):
    for low in product(*(range(TH[p]) for p in P)):
        for h in range(8,9):yield tuple(low)+(h,),'box'
    for cell in cells:
        high=cell['high'];fixed=cell['fixed']
        if len(high)==1:
            tuples=((a,) for a in range(TH[high[0]],CUT))
        else:
            tuples=((a,b) for a in range(TH[high[0]],CUT-TH[high[1]])
                    for b in range(TH[high[1]],CUT-a))
        for powers in tuples:
            mapping=dict(zip(high,powers))
            yield tuple(mapping.get(p,fixed[z]) for z,p in enumerate(P))+(cell['h'],),'bottom'
    seen=set()
    for tr in traces:
        for candidate in tr['candidates']:
            powers=candidate['powers']
            for ci in tr['cells']:
                cell=cells[ci];mapping=dict(zip(tr['high'],powers))
                rep=tuple(mapping.get(p,cell['fixed'][z]) for z,p in enumerate(P))+(cell['h'],)
                if rep not in seen:
                    seen.add(rep)
                    yield rep,'high'


def main():
    started=time.perf_counter()
    cells,forms=inventory()
    traces=[form_trace(key,links) for key,links in sorted(forms.items())]
    here=Path(__file__).resolve().parent
    out={'status':'complete scalar candidate generation; original endpoint and paper acceptance separate',
         'scope':'h=8, thresholds (4,2,2,2), at most two high exponents; i8 and i9',
         'thresholds':TH,'cut':CUT,'cap':CAP,'cells':cells,'traces':traces}
    (here/'i9_h8_low_high_probe.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
    counts=Counter();kinds=Counter();survivors={}
    for rep,kind in finite_representations(cells,traces):
        n=number(rep);result=scalar(n);counts[result]+=1;kinds[kind]+=1
        if result=='needs_original':
            survivors.setdefault(n,{'n':str(n),'representative':list(rep),
                                    'high_count':sum(rep[z]>=TH[p] for z,p in enumerate(P))})
    screen={'counts':dict(counts),'representation_kinds':dict(kinds),
            'rows':[survivors[n] for n in sorted(survivors)]}
    (here/'i9_h8_low_high_screen.json').write_text(json.dumps(screen,indent=2),encoding='utf-8')
    print(json.dumps({'forms':len(forms),'cells':len(cells),'stops':dict(Counter(x['stop']['kind'] for x in traces)),
                      'last_v':max(x['stop']['v'] for x in traces),'high_form_candidates':sum(len(x['candidates']) for x in traces),
                      'counts':dict(counts),'kinds':dict(kinds),'original_n':len(survivors),
                      'max_original_n':str(max(survivors)) if survivors else None,
                      'seconds':time.perf_counter()-started}))


if __name__=='__main__':main()
