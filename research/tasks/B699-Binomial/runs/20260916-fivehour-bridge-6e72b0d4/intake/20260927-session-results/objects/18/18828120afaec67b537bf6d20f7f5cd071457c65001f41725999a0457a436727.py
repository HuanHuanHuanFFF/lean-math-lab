#!/usr/bin/env python3
"""Safely extract one evidence ZIP into a fresh temporary directory and replay.
Use only on trusted evidence code: replay executes the included Python scripts.
"""
from __future__ import annotations
import argparse,datetime,hashlib,json,os,subprocess,sys,tempfile,zipfile
from pathlib import Path,PurePosixPath

def main():
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--receipt',type=Path);a=p.parse_args()
    raw=a.archive.read_bytes();sha=hashlib.sha256(raw).hexdigest()
    with tempfile.TemporaryDirectory(prefix='b699-r8-final-clean-') as d:
      target=Path(d)
      with zipfile.ZipFile(a.archive) as z:
        names=z.namelist()
        if len(names)!=len(set(names)):raise ValueError('duplicate archive members')
        tops=set()
        for member in z.infolist():
          name=PurePosixPath(member.filename)
          if name.is_absolute() or '..' in name.parts or '\\' in member.filename:raise ValueError('unsafe ZIP path')
          if (member.external_attr>>16)&0o170000==0o120000:raise ValueError('symlink ZIP member')
          tops.add(name.parts[0])
        if len(tops)!=1:raise ValueError('archive must have one package root')
        z.extractall(target)
      root=target/next(iter(tops))
      receipt=target/'clean-replay.json'
      result=subprocess.run([sys.executable,'-B',str(root/'scripts/replay.py'),'--root',str(root),'--receipt',str(receipt)],
         capture_output=True,text=True,timeout=180,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
      if result.returncode:raise RuntimeError(result.stdout+'\n'+result.stderr)
      replay=json.loads(receipt.read_text())
      output={'status':'PASS','archive_name':a.archive.name,'archive_sha256':sha,'archive_bytes':len(raw),
        'archive_members':len(names),'actual_clean_extract':True,'actual_replay':True,
        'recorded_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'verification':replay,'scope':'integrity and same-author exact replay, not independent mathematical review or Lean'}
    text=json.dumps(output,ensure_ascii=False,indent=2,sort_keys=True)+'\n'
    if a.receipt:a.receipt.write_text(text)
    print(text)
if __name__=='__main__':main()
