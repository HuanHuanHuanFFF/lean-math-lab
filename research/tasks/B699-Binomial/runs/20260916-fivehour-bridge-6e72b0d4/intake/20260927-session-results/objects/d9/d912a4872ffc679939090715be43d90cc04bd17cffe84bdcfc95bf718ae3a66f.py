"""Offline reproducibility; does not run historical research scripts or modify the package."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import os,subprocess,json,tempfile,hashlib
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot():return {str(p.relative_to(ROOT)):digest(p) for p in ROOT.rglob('*') if p.is_file()}
def main():
 before=snapshot();manifest=ROOT/'SHA256SUMS.txt'
 if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
 if not manifest.exists():raise RuntimeError('Missing manifest')
 count=0
 for line in manifest.read_text().splitlines():
  h,name=line.split(maxsplit=1);path=ROOT/name.removeprefix('./')
  if not path.is_file() or digest(path)!=h:raise RuntimeError('Manifest mismatch: '+name)
  count+=1
 print(json.dumps({'phase':'manifest','status':'PASS','manifest':manifest.name,'checked':count}),flush=True)
 env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
 subprocess.run([sys.executable,'-B',str(ROOT/'evidence/verify.py')],cwd=ROOT,env=env,check=True)
 with tempfile.TemporaryDirectory(prefix='A882-regenerate-') as td:
  subprocess.run([sys.executable,'-B',str(ROOT/'evidence/generate.py'),'--out',td],cwd=ROOT,env=env,check=True)
  current={p.name:p.read_bytes() for p in (ROOT/'certificates').glob('*.json')}
  regen={p.name:p.read_bytes() for p in Path(td).glob('*.json')}
  if current!=regen:raise RuntimeError('Regenerated certificate bytes differ')
 print(json.dumps({'phase':'regenerate','status':'PASS','identical_certificates':len(current)}),flush=True)
 if before!=snapshot():raise RuntimeError('Replay modified package files')
 print(json.dumps({'phase':'replay','status':'PASS','unchanged_package':True,'offline':True,'historical_mathematics_rerun':False,'evidence_level':'same-author exact arithmetic; no Lean or external independent review'}),flush=True)
if __name__=='__main__':main()
