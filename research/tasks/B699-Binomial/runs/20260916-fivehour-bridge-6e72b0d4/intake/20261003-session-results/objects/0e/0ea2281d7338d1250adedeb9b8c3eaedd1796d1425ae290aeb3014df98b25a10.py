#!/usr/bin/env python3
"""Offline immutable-package replay. Python 3 + C++17; no network/CAS/Lean/repository.
Generated binaries and optional receipts are outside the package.
"""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,time,zipfile
from datetime import datetime,timezone
from pathlib import Path,PurePosixPath
ROOT=Path(__file__).resolve().parent
EXPECTED_PREVIOUS='6e8e87c67742440dac04c77f043003c80bdab7bc8ac8732d4d6bfee5594437e8'
R3='B699-ProB-REG3-COMPAT-20261002-R3/'

def digest(path):
 h=hashlib.sha256()
 with path.open('rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()

def manifest(name):
 if name not in ['SHA256SUMS','PAYLOAD_SHA256SUMS']:raise ValueError('Unknown manifest')
 paths={}
 for line in (ROOT/name).read_text().splitlines():
  expected,relative=line.split('  ',1);p=PurePosixPath(relative)
  if p.is_absolute() or '..' in p.parts or relative in paths or len(expected)!=64:raise ValueError('Unsafe manifest entry')
  target=ROOT/relative
  if target.is_symlink() or not target.is_file():raise ValueError('Missing/unsafe file: '+relative)
  actual=digest(target)
  if actual!=expected:raise ValueError('Hash mismatch: '+relative)
  paths[relative]=actual
 exclusions={name}
 if name=='PAYLOAD_SHA256SUMS':exclusions|={'SHA256SUMS','receipts/CLEAN_REPLAY.json'}
 actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}-exclusions
 if actual!=set(paths):raise ValueError('Manifest membership mismatch: '+repr(sorted(actual^set(paths))))
 return {'status':'PASS','entries':len(paths),'manifest':name,'manifest_sha256':digest(ROOT/name)}

def source_audit():
 archive=ROOT/'inputs/PREVIOUS_EVIDENCE.zip'
 if digest(archive)!=EXPECTED_PREVIOUS:raise ValueError('Previous archive hash mismatch')
 mapping={'inputs/generic.json':'certificates/generic.json','inputs/recovery.json':'certificates/recovery.json','inputs/R1_scale.json':'inputs/R1_scale.json','inputs/R2_core.json':'inputs/R2_core.json','inputs/R14_HANDOFF.md':'inputs/R14_HANDOFF.md','inputs/R3_HANDOFF.md':'HANDOFF.md','inputs/R3_PROOFS.md':'PROOFS.md','code/ipoly.py':'code/ipoly.py','code/original_pair_audit.py':'code/original_pair_audit.py'}
 with zipfile.ZipFile(archive) as z:
  names=z.namelist()
  if len(names)!=len(set(names)) or any(PurePosixPath(n).is_absolute() or '..' in PurePosixPath(n).parts for n in names):raise ValueError('Unsafe previous archive')
  if z.testzip() is not None:raise ValueError('Previous archive CRC mismatch')
  listed={}
  for line in z.read(R3+'SHA256SUMS').decode().splitlines():
   expected,rel=line.split('  ',1)
   if hashlib.sha256(z.read(R3+rel)).hexdigest()!=expected:raise ValueError('Previous member hash mismatch')
   listed[rel]=expected
  if set(listed)!={n[len(R3):] for n in names if not n.endswith('/') and n!=R3+'SHA256SUMS'}:raise ValueError('Previous membership mismatch')
  for local,old in mapping.items():
   if (ROOT/local).read_bytes()!=z.read(R3+old):raise ValueError('Adopted source byte mismatch: '+local)
 if digest(ROOT/'inputs/R14_HANDOFF.md')!='400b3af9713f0c528be83ff1fae2935879a987b91bf3873068d93e68049f0461':raise ValueError('R14 binding mismatch')
 return {'status':'PASS','previous_zip_sha256':EXPECTED_PREVIOUS,'previous_members':len(names),'previous_manifest_entries':len(listed),'adopted_exact_bindings':len(mapping),'R14_original_bytes_verified':True,'requested_Overview_sha256_verified':False,'new_remote_version_check':False,'previous_mathematical_replay_actually_performed_in_this_round':'receipts/R3_ADOPTION_REPLAY.json'}

def main():
 ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--manifest',default='SHA256SUMS',choices=['SHA256SUMS','PAYLOAD_SHA256SUMS']);ap.add_argument('--receipt',type=Path);args=ap.parse_args()
 if args.receipt and (args.receipt.resolve()==ROOT or ROOT in args.receipt.resolve().parents):ap.error('Write receipts outside the immutable evidence package.')
 start=time.monotonic();beg=datetime.now(timezone.utc).isoformat();before=manifest(args.manifest);source=source_audit();runs=[]
 for program,count in [('code/verify.py',72),('code/test_consumers.py',23)]:
  t=time.monotonic();proc=subprocess.run([sys.executable,'-I','-B',str(ROOT/program)],cwd=ROOT,text=True,capture_output=True,timeout=240,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'))
  if proc.returncode:raise RuntimeError(program+' failed:\n'+proc.stdout+'\n'+proc.stderr)
  data=json.loads(proc.stdout)
  if data.get('status')!='PASS' or data.get('checks')!=count:raise ValueError('Unexpected checker output')
  runs.append({'program':program,'source_sha256':digest(ROOT/program),'exit_code':proc.returncode,'seconds':round(time.monotonic()-t,3),'stdout_sha256':hashlib.sha256(proc.stdout.encode()).hexdigest(),'stderr':proc.stderr,'result':data})
 after=manifest(args.manifest)
 result={'status':'PASS','started_utc':beg,'finished_utc':datetime.now(timezone.utc).isoformat(),'seconds':round(time.monotonic()-start,3),'manifest_before':before,'source_audit':source,'runs':runs,'manifest_after':after,'isolated_python':True,'compiled_binary_outside_package':True,'network_used':False,'lean_run':False,'repository_touched':False,'external_independent_math_review':False,'scope':'finite normalized points only; emptiness and original-input finiteness NOT established','historical_original_net_gain':'0 / unverified'}
 text=json.dumps(result,ensure_ascii=False,indent=2)+'\n'
 if args.receipt:args.receipt.write_text(text,encoding='utf-8')
 print(text)
if __name__=='__main__':
 try:main()
 except Exception as e:
  print(json.dumps({'status':'FAIL','error':str(e)},ensure_ascii=False),file=sys.stderr);sys.exit(1)
