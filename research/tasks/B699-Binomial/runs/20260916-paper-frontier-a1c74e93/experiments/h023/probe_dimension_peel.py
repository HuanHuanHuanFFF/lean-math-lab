"""Exact bounded diagnostic: H023 dimension and forced line peeling.

This is a polynomial-method diagnostic, not a binomial counterexample search.
"""
from pathlib import Path
import itertools
import json
import math
import heapq
from datetime import datetime, timezone

ROOT = Path(__file__).resolve().parent
RS = (1, 4, 5, 6)
POINTS = [(b, r-b) for r in RS for b in range(r+1)]
LINES = {}
for (x,y),(u,v) in itertools.combinations(POINTS,2):
    a,b,c=y-v,u-x,x*v-u*y
    g=math.gcd(a,b,c)
    a,b,c=a//g,b//g,c//g
    if a<0 or (a==0 and b<0): a,b,c=-a,-b,-c
    LINES[a,b,c]=[i for i,(x,y) in enumerate(POINTS) if a*x+b*y+c==0]

def weights(d):
    # The next unit in row r costs (r+1)*(w+1), so greedy is exact.
    w=[0]*len(RS)
    heap=[(r+1,i) for i,r in enumerate(RS)]
    heapq.heapify(heap)
    for _ in range(d+1):
        _,i=heapq.heappop(heap)
        w[i]+=1
        heapq.heappush(heap,((RS[i]+1)*(w[i]+1),i))
    return w

def peel(d,w):
    mult=[w[RS.index(x+y)] for x,y in POINTS]
    remaining=d
    factors=[]
    while remaining>=0:
        excess,line=max((sum(mult[i] for i in ids)-remaining,line) for line,ids in LINES.items())
        if excess<=0: break
        factors.append(line)
        remaining-=1
        for i in LINES[line]: mult[i]=max(0,mult[i]-1)
    return dict(degree=remaining, factors=factors,
                points=[[*p,m] for p,m in zip(POINTS,mult) if m],
                conditions=sum(m*(m+1)//2 for m in mult),
                columns=(remaining+1)*(remaining+2)//2 if remaining>=0 else 0,
                all_factors_positive_at_jk_ge8=all(a>=0 and b>=0 and 8*(a+b)+c>0 for a,b,c in factors))

def main():
    first_dim=None
    first_peel=None
    records=[]
    for d in range(1,501):
        w=weights(d)
        count=sum((r+1)*m*(m+1)//2 for r,m in zip(RS,w))
        cols=(d+1)*(d+2)//2
        result=peel(d,w)
        if count<cols and first_dim is None: first_dim=d
        if result['conditions']<result['columns'] and first_peel is None: first_peel=d
        if d%10==0 or d in (first_dim,first_peel):
            records.append(dict(degree=d,weights=w,conditions=count,columns=cols,peel=result))
    out=dict(created_utc=datetime.now(timezone.utc).isoformat(),
             exact_degree_range=[1,500],rows=RS,first_plain_dimension_degree=first_dim,
             first_peeling_dimension_degree=first_peel,records=records)
    (ROOT/'dimension_peel.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps({k:v for k,v in out.items() if k!='records'}))
    print(json.dumps([{k:v for k,v in r.items() if k!='peel'}|{'peel_degree':r['peel']['degree'],
         'peel_conditions':r['peel']['conditions'],'peel_columns':r['peel']['columns'],
         'factor_count':len(r['peel']['factors']),'positive_factors':r['peel']['all_factors_positive_at_jk_ge8']}
         for r in records if r['degree']<=first_peel+10]))

if __name__=='__main__': main()
