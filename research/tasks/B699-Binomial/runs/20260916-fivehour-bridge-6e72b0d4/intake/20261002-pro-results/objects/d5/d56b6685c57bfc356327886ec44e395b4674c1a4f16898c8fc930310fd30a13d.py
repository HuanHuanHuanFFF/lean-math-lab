"""Offline immutable-payload verification and clean certificate regeneration."""
from pathlib import Path
import hashlib,json,subprocess,sys,tempfile,time
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parent

def require(ok,msg):
 if not ok:raise RuntimeError(msg)

def main():
 started=time.perf_counter()
 manifest=ROOT/'SHA256SUMS.txt'
 if not manifest.exists():manifest=ROOT/'PAYLOAD_SHA256SUMS.txt'
 require(manifest.exists(),'missing SHA-256 manifest')
 count=0
 for line in manifest.read_text().splitlines():
  expected,name=line.split(maxsplit=1);name=name.removeprefix('./')
  path=ROOT/name
  require(path.is_file() and path.resolve().is_relative_to(ROOT.resolve()),'manifest path')
  require(hashlib.sha256(path.read_bytes()).hexdigest()==expected,'hash mismatch: '+name);count+=1
 print('MANIFEST PASS:',count,'files',flush=True)
 subprocess.run([sys.executable,'-B',str(ROOT/'evidence/verify.py')],check=True)
 with tempfile.TemporaryDirectory(prefix='b699-new-certs-') as td:
  out=Path(td)
  r=subprocess.run([sys.executable,'-B',str(ROOT/'evidence/generate.py'),'--out',str(out)],capture_output=True,text=True)
  require(r.returncode==0,'generation failed: '+r.stdout+r.stderr)
  files=sorted(p.name for p in (ROOT/'certificates').glob('*.json'))
  require(files==sorted(p.name for p in out.glob('*.json')),'certificate coverage')
  for name in files:require((out/name).read_bytes()==(ROOT/'certificates'/name).read_bytes(),'certificate regeneration: '+name)
  print('BYTE REGENERATION PASS:',len(files),'certificates',flush=True)
 print('REPLAY PASS; no repository, no network, no Lean; elapsed_seconds=%.3f'%(time.perf_counter()-started))
if __name__=='__main__':main()
