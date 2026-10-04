#!/usr/bin/env python3
"""Create or verify this evidence archive. No Lean execution; no repository access."""
from pathlib import Path, PurePosixPath
import argparse, datetime, hashlib, json, shutil, stat, subprocess, tempfile, zipfile
R=Path(__file__).resolve().parents[1]
def digest(p):
 h=hashlib.sha256()
 with Path(p).open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
def safe_extract(z, dest):
 seen=set()
 for info in z.infolist():
  p=PurePosixPath(info.filename)
  if p.is_absolute() or '..' in p.parts or '\\' in info.filename or info.filename in seen:
   raise ValueError('Unsafe or duplicate ZIP entry: '+info.filename)
  seen.add(info.filename)
  if stat.S_ISLNK(info.external_attr >> 16):raise ValueError('Symlink not allowed')
  if info.is_dir():continue
  out=dest.joinpath(*p.parts);out.parent.mkdir(parents=True,exist_ok=True)
  with z.open(info) as src,out.open('wb') as f:shutil.copyfileobj(src,f)
def verify(path):
 path=Path(path).resolve()
 receipt={'archive':path.name,'archive_sha256':digest(path),'archive_bytes':path.stat().st_size,'check_kind':'ZIP/file integrity only, not Lean','verified_at_runtime_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
 with zipfile.ZipFile(path) as z,tempfile.TemporaryDirectory(prefix='b699-r4-final-unpack-') as td:
  bad=z.testzip();assert bad is None,bad
  d=Path(td);safe_extract(z,d)
  roots=[x for x in d.iterdir() if x.is_dir()];assert len(roots)==1
  root=roots[0];manifest=root/'SHA256SUMS.txt';assert manifest.is_file()
  listed={}
  for line in manifest.read_text().splitlines():
   expected,name=line.split('  ',1);assert name not in listed
   p=PurePosixPath(name);assert not p.is_absolute() and '..' not in p.parts
   got=digest(root/name);assert got==expected,name
   listed[name]={'expected_sha256':expected,'actual_sha256':got,'match':True}
  actual={str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()}
  assert actual==set(listed)|{'SHA256SUMS.txt'}
  cp=subprocess.run(['sha256sum','-c','SHA256SUMS.txt'],cwd=root,capture_output=True,text=True)
  assert cp.returncode==0,(cp.stdout,cp.stderr)
  receipt.update(status='passed',crc_bad_member=bad,archive_file_members=sum(not x.is_dir() for x in z.infolist()),manifest_entries=len(listed),manifest_excluded_only_self=True,files=listed,manifest_sha256=digest(manifest),sha256sum_exit_code=cp.returncode,sha256sum_stdout=cp.stdout,sha256sum_stderr=cp.stderr)
 return receipt

def build():
 for p in R.rglob('__pycache__'):shutil.rmtree(p)
 for name in ['SHA256SUMS.txt','evidence/PAYLOAD-UNPACK-RECEIPT.json']:
  (R/name).unlink(missing_ok=True)
 files=sorted(p for p in R.rglob('*') if p.is_file())
 expected={str(p.relative_to(R)):digest(p) for p in files}
 with tempfile.TemporaryDirectory(prefix='b699-r4-payload-') as td:
  td=Path(td);archive=td/'payload.zip'
  with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED) as z:
   for p in files:z.write(p,str(p.relative_to(R)))
  with zipfile.ZipFile(archive) as z:
   assert z.testzip() is None
   out=td/'unpacked';out.mkdir();safe_extract(z,out)
  got={str(p.relative_to(out)):digest(p) for p in out.rglob('*') if p.is_file()}
  assert got==expected
  payload={'status':'passed','scope':'pre-manifest payload; excludes this receipt and final manifest','not_final_archive_hash':True,'payload_zip_sha256':digest(archive),'payload_file_members':len(files),'crc_bad_member':None,'files':{k:{'sha256':v,'unpacked_sha256':got[k],'match':True} for k,v in expected.items()},'is_Lean_verification':False}
 (R/'evidence/PAYLOAD-UNPACK-RECEIPT.json').write_text(json.dumps(payload,ensure_ascii=False,indent=2)+'\n')
 files=sorted(p for p in R.rglob('*') if p.is_file())
 (R/'SHA256SUMS.txt').write_text(''.join(digest(p)+'  '+str(p.relative_to(R))+'\n' for p in files))
 archive=R.with_suffix('.zip')
 with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED) as z:
  for p in sorted(R.rglob('*')):
   if p.is_file():z.write(p,str(Path(R.name)/p.relative_to(R)))
 receipt=verify(archive)
 Path(str(archive)+'.UNPACK-RECEIPT.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
 Path(str(archive)+'.sha256').write_text(digest(archive)+'  '+archive.name+'\n')
 return receipt
if __name__=='__main__':
 p=argparse.ArgumentParser(description=__doc__);g=p.add_mutually_exclusive_group(required=True);g.add_argument('--verify',type=Path);g.add_argument('--build',action='store_true');a=p.parse_args()
 r=build() if a.build else verify(a.verify)
 print(json.dumps({k:v for k,v in r.items() if k not in ('files','sha256sum_stdout')},indent=2))
