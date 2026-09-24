"""Frozen same-G eight-factor resource model after the accepted COVER8 round.

This is a deliberately relaxed necessary model.  It retains all balanced-factor
cost signatures used by the previous fixed-G ledger and all cheap B22/S/L
special signatures, while forgetting root-sum information.  Positive-excess
loadable factors are handled separately by the ledger executables.
"""
from __future__ import annotations
import itertools

OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)


def lower(i:int,v:int)->int:
    return sum(max(x-v,0) for x in OFF[i]) + (max(DIAG[i]-v,0)+1)//2


def under_compositions(n:int,k:int):
    if k==0:
        yield (); return
    for a in range(n+1):
        for tail in under_compositions(n-a,k-1):
            yield (a,)+tail


def all_states():
    out=[]
    for h in range(153):
        base=[]
        for i in range(6):
            v=0
            while lower(i,v)>h:
                v+=1
            base.append(v)
        budget=305-2*h-sum(base)
        if budget<0:
            continue
        for u in under_compositions(budget,6):
            v=[x+y for x,y in zip(base,u)]
            E=305-2*h-sum(v)
            d=[h-lower(i,v[i]) for i in range(6)]
            p=[max(DIAG[i]-v[i],0)%2 if DIAG[i] else 0 for i in range(6)]
            out.append(dict(h=h,v=v,E=E,d=d,p=p,
                            cap=[2*d[i]+p[i] for i in range(6)]))
    assert len(out)==2035
    assert sum(s['E']==0 for s in out)==1540
    return out


def compositions(n:int,k:int):
    if k==1:
        yield (n,); return
    for a in range(n+1):
        for b in compositions(n-a,k-1):
            yield (a,)+b


def _add(out,name,e,d,k=(0,0,0)):
    kk=(0,k[0],0,k[1],0,k[2])
    c=tuple(2*a+b for a,b in zip(d,kk))
    out.append((e,c,name,tuple(d),kk))


def balanced_signatures():
    out=[]
    # Complete frozen generic balanced classes.
    for d in compositions(4,6):
        _add(out,'defect_ge4',4,d)
    for d in compositions(3,6):
        if sum(d[:4]):
            _add(out,'triple_low_early',4,d)
        else:
            for k in ((1,0,0),(0,1,0),(0,0,1)):
                _add(out,'triple_low_kappa',4,d,k)
        _add(out,'triple_degree_ge6',6,d)
    for d in compositions(2,6):
        for a,b in itertools.product(range(2),repeat=2):
            if d[0]+d[1]+d[4]+a>=1 and sum(d[:4])+a+b>=1:
                _add(out,'double5',5,d,(a,b,0))
            if sum(d[:4])+a+b>=1:
                _add(out,'double67',6,d,(a,b,0))
        _add(out,'double_ge8',8,d)
    for r in range(6):
        d=tuple(int(i==r) for i in range(6))
        if r<3:
            _add(out,'near16_24_early',16,d)
        else:
            for k in ((1,0,0),(0,1,0),(0,0,1)):
                _add(out,'near16_24_kappa',16,d,k)
        _add(out,'near25_28',25,d)

    # Geometry available after the previous COVER8 round.
    # q=25..31: total diagonal kappa at least 2, charged at safe degree 25.
    for a in range(3):
        for b in range(a,3):
            k=[0,0,0]; k[a]+=1; k[b]+=1
            _add(out,'sat25_31_kappa2',25,(0,)*6,tuple(k))
    # q=32..42: total diagonal kappa at least 1, charged at safe degree 32.
    for a in range(3):
        k=[0,0,0]; k[a]=1
        _add(out,'sat32_42_kappa1',32,(0,)*6,tuple(k))
    _add(out,'free_degree_ge43',43,(0,)*6)

    # All cheap B22/S/L special classes.  Extra-root information is deliberately
    # forgotten here, making the frontier only larger.
    _add(out,'S3',4,(1,0,0,0,0,0),(1,1,0))
    _add(out,'S4',4,(0,1,0,0,0,0),(1,1,0))
    _add(out,'S5',4,(0,0,1,0,0,0),(0,1,0))
    _add(out,'L',13,(1,0,0,0,0,0),(0,0,0))
    plane_deltas=((0,1,1,0,0,0),(1,0,1,0,0,0),(1,1,0,0,0,0),
                  (1,0,1,0,0,0),(1,1,0,0,0,0),(2,0,0,0,0,0))
    for idx,d in enumerate(plane_deltas):
        _add(out,f'B22_plane{idx}_k4',4,d,(1,0,0))
        _add(out,f'B22_plane{idx}_k6',4,d,(0,1,0))
    _add(out,'B22_59',4,(1,0,0,1,0,0),(1,0,1))
    _add(out,'B22_61',4,(1,0,1,0,0,0),(1,0,1))
    _add(out,'B22_64',4,(1,1,0,0,0,0),(1,0,1))
    _add(out,'B22_70',4,(1,0,0,1,0,0),(1,1,1))
    _add(out,'B22_81',4,(2,0,0,0,0,0),(1,1,1))
    return sorted(set(out))


def pareto(raw):
    raw=sorted(set(raw)); kept=[]
    for a in raw:
        if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1]))
               for b in kept):
            continue
        kept.append(a)
    assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1]))
                   for b in kept) for a in raw)
    return kept
