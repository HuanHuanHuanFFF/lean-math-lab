#!/usr/bin/env python3
"""Cleanly extract the final ZIP, replay it, and bind its SHA-256 externally."""
import argparse,datetime,hashlib,json,os,subprocess,sys,tempfile,zipfile
from pathlib import Path

def main(archive,receipt):
 digest=hashlib.sha256(archive.read_bytes()).hexdigest()
 with tempfile.TemporaryDirectory(prefix='b699-r6-final-clean-') as td:
  td=Path(td)
  with zipfile.ZipFile(archive) as z:
   members=z.infolist()
   for m in members:
    dst=(td/m.filename).resolve()
    assert dst.is_relative_to(td.resolve()),m.filename
    assert (m.external_attr>>16)&0o170000 !=0o120000,'symlink not allowed'
   z.extractall(td)
  roots=[p for p in td.iterdir() if p.is_dir()];assert len(roots)==1
  root=roots[0];rpath=td/'receipt.json'
  result=subprocess.run([sys.executable,str(root/'scripts/replay.py'),'--receipt',str(rpath)],capture_output=True,text=True,env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0'))
  assert result.returncode==0,result.stderr
  resultdata=json.loads(rpath.read_text())
  data={'status':'PASS','archive':archive.name,'archive_sha256':digest,'archive_bytes':archive.stat().st_size,'archive_file_count':sum(not m.is_dir() for m in members),'clean_extraction':True,'returncode':result.returncode,'stdout':result.stdout,'stderr':result.stderr,'replay':resultdata,'receipt_excluded_from_archive_to_avoid_self_hash':True}
 receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
 print(json.dumps({k:data[k] for k in ['status','archive','archive_sha256','archive_file_count']},ensure_ascii=False))
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('receipt',type=Path);a=p.parse_args();main(a.archive,a.receipt)
