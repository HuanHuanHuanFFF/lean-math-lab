#!/usr/bin/env python3
"""Read-only, standard-library replay of this evidence package.

Verifies exact member hashes, the independent algebraic certificate checker,
and the recorded failure diagnostics. Diagnostics run in an isolated temporary
folder, so no member of this package is changed. No network or Lean is used.
"""
from __future__ import annotations
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys
import tempfile

ROOT = Path(__file__).resolve().parent

def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()

def verify_members() -> int:
    manifest = ROOT / 'SHA256SUMS'
    if not manifest.is_file():
        raise RuntimeError('SHA256SUMS is missing.')
    listed: set[str] = set()
    for line in manifest.read_text(encoding='utf-8').splitlines():
        digest, name = line.split('  ', 1)
        p = Path(name)
        if len(digest) != 64 or any(c not in '0123456789abcdef' for c in digest):
            raise RuntimeError(f'Invalid digest: {name}')
        if p.is_absolute() or '..' in p.parts or name in listed or name == 'SHA256SUMS':
            raise RuntimeError(f'Invalid or duplicate member: {name}')
        path = ROOT / p
        if path.is_symlink() or not path.is_file():
            raise RuntimeError(f'Missing or unsafe member: {name}')
        if sha256(path) != digest:
            raise RuntimeError(f'Hash mismatch: {name}')
        listed.add(name)
    actual = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
    if actual != listed | {'SHA256SUMS'}:
        raise RuntimeError(f'Member set mismatch: {actual ^ (listed | {"SHA256SUMS"})}')
    return len(listed)

def run_json(path: Path, *args: str) -> dict:
    proc = subprocess.run([sys.executable, str(path), *args],
                          text=True, capture_output=True, timeout=90, check=False)
    if proc.returncode:
        raise RuntimeError(f'{path.name} failed ({proc.returncode}):\n{proc.stderr[-6000:]}')
    return json.loads(proc.stdout)

def main() -> None:
    if not __debug__:
        raise RuntimeError('Do not run with -O; assertions are part of the proof checker.')
    members = verify_members()
    result = run_json(ROOT / 'code/check_certificates.py', '--self-test')
    stored = json.loads((ROOT / 'outputs/independent-check.json').read_text())
    if result != stored or result.get('status') != 'PASS_STANDARD_LIBRARY_EXACT_CHECKS':
        raise RuntimeError('Independent checker output differs from the stored result.')
    with tempfile.TemporaryDirectory(prefix='b699-evidence-') as td:
        tmp = Path(td)
        (tmp / 'code').mkdir()
        (tmp / 'outputs').mkdir()
        script = tmp / 'code/diagnostics.py'
        shutil.copyfile(ROOT / 'code/diagnostics.py', script)
        diag_status = run_json(script)
        actual = json.loads((tmp / 'outputs/diagnostics.json').read_text())
        expected = json.loads((ROOT / 'outputs/diagnostics.json').read_text())
        if actual != expected:
            raise RuntimeError('Failure diagnostics differ from the stored exact output.')
    print(json.dumps({
        'status': 'PASS_READ_ONLY_REPLAY',
        'hashed_members': members,
        'independent_checker': result['status'],
        'bad_certificates_rejected': result['bad_certificates_rejected'],
        'diagnostics': diag_status,
        'mathematical_scope': 'New minimal-branch paper proofs and exact certificates only; no full i3 or Lean acceptance.',
        'old_high_family': 'Adopted from the supplied Overview; frozen proof not independently replayed.',
        'h13_thue_terminal': 'NOT_COMPLETED',
    }, indent=2, ensure_ascii=False))

if __name__ == '__main__':
    try:
        main()
    except (OSError, ValueError, RuntimeError, subprocess.TimeoutExpired) as exc:
        print(f'REPLAY_FAILED: {exc}', file=sys.stderr)
        sys.exit(1)
