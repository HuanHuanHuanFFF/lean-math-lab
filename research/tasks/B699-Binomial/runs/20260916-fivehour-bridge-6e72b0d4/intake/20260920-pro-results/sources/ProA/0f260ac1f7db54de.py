"""First-X coefficient compatibility after frozen known-factor tangent costs.
Discovery version. Requires E=0 so Gbar is monic after normalization.
"""
from pathlib import Path
from itertools import product
from fractions import Fraction as Q
from collections import Counter
import json,math,sys
from edge_slices import OFF,DIAG,VALUES

def attainable(vals,n):
    sums={0}
    for _ in range(n):sums={s+v for s in sums for v in vals}
    return sums

def row_sum_sets(rec):
    h,v,d,p=rec['h'],rec['v'],rec['d'],rec['p']
    x3,x4,x5=rec['S'];ell=rec.get('specials',[0])[0];xs=x3+x4+x5
    D=[d[0]-x3-ell,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-xs)//2,d[4],d[5]]
    specs={};details=[]
    known_defect=[x3+ell,x4,x5,0,0,0];K=[0,x3+x4,0,xs,0,0]
    for ri,r in enumerate(range(3,9)):
        if D[ri]!=0:continue
        if ri==0 and known_defect[ri]:continue # unknown NF q>=5/L extra root: keep free, never guess.
        m=[max(a-v[ri],0) for a in OFF[ri]]
        if DIAG[ri]:m.append((max(DIAG[ri]-v[ri],0)+1)//2)
        vals=VALUES[ri];base=sum(a*b for a,b in zip(m,vals))
        extra=d[ri]-known_defect[ri]
        mindiag=max(0,(K[ri]-p[ri]+1)//2) if DIAG[ri] else 0
        if extra<mindiag:raise AssertionError('invalid original budget')
        shift=(3*x4 if ri==1 else 6*x5 if ri==2 else 0)
        fixed=base+shift+(vals[-1]*mindiag if DIAG[ri] else 0)
        sums=sorted(fixed+a for a in attainable(vals,extra-mindiag))
        specs[r]=sums;details.append({'row':r,'ordinary_extras':extra,'mandatory_diagonal_extras':mindiag,'known_collision_root_sum':shift,'allowed_root_sums':sums})
    return specs,details

def compatible(specs):
    if len(specs)<=3:return True,None
    piv=sorted(specs,key=lambda r:(len(specs[r]),r))[:3];weights={}
    for r in specs:
        weights[r]=[Q(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
    for sums in product(*(specs[r] for r in piv)):
        predicted={r:sum(a*b for a,b in zip(weights[r],sums)) for r in specs}
        if all(predicted[r] in specs[r] for r in specs):return True,{'pivots':piv,'sums':sums}
    return False,{'pivots':piv,'choices':math.prod(len(specs[r]) for r in piv)}

if __name__=='__main__':
    data=json.loads(Path(sys.argv[1]).read_text());rr=data['records'];out=[]
    for i,r in enumerate(rr):
        s,d=row_sum_sets(r);ok,w=compatible(s);out.append({'index':i,'compatible':ok,'details':d,'witness':w})
    Path(sys.argv[2]).write_text(json.dumps(out,sort_keys=True,separators=(',',':'))+'\n')
    print('records',len(rr),'excluded',sum(not r['compatible'] for r in out),'survive',sum(r['compatible'] for r in out))
    good=[rr[x['index']] for x in out if x['compatible']]
    print('survivor S',Counter(tuple(r['S']) for r in good),'B',Counter(r['B'] for r in good))
    print('first survivors',good[:2])
