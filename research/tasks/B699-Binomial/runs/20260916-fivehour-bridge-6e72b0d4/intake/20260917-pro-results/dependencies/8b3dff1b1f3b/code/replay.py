#!/usr/bin/env python3
"""Regenerate/recheck only new obligations; never fetch or run old chains."""
from __future__ import annotations
import hashlib,json,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def mathematical(x):
 if isinstance(x,dict):return {k:mathematical(v) for k,v in x.items() if k not in {'elapsed_seconds','python'}}
 if isinstance(x,list):return [mathematical(v) for v in x]
 return x

def main():
 at=time.monotonic();cpath=ROOT/'evidence/affine-certificates.json';before=cpath.read_bytes()
 files=['generation.json','verification.json','regression.json','mutations.json']
 previous={f:mathematical(json.loads((ROOT/'outputs'/f).read_text())) for f in files}
 stages=[]
 for script in ['generate.py','verify.py','regression.py','mutations.py']:
  start=time.monotonic()
  result=subprocess.run([sys.executable,str(ROOT/'code'/script)],cwd=ROOT,text=True,capture_output=True,check=False,timeout=120)
  if result.returncode:
   raise RuntimeError(script+' failed\n'+result.stdout[-2500:]+'\n'+result.stderr[-2500:])
  stages.append({'script':script,'returncode':result.returncode,'elapsed_seconds':time.monotonic()-start})
 if before!=cpath.read_bytes():raise AssertionError('new certificate bytes changed')
 comparisons={}
 for f in files:
  after=mathematical(json.loads((ROOT/'outputs'/f).read_text()))
  if previous[f]!=after:raise AssertionError('mathematical output changed: '+f)
  comparisons[f]={'equal_except_timing_and_python':True,'mathematical_sha256':hashlib.sha256(json.dumps(after,sort_keys=True,separators=(',',':')).encode()).hexdigest()}
 out={'status':'PASS_CLEAN_NEW_CHAIN_REPLAY','certificate_identical_bytes':True,'certificate_sha256':hashlib.sha256(before).hexdigest(),'mathematical_outputs':comparisons,'stages':stages,'elapsed_seconds':time.monotonic()-at,'old_U_chain_replayed':False,'Lean':False,'external_independent_review':False}
 (ROOT/'outputs/replay.json').write_text(json.dumps(out,indent=2)+'\n')
 print(json.dumps(out,indent=2))
if __name__=='__main__':main()
