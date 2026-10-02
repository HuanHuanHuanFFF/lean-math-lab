"""Verify packaged hashes, receive new certificates, regenerate in a clean tempdir."""
from pathlib import Path
import hashlib,os,subprocess,sys,tempfile
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parent

def hashes():
 return {p.relative_to(ROOT).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in ROOT.rglob('*') if p.is_file()}

def main():
 before=hashes();manifest=ROOT/'SHA256SUMS.txt'
 if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
 checked=0
 for line in manifest.read_text().splitlines():
  if not line.strip():continue
  h,p=line.split(None,1);p=p.strip().removeprefix('./')
  if p not in before or before[p]!=h:raise ValueError('Hash mismatch: '+p)
  checked+=1
 print('HASH PASS:',checked,'members via',manifest.name,flush=True)
 env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
 subprocess.run([sys.executable,'-B',str(ROOT/'evidence/verify.py')],cwd=ROOT,env=env,check=True)
 with tempfile.TemporaryDirectory(prefix='A4090_regenerate_') as td:
  subprocess.run([sys.executable,'-B',str(ROOT/'evidence/generate.py'),'--out',td],cwd=ROOT,env=env,check=True)
  a={p.name:p.read_bytes() for p in (ROOT/'certificates').glob('*.json')};b={p.name:p.read_bytes() for p in Path(td).glob('*.json')}
  if a!=b:raise ValueError('Regenerated certificates differ')
  print('BYTE REGENERATION PASS:',len(a),'certificates',flush=True)
 if before!=hashes():raise ValueError('Replay changed package files')
 print('CLEAN REPLAY PASS: exit 0; package unchanged; no Lean; no historical math code executed',flush=True)
if __name__=='__main__':main()
