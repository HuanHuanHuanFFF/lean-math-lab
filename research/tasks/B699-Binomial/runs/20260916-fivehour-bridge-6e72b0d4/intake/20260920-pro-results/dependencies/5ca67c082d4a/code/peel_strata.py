#!/usr/bin/env python3
"""Exact whole-stratum line-factor diagnostics (discovery-side output).
Uses the parameter equality locus, a superset of each locally closed stratum.
"""
import json,sys
from pathlib import Path
from fractions import Fraction as F
from accept_core import loadpoly,affine_space,packpoly,enc
from check_families import combine,line_restriction

def main(src,sigs,out):
 fs=json.loads(src.read_text())['solutions'];sgs=json.loads(sigs.read_text())['families'];res=[]
 for fam,sg in zip(fs,sgs):
  assert fam['index']==sg['index'];Ps=list(map(loadpoly,fam['polynomials']));q=fam['record']['q'];d=len(Ps)-1;entries=[]
  for z in sg['strata']:
   eq=[[F(*x) for x in e] for e in z['equations']];aff=affine_space(eq,d);assert aff is not None
   b,dirs,_=aff;P0=combine(Ps,b);polys=[P0]
   for v in dirs:
    P={}
    for c,H in zip(v,Ps[1:]):
     for k,a in H.items():P[k]=P.get(k,F(0))+c*a
    polys.append({k:a for k,a in P.items() if a})
   lines=[t for t in range(9) if all(not line_restriction(P,t) for P in polys)]
   refined=[]
   for t in (2,3,4):
    rows=fam['record']['roots'];m=rows[2*t-3].count(t*t);S=sum(row.count(t*(r-t)) for r,row in zip(range(3,9),rows));w=z['weighted_orders'][t-2]
    if S-m+w>2*q:refined.append(t)
   assert set(refined)<=set(lines)
   entries.append({'weighted_orders':z['weighted_orders'],'kappa':z['kappa'],'parameter_dimension':len(dirs),'all_equality_locus_line_factors':lines,'refined_line_forced':refined,'parameter_base':[enc(x) for x in b],'parameter_directions':[[enc(x) for x in v] for v in dirs]})
  survivors=[x for x in entries if not x['all_equality_locus_line_factors']]
  lb=[min(x['kappa'][i] for x in survivors) for i in range(3)] if survivors else None
  res.append({'index':fam['index'],'strata':entries,'unpeeled_kappa_lower':lb})
  print('STRATUM_PEEL',q,fam['index'],'survivors',len(survivors),'lower',lb,flush=True)
  for x in entries:print(x['weighted_orders'],'lines',x['all_equality_locus_line_factors'],'refined',x['refined_line_forced'],flush=True)
 out.write_text(json.dumps({'families':res},sort_keys=True,separators=(',',':'))+'\n')
if __name__=='__main__':main(*map(Path,sys.argv[1:]))
