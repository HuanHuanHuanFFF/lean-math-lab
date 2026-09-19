#!/usr/bin/env python3
"""Verify the delivery and regenerate its outputs without changing frozen files."""
from __future__ import annotations
import hashlib
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parent


def main() -> int:
    if sys.version_info < (3, 10):
        print('Python 3.10 or newer is required.', file=sys.stderr)
        return 2
    try:
        import sympy
    except ImportError:
        print('Install the pinned dependency: python -m pip install -r requirements.txt', file=sys.stderr)
        return 2
    if sympy.__version__ != '1.14.0':
        print(f'Expected SymPy 1.14.0, found {sympy.__version__}.', file=sys.stderr)
        return 2
    manifest = ROOT / 'SHA256SUMS'
    if not manifest.is_file():
        raise RuntimeError('Missing SHA256SUMS')
    count = 0
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line.strip():
            continue
        digest, rel = line.split(maxsplit=1)
        target = (ROOT / rel).resolve()
        if not target.is_relative_to(ROOT.resolve()) or not target.is_file():
            raise RuntimeError(f'Invalid manifest path: {rel}')
        got = hashlib.sha256(target.read_bytes()).hexdigest()
        if got != digest:
            raise RuntimeError(f'Hash mismatch: {rel}')
        count += 1
    print(f'Frozen member hashes verified: {count}')
    with tempfile.TemporaryDirectory(prefix='b699-global-recovery-') as tmp:
        work = Path(tmp)
        shutil.copytree(ROOT / 'code', work / 'code', ignore=shutil.ignore_patterns('__pycache__'))
        (work / 'outputs').mkdir()
        for name in ('construct.py', 'symbolic_checks.py', 'verify.py'):
            proc = subprocess.run([sys.executable, str(work / 'code' / name)],
                                  cwd=work, capture_output=True, text=True, check=False)
            if proc.returncode:
                print(proc.stdout, end='')
                print(proc.stderr, file=sys.stderr, end='')
                raise RuntimeError(f'{name} failed with exit code {proc.returncode}')
            print(proc.stdout.strip())
        for name in ('certificate.json', 'symbolic.json', 'verification.json'):
            if (work/'outputs'/name).read_bytes() != (ROOT/'outputs'/name).read_bytes():
                raise RuntimeError(f'Regenerated output differs: {name}')
    print('PASS: all regenerated outputs match frozen bytes.')
    print('Scope: exact identities and complete bounded terminals; infinite arguments are paper proofs.')
    print('No Lean or independent mathematical review is claimed.')
    return 0


if __name__ == '__main__':
    try:
        raise SystemExit(main())
    except (OSError, ValueError, RuntimeError) as exc:
        print(f'REPLAY FAILED: {exc}', file=sys.stderr)
        raise SystemExit(1)
