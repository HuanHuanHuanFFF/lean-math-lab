"""One SAME vertical allocation pays both ordinary and diagonal-weighted deficits.
Omega=2 Gamma+Star, with Gamma weights (2,2,2,1,1,1).
"""
from discover_source_budget import low,ROOT
from discover_diagonal_budget import lower
import json

def main():
 bs=[]
 for V in range(96):
  d=(305-V)//2;dp={0:(0,[])}
  for r,w in zip(range(3,9),(2,2,2,1,1,1)):
   nxt={}
   for used,(tot,path) in dp.items():
    for v in range(V-used+1):
     lo=low(r,v);st=lower(r,v)
     if lo>d or st>2*d:continue
     val=tot+2*w*lo+st
     if used+v not in nxt or val<nxt[used+v][0]:nxt[used+v]=(val,path+[v])
   dp=nxt
  bs.append({'V':V,'dmax':d,'capacity':30*d-dp[V][0] if V in dp else None,'maximizer':dp[V][1] if V in dp else None})
 ans=[]
 for K in [32,31,30,29]:
  best=None;cnt=0
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     weight=12*K-5*a-4*b-2*c
     if weight>305:continue
     cost=84990*a+49988*b+24985*c
     for bd in bs[:min(306-weight,len(bs))]:
      if bd['capacity'] is None or 7*b+8*c>bd['capacity']:continue
      cnt+=1
      if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'d':K-a-b-c,'weight':weight,'budget':bd,'deficit':7*b+8*c}
  ans.append({'K':K,'best':best,'feasible_records':cnt});print(ans[-1],flush=True)
 (ROOT/'evidence/joint_diagonal_budget.json').write_text(json.dumps({'bounds':bs,'optimization':ans},indent=2))
if __name__=='__main__':main()
