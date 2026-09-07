"""Select contact combinations; certify all reported intervals with Fraction."""
from pathlib import Path
from fractions import Fraction as Q
from math import floor, ceil, comb
import json
from datetime import datetime, timezone

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[4]
DATA = json.loads((HERE.parents[1]/'round5/main/contact_search.json').read_text())
L, U, N = Q(83894387, 10000000), Q(83894390, 10000000), 20000

def combine(a, b, u, v):
    p = {}
    for scale, vec in ((a,u),(b,v)):
        for x,y,c in vec['terms']:
            p[x,y] = p.get((x,y),0) + scale*c
    return {k:c for k,c in p.items() if c}

def bounds(p):
    result=[]
    for k in range(6):
        lo=sum(c*(L if c>0 else U)**a for (a,b),c in p.items() if a+b==k)
        hi=sum(c*(U if c>0 else L)**a for (a,b),c in p.items() if a+b==k)
        result.append((lo,hi))
    lo,hi=result[5]
    for k,(a,b) in enumerate(result[:5]):
        lo += min(a,0)/N**(5-k)
        hi += max(b,0)/N**(5-k)
    return result,(lo,hi)

def shifted_bounds(p):
    result=[]
    for k in range(6):
        coeff={j:sum(c*comb(a,j)*L**(a-j) for (a,b),c in p.items() if a+b==k and a>=j) for j in range(min(4,k)+1)}
        lo=coeff[0]+sum(min(c,0)*(U-L)**j for j,c in coeff.items() if j)
        hi=coeff[0]+sum(max(c,0)*(U-L)**j for j,c in coeff.items() if j)
        result.append((lo,hi))
    lo,hi=result[5]
    for k,(a,b) in enumerate(result[:5]):
        lo += min(a,0)/N**(5-k)
        hi += max(b,0)/N**(5-k)
    return result,(lo,hi)

rows=[]
for slots in ([1,2,3],[1,3,4],[2,3,5],[3,4,5]):
    row=next(r for r in DATA['rows'] if r['slots']==slots)
    u,v=row['auxiliaries']
    mid=(L+U)/2
    leads=[float(sum(c*mid**a for a,b,c in t['terms'] if a+b==5)) for t in (u,v)]
    shortlist=[]
    for a in range(0,5001):
        target=-a*leads[0]/leads[1]
        for b in range(round(target)-2,round(target)+3):
            if not a and not b: continue
            est=abs(a*leads[0]+b*leads[1])
            if est<100000:
                shortlist.append((est,a,b))
    out=[]
    for _,a,b in sorted(shortlist)[:500]:
        p=combine(a,b,u,v)
        pieces,(lo,hi)=shifted_bounds(p)
        if lo<0<hi: continue
        score=max(abs(lo),abs(hi))
        out.append((score,a,b,lo,hi,p,pieces))
    best=sorted(out,key=lambda x:x[0])[:5]
    result={'slots':slots,'leads':leads,'candidates':[]}
    for score,a,b,lo,hi,p,pieces in best:
        result['candidates'].append({'combination':[a,b],'bounds':[str(lo),str(hi)],'bounds_float':[float(lo),float(hi)],'terms':[[x,y,c] for (x,y),c in sorted(p.items())], 'pieces':[[str(x),str(y)] for x,y in pieces]})
    print(slots,[(x[1],x[2],float(x[3]),float(x[4])) for x in best],flush=True)
    rows.append(result)
(HERE/'combination-search-shifted.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),'cutoff':N,'evidence':'exact Fraction interval after heuristic candidate choice','rows':rows},indent=2)+'\n')
