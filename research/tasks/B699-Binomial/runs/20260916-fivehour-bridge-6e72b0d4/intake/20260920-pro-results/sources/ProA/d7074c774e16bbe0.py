#!/usr/bin/env python3
"""Convenience serial discovery driver; the archived work used staged runs.
Requires NumPy, SymPy and C++17. Refuses an existing output directory. Final
acceptance is reproduce.py and does not import this driver or SymPy.
"""
import argparse,os,sys,json,shutil,subprocess
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def main():
 pa=argparse.ArgumentParser();pa.add_argument('--out',required=True,type=Path);a=pa.parse_args()
 if not a.out.is_absolute() or a.out.exists():raise ValueError('absolute nonexistent discovery directory required')
 a.out.mkdir();shutil.copytree(ROOT/'code',a.out/'code',ignore=shutil.ignore_patterns('__pycache__'));p=a.out
 for d in ('evidence','logs','tools'):(p/d).mkdir()
 env=dict(os.environ,OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1',B699_TOOLS=str(p/'tools'),B699_FIELDLIB=str(p/'tools/libfield65521.so'))
 for s,t,flags in [('sat_gate.cpp','sat_gate',[]),('nf_gate.cpp','nf_gate',[]),('field65521.cpp','libfield65521.so',['-shared','-fPIC'])]:
  subprocess.run(['g++','-O3','-std=c++17',*flags,str(p/'code'/s),'-o',str(p/'tools'/t)],check=True)
 def step(name,script,*args):
  with (p/'logs'/f'{name}.log').open('w') as f:subprocess.run([sys.executable,'-B','-u',str(p/'code'/script),*map(str,args)],stdout=f,stderr=subprocess.STDOUT,env=env,check=True)
  print('DISCOVERY_COMPLETED',name,flush=True)
 def write(name,x):(p/'evidence'/name).write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
 for q in (13,14):
  step(f'nf{q}_all','discover_fast_stage.py',*[f'nf{q}_h{h}' for h in range(3,9)])
  step(f'nf{q}_recover','recover.py',p/f'evidence/nf{q}_h3_minors.json',p/f'evidence/nf{q}_h3_solutions.json')
  x=json.loads((p/f'evidence/nf{q}_h3_solutions.json').read_text());x['solutions']=[s for s in x['solutions'] if not s['common_source_lines']];write(f'nf{q}_candidate_families.json',x)
  step(f'nf{6*q-1}_signatures','signatures.py',p/f'evidence/nf{q}_candidate_families.json',p/f'evidence/nf{6*q-1}_signatures.json')
  step(f'nf{6*q-1}_peeling','peel_strata.py',p/f'evidence/nf{q}_candidate_families.json',p/f'evidence/nf{6*q-1}_signatures.json',p/f'evidence/nf{6*q-1}_stratum_peeling.json')
 for q in range(21,25):
  step(f'sat{q}_all','discover_fast_stage.py',f'sat{q}')
  step(f'sat{q}_kernels','modular_kernel.py',p/f'evidence/sat{q}_minors.json',p/f'evidence/sat{q}_rank_certificates.json')
  if q==23:step('sat23_product','sat_product.py',p/'evidence/sat23_minors.json',p/'evidence/sat23_product_certificate.json')
 step('irreducible_boundary','irreducible_boundary.py');step('quadratic_graphs','parabola_probe.py')
 # Budget discovery has no external/old-file dependency.
 sys.path.insert(0,str(p/'code'));from special_ledger import ledger_special
 write('location_ledger_probe.json',[ledger_special(15,f,[{'q':13,'kappa':[0,0,0]}]) for f in range(21,26)])
 out=[]
 for m,f in [(15,153),(16,25),(16,153),(17,27),(17,28),(17,29),(17,30),(17,31),(18,29),(18,30),(19,31),(17,153),(18,153),(19,33),(19,34)]:
  z=ledger_special(m,f,[{'q':13,'kappa':[0,0,0]}]);d={k:v for k,v in z.items() if k!='max_records'};d['maximum_records']=len(z['max_records']);d['first_max_record']=z['max_records'][0];out.append(d)
 write('next_location_budget.json',out);print('DISCOVERY_FINISHED_NOT_INDEPENDENT_ACCEPTANCE',flush=True)
if __name__=='__main__':main()
