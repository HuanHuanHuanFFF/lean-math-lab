from __future__ import annotations
import itertools
from functools import lru_cache

D=(1,3,5)
INF=10**9

def compositions(n,k):
    if k==1:
        yield (n,);return
    for a in range(n+1):
        for b in compositions(n-a,k-1):yield (a,)+b

def base_signatures():
    out=[]
    def add(name,e,d,k=(0,0,0)):
        kk=(0,k[0],0,k[1],0,k[2])
        c=tuple(2*a+b for a,b in zip(d,kk))
        out.append((e,c,name,tuple(d),kk))
    for d in compositions(4,6):add('defect_ge4',4,d)
    for d in compositions(3,6):
        if sum(d[:4]):add('triple_low_early',4,d)
        else:
            for k in [(1,0,0),(0,1,0),(0,0,1)]:add('triple_low_kappa',4,d,k)
        add('triple_degree_ge6',6,d)
    for d in compositions(2,6):
        for a,b in itertools.product(range(2),repeat=2):
            if d[0]+d[1]+d[4]+a>=1 and sum(d[:4])+a+b>=1:add('double5',5,d,(a,b,0))
            if sum(d[:4])+a+b>=1:add('double67',6,d,(a,b,0))
        add('double_ge8',8,d)
    for r in range(6):
        d=tuple(int(i==r) for i in range(6))
        if r<3:add('near16_24_early',16,d)
        else:
            for k in [(1,0,0),(0,1,0),(0,0,1)]:add('near16_24_kappa',16,d,k)
        add('near25_28',25,d)
    for k in [(1,0,0),(0,1,0),(0,0,1)]:add('saturated25_28_kappa',25,(0,)*6,k)
    add('free_degree_ge29',29,(0,)*6)
    return sorted(set(out))

def pareto(raw):
    raw=sorted(set(raw));kept=[]
    for a in raw:
        if any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept):continue
        kept.append(a)
    assert all(any(b[0]<=a[0] and all(x<=y for x,y in zip(b[1],a[1])) for b in kept) for a in raw)
    return raw,kept

def current_signatures():
    raw=[]
    for x in base_signatures():
        if x[2]=='saturated25_28_kappa':
            for a in range(3):
                for b in range(a,3):
                    c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
                    raw.append((25,tuple(c),'sat25_30_kappa2',(0,)*6,tuple(c)))
        elif x[2]=='free_degree_ge29':
            for idx in D:
                c=[0]*6;c[idx]=1
                raw.append((31,tuple(c),'sat31_36_kappa1',(0,)*6,tuple(c)))
            raw.append((37,(0,)*6,'free_degree_ge37',(0,)*6,(0,)*6))
        else:raw.append(x)
    return pareto(raw)

def ksat2_31_signatures():
    """Counterfactual payoff model: q=31 pays total kappa>=2; q=32..36 pays one; q>=37 free."""
    raw=[]
    for x in base_signatures():
        if x[2]=='saturated25_28_kappa':
            for a in range(3):
                for b in range(a,3):
                    c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
                    raw.append((25,tuple(c),'sat25_30_kappa2',(0,)*6,tuple(c)))
        elif x[2]=='free_degree_ge29':
            for a in range(3):
                for b in range(a,3):
                    c=[0]*6;c[D[a]]+=1;c[D[b]]+=1
                    raw.append((31,tuple(c),'sat31_kappa2',(0,)*6,tuple(c)))
            for idx in D:
                c=[0]*6;c[idx]=1
                raw.append((32,tuple(c),'sat32_36_kappa1',(0,)*6,tuple(c)))
            raw.append((37,(0,)*6,'free_degree_ge37',(0,)*6,(0,)*6))
        else:raw.append(x)
    return pareto(raw)

def bellman(items):
    @lru_cache(None)
    def f(n,cap):
        if n==0:return (0,())
        best=(INF,())
        for item in items:
            e,c,name,d,k=item
            if all(c[i]<=cap[i] for i in range(6)):
                z,path=f(n-1,tuple(cap[i]-c[i] for i in range(6)))
                if e+z<best[0]:best=(e+z,(item,)+path)
        return best
    return f

STATES={
 'h133': dict(h=133,v=[9,8,7,6,4,5],E=0,d=[0,1,3,2,0,4],p=[0,0,0,1,0,1]),
 'h137': dict(h=137,v=[7,6,6,5,3,4],E=0,d=[0,0,4,3,0,4],p=[0,0,0,0,0,0]),
 'h143': dict(h=143,v=[4,4,4,3,2,2],E=0,d=[0,1,4,2,2,1],p=[0,0,0,0,0,0]),
 'h147a':dict(h=147,v=[2,2,2,2,1,2],E=0,d=[0,0,2,2,2,5],p=[0,0,0,1,0,0]),
 'h147b':dict(h=147,v=[2,2,3,2,1,1],E=0,d=[0,0,5,2,2,0],p=[0,0,0,1,0,1]),
 'h149': dict(h=149,v=[1,2,2,1,0,1],E=0,d=[0,2,4,1,0,2],p=[0,0,0,0,0,1]),
}
# Frozen 12 winners from six_survivors.json. winner is the number of S5 special factors.
QUERIES=[
 {'state':'h133','winner':3,'available':121,'remaining':6,'cap':(0,2,0,2,0,9),'frozen_current_min':120},
 {'state':'h137','winner':2,'available':129,'remaining':7,'cap':(0,0,4,4,0,8),'frozen_current_min':126},
 {'state':'h137','winner':3,'available':125,'remaining':6,'cap':(0,0,2,3,0,8),'frozen_current_min':120},
 {'state':'h143','winner':2,'available':135,'remaining':7,'cap':(0,2,4,2,4,2),'frozen_current_min':135},
 {'state':'h143','winner':3,'available':131,'remaining':6,'cap':(0,2,2,1,4,2),'frozen_current_min':130},
 {'state':'h143','winner':4,'available':127,'remaining':5,'cap':(0,2,0,0,4,2),'frozen_current_min':122},
 {'state':'h147a','winner':1,'available':143,'remaining':8,'cap':(0,0,2,4,4,10),'frozen_current_min':140},
 {'state':'h147a','winner':2,'available':139,'remaining':7,'cap':(0,0,0,3,4,10),'frozen_current_min':134},
 {'state':'h147b','winner':1,'available':143,'remaining':8,'cap':(0,0,8,4,4,1),'frozen_current_min':142},
 {'state':'h147b','winner':2,'available':139,'remaining':7,'cap':(0,0,6,3,4,1),'frozen_current_min':137},
 {'state':'h147b','winner':3,'available':135,'remaining':6,'cap':(0,0,4,2,4,1),'frozen_current_min':127},
 {'state':'h149','winner':2,'available':141,'remaining':7,'cap':(0,4,4,0,0,5),'frozen_current_min':140},
]
