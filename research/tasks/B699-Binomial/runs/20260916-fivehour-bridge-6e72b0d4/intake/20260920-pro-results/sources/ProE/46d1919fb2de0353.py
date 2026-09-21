#!/usr/bin/env python3
"""Offline read-only replay of the NEW finite evidence and dependency hashes.

This does not rerun or reaccept the historical L/h13/order5 mathematical chain,
and is not a proof assistant for the general paper arguments.
"""
from __future__ import annotations
import sys
sys.dont_write_bytecode = True
import hashlib
import json
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parent

def snapshot() -> dict[str,str]:
    out = {}
    for p in sorted(ROOT.rglob('*')):
        if p.is_symlink():
            raise ValueError(f'Symlink not allowed: {p}')
        if p.is_file():
            out[p.relative_to(ROOT).as_posix()] = hashlib.sha256(p.read_bytes()).hexdigest()
    return out

def verify_manifest(before: dict[str,str]) -> None:
    entries = {}
    for line in (ROOT/'SHA256SUMS').read_text(encoding='utf-8').splitlines():
        digest, name = line.split('  ', 1)
        rel = Path(name)
        if len(digest) != 64 or any(c not in '0123456789abcdef' for c in digest):
            raise ValueError('Invalid SHA256 digest')
        if rel.is_absolute() or '..' in rel.parts or name in entries:
            raise ValueError('Unsafe or repeated member path')
        entries[name] = digest
    actual = {p:h for p,h in before.items() if p != 'SHA256SUMS'}
    if entries != actual:
        missing = sorted(set(entries)-set(actual))
        extra = sorted(set(actual)-set(entries))
        bad = sorted(p for p in set(entries)&set(actual) if entries[p] != actual[p])
        raise ValueError(f'Manifest mismatch missing={missing}, extra={extra}, bad={bad}')
    provenance = json.loads((ROOT/'dependencies/PROVENANCE.json').read_text(encoding='utf-8'))
    for row in provenance['files']:
        p = ROOT/row['path']
        if p.stat().st_size != row['bytes'] or before[row['path']] != row['sha256']:
            raise ValueError(f'Frozen dependency byte mismatch: {row["path"]}')

def invoke(script: str, *args: str) -> dict:
    env = dict(os.environ)
    env['PYTHONDONTWRITEBYTECODE'] = '1'
    proc = subprocess.run([sys.executable, '-B', str(ROOT/script), *args], cwd=ROOT,
                          env=env, text=True, capture_output=True, timeout=120)
    if proc.returncode:
        raise RuntimeError(f'{script}: exit={proc.returncode}\n{proc.stdout}\n{proc.stderr}')
    return json.loads(proc.stdout)

def main() -> int:
    if not __debug__:
        raise RuntimeError('Do not disable Python assertions with -O or PYTHONOPTIMIZE.')
    before = snapshot()
    verify_manifest(before)
    first = invoke('check_primary.py')
    second = invoke('check_independent.py')
    bad = invoke('check_bad_certificates.py')
    diagnostic = invoke('experiments/six_capacity_probe.py')
    recorded = json.loads((ROOT/'outputs/finite_checks.json').read_text(encoding='utf-8'))
    if recorded != {'primary':first, 'independent':second, 'bad_certificates':bad}:
        raise ValueError('Recorded finite output does not match replay')
    if diagnostic != json.loads((ROOT/'outputs/six_capacity_probe.json').read_text(encoding='utf-8')):
        raise ValueError('Diagnostic output mismatch')
    example_args = [('--s','7'),('--s','771'),('--s','911','--D','910'),
                    ('--s','11'),('--c','3','--s','771')]
    examples = [invoke('consumer.py', *args) for args in example_args]
    if examples != json.loads((ROOT/'outputs/consumer_examples.json').read_text(encoding='utf-8')):
        raise ValueError('Recorded consumer examples mismatch')
    after = snapshot()
    if before != after:
        raise RuntimeError('Replay changed files')
    result = {'status':'PASS_READ_ONLY_BINARY_CYC_REPLAY',
              'primary':first['status'], 'independent':second['status'],
              'bad_certificates':bad['status'], 'readonly':True,
              'member_count':len(before),
              'scope':'NEW finite arithmetic plus frozen dependency bytes; infinite claims use PROOFS.md',
              'old_mathematics_rerun':False}
    print(json.dumps(result, ensure_ascii=False, indent=2))
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
