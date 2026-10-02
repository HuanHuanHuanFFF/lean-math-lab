#!/usr/bin/env python3
"""Safely unpack an archive to a NEW directory; verify, replay, compare, verify.
Usage: python3 code/check_clean_archive.py package.zip /tmp/new-check receipt.json
The ZIP remains unchanged. The returned receipt binds its actual byte hash.
"""
from pathlib import Path
import hashlib,json,subprocess,sys,time,zipfile
sys.dont_write_bytecode=True
from verify_manifest import verify
from compare_replay import compare

def main(zp,out,receipt):
 assert not out.exists();out.mkdir(parents=True)
 zh=hashlib.sha256(zp.read_bytes()).hexdigest();t=time.monotonic()
 with zipfile.ZipFile(zp)as z:
  names=z.namelist();assert len(names)==len(set(names))
  assert all(not Path(n).is_absolute()and '..'not in Path(n).parts for n in names)
  assert all((info.external_attr>>16)&0o170000 !=0o120000 for info in z.infolist())
  assert z.testzip()is None
  z.extractall(out/'unpacked')
 roots=list((out/'unpacked').iterdir());assert len(roots)==1 and roots[0].is_dir();root=roots[0]
 before=verify(root)
 log=out/'replay.log'
 with log.open('w')as f:p=subprocess.run([sys.executable,'-B',str(root/'code/replay.py'),'--out',str(out/'replayed')],stdout=f,stderr=subprocess.STDOUT)
 assert p.returncode==0,('replay failed',p.returncode,str(log))
 same=compare(root/'certificates',out/'replayed/certificates');after=verify(root)
 result={'status':'PASS_FINAL_ARCHIVE_CLEAN_REPLAY','archive_name':zp.name,'archive_sha256':zh,
  'archive_bytes':zp.stat().st_size,'ZIP_entries':len(names),'safe_extraction_and_CRC':'PASS',
  'manifest_before':before,'replay_exit_code':p.returncode,'comparison':same,'manifest_after':after,
  'replay_stdout_sha256':hashlib.sha256(log.read_bytes()).hexdigest(),'elapsed_seconds':time.monotonic()-t,
  'historical_mathematical_chain_replayed':False,'external_independent_review':False,'Lean_run':False,'repository_operations':False}
 receipt.write_text(json.dumps(result,indent=2,ensure_ascii=False)+'\n');print(json.dumps({k:v for k,v in result.items()if k!='comparison'},indent=2))
if __name__=='__main__':main(*(Path(p).resolve()for p in sys.argv[1:4]))
