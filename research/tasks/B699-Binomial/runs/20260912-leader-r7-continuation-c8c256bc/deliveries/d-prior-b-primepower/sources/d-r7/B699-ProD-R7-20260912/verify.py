#!/usr/bin/env python3
"""Re-run every numerical/algebraic acceptance check and compare frozen outputs.

Default execution does not modify this evidence package. Write a fresh run log
outside the package with --output /tmp/b699-verification.json.
"""
from __future__ import annotations
import argparse
from datetime import datetime,timezone
import hashlib
import json
import os
from pathlib import Path
import platform
try:
    import resource
except ImportError:  # Windows: proof checks do not depend on RSS diagnostics.
    resource = None
import subprocess
import sys
import tempfile
import time

ROOT=Path(__file__).resolve().parent


def require(ok,message):
    if not ok: raise ValueError(message)


def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()


def manifest_check():
    data=json.loads((ROOT/'MANIFEST.json').read_text(encoding='utf-8'))
    require(data['schema']=='B699-ProD-file-manifest-1','manifest schema')
    declared=[row['path'] for row in data['files']]
    actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file()
            and p.name!='MANIFEST.json' and '__pycache__' not in p.parts and p.suffix!='.pyc'}
    require(len(declared)==len(set(declared)) and set(declared)==actual,
            'manifest member list mismatch or duplicate')
    for row in data['files']:
        p=(ROOT/row['path']).resolve()
        require(p.is_relative_to(ROOT),'manifest path escapes package')
        require(p.is_file() and p.stat().st_size==row['bytes'],'missing file or byte count')
        require(sha(p)==row['sha256'],f'file hash mismatch: {row["path"]}')
    return len(data['files'])


def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--skip-manifest',action='store_true',help='For initial local package assembly only')
    parser.add_argument('--output',type=Path)
    args=parser.parse_args()
    if args.output:
        # Do not overwrite a frozen evidence member, which would invalidate the manifest.
        require(not args.output.resolve().is_relative_to(ROOT),'write fresh logs outside this frozen package')
    start=time.monotonic(); started=datetime.now(timezone.utc).isoformat()
    count=None if args.skip_manifest else manifest_check()
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    steps=[]
    def run(relative_args,expected=None):
        ts=time.monotonic()
        cmd=[sys.executable,*relative_args]
        p=subprocess.run(cmd,cwd=ROOT,env=env,capture_output=True,text=True)
        require(p.returncode==0,f'command failed: {relative_args}; stderr={p.stderr[:4000]}')
        result=json.loads(p.stdout)
        require(result.get('status')=='PASS','checker did not report PASS')
        if expected:
            frozen=json.loads((ROOT/expected).read_text(encoding='utf-8'))
            require(result==frozen,f'recomputed evidence differs: {expected}')
        steps.append({'command':['python',*relative_args],
                      'elapsed_seconds_diagnostic':time.monotonic()-ts,
                      'result':result,'stderr':p.stderr})
        return result
    run(['code/check_minimal.py','--mutations'],'evidence/minimal-check.json')
    run(['code/check_log_certificate.py','--mutations'],'evidence/full-log-check.json')
    run(['code/check_algebra.py'],'evidence/algebra-check.json')
    run(['code/check_consumers.py'],'evidence/consumer-check.json')
    run(['code/check_modular_boundary.py'],'evidence/modular-boundary-check.json')
    with tempfile.TemporaryDirectory(prefix='b699-log-regeneration-') as td:
        dest=Path(td)/'certificate.json'
        generated=run(['code/build_log_certificate.py','--output',str(dest)])
        require(dest.read_bytes()==(ROOT/'evidence/two-log-certificates.json').read_bytes(),
                'regenerated full certificate differs byte-for-byte')
        gen=json.loads(dest.read_text(encoding='utf-8'))
        minimal={'schema':'B699-ProD-three-bin-minimal-1','B':gen['B'],
                 'analytic_v_upper_exclusive':gen['analytic_v_upper_exclusive'],
                 'reduced_v_upper_exclusive':96,'approximation':gen['approximation_certificates'][0]}
        require(minimal==json.loads((ROOT/'evidence/minimal-log-certificate.json').read_text(encoding='utf-8')),
                'minimal certificate does not match independently generated rational')
        # A temp path is a run-time detail, not a required external dependency.
        steps[-1]['command']=['python','code/build_log_certificate.py','--output','<isolated temporary file>']
    source_map=json.loads((ROOT/'adopted/SOURCE_MAP.json').read_text(encoding='utf-8'))
    for row in source_map['adopted_files']:
        p=ROOT/row['saved_as']
        require(p.stat().st_size==row['bytes'] and sha(p)==row['sha256'],'adopted bytes changed')
    out={'status':'PASS','started_utc':started,'python_version':platform.python_version(),
         'platform':platform.system(),'manifest_files_checked':count,
         'adopted_files_checked':len(source_map['adopted_files']),
         'numerical_or_algebraic_steps':len(steps),
         'total_elapsed_seconds_diagnostic':time.monotonic()-start,
         'max_child_RSS_KiB_linux_diagnostic':(resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss
             if resource is not None and platform.system()=='Linux' else None),
         'steps':steps,'scope':'Exact finite data, symbolic identities, source-byte integrity, and regressions. Not Lean, not a machine proof of the paper reductions, not a second-researcher review.'}
    if args.output:args.output.write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
    print(json.dumps({'status':'PASS','steps':len(steps),'manifest_files_checked':count,
                      'seconds_diagnostic':out['total_elapsed_seconds_diagnostic'],
                      'max_child_RSS_KiB_linux_diagnostic':out['max_child_RSS_KiB_linux_diagnostic'],
                      'scope':out['scope']},ensure_ascii=False))


if __name__=='__main__':main()
