"""Keep ordinary source orders off diagonal, the TRUE weighted order on diagonal.
This is a different invariant; no replacement of ordinary by specialization.
"""
from discover_source_budget import ORD,MID,ROOT
import json

def lower(r,v):
 return 2*sum(max(m-v,0) for m in ORD[r])+max(MID.get(r,0)-v,0)
def main():
 bs=[]
 for V in range(96):
  d=(305-V)//2;dp={0:(0,[])}
  for r in range(3,9):
   nxt={}
   for used,(tot,path) in dp.items():
    for v in range(V-used+1):
     m=lower(r,v)
     if m>2*d:continue
     val=tot+m
     if used+v not in nxt or val<nxt[used+v][0]:nxt[used+v]=(val,path+[v])
   dp=nxt
  bs.append({'V':V,'dmax':d,'capacity':12*d-dp[V][0] if V in dp else None,'maximizer':dp[V][1] if V in dp else None})
 ans=[]
 for K in [32,31,30,29,28]:
  best=None;cnt=0
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     weight=12*K-5*a-4*b-2*c
     if weight>305:continue
     cost=84990*a+49988*b+24985*c
     for bd in bs[:min(306-weight,len(bs))]:
      if bd['capacity'] is None or 3*b+4*c>bd['capacity']:continue
      cnt+=1
      if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'d':K-a-b-c,'weight':weight,'budget':bd,'deficit':3*b+4*c}
  ans.append({'K':K,'best':best,'feasible_records':cnt});print(ans[-1],flush=True)
 (ROOT/'evidence/diagonal_budget.json').write_text(json.dumps({'bounds':bs,'optimization':ans},indent=2))
if __name__=='__main__':main()
