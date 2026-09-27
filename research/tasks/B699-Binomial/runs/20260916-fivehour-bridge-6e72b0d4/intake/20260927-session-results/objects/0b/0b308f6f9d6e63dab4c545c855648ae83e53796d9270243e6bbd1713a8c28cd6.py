#!/usr/bin/env python3
"""Cleanly extract a supplied archive, replay it, bind receipt to archive SHA."""
import argparse,hashlib,json,subprocess,sys,tempfile,zipfile
from pathlib import Path

def main(archive,receipt):
    archive=archive.resolve();receipt=receipt.resolve()
    with tempfile.TemporaryDirectory(prefix='b699-r7-clean-archive-') as td:
        dest=Path(td)
        with zipfile.ZipFile(archive) as z:
            infos=[i for i in z.infolist() if not i.is_dir()]
            for i in infos:
                p=(dest/i.filename).resolve()
                if not p.is_relative_to(dest):raise ValueError('unsafe zip member')
            roots={Path(i.filename).parts[0] for i in infos}
            if len(roots)!=1:raise ValueError('one archive root required')
            z.extractall(dest)
        root=dest/roots.pop();raw=dest/'receipt.json'
        p=subprocess.run([sys.executable,str(root/'scripts/replay.py'),'--receipt',str(raw)],cwd=root,capture_output=True,text=True,timeout=300)
        if p.returncode:raise RuntimeError(p.stderr)
        data=json.loads(raw.read_text());data.update(archive=str(archive),archive_sha256=hashlib.sha256(archive.read_bytes()).hexdigest(),
             archive_bytes=archive.stat().st_size,archive_regular_files=len(infos),clean_extract=True,
             archive_stdout=p.stdout,archive_stderr=p.stderr)
    receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps(dict(status='PASS',archive_sha256=data['archive_sha256'],files=len(infos),receipt=str(receipt))))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--receipt',type=Path,required=True);a=p.parse_args();main(a.archive,a.receipt)
