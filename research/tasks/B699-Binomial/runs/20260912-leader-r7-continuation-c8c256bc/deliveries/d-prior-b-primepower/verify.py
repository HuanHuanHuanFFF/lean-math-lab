#!/usr/bin/env python3
"""Verify frozen hashes and replay every new finite acceptance component.

All output goes outside the evidence package. No network or non-stdlib packages.
This does not turn the paper proof into a Lean theorem or a human review.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import time

ROOT=Path(__file__).resolve().parent

def sha(path: Path) -> str:
    digest=hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda:stream.read(1024*1024), b''): digest.update(chunk)
    return digest.hexdigest()

def run(output: Path) -> dict:
    if not __debug__: raise RuntimeError('Do not run with python -O; assertions are acceptance conditions.')
    output=output.resolve()
    if output==ROOT or ROOT in output.parents:
        raise ValueError('verification output must be outside the frozen package')
    output.mkdir(parents=True,exist_ok=True)
    started=time.perf_counter()
    record={'status':'RUNNING','started_utc':datetime.now(timezone.utc).isoformat(),
            'python':sys.version,'lean':False,'human_review':False,'steps':[]}
    try:
        manifest=json.loads((ROOT/'MANIFEST.json').read_text())
        for entry in manifest['files']:
            path=(ROOT/entry['path']).resolve()
            if ROOT not in path.parents: raise ValueError('unsafe manifest member')
            if not path.is_file() or path.stat().st_size!=entry['bytes'] or sha(path)!=entry['sha256']:
                raise ValueError('manifest mismatch: '+entry['path'])
        listed={entry['path'] for entry in manifest['files']}|{'MANIFEST.json'}
        actual={str(p.relative_to(ROOT)) for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts}
        if listed!=actual: raise ValueError('manifest membership mismatch')
        record['manifest_members']=len(manifest['files'])
        record['steps'].append({'name':'manifest','status':'PASS','files':len(manifest['files'])})
        commands=[
            ('regenerate_certificate',[sys.executable,str(ROOT/'code/generate_certificate.py'),'--output',str(output/'certificate.json')]),
            ('different_implementation',[sys.executable,str(ROOT/'code/check_certificate.py'),str(output/'certificate.json'),'--report',str(output/'checker.json')]),
            ('algebra_and_regression',[sys.executable,str(ROOT/'code/check_algebra_regression.py'),'--output',str(output/'algebra-regression.json')]),
        ]
        env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
        for name,command in commands:
            t=time.perf_counter()
            result=subprocess.run(command,cwd=ROOT,capture_output=True,text=True,env=env,timeout=120)
            (output/(name+'.stdout.txt')).write_text(result.stdout)
            (output/(name+'.stderr.txt')).write_text(result.stderr)
            record['steps'].append({'name':name,'exit_code':result.returncode,'seconds':round(time.perf_counter()-t,6)})
            if result.returncode: raise RuntimeError(name+' failed; read the saved stderr')
        for relative,replayed in [('evidence/certificate.json','certificate.json'),
                                  ('evidence/algebra-regression.json','algebra-regression.json'),
                                  ('replay/checker.json','checker.json')]:
            if (ROOT/relative).read_bytes()!=(output/replayed).read_bytes():
                raise ValueError('replay byte mismatch: '+relative)
        record['steps'].append({'name':'byte_for_byte_replay','status':'PASS','files':3})
        checker=json.loads((output/'checker.json').read_text())
        regression=json.loads((output/'algebra-regression.json').read_text())
        record['summary']={'small_d':checker['small_d'],'quotient':checker['quotient'],
                           'bad_certificates_rejected':len(checker['bad_certificates_rejected']),
                           'identities':len(regression['algebra']['identities']),
                           'finite_regression':regression['regression'],
                           'large_examples':regression['large_prime_powers']['count'],
                           'max_n_digits':regression['large_prime_powers']['max_n_digits']}
        record['status']='PASS'
    except Exception as error:
        record['status']='FAIL';record['error']=repr(error)
        raise
    finally:
        record['seconds']=round(time.perf_counter()-started,6)
        (output/'verification.json').write_text(json.dumps(record,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    return record

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir',type=Path)
    args=parser.parse_args()
    out=args.output_dir or Path(tempfile.mkdtemp(prefix='b699-prob-verify-'))
    result=run(out)
    print(json.dumps({'status':result['status'],'manifest_members':result['manifest_members'],
                      'seconds':result['seconds'],'log':str(out/'verification.json'),
                      'summary':result['summary']},ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
