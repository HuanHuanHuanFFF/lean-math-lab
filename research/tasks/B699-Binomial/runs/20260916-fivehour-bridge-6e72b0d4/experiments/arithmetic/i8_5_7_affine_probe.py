"""Cost probe for i8/i9 rows n=6*5^A*7^B, A,B>=2.

Yu's explicit rational bound supplies A+B<10^32. Exact affine lattice boxes,
not a huge exponent scan or floating LLL, certify the end of both valuation towers.
"""
from pathlib import Path
import json
import time
from i6_two_high_lattice_probe import gauss,dot

CAP=10**32
LOW_SUM=8


def ceil_div(a,b):
    return -((-a)//b)


def coordinate_box(basis,offset,low,high):
    b1,b2=basis
    det=b1[0]*b2[1]-b1[1]*b2[0]
    values1=[];values2=[]
    for a in (low,high):
        for b in (low,high):
            values1.append(b2[1]*(a-offset)-b2[0]*b)
            values2.append(-b1[1]*(a-offset)+b1[0]*b)
    if det<0:
        det=-det;values1=[-x for x in values1];values2=[-x for x in values2]
    return [ceil_div(min(values1),det),max(values1)//det,ceil_div(min(values2),det),max(values2)//det]


def affine_points(basis,offset,low,high,sum_exclusive,limit):
    bounds=coordinate_box(basis,offset,low,high)
    m0,m1,n0,n1=bounds
    size=max(0,m1-m0+1)*max(0,n1-n0+1)
    if size>limit:
        return bounds,None,size
    b1,b2=basis
    points=[]
    for m in range(m0,m1+1):
        for n in range(n0,n1+1):
            a=offset+m*b1[0]+n*b2[0]
            b=m*b1[1]+n*b2[1]
            if low<=a<=high and low<=b<=high and a+b<sum_exclusive:
                points.append((a,b))
    return bounds,points,size


def vp(n,p):
    v=0
    while n%p==0:
        n//=p;v+=1
    return v


def small8(n):
    out=1
    for p in (2,3,5,7):
        out*=p**vp(n,p)
    return out


def sixg(a,b):
    n=6*5**a*7**b
    t=1
    for r in range(6):
        t*=small8(n-r)
    return t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2


def trace(q):
    coeff=3 if q==2 else 2
    v=3 if q==2 else 1
    mod=q**v;order=1;L=0;T=0
    levels=[];candidates=[]
    while True:
        assert pow(25,L,mod)==49%mod
        assert pow(25,T,mod)==pow(coeff*coeff,-1,mod)
        basis=gauss(order,L)
        rec={'v':v,'modulus':str(mod),'order':str(order),'L':str(L),'T':str(T),
             'basis':[list(x) for x in basis]}
        bounds,points,size=affine_points(basis,T,2,CAP-1,CAP,10000)
        if points is not None:
            actual=[]
            examined=[]
            for a,b in points:
                residue=(coeff*pow(5,a,mod)*pow(7,b,mod)-1)%mod
                examined.append({'A':str(a),'B':str(b),'residue':str(residue)})
                if residue==0:
                    actual.append((a,b))
            if not actual:
                rec['global_test']={'coefficient_bounds':[str(x) for x in bounds],
                                    'box_size':size,'points':examined}
                rec['stop']='global_no_source_point'
                levels.append(rec)
                break
        levels.append(rec)
        assert v<500, 'bounded affine probe checkpoint exceeded'
        high_sum=2*(v+1)-1
        if high_sum>=LOW_SUM:
            _,small_points,size=affine_points(basis,T,2,high_sum-2,high_sum+1,1000000)
            assert small_points is not None
            for a,b in small_points:
                if a+b<LOW_SUM:
                    continue
                next_mod=mod*q
                residue=(coeff*pow(5,a,next_mod)*pow(7,b,next_mod)-1)%next_mod
                if residue!=0 and residue%mod==0:
                    candidates.append({'A':a,'B':b,'q':q,'v':v,'SIXG':sixg(a,b)})
        next_mod=mod*q
        lchoices=[L+z*order for z in range(q) if pow(25,L+z*order,next_mod)==49%next_mod]
        tchoices=[T+z*order for z in range(q) if pow(25,T+z*order,next_mod)==pow(coeff*coeff,-1,next_mod)]
        assert len(lchoices)==len(tchoices)==1
        L,T=lchoices[0],tchoices[0]
        v,mod,order=v+1,next_mod,order*q
    return {'q':q,'source_coefficient':coeff,'exponent_sum_cap':str(CAP),
            'levels':levels,'high_candidates':candidates}


def main():
    start=time.perf_counter()
    traces=[trace(q) for q in (2,3)]
    low=[{'A':a,'B':b,'SIXG':sixg(a,b)} for a in range(2,LOW_SUM-2) for b in range(2,LOW_SUM-a)]
    union={(z['A'],z['B']):z for z in low+[z for tr in traces for z in tr['high_candidates']]}
    failed=[{'A':a,'B':b,'n':str(6*5**a*7**b)} for (a,b),z in union.items() if not z['SIXG']]
    out={'status':'author exact affine certificate; external theorem acceptance separate',
         'scope':'n=6*5^A*7^B, A,B>=2; target i8, then i9 by same prime',
         'low_sum':LOW_SUM,'traces':traces,'low_pairs':low,'non_SIXG_pairs':failed}
    path=Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({'stops':[{'q':tr['q'],'v':tr['levels'][-1]['v'],'box':tr['levels'][-1]['global_test']['box_size'],
                               'points':len(tr['levels'][-1]['global_test']['points'])} for tr in traces],
                      'low_pairs':len(low),'high_candidates':sum(len(tr['high_candidates']) for tr in traces),
                      'unique_pairs':len(union),'non_SIXG':failed,'seconds':time.perf_counter()-start,
                      'bytes':path.stat().st_size}))


if __name__=='__main__':
    main()
