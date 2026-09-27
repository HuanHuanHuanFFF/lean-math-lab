"""Deliberately corrupt mathematical certificate fields and require rejection."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,shutil,subprocess,tempfile,os
from pathlib import Path
from intake import ROOT,canon,need

def mutate(case,certs):
 file,kind=case
 p=certs/file;x=json.loads(p.read_text())
 if kind=='period_state':x['states']['19'][1][0]=(x['states']['19'][1][0]+1)%19
 elif kind=='quotient':x['rows'][0]['B']=(x['rows'][0]['B']+1)%19
 elif kind=='zero_root':next(r for r in x['rows'] if r['S']==0)['roots'][0]['kept']=False
 elif kind=='P_root':
  rr=next(r for r in x['rows'] if r['m']==31 and r['roots']);rr['roots'][0]['P']=(rr['roots'][0]['P']+1)%31
 elif kind=='power_period':x['P31_power_exponent_period']=3
 elif kind=='true_B3':x['B_by_c']['1']=1
 elif kind=='P5_cycle':x['A576']['positive_P5_cycle_mod31']=[5,25,24]
 elif kind=='projection_weight':x['rows'][0][3]+=1
 elif kind=='projection_total':x['counts'][-1]+=1
 elif kind=='same_exponent':x['s_mod90']=52
 elif kind=='next_q':x['q_mod84']=8
 else:raise ValueError(kind)
 p.write_bytes(canon(x))

def main():
 cases=[('01_source_cycles.json','period_state'),('02_true19_quotient.json','quotient'),('02_true19_quotient.json','zero_root'),('04_original_local_tables.json','P_root'),('04_original_local_tables.json','power_period'),('05_TRUE3_A558_A576.json','true_B3'),('05_TRUE3_A558_A576.json','P5_cycle'),('06_projection_delta.json','projection_weight'),('06_projection_delta.json','projection_total'),('07_finite_boundary.json','same_exponent'),('08_next_A882.json','next_q')]
 receipts=[];env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
 for file,kind in cases:
  with tempfile.TemporaryDirectory(prefix='b699-negative-') as td:
   cs=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',cs);mutate((file,kind),cs)
   full=kind.startswith('projection')
   cmd=[sys.executable,str(ROOT/'evidence/verify.py'),'--certdir',str(cs)]+([] if full else ['--skip-projection'])
   p=subprocess.run(cmd,capture_output=True,text=True,env=env,timeout=60)
   need(p.returncode!=0,'receiver accepted mutated certificate: '+kind)
   receipts.append(dict(case=kind,certificate=file,full_projection_checked=full,rejected=True,returncode=p.returncode,last_error_line=p.stderr.strip().splitlines()[-1] if p.stderr.strip() else ''))
 print(json.dumps(dict(schema='negative-mathematical-tests-v1',all_rejected=True,count=len(receipts),tests=receipts),ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
