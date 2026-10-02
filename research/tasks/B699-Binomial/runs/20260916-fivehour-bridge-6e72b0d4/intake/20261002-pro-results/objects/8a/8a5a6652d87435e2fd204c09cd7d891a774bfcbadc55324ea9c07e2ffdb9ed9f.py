"""Offline replay: manifest, independent receiver, byte-identical regeneration."""
from pathlib import Path
import hashlib,json,os,subprocess,sys,tempfile
sys.dont_write_bytecode=True
R=Path(__file__).resolve().parent

def hashes():
 return {p.relative_to(R).as_posix():hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(R.rglob('*')) if p.is_file()}
def run(argv):
 p=subprocess.run([sys.executable,*map(str,argv)],cwd=R,text=True,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'},check=False)
 if p.returncode:raise RuntimeError('Command failed with '+str(p.returncode))
def main():
 before=hashes();manifest='SHA256SUMS.txt' if (R/'SHA256SUMS.txt').is_file() else 'PAYLOAD_SHA256SUMS.txt'
 lines=(R/manifest).read_text().splitlines();listed={}
 for line in lines:
  h,n=line.split('  ',1);n=n.removeprefix('./')
  if n in listed:raise ValueError('Duplicate manifest member '+n)
  listed[n]=h
 if set(listed)!=set(before)-{manifest}:raise ValueError('Manifest coverage mismatch')
 for n,h in listed.items():
  if before[n]!=h:raise ValueError('Hash mismatch '+n)
 print('MANIFEST PASS:',len(listed),'files',flush=True)
 run([R/'evidence/verify.py'])
 with tempfile.TemporaryDirectory(prefix='b699-r3-regenerate-') as t:
  out=Path(t);run([R/'evidence/generate.py','--out',out])
  orig={p.name:p.read_bytes() for p in (R/'certificates').glob('*.json')};new={p.name:p.read_bytes() for p in out.glob('*.json')}
  if orig!=new:raise ValueError('Regenerated certificate bytes differ')
  print('REGENERATION PASS:',len(orig),'byte-identical certificates',flush=True)
 if hashes()!=before:raise ValueError('Replay modified the package')
 print(json.dumps({'status':'PASS','manifest':manifest,'hashed_files':len(listed),'certificates':len(orig),'regenerated_byte_identical':True,'package_unchanged':True,'historical_code_executed':False,'Lean_run':False},sort_keys=True),flush=True)
if __name__=='__main__':main()
