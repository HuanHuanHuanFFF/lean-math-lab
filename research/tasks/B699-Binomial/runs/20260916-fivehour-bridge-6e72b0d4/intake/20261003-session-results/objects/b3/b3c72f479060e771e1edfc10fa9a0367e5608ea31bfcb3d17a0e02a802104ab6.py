#!/usr/bin/env python3
"""Hash, safely extract, and replay this evidence ZIP in a fresh directory.

Only run on an evidence archive whose Python code you trust.
No repository operations, third-party modules or network requests are used.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import subprocess
import sys
import tempfile
import time
import zipfile


def main() -> None:
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('archive',type=Path)
    ap.add_argument('--receipt',type=Path,required=True)
    args=ap.parse_args()
    archive=args.archive.resolve()
    t0=time.monotonic()
    started=datetime.now(timezone.utc).isoformat()
    digest=hashlib.sha256(archive.read_bytes()).hexdigest()
    with tempfile.TemporaryDirectory(prefix='b699-c-clean-') as temp:
        work=Path(temp)
        with zipfile.ZipFile(archive) as z:
            infos=z.infolist()
            for info in infos:
                p=PurePosixPath(info.filename)
                if p.is_absolute() or '..' in p.parts or ((info.external_attr>>16)&0o170000)==0o120000:
                    raise ValueError('unsafe archive member: '+info.filename)
            roots={PurePosixPath(i.filename).parts[0] for i in infos if i.filename}
            if len(roots)!=1:raise ValueError('expected one archive root')
            z.extractall(work)
        root=work/next(iter(roots))
        cmd=[sys.executable,str(root/'scripts/verify.py'),'--check-manifest',
             '--output',str(work/'recomputed'),'--compare',str(root/'certificates')]
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        proc=subprocess.run(cmd,cwd=work,env=env,text=True,capture_output=True,timeout=180)
        receipt={'status':'PASS' if proc.returncode==0 else 'FAIL',
                 'archive_filename':archive.name,'archive_sha256':digest,
                 'archive_bytes':archive.stat().st_size,'member_files':sum(not i.is_dir() for i in infos),
                 'started_utc_runtime_clock':started,
                 'finished_utc_runtime_clock':datetime.now(timezone.utc).isoformat(),
                 'elapsed_seconds':round(time.monotonic()-t0,6),
                 'python_version':sys.version,'working_directory':'new TemporaryDirectory outside source tree',
                 'command_template':'python EXTRACTED_ROOT/scripts/verify.py --check-manifest --output FRESH_OUTPUT --compare EXTRACTED_ROOT/certificates',
                 'exit_code':proc.returncode,'stdout':proc.stdout,'stderr':proc.stderr,
                 'network_used_by_replay':False,'lean_run':False,'repository_modified':False,
                 'scope':'payload hashes and this round deterministic certificates, not independent review of old mathematical dependencies'}
        args.receipt.parent.mkdir(parents=True,exist_ok=True)
        args.receipt.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
        print(proc.stdout,end='')
        if proc.stderr:print(proc.stderr,file=sys.stderr,end='')
        print('ARCHIVE_SHA256',digest)
        print('RECEIPT',args.receipt)
        if proc.returncode:raise SystemExit(proc.returncode)


if __name__=='__main__':main()
