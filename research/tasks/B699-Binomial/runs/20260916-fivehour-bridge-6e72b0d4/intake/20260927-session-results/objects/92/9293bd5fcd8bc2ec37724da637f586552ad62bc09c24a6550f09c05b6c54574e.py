"""Reject intentionally corrupted copies; no production certificate is changed."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import json,tempfile,shutil,subprocess,os
from pathlib import Path
from intake import ROOT,canon,need
cases=[
 ('wrong_source_period','01_source_cycles.json',lambda c:c['periods'].__setitem__('118810',2944)),
 ('free_B_instead_of_quotient','02_true109_quotient.json',lambda c:c['rows'][0].__setitem__('B',65)),
 ('force_zero_square_to_pass','02_true109_quotient.json',lambda c:next(r for r in c['rows'] if r['S']==0)['roots'][0].__setitem__('s_mod180',[1])),
 ('drop_nonunit_d_root','03_A1090_A1458_closure.json',lambda c:c['blocks'][0]['table'][4].__setitem__('roots',[])),
 ('reset_c3_to_c1','03_A1090_A1458_closure.json',lambda c:c['blocks'][1].__setitem__('c',1)),
 ('missing_FN11_root','04_original_FN11.json',lambda c:next(r for r in c['rows'] if r['roots'])['roots'].pop()),
 ('wrong_projection_count','05_projection_delta.json',lambda c:c.__setitem__('net_deleted',c['net_deleted']+1)),
 ('changed_shared_mask','05_projection_delta.json',lambda c:next(r for r in c['rows'] if not r['not_divisible7'])['masks_by_u_a41'][0].__setitem__(0,0)),
 ('reset_shared_exponent','06_finite_boundary.json',lambda c:c.__setitem__('s_mod180',47)),
 ('next_nonunit_d_wrong_H','07_next_A1486.json',lambda c:c['local11'].__setitem__('H',6)),
 ('claim_historical_math_replayed','08_source_adoption.json',lambda c:c.__setitem__('historical_mathematics_executed',True))]
results=[]
for name,f,mut in cases:
 with tempfile.TemporaryDirectory(prefix='b699-a1090-negative-') as td:
  cp=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',cp)
  target=cp/f;c=json.loads(target.read_bytes());before=canon(c);mut(c);need(canon(c)!=before,'test actually changes certificate: '+name);target.write_bytes(canon(c))
  run=subprocess.run([sys.executable,str(ROOT/'evidence/verify.py'),'--cert-dir',str(cp)],capture_output=True,text=True,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
  need(run.returncode!=0,'corruption accepted '+name)
  results.append(dict(test=name,file=f,returncode=run.returncode,rejected=True,diagnostic=run.stderr.splitlines()[-1]))
print(json.dumps(dict(tests=results,all_rejected=True,count=len(results)),ensure_ascii=False,sort_keys=True,indent=2))
