"""Exact scalar DP for fixed-G source jets, followed by relaxed component budget."""
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]
ORD={3:[77,74],4:[67,57],5:[51,54,46],6:[40,43,48],7:[31,34,39,45],8:[25,28,33,39]}
MID={4:56,6:41,8:52}
def low(r,v):return sum(max(0,m-v) for m in ORD[r])+((max(0,MID[r]-v)+1)//2 if r in MID else 0)
def compute(vmax=88):
 out=[]
 for V in range(vmax+1):
  d=(305-V)//2;dp={0:(0,[])}
  for r in range(3,9):
   nxt={}
   for used,(s,path) in dp.items():
    for v in range(V-used+1):
     ell=low(r,v)
     if ell>d:continue
     val=s+ell
     if used+v not in nxt or val<nxt[used+v][0]:nxt[used+v]=(val,path+[v])
   dp=nxt
  if V in dp:
   s,path=dp[V];out.append({'V':V,'dmax':d,'max_deficit':6*d-s,'min_Lsum':s,'maximizer':path})
  else:out.append({'V':V,'dmax':d,'max_deficit':None})
 return out

def main():
 bs=compute();ans=[]
 for k in [34,33,32,31,30,29]:
  best=None;cnt=0
  for a in range(k+1):
   for b in range(k-a+1):
    for c in range(k-a-b+1):
     weight=12*k-5*a-4*b-2*c
     if weight>305:continue
     cost=84990*a+49988*b+24985*c
     for row in bs[:min(306-weight,len(bs))]:
      if row['max_deficit'] is None or b+c>row['max_deficit']:continue
      cnt+=1
      if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'d':k-a-b-c,'weight':weight,'V':row['V'],'deficit':b+c,'budget':row}
  ans.append({'K':k,'best':best,'feasible_relaxed_records':cnt})
  print(ans[-1],flush=True)
 (ROOT/'evidence/source_budget.json').write_text(json.dumps({'source_ordinary':ORD,'source_mid_weighted':MID,'bounds':bs,'optimization':ans},indent=2))
if __name__=='__main__':main()
