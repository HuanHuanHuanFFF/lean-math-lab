"""Exact X-degree excess ledger: every type A has deg_w - 2 deg_X >= 1.
Therefore SAME G satisfies 2 deg_X G + V + a <= 305.
"""
from discover_source_budget import ROOT,low
import json,time
INF=10**9

def all_bounds(vmax=110,dmin=80):
 lows={r:[low(r,v) for v in range(vmax+1)] for r in range(3,9)}
 tab={}
 for d in range(dmin,153):
  dp=[INF]*(vmax+1);dp[0]=0
  for r,w in zip(range(3,9),(2,2,2,1,1,1)):
   nd=[INF]*(vmax+1)
   choices=[(v,L) for v,L in enumerate(lows[r]) if L<=d]
   for used in range(vmax+1):
    if dp[used]>=INF:continue
    for v,L in choices:
     if used+v>vmax:break
     val=dp[used]+w*L
     if val<nd[used+v]:nd[used+v]=val
   dp=nd
  tab[d]=[9*d-x if x<INF else None for x in dp]
 return tab

def main():
 start=time.monotonic();tab=all_bounds();ans=[]
 for K in [33,32,31,30,29,28,27,26]:
  best=None;cnt=0
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     weight=12*K-5*a-4*b-2*c
     if weight>305:continue
     cost=84990*a+49988*b+24985*c
     for V in range(min(110,305-weight)+1):
      dx=(305-V-a)//2
      if dx<80:continue
      cap=tab[dx][V]
      if cap is None or 2*(b+c)>cap:continue
      cnt+=1
      if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'d':K-a-b-c,'weight':weight,'V':V,'dmax':dx,'capacity':cap,'need':2*(b+c)}
  ans.append({'K':K,'best':best,'feasible_records':cnt});print(ans[-1],flush=True)
 (ROOT/'evidence/excess_budget.json').write_text(json.dumps({'vmax':110,'dmin':80,'capacities':tab,'optimization':ans},separators=(',',':')))
 print('seconds',round(time.monotonic()-start,2))
if __name__=='__main__':main()
