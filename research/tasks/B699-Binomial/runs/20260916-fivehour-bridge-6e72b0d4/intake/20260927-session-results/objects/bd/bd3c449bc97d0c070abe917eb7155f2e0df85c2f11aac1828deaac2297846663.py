"""Offline, read-only replay of the complete current-round evidence."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
import hashlib,json,os,subprocess,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent

def sha(b):return hashlib.sha256(b).hexdigest()
def snapshot():return {p.relative_to(ROOT).as_posix():sha(p.read_bytes()) for p in ROOT.rglob('*') if p.is_file()}
def run(args):
 p=subprocess.run([sys.executable]+args,cwd=ROOT,capture_output=True,text=True,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'),timeout=120)
 print(p.stdout,end='')
 if p.returncode:raise RuntimeError(p.stderr or 'replay subprocess failed')
 return {'returncode':p.returncode,'stdout_sha256':sha(p.stdout.encode()),'stderr':p.stderr}
def main():
 before=snapshot();manifest=ROOT/'SHA256SUMS.txt'
 if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
 if not manifest.exists():raise FileNotFoundError('no checksum manifest')
 n=0
 for line in manifest.read_text().splitlines():
  h,f=line.split(maxsplit=1);p=ROOT/f.removeprefix('./')
  if p.resolve().is_relative_to(ROOT) is False or sha(p.read_bytes())!=h:raise ValueError('checksum mismatch: '+f)
  n+=1
 print('HASH PASS',n,manifest.name)
 vr=run(['evidence/verify.py'])
 with tempfile.TemporaryDirectory(prefix='b699-regenerate-') as td:
  gr=run(['evidence/generate.py','--out',td]);actual=sorted(p.name for p in (ROOT/'certificates').glob('*.json'));found=sorted(p.name for p in Path(td).glob('*.json'))
  if actual!=found:raise ValueError('certificate coverage changed')
  for name in actual:
   if (ROOT/'certificates'/name).read_bytes()!=(Path(td)/name).read_bytes():raise ValueError('regenerated certificate differs: '+name)
 if snapshot()!=before:raise ValueError('replay changed a package file')
 print(json.dumps({'replay':'PASS','hash_entries':n,'certificates_regenerated':len(actual),'byte_equal':True,'package_unchanged':True,'verify':vr,'generate':gr},sort_keys=True))
if __name__=='__main__':main()
