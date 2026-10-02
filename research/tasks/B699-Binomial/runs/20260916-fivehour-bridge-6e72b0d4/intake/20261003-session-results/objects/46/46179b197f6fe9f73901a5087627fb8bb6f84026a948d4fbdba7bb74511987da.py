#!/usr/bin/env python3
"""Clean full replay: byte identity, original generator, original checker,
and the separately written R9 finite-data audit. Does not run Lean or network.
"""
from __future__ import annotations
import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile
import time

ROOT=Path(__file__).resolve().parents[1]
CERT_SHA='d8fae3dbddf1c265bf17564352446326d64a3b9c08c94b71edcda3ba372c9cb9'


def need(ok:bool,msg:str)->None:
    if not ok: raise ValueError(msg)


def digest(path:Path)->str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def write_json(path:Path,obj)->None:
    path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n',encoding='utf-8')


def verify_manifest()->int:
    m=json.loads((ROOT/'PAYLOAD_SHA256.json').read_text(encoding='utf-8'))
    for name,h in m['sha256'].items():
        p=ROOT/name
        need(p.is_file() and not p.is_symlink(),'missing/nonordinary member '+name)
        need(digest(p)==h,'payload hash mismatch '+name)
    return len(m['sha256'])


def canonical_checker(data:dict)->dict:
    return {k:v for k,v in data.items() if k not in ('stage_times','wall_seconds')}


def main()->None:
    ap=argparse.ArgumentParser()
    ap.add_argument('--receipt',type=Path,help='write this run receipt outside the frozen package')
    ap.add_argument('--logs-dir',type=Path,help='optional external directory for fresh raw process logs')
    args=ap.parse_args()
    if args.receipt:
        need(ROOT not in args.receipt.resolve().parents,'receipt must be outside frozen package')
    if args.logs_dir:
        need(ROOT not in args.logs_dir.resolve().parents,'logs directory must be outside frozen package')
        args.logs_dir.mkdir(parents=True,exist_ok=True)
    started=dt.datetime.now(dt.timezone.utc).isoformat(); timer=time.monotonic()
    count=verify_manifest(); records=[]
    env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1';env['PYTHONHASHSEED']='0'
    with tempfile.TemporaryDirectory(prefix='B699_R9_clean_') as tmp:
        work=Path(tmp)/'G7'
        shutil.copytree(ROOT/'sources/G7_fixed',work)
        # Remove frozen output: regenerated certificate must be produced anew.
        (work/'outputs/seven_index_certificate.json').unlink()
        commands=[('original_generator',work/'code/generate_all_certificate.py',[]),
                  ('original_independent_checker',work/'code/check_all_certificate.py',[]),
                  ('new_R9_audit',ROOT/'scripts/audit_payload.py',[str(Path(tmp)/'audit.json')])]
        for label,program,extra in commands:
            argv=[sys.executable,'-B',str(program),*extra]
            tick=time.monotonic()
            done=subprocess.run(argv,cwd=tmp,env=env,capture_output=True,timeout=900)
            record={'label':label,'argv':argv,'exit_code':done.returncode,
                    'elapsed_seconds':time.monotonic()-tick,
                    'stdout_sha256':hashlib.sha256(done.stdout).hexdigest(),
                    'stderr_sha256':hashlib.sha256(done.stderr).hexdigest()}
            if args.logs_dir:
                (args.logs_dir/(label+'.stdout.txt')).write_bytes(done.stdout)
                (args.logs_dir/(label+'.stderr.txt')).write_bytes(done.stderr)
            records.append(record)
            if done.returncode:
                sys.stderr.buffer.write(done.stderr)
                raise RuntimeError(label+' exited '+str(done.returncode))
            if label=='original_generator':
                need(digest(work/'outputs/seven_index_certificate.json')==CERT_SHA,
                     'fresh output differs from original historical certificate')
        check=json.loads((work/'outputs/seven_index_independent_check.json').read_text())
        expected=json.loads((ROOT/'certificates/CHECKER_CANONICAL_EXPECTED.json').read_text())
        need(canonical_checker(check)==expected,'checker canonical result mismatch')
        audit_path=Path(tmp)/'audit.json'
        need(audit_path.read_bytes()==(ROOT/'certificates/AUDIT_EXPECTED.json').read_bytes(),
             'new R9 audit deterministic result mismatch')
        result={'status':'PASS','payload_members_verified':count,'original_zip_verified':False,
                'fixed_commit_mathematical_members_verified':8,
                'regenerated_certificate_sha256':CERT_SHA,'CRT_stages':check['bound_stages_checked'],
                'power_pairs':check['power_pairs_checked'],
                'terminal_rows':sum(r['total_rows'] for r in check['profiles']),
                'checker_result_sha256':hashlib.sha256((json.dumps(expected,sort_keys=True,indent=2)+'\n').encode()).hexdigest(),
                'R9_audit_result_sha256':digest(audit_path),'Lean_executed':False,
                'publication_proof_reproved':False,'repository_access_during_replay':False}
        encoded=(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
        receipt={'started_utc':started,'finished_utc':dt.datetime.now(dt.timezone.utc).isoformat(),
                 'elapsed_seconds':time.monotonic()-timer,'argv':sys.argv,
                 'working_package':str(ROOT),'commands':records,'result':result,
                 'canonical_output_sha256':hashlib.sha256(encoded).hexdigest(),
                 'scope':'actual finite-data replay plus byte binding; not Lean, external independent review, or proof of BFT internals'}
        if args.receipt:
            args.receipt.parent.mkdir(parents=True,exist_ok=True);write_json(args.receipt,receipt)
        sys.stdout.buffer.write(encoded)


if __name__=='__main__':
    main()
