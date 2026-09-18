from discover_source_budget import low,ROOT
import json

def rows_for(weights,vmax=88):
 out=[]
 for V in range(vmax+1):
  d=(305-V)//2;dp={0:(0,[])}
  for r,w in zip(range(3,9),weights):
   nxt={}
   for used,(s,path) in dp.items():
    for v in range(V-used+1):
     ell=low(r,v)
     if ell>d:continue
     val=s+w*ell
     if used+v not in nxt or val<nxt[used+v][0]:nxt[used+v]=(val,path+[v])
   dp=nxt
  if V in dp:
   s,path=dp[V];out.append({'V':V,'dmax':d,'capacity':sum(weights)*d-s,'maximizer':path})
  else:out.append({'V':V,'dmax':d,'capacity':None})
 return out

def run(weights=(2,2,2,1,1,1)):
 bs=rows_for(weights);ans=[]
 for k in [33,32,31,30]:
  best=None;cnt=0
  for a in range(k+1):
   for b in range(k-a+1):
    for c in range(k-a-b+1):
     weight=12*k-5*a-4*b-2*c
     if weight>305:continue
     cost=84990*a+49988*b+24985*c
     for row in bs[:min(306-weight,len(bs))]:
      if row['capacity'] is None or 2*(b+c)>row['capacity']:continue
      cnt+=1
      if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'d':k-a-b-c,'weight':weight,'V':row['V'],'weighted_deficit_lower':2*(b+c),'budget':row}
  ans.append({'K':k,'best':best,'feasible_relaxed_records':cnt});print(ans[-1],flush=True)
 (ROOT/'evidence/weighted_source_budget.json').write_text(json.dumps({'weights':weights,'bounds':bs,'optimization':ans},indent=2))
if __name__=='__main__':run()
