#!/usr/bin/env python3
"""Verify the extracted package, regenerate every certificate, and run acceptance.
Receipts must be written outside the package. Standard library only, offline.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import platform
import shutil
import subprocess
import sys
import tempfile
import zipfile


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def files_in(root):
    return {p.relative_to(root).as_posix(): p for p in root.rglob('*')
            if p.is_file() and '__pycache__' not in p.parts and p.suffix != '.pyc'}


def manifest(root, name, expected):
    p = root / name
    require(p.is_file(), 'Missing manifest: ' + name)
    entries = {}
    for line in p.read_text(encoding='utf-8').splitlines():
        digest, rel = line.split('  ', 1)
        path = PurePosixPath(rel)
        require(not path.is_absolute() and '..' not in path.parts, 'Unsafe manifest path')
        require(rel not in entries, 'Duplicate manifest entry')
        q = root / rel
        require(q.is_file() and not q.is_symlink(), 'Missing or symlinked file: ' + rel)
        require(len(digest) == 64 and sha(q) == digest, 'Hash mismatch: ' + rel)
        entries[rel] = digest
    require(set(entries) == set(expected), 'Manifest membership mismatch: ' + name)
    return {'manifest': name, 'sha256': sha(p), 'verified_files': len(entries)}


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--receipt', type=Path, required=True)
    ap.add_argument('--archive', type=Path)
    a = ap.parse_args()
    root = Path(__file__).resolve().parents[1]
    receipt_path = a.receipt.resolve()
    require(not receipt_path.is_relative_to(root), 'Write receipt outside the immutable package')
    receipt = {
        'schema': 'b699-c-replay-v1',
        'started_utc': datetime.now(timezone.utc).isoformat(),
        'python': platform.python_version(), 'platform': platform.platform(),
        'package_root': str(root), 'status': 'RUNNING',
        'scope': 'Hash integrity and exact finite replay; not a formal or independent mathematical review.',
        'commands': [], 'network_required': False,
    }
    try:
        actual = files_in(root)
        payload = {k for k in actual if k not in ('PAYLOAD.sha256', 'SHA256SUMS')
                   and not k.startswith('replay/')}
        receipt['payload_verification'] = manifest(root, 'PAYLOAD.sha256', payload)
        if (root/'SHA256SUMS').exists():
            receipt['full_package_verification'] = manifest(root, 'SHA256SUMS', set(actual)-{'SHA256SUMS'})
        else:
            receipt['full_package_verification'] = {'status': 'not present at payload-only stage'}
        if a.archive:
            archive = a.archive.resolve()
            with zipfile.ZipFile(archive) as z:
                names = [info.filename for info in z.infolist() if not info.is_dir()]
                expected = {root.name+'/'+rel for rel in actual}
                require(len(names)==len(set(names)) and set(names)==expected, 'Archive member mismatch')
                require(z.testzip() is None, 'ZIP CRC failure')
                for rel, p in actual.items():
                    require(hashlib.sha256(z.read(root.name+'/'+rel)).hexdigest()==sha(p),
                            'Archive/extracted file mismatch: '+rel)
            receipt['archive'] = {'name': archive.name, 'sha256': sha(archive),
                                  'bytes': archive.stat().st_size, 'members_verified': len(actual)}
        env = os.environ.copy()
        env['PYTHONDONTWRITEBYTECODE'] = '1'
        with tempfile.TemporaryDirectory(prefix='b699-c-exact-replay-') as temp:
            temp = Path(temp)
            def run(label, script, args, expected_success=True):
                cmd = [sys.executable, str(root/'scripts'/script)] + [str(x) for x in args]
                proc = subprocess.run(cmd, cwd=temp, env=env, text=True, encoding='utf-8',
                                      capture_output=True, timeout=120)
                receipt['commands'].append({'label': label, 'argv': cmd, 'returncode': proc.returncode,
                    'expected_success': expected_success, 'stdout': proc.stdout, 'stderr': proc.stderr})
                require((proc.returncode==0)==expected_success, 'Unexpected return code: '+label)
                return proc
            generated = temp/'certificates'
            discovery = run('regenerate-all-certificates', 'research.py', ['--out', generated])
            frozen = files_in(root/'certificates')
            renewed = files_in(generated)
            require(set(frozen)==set(renewed), 'Regenerated certificate membership mismatch')
            hashes = {}
            for rel in sorted(frozen):
                require(frozen[rel].read_bytes()==renewed[rel].read_bytes(), 'Certificate mismatch: '+rel)
                hashes[rel]=sha(renewed[rel])
            receipt['regenerated_certificates'] = hashes
            require(discovery.stdout==(root/'logs/discovery.log').read_text(encoding='utf-8'),
                    'Discovery raw stdout mismatch')
            accepted=run('accept-regenerated-certificates','accept.py',['--certificates',generated])
            require(accepted.stdout==(root/'logs/acceptance.log').read_text(encoding='utf-8'),
                    'Acceptance raw stdout mismatch')
            positive=json.loads(run('consumer-full-49-regression','consumer.py',['151','16']).stdout)
            require(positive['result']=='COMMON6_CERTIFIED_BY_U4_CHAR' and
                    positive['q4']==49 and positive['C']==7, 'Positive consumer CLI failure')
            negative=json.loads(run('consumer-undecided-regression','consumer.py',['14','7']).stdout)
            require(negative['result']=='UNDECIDED','Non-triggering consumer must not claim NC')
            tampered=temp/'deliberately-tampered-certificates'
            shutil.copytree(generated,tampered)
            p=tampered/'universal_consumer_regression.json'
            data=json.loads(p.read_text(encoding='utf-8'))
            target=next(x for x in data['rows'] if (x['n'],x['j'])==(151,16))
            target['C']=1  # Intentionally wrong: true C is 7.
            p.write_text(json.dumps(data,ensure_ascii=False),encoding='utf-8')
            rejected=run('reject-deliberately-corrupted-C','accept.py',['--certificates',tampered],False)
            require('universal definitions' in rejected.stderr, 'Corruption rejected for an unexpected reason')
            receipt['negative_control'] = {'status':'PASS_EXPECTED_REJECTION',
                'changed':'C=7 -> C=1 only in temporary copy of (151,16) certificate'}
        receipt['status']='PASS'
        receipt['evidence_boundary']={'Lean':False,'external_independent_review':False,
                                     'complete_B699':False,'historical_net_reduction_certified':0}
    except Exception as exc:
        receipt['status']='FAIL'
        receipt['error']=repr(exc)
    receipt['finished_utc']=datetime.now(timezone.utc).isoformat()
    receipt_path.parent.mkdir(parents=True,exist_ok=True)
    receipt_path.write_text(json.dumps(receipt,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
    print(json.dumps({'status':receipt['status'],'receipt':str(receipt_path),
        'payload_files':receipt.get('payload_verification',{}).get('verified_files'),
        'certificates':len(receipt.get('regenerated_certificates',{})),
        'negative_control':receipt.get('negative_control',{}).get('status')},ensure_ascii=False))
    return 0 if receipt['status']=='PASS' else 1


if __name__=='__main__':
    sys.exit(main())
