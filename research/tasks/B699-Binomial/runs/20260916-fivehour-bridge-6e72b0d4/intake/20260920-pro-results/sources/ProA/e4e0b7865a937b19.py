#!/usr/bin/env python3
"""Current-round unique saturated-product exception. Receiver uses only exact
source signatures and a nonzero coefficient-rank minor, not a CAS factor call."""
import math,json,sys
from pathlib import Path
from collections import Counter
from accept_core import ReceiverModel,need,determinant_mod,ordinary_jet,packpoly

def multiply(A,B):
    C={}
    for (a,b),x in A.items():
        for (c,d),y in B.items():C[a+c,b+d]=C.get((a+c,b+d),0)+x*y
    return {k:v for k,v in C.items() if v}

def poly_from_powers(powers):
    P={(0,0):1}
    for t,v in enumerate(powers):
        for _ in range(v):P=multiply(P,{(0,1):1,(1,0):-t,(0,0):t*t})
    return P

def verify_product(c,cert):
    q=c['q'];powers=cert['powers'];need(len(powers)==4 and all(isinstance(x,int) and x>=0 for x in powers) and sum(powers)==q,'bad product exponents')
    for r,row in zip(range(3,9),c['roots']):
        rr=[t*(r-t) for t,k in enumerate(powers) for _ in range(k)]
        need(sorted(rr)==sorted(row),'product specialization mismatch')
    P=poly_from_powers(powers);need(P.get((0,q))==1 and max(a+2*b for a,b in P)==2*q,'product degree')
    M=ReceiverModel(q);labs,A=M.build(c);nc=M.nc;rr=cert['rank_rows'];cc=cert['rank_columns'];p=cert['prime']
    need(cc==list(range(nc)) and len(rr)==nc and len(set(rr))==nc,'product uniqueness rank size')
    need(all(0<=i<len(A) for i in rr),'product uniqueness rank index')
    det=determinant_mod([[A[i][j] for j in cc] for i in rr],p)
    need(det!=0 and det==cert['coefficient_minor'],'product uniqueness determinant')
    # Product is in the full affine jet space, not just the specialized rows.
    for r,row in zip(range(3,9),c['roots']):
        for v,m in Counter(row).items():
            for i in range(m):
                for j in range(m-i):need(ordinary_jet(P,r,v,i,j)==0,'product ordinary jet')
            need(ordinary_jet(P,r,v,0,m)!=0,'product ordinary exact order')
    return {'index':cert['index'],'powers':powers,'unique_monic_solution':True,'coefficient_rank':nc,'prime':p,'coefficient_minor':det,'proper_source_line_factor':next(t for t,x in enumerate(powers) if x),'polynomial':packpoly(P)}

if __name__=='__main__':
    from jets import Model,full_minor
    src,out=map(Path,sys.argv[1:]);x=json.loads(src.read_text());ans=[]
    for ex in x['exceptions']:
        nc=(x['q']-2)**2
        if nc in ex['columns'] or ex['rank_aug_mod']!=nc:continue
        c=ex['record'];powers=[c['roots'][-1].count(t*(8-t)) for t in range(4)]
        _,A=Model(x['q'],1000033).build(c);rr,cc,rank=full_minor([r[:-1] for r in A],1000033);assert rank==nc
        det=determinant_mod([[A[i][j] for j in cc] for i in rr],1000033)
        cert={'index':ex['index'],'powers':powers,'rank_rows':rr,'rank_columns':cc,'prime':1000033,'coefficient_minor':det}
        result=verify_product(c,cert);ans.append(cert);print('SAT_UNIQUE_PRODUCT',x['q'],ex['index'],powers,'rank',rank,'terms',len(result['polynomial']),flush=True)
    out.write_text(json.dumps(ans,separators=(',',':'),sort_keys=True)+'\n')
