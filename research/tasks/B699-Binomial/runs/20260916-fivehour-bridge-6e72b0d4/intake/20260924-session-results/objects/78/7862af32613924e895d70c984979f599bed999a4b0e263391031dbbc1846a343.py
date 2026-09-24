from pathlib import Path
import sys,json
b=Path('/mnt/data/next_round');sys.path.insert(0,str(b/'inputs'));import frozen_model as m
R=m.raw_signatures(b/'inputs/frozen_signatures.json');states=m.all_states()
base=[[2,2],[1,2],[1,1,2],[1,1,1],[1,1,1,1],[1,1,1,1]]
pairs=[(0,1),(0,2),(0,3),(1,2),(1,3),(2,3)]
# source A,B,C,D indices into off-row arrays
collisions=[(0,0),(0,1),(1,1),(2,2)]
profiles={}
for e,c,name,d,k in R:
 if name not in ['S4','S5']and not name.startswith('B22_plane'):continue
 off=[x[:]for x in base];dw=[0,2,0,2,0,0]
 if name=='S4':off[1][1]-=1
 elif name=='S5':off[2][2]-=1
 else:
  p=int(name.split('_')[1][5:]);ret=pairs[p]
  for j,(r,s)in enumerate(collisions):
   if j not in ret:off[r][s]-=1
 for j in [1,3,5]:dw[j]-=k[j]
 # validate ordinary source signatures (centers m4=m6=1, m8=0)
 mu=[sum(x)+(1 if j in [1,3]else 0)for j,x in enumerate(off)]
 assert [4-x for x in mu]==d,(name,mu,d)
 profiles[name]={'off_upper':off,'weighted_upper':dw,'cost':c}
old=[]
for line in (b/'discovery/fees_noP4.txt').read_text().splitlines():
 i,h,need=map(int,line.split())
 if need>h:old.append(i)
ids=sorted(set(old+[1626]));cases=[]
for i in ids:
 st=states[i]
 for name,pf in profiles.items():
  if not all(x<=c for x,c in zip(pf['cost'],st['cap'])):continue
  a,d=m.initial_orders(st);off=[[max(x-y,0)for x,y in zip(ar,mm)]for ar,mm in zip(a,pf['off_upper'])];dw=[max(x-y,0)for x,y in zip(d,pf['weighted_upper'])]
  J=sum(x*(x+1)//2 for ar in off for x in ar)+sum(sum(max(x-2*j,0)for j in range((x+1)//2))for x in dw)
  cases.append({'state':i,'name':name,'h':st['h']-4,'off':off,'weighted':dw,'constraints':J,'columns':(st['h']-3)**2})
print('profile systems',len(cases),'row surplus min',min(x['constraints']-x['columns']for x in cases),'states',len(ids),'profiles',len(profiles))
print('min cases',[(x['state'],x['name'],x['constraints']-x['columns'])for x in cases if x['constraints']<x['columns']])
(b/'inputs/profiles.json').write_text(json.dumps(profiles,indent=2));(b/'inputs/quotient_cases.json').write_text(json.dumps(cases,indent=2));(b/'inputs/target_ids.json').write_text(json.dumps(ids))
# Row file canonical format: h then 21 lines (r,s,ordinaryOrWeight). center is weighted only.
for x in cases:
 path=b/f'inputs/case_{x["state"]}_{x["name"]}.txt';txt=str(x['h'])+'\n'
 for r in range(3,9):
  for s in range(r//2+1):txt+=f'{r} {s} {x["weighted"][r-3]if 2*s==r else x["off"][r-3][s]}\n'
 path.write_text(txt)
