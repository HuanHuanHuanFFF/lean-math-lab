"""Independent SAME-G receiver: a dedicated row-3 single-deficit class L.
Unlike discovery, loop over L before the S counts and C before B.
"""
from accept_ledger import source_states
from accept_core import need,save
from itertools import product
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parents[1]

def rkey(r):
 return (r['h'],tuple(r['v']),tuple(r['d']),tuple(r['p']),r['E'],r['a'],tuple(r['S']),tuple(r['specials']),r['B'],r['C'],r['F'],r['size'],r['x_cost'])

def verify_witness(s,r,middle,free):
 need(all(r[k]==s[k] for k in ('h','v','d','p','E')),'mixed vertical allocations')
 h,d,p,E=s['h'],s['d'],s['p'],s['E'];a=r['a'];ell=r['specials'][0];x3,x4,x5=r['S'];x=x3+x4+x5
 need(all(isinstance(z,int) and z>=0 for z in [a,ell,x3,x4,x5,r['B'],r['C'],r['F']]),'nonintegral/negative class count')
 ds=[d[0]-x3-ell,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
 need(a<=E and min(ds)>=0,'same-state source/excess capacity')
 need(2*r['B']+r['C']<=sum(ds),'ordinary defect capacity')
 cost=3*a+13*ell+4*x+4*r['B']+middle*r['C']+free*r['F']
 need(cost<=h and cost==r['x_cost'],'X-degree capacity')
 need(r['size']==a+ell+x+r['B']+r['C']+r['F'],'factor number')

def run(middle,free):
 _,_,states=source_states();best=-1;records=[];per=[];queries=0
 for s in states:
  h,d,p,E=s['h'],s['d'],s['p'],s['E'];local=-1
  for a in range(min(E,h//3)+1):
   for ell in range(min(d[0],(h-3*a)//13)+1):
    for x3,x4,x5 in product(range(d[0]-ell+1),range(d[1]+1),range(d[2]+1)):
     x=x3+x4+x5;X=h-3*a-13*ell-4*x
     ds=[d[0]-x3-ell,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
     if X<0 or min(ds)<0:continue
     T=sum(ds)
     for c in range(min(T,X//middle)+1):
      for b in range(min((T-c)//2,(X-middle*c)//4)+1):
       f=(X-middle*c-4*b)//free;K=a+ell+x+b+c+f;queries+=1;local=max(local,K)
       r={**s,'a':a,'S':[x3,x4,x5],'specials':[ell],'B':b,'C':c,'F':f,'size':K,'x_cost':3*a+13*ell+4*x+4*b+middle*c+free*f}
       if K>best:best=K;records=[]
       if K==best:records.append(r)
  per.append({'h':h,'v':s['v'],'maximum':local})
 for r in records:verify_witness(r,r,middle,free)
 records.sort(key=rkey)
 return {'maximum':best,'middle':middle,'free':free,'states':len(states),'queries':queries,'maximum_records':len(records),'positive_maximum_records':sum(r['a']>0 for r in records),'records':records,'per_state':per}

def verify(out):
 ds=json.loads((ROOT/'evidence/location_ledger_probe.json').read_text());summary=[]
 for f,d in zip(range(21,26),ds):
  need(d['middle']==15 and d['free']==f and d['special_types']==[{'q':13,'kappa':[0,0,0]}],'location class input scope')
  r=run(15,f);need(r['maximum']==d['maximum'] and r['queries']==d['queries'],'ledger maximum/query disagreement')
  need([rkey(x) for x in r['records']]==sorted(rkey(x) for x in d['max_records']),'maximum record sets differ')
  save(out/f'location15_free{f}_accepted.json',r);summary.append({k:v for k,v in r.items() if k not in ('records','per_state')})
 need(summary[-1]['maximum']==10 and summary[-1]['positive_maximum_records']==0,'COVER10/EDGE10 not established')
 equality=sorted({(x['h'],tuple(x['v'])) for x in r['records']})
 need(all(x['E']==0 for x in r['records']),'FULL-EDGE10 not established')
 positive_slack=max(x['maximum'] for x in r['per_state'] if 305-2*x['h']-sum(x['v'])>=1)
 need(positive_slack<=9,'positive total surplus branch not closed')
 edge={'status':'PASS_FULL_EDGE10','maximum_if_total_slack_positive':positive_slack,'equality_vertical_state_count':len(equality),
       'equality_h_values':sorted({h for h,v in equality}),'equality_vertical_states':[{'h':h,'v':v,'total_slack':305-2*h-sum(v)} for h,v in equality],
       'equality_forces_weighted_degree_G':305,'equality_forces_all_remaining_factors_D_equals_2e':True}
 save(out/'FULL_EDGE10.json',edge)
 save(out/'LEDGER_SUMMARY.json',{'status':'PASS_SAME_G_LOCATION_COVER10_FULL_EDGE10','rows':summary,'full_edge':{k:v for k,v in edge.items() if k!='equality_vertical_states'}});return summary
