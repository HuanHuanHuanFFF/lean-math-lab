from resource_model import *
raw,sigs=signatures()
@lru_cache(None)
def best(n,c):
 if n==0:return 0
 return min((s[0]+best(n-1,tuple(y-x for x,y in zip(s[1:],c))) for s in sigs if all(x<=y for x,y in zip(s[1:],c))),default=10**6)
ss=[s for s in all_states() if s['E']==1];out=[]
for s in ss:
 c=s['cap'];nonzero=[]
 for r in range(6):
  cost=1 if r%2 else 2
  if c[r]>=cost:
   cc=list(c);cc[r]-=cost
   nonzero.append((r+3,3+best(6,tuple(cc))))
 out.append(dict(**s,balanced7=best(7,c),balanced6=best(6,c),nonzero_positive_min=min((x[1] for x in nonzero),default=10**6),nonzero_tests=nonzero))
stats={q:sum(min(s['balanced7'],s['nonzero_positive_min'],q+s['balanced6'])<=s['h'] for s in out) for q in (6,7,10,16,21,25,32,41,153)}
possible=[s for s in out if min(s['balanced7'],s['nonzero_positive_min'])<=s['h']]
result=dict(scope='counterfactual sensitivity only: raising zero-source-cost epsilon1 degree threshold is NOT established',threshold_survivors=stats,irreducible_by_this_change_count=len(possible),irreducible_by_this_change=possible,states=out)
Path(sys.argv[1]).write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8');print('threshold survivors',stats);print('remaining without free odd factors',len(possible));print('sample',possible[:2])
