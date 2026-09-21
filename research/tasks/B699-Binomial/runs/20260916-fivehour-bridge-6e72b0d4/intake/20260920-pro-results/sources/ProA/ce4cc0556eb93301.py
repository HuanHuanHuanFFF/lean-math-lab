"""Exact finite-pool graph factor unloading for the SAME zero-excess Gbar."""
from fractions import Fraction as Q
from itertools import combinations,product
from collections import Counter
from pathlib import Path
import json,sys,math
from edge_slices import OFF,DIAG,VALUES

def pool():
    fs=set()
    for rs in combinations(range(3,9),3):
        for vs in product(*(VALUES[r-3] for r in rs)):
            coeff=[Q(0)]*3
            for r,v in zip(rs,vs):
                a,b=[t for t in rs if t!=r];den=(r-a)*(r-b)
                coeff[0]+=Q(v*a*b,den);coeff[1]-=Q(v*(a+b),den);coeff[2]+=Q(v,den)
            fs.add(tuple(coeff))
    out=[]
    for c,b,a in sorted(fs):
        hits=[]
        for ri,r in enumerate(range(3,9)):
            val=c+b*r+a*r*r
            if val not in VALUES[ri]:continue
            si=VALUES[ri].index(val);diag=(r%2==0 and si==r//2)
            tangent=diag and b+2*a*r==Q(r,2)
            hits.append((ri,si,2 if tangent else 1,diag))
        out.append({'coeff':[[x.numerator,x.denominator] for x in (c,b,a)],'hits':hits})
    return out

def row_capacity(off,b):return sum(off)+(b+1)//2

def unload(s,gs):
    q=s['h'];off=[[max(a-v,0) for a in row] for row,v in zip(OFF,s['v'])];diag=[max(a-v,0) if a else 0 for a,v in zip(DIAG,s['v'])]
    trace=[];bad=None
    while True:
        if any(row_capacity(o,b)>q for o,b in zip(off,diag)):
            bad='nonvertical-row-capacity';break
        found=None
        for gi,g in enumerate(gs):
            cost=sum((diag[ri] if wt==2 else (diag[ri]+1)//2) if isdiag else off[ri][si] for ri,si,wt,isdiag in g['hits'])
            if cost>2*q:found=(gi,cost);break
        if found is None:break
        gi,cost=found;trace.append({'graph':gi,'q_before':q,'cost':cost});q-=1
        for ri,si,wt,isdiag in gs[gi]['hits']:
            if isdiag:diag[ri]=max(diag[ri]-wt,0)
            else:off[ri][si]=max(off[ri][si]-1,0)
        if q<0:bad='negative-degree';break
    return {'h':s['h'],'v':s['v'],'new_h':q,'off':off,'diag':diag,'trace':trace,'contradiction':bad}

if __name__=='__main__':
    p=Path(sys.argv[1]);s=json.loads(p.read_text())['equality_vertical_states'];gs=pool();ans=[unload(x,gs) for x in s]
    out={'graphs':gs,'states':ans};Path(sys.argv[2]).write_text(json.dumps(out,separators=(',',':'),sort_keys=True)+'\n')
    print('graphs',len(gs),'unload histogram',dict(Counter(len(x['trace']) for x in ans)),'contradictions',sum(x['contradiction'] is not None for x in ans))
    print('unloaded graphs',[(gi,gs[gi]['coeff'],cnt) for gi,cnt in Counter(t['graph'] for x in ans for t in x['trace']).items()])
