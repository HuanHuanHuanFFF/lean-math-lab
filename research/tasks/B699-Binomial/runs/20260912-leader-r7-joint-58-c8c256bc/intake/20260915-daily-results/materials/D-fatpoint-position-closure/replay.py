#!/usr/bin/env python3
"""Replay only this round's certificates; never run a frozen historical chain."""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parent

def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as handle:
        for block in iter(lambda: handle.read(1 << 20), b''):
            h.update(block)
    return h.hexdigest()

def manifest_check() -> dict:
    manifest = json.loads((ROOT / 'MANIFEST.json').read_text())
    expected = set()
    for item in manifest['files']:
        relative = Path(item['path'])
        if relative.is_absolute() or '..' in relative.parts:
            raise ValueError('Unsafe path in manifest')
        p = ROOT / relative
        if item['path'] in expected:
            raise ValueError('Duplicate manifest member')
        expected.add(item['path'])
        if not p.is_file() or p.stat().st_size != item['bytes'] or digest(p) != item['sha256']:
            raise ValueError(f'Manifest mismatch: {relative}')
    actual = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*')
              if p.is_file() and p.name != 'MANIFEST.json'
              and '__pycache__' not in p.parts and p.suffix != '.pyc'}
    if expected != actual:
        raise ValueError(f'Member-set mismatch: {sorted(expected ^ actual)}')
    return {'listed_members': len(expected), 'status': 'PASS_EXACT_MEMBER_SET_AND_HASHES'}

def command(script: str, args: list[str]) -> dict:
    start = time.perf_counter()
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONOPTIMIZE='0')
    proc = subprocess.run([sys.executable, '-B', str(ROOT / 'code' / script), *args],
                          cwd=ROOT, env=env, text=True, capture_output=True, check=False)
    if proc.returncode:
        raise RuntimeError(f'{script} failed ({proc.returncode}):\n{proc.stdout}\n{proc.stderr}')
    print(f'PASS {script}', flush=True)
    return {'script': script, 'returncode': proc.returncode,
            'seconds': time.perf_counter() - start,
            'stdout': proc.stdout, 'stderr': proc.stderr}

def compare(generated: Path, published: Path) -> dict:
    if generated.read_bytes() != published.read_bytes():
        raise ValueError(f'Regenerated mathematical output differs: {published.name}')
    return {'file': published.relative_to(ROOT).as_posix(),
            'bytes': published.stat().st_size, 'sha256': digest(published),
            'comparison': 'BYTE_IDENTICAL'}

def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--regenerate', action='store_true', help='Recreate all NEW finite domains')
    parser.add_argument('--reconstruct', action='store_true', help='Optionally reconstruct polynomials (NumPy)')
    parser.add_argument('--receipt', type=Path, help='Write a receipt OUTSIDE the archive directory')
    args = parser.parse_args()
    if not __debug__:
        raise RuntimeError('Optimized Python disables assertions; use ordinary python3')
    if args.receipt:
        target = args.receipt.resolve()
        if target == ROOT or ROOT in target.parents:
            raise ValueError('Receipt must be outside the immutable evidence directory')
    started = datetime.now(timezone.utc).isoformat()
    start = time.perf_counter()
    before = manifest_check()
    runs, comparisons = [], []
    with tempfile.TemporaryDirectory(prefix='b699-d-fatpoint-') as temp:
        temp = Path(temp)
        if args.regenerate:
            runs.append(command('generate.py', ['--out', str(temp / 'generated')]))
            for name in ('domains.json', 'rows.json', 'families.json'):
                comparisons.append(compare(temp / 'generated' / name, ROOT / 'evidence' / name))
        for script, name in (('verify.py', 'verification.json'),
                             ('regression.py', 'regression.json'),
                             ('mutation_tests.py', 'mutations.json')):
            runs.append(command(script, ['--out', str(temp / name)]))
            comparisons.append(compare(temp / name, ROOT / 'evidence' / name))
        if args.reconstruct:
            runs.append(command('reconstruct_polynomials.py', ['--out', str(temp / 'reconstruction.json')]))
            comparisons.append(compare(temp / 'reconstruction.json', ROOT / 'evidence/reconstruction.json'))
    after = manifest_check()
    receipt = {'status': 'PASS_NEW_CHAIN_AND_REPRODUCTION', 'started_at_utc': started,
               'finished_at_utc': datetime.now(timezone.utc).isoformat(),
               'seconds': time.perf_counter() - start, 'python': sys.version,
               'platform': platform.platform(), 'options': {'regenerate': args.regenerate, 'reconstruct': args.reconstruct},
               'manifest_before': before, 'manifest_after': after,
               'mathematical_outputs': comparisons, 'runs': runs,
               'scope': 'This round only; old theorem chains not replayed. Same-author computational checks, not Lean or external human review.'}
    if args.receipt:
        args.receipt.parent.mkdir(parents=True, exist_ok=True)
        args.receipt.write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'status': receipt['status'], 'byte_identical_math_files': len(comparisons),
                      'seconds': receipt['seconds']}, ensure_ascii=False))
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
