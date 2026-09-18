"""Low-mu consumers plus SAME-allocation near-pencil row and diagonal constraints.
A=other small degree, B=near quartic, C=near quintic, E=nonnear quintic, D>=12.
"""
from discover_source_budget import low,ROOT
from discover_diagonal_budget import lower
import json
INF=10**9

def group_cost(rows,V,d):
 dp=[INF]*(V+1);dp[0]=0
 for r in rows:
  nd=[INF]*(V+1)
  for used in range(V+1):
   for v in range(used+1):
    L=low(r,v)
    if L<=d:nd[used]=min(nd[used],dp[used-v]+L)
  dp=nd
 return dp

def main():
 bs=[]
 for V in range(96):
  d=(305-V)//2;early=group_cost([3,4,5],V,d);late=group_cost([7,8],V,d);T=[-1]*34;witness=[None]*34
  for u in range(V+1):
   if early[u]>=INF:continue
   ec=3*d-early[u]
   for v6 in range(V-u+1):
    w=V-u-v6
    if late[w]>=INF or low(6,v6)>d:continue
    sc=2*d-lower(6,v6)
    if sc<0:continue
    total=ec+3*d-low(6,v6)-late[w]
    for k in range(min(ec,sc,33)+1):
     if total>T[k]:T[k]=total;witness[k]=[u,v6,w,ec,sc]
  bs.append({'V':V,'dmax':d,'max_total_given_near':T,'witness':witness})
 ans=[]
 for K in [31,30,29,28]:
  best=None;cnt=0
  for a in range(K+1):
   for b in range(K-a+1):
    for c in range(K-a-b+1):
     for e in range(K-a-b-c+1):
      high=K-a-b-c-e;weight=7*a+8*b+10*c+10*e+12*high
      if weight>305:continue
      cost=84990*a+49988*b+24985*c+74985*e
      for bd in bs[:min(306-weight,len(bs))]:
       if bd['max_total_given_near'][b+c]<b+c+2*e:continue
       cnt+=1
       if best is None or cost<best['cost']:best={'cost':cost,'a':a,'b':b,'c':c,'e':e,'d':high,'weight':weight,'V':bd['V'],'near':b+c,'total_need':b+c+2*e,'max_total':bd['max_total_given_near'][b+c],'witness':bd['witness'][b+c]}
  ans.append({'K':K,'best':best,'feasible_records':cnt});print(ans[-1],flush=True)
 (ROOT/'evidence/near_budget.json').write_text(json.dumps({'bounds':bs,'optimization':ans},separators=(',',':')))
if __name__=='__main__':main()
