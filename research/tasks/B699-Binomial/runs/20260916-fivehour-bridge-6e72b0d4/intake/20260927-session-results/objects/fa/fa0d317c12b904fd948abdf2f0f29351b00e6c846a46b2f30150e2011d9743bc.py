#!/usr/bin/env python3
"""Verify a frozen extracted evidence tree and regenerate its exact certificates.

Writes the receipt outside the frozen tree. This script does not claim that its
caller extracted an archive: the caller must actually do that, and may bind the
archive with --archive. All regeneration is in a new temporary directory.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import subprocess
import sys
import tempfile
from datetime import datetime, timezone

if not __debug__:
    raise RuntimeError('Replay requires assertions enabled; do not use -O.')
if hasattr(sys, 'set_int_max_str_digits'):
    sys.set_int_max_str_digits(0)


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as stream:
        while chunk := stream.read(1 << 20):
            h.update(chunk)
    return h.hexdigest()


def file_names(root: Path) -> set[str]:
    return {p.relative_to(root).as_posix() for p in root.rglob('*')
            if p.is_file() and '__pycache__' not in p.parts and p.suffix != '.pyc'}


def verify_manifest(root: Path, name: str) -> dict:
    path = root / name
    entries = {}
    for line in path.read_text(encoding='utf-8').splitlines():
        if not line:
            continue
        expected, relative = line.split('  ', 1)
        if len(expected) != 64 or any(c not in '0123456789abcdef' for c in expected):
            raise ValueError(f'Bad SHA256 entry: {line!r}')
        pp = Path(relative)
        if pp.is_absolute() or '..' in pp.parts or relative in entries:
            raise ValueError(f'Unsafe or duplicate manifest member: {relative}')
        target = root / pp
        if not target.is_file() or target.is_symlink():
            raise ValueError(f'Missing or nonregular payload: {relative}')
        actual = digest(target)
        if actual != expected:
            raise ValueError(f'Hash mismatch: {relative}')
        entries[relative] = actual
    actual_names = file_names(root)
    if name == 'PAYLOAD.sha256':
        expected_names = {p for p in actual_names if not p.startswith('replay/')
                          and p not in {'PAYLOAD.sha256', 'SHA256SUMS'}}
    elif name == 'SHA256SUMS':
        expected_names = actual_names - {'SHA256SUMS'}
    else:
        raise ValueError('Unknown manifest policy')
    if set(entries) != expected_names:
        raise ValueError(f'Manifest membership mismatch for {name}: '
                         f'{sorted(set(entries) ^ expected_names)}')
    return {'status': 'PASS', 'manifest': name, 'sha256': digest(path),
            'verified_files': len(entries)}


def run(root: Path, receipt: Path, archive: Path | None) -> dict:
    root = root.resolve()
    receipt = receipt.resolve()
    if receipt == root or root in receipt.parents:
        raise ValueError('Receipt must be outside the immutable evidence tree')
    manifests = [verify_manifest(root, 'PAYLOAD.sha256')]
    if (root / 'SHA256SUMS').is_file():
        manifests.append(verify_manifest(root, 'SHA256SUMS'))
    env = {**os.environ, 'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONHASHSEED': '0'}
    env.pop('PYTHONOPTIMIZE', None)
    accepted = subprocess.run([sys.executable, str(root / 'scripts' / 'accept.py'),
                               '--root', str(root)], cwd=root, env=env,
                              capture_output=True, text=True, check=True)
    acceptance = json.loads(accepted.stdout)
    if acceptance['status'] != 'PASS':
        raise ValueError('Acceptance did not return PASS')
    with tempfile.TemporaryDirectory(prefix='b699-r2-regenerate-') as tmp:
        regenerated = Path(tmp)
        rebuilt = subprocess.run([sys.executable, str(root / 'scripts' / 'research.py'),
                                  '--out', str(regenerated), '--include-probes'],
                                 cwd=regenerated, env=env, capture_output=True,
                                 text=True, check=True)
        original = {p.relative_to(root / 'certificates').as_posix(): digest(p)
                    for p in (root / 'certificates').rglob('*') if p.is_file()}
        fresh = {p.relative_to(regenerated / 'certificates').as_posix(): digest(p)
                 for p in (regenerated / 'certificates').rglob('*') if p.is_file()}
        if original != fresh:
            differing = sorted(k for k in set(original) | set(fresh)
                               if original.get(k) != fresh.get(k))
            raise ValueError(f'Regenerated certificates differ: {differing}')
        fresh_accept = subprocess.run([sys.executable, str(root / 'scripts' / 'accept.py'),
                                       '--root', str(regenerated)], cwd=regenerated,
                                      env=env, capture_output=True, text=True, check=True)
        rebuilt_acceptance = json.loads(fresh_accept.stdout)
        if acceptance != rebuilt_acceptance:
            raise ValueError('Fresh acceptance differs from frozen acceptance')
    result = {
        'status': 'PASS', 'executed_at_utc': datetime.now(timezone.utc).isoformat(),
        'extracted_root': str(root), 'python': platform.python_version(),
        'manifests': manifests, 'acceptance': acceptance,
        'regeneration': {'status': 'PASS', 'all_certificate_bytes_identical': True,
                         'certificate_files': len(original), 'sha256': original,
                         'fresh_acceptance_identical': True,
                         'stdout': rebuilt.stdout, 'stderr': rebuilt.stderr},
        'scope': 'Current round only; previous ZIP verified as bytes, not mathematically replayed',
        'external_independent_mathematical_review': False, 'Lean': False,
    }
    if archive is not None:
        archive = archive.resolve()
        if not archive.is_file():
            raise ValueError('Archive binding file is missing')
        result['archive_binding'] = {'path': str(archive), 'sha256': digest(archive),
                                     'bytes': archive.stat().st_size}
    receipt.parent.mkdir(parents=True, exist_ok=True)
    receipt.write_text(json.dumps(result, indent=2, sort_keys=True) + '\n', encoding='utf-8')
    return result


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    ap.add_argument('--receipt', type=Path, required=True)
    ap.add_argument('--archive', type=Path)
    args = ap.parse_args()
    result = run(args.root, args.receipt, args.archive)
    print(json.dumps({'status': result['status'], 'receipt': str(args.receipt.resolve()),
                      'certificate_files': result['regeneration']['certificate_files'],
                      'manifests': result['manifests'],
                      'archive_binding': result.get('archive_binding')}, indent=2))


if __name__ == '__main__':
    main()
