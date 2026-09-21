"""Exact receiving checks for reusable quadratic-graph pruning and next ledger diagnostics."""
import json,math
from pathlib import Path
from fractions import Fraction as F
from itertools import combinations
from collections import Counter
from accept_core import need,save
from verify_location_ledger import run,rkey
ROOT=Path(__file__).resolve().parents[1]
def verify_graphs(out):
 pts=[(r,s*(r-s)) for r in range(3,9) for s in range(r//2+1)];curves={}
 # Solve the three-value system via divided differences, not the discovery
 # Lagrange formula. Same exact rational coefficients, all triples included.
 for trip in combinations(pts,3):
  tr=sorted(trip)
  if len({r for r,v in tr})!=3:continue
  (r0,v0),(r1,v1),(r2,v2)=tr
  b01=F(v1-v0,r1-r0);b12=F(v2-v1,r2-r1);a=F(b12-b01,r2-r0);b=b01-a*(r0+r1);c=v0-b*r0-a*r0*r0
  cf=(c,b,a);curves[cf]=tuple(i for i,(r,v) in enumerate(pts) if c+b*r+a*r*r==v)
 old=json.loads((ROOT/'evidence/parabola_probe.json').read_text());hist=Counter(map(len,curves.values()));need(dict(hist)=={int(k):v for k,v in old['hist'].items()},'graph interpolation support histogram')
 selected=[(tuple(F(n,d) for n,d in cf),tuple(ii)) for cf,ii in old['test_curves']]
 actual={(cf,ii) for cf,ii in curves.items() if cf[2] and len(ii)>=4}
 need(len(selected)==len(set(selected)) and set(selected)==actual,'quadratic-graph coverage')
 gates=json.loads((ROOT/'evidence/nf13_h8_gates.json').read_text())['records'];excluded=[];first=Counter()
 for k,g in enumerate(gates):
  mm=[g['roots'][r-3].count(v) for r,v in pts]
  for cf,ii in selected:
   if sum(mm[i] for i in ii)>2*g['q']:excluded.append(k);first[str(cf)]+=1;break
 need(len(excluded)==old['h8_excluded']==145,'quadratic-graph exact exclusion count')
 r={'status':'PASS_NEW_QUADRATIC_GRAPH_DIAGNOSTIC','support_histogram':dict(hist),'nonlinear_graphs_support_ge4':len(actual),'q':13,'deficit_row':8,'input_residuals':len(gates),'excluded':excluded,'first_witness_counts':dict(first),'additional_global_coverage_claimed':False}
 save(out/'QUADRATIC_GRAPH_ACCEPTED.json',r);return {k:v for k,v in r.items() if k not in ('excluded','first_witness_counts')}

def verify_next(out):
 old=json.loads((ROOT/'evidence/next_location_budget.json').read_text());summary=[]
 for x in old:
  need(x['special_types']==[{'q':13,'kappa':[0,0,0]}],'conditional localization class mismatch')
  m,f=x['middle'],x['free'];r=run(m,f)
  need(r['maximum']==x['maximum'] and r['maximum_records']==x['maximum_records'] and r['positive_maximum_records']==x['positive_maximum_records'],'next conditional ledger mismatch')
  need(rkey(x['first_max_record']) in {rkey(z) for z in r['records']},'conditional witness not reproduced')
  summary.append({'middle':m,'free':f,'maximum':r['maximum'],'maximum_records':r['maximum_records'],'geometric_premises_proved':False})
 save(out/'NEXT_CONDITIONAL_BUDGET_ACCEPTED.json',summary);return summary

def verify(out):return {'graphs':verify_graphs(out),'next':verify_next(out)}

def verify_product_counts(out):
 from itertools import combinations_with_replacement
 rows=[]
 for q in range(21,25):
  alln=z14=0
  for ts in combinations_with_replacement(range(4),q):
   z=0
   for r in range(3,9):
    V={s*(r-s) for s in range(r//2+1)};roots={t*(r-t) for t in ts};need(roots<=V,'source-line product not saturated');z+=len(roots)
   need((z>=14)==(len(set(ts))>=3),'product distinct-source count');alln+=1;z14+=int(z>=14)
  need(alln==math.comb(q+3,3) and z14==4*math.comb(q-1,2)+math.comb(q-1,3),'complete product count')
  rows.append({'q':q,'all_monic_products':alln,'z_ge14_products':z14})
 save(out/'SAT_PRODUCT_COUNTS.json',rows);return rows
