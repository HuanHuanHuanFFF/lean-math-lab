#!/usr/bin/env python3
"""Recheck the frozen evidence with standard-library-only acceptance programs."""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import time


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda: f.read(1 << 20), b''):
            h.update(chunk)
    return h.hexdigest()


def verify_manifest(root: Path) -> dict[str, str]:
    data = json.loads((root / 'MANIFEST.json').read_text())
    if data.get('version') != 1 or not isinstance(data.get('files'), dict):
        raise ValueError('Invalid manifest schema')
    listed = data['files']
    actual = {
        str(p.relative_to(root))
        for p in root.rglob('*') if p.is_file()
        and p.name != 'MANIFEST.json'
        and '__pycache__' not in p.parts
    }
    if actual != set(listed):
        raise ValueError('Manifest membership differs from the package')
    for name, digest in listed.items():
        p = (root / name).resolve()
        if not p.is_relative_to(root) or sha256(p) != digest:
            raise ValueError(f'Manifest hash/path failure: {name}')
    return listed


def verify_source_copies(root: Path) -> int:
    intake = json.loads((root / 'sources/INTAKE.json').read_text())
    count = 0
    for archive in intake:
        for record in archive['members']:
            p = (root / record['saved_as']).resolve()
            if not p.is_relative_to(root) or sha256(p) != record['sha256']:
                raise ValueError('Frozen source member differs: ' + record['saved_as'])
            count += 1
    return count


def main() -> None:
    if sys.flags.optimize:
        raise RuntimeError('Run without -O/-OO; acceptance includes assertions')
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--output', type=Path, help='Output directory outside this package')
    args = ap.parse_args()
    root = Path(__file__).resolve().parent
    out = (args.output or Path(tempfile.mkdtemp(prefix='b699-d-joint-'))).resolve()
    if out.is_relative_to(root):
        raise ValueError('Acceptance output must be outside the frozen package')
    out.mkdir(parents=True, exist_ok=True)
    start = time.monotonic()
    before = verify_manifest(root)
    source_count = verify_source_copies(root)
    cert = root / 'evidence/finite-certificate.json'
    jobs = [
        ('finite', 'check_finite.py', [str(cert)]),
        ('finite_alt', 'check_finite_alt.py', [str(cert), '--candidates', str(root / 'evidence/projection-candidates.json')]),
        ('mutations', 'check_mutations.py', [str(cert)]),
        ('algebra', 'check_algebra.py', ['--root', str(root)]),
    ]
    env = dict(os.environ)
    env.pop('PYTHONOPTIMIZE', None)
    env['PYTHONDONTWRITEBYTECODE'] = '1'
    results = []
    for name, script, rest in jobs:
        result_path = out / f'{name}.json'
        command = [sys.executable, '-B', str(root / 'code' / script), *rest, '--output', str(result_path)]
        t = time.monotonic()
        completed = subprocess.run(command, cwd=root, env=env, text=True, capture_output=True, check=False)
        (out / f'{name}.stdout.log').write_text(completed.stdout)
        (out / f'{name}.stderr.log').write_text(completed.stderr)
        if completed.returncode:
            raise RuntimeError(f'{name} failed with exit {completed.returncode}; see {out}')
        obj = json.loads(result_path.read_text())
        if obj.get('status') != 'PASS':
            raise ValueError(f'{name} did not explicitly accept')
        results.append({'name': name, 'returncode': completed.returncode,
                        'wall_seconds': time.monotonic() - t, 'result': obj})
    # The first checker reconstructs the complete candidate list; bind its byte digest.
    candidate_hash = sha256(root / 'evidence/projection-candidates.json')
    if results[0]['result']['candidate_sha256'] != candidate_hash:
        raise ValueError('Rebuilt candidate array does not match frozen bytes')
    after = verify_manifest(root)
    if before != after:
        raise ValueError('Package changed during acceptance')
    summary = {
        'status': 'PASS', 'scope': 'Ordinary exact program acceptance, not Lean or human review',
        'python': sys.version, 'manifest_members': len(before),
        'frozen_source_members': source_count, 'package_unchanged': True,
        'complete_steps': len(results), 'steps': results,
        'seconds': time.monotonic() - start,
    }
    (out / 'verification.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'status': 'PASS', 'steps': len(results), 'manifest_members': len(before),
                      'frozen_source_members': source_count, 'seconds': summary['seconds'],
                      'output': str(out)}, ensure_ascii=False))

if __name__ == '__main__':
    main()
