#!/usr/bin/env python3
"""Verify the immutable R3 payload and run the new exact checks offline.
No old theorem, Lean, repository command, package installer, or network operation is run.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1 << 20), b''):
            h.update(block)
    return h.hexdigest()


def manifest_check(name: str) -> dict:
    if name not in {'SHA256SUMS', 'PAYLOAD_SHA256SUMS'}:
        raise ValueError('Use the final or explicitly documented payload manifest.')
    path = ROOT / name
    listed = {}
    for line in path.read_text(encoding='utf-8').splitlines():
        expected, relative = line.split('  ', 1)
        posix = PurePosixPath(relative)
        if posix.is_absolute() or '..' in posix.parts or not relative:
            raise ValueError('Unsafe manifest path: ' + relative)
        if relative in listed or len(expected) != 64:
            raise ValueError('Invalid or duplicate manifest entry: ' + relative)
        target = ROOT / relative
        if target.is_symlink() or not target.is_file():
            raise ValueError('Missing or unsupported payload member: ' + relative)
        actual = digest(target)
        if actual != expected:
            raise ValueError('SHA-256 mismatch: ' + relative)
        listed[relative] = actual
    excluded = {name}
    if name == 'PAYLOAD_SHA256SUMS':
        excluded |= {'SHA256SUMS', 'receipts/CLEAN_REPLAY.json'}
    actual_names = {p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
    if actual_names - excluded != set(listed):
        raise ValueError('Manifest does not cover exactly all intended members: '
                         + repr(sorted((actual_names - excluded) ^ set(listed))))
    return {'status': 'PASS', 'name': name, 'sha256': digest(path),
            'entries_checked': len(listed), 'all_intended_files_covered': True}


def trailing_json(text: str) -> dict:
    for index, line in enumerate(text.splitlines()):
        if line.startswith('{'):
            try:
                value = json.loads('\n'.join(text.splitlines()[index:]))
            except json.JSONDecodeError:
                continue
            if isinstance(value, dict):
                return value
    raise ValueError('Child did not provide its required JSON result.')


def run_check(relative: str, expected_checks: int) -> dict:
    command = [sys.executable, '-I', '-B', str(ROOT / relative)]
    env = dict(os.environ)
    env['PYTHONDONTWRITEBYTECODE'] = '1'
    start = time.monotonic()
    proc = subprocess.run(command, cwd=ROOT, env=env, capture_output=True,
                          text=True, timeout=180)
    if proc.returncode:
        raise RuntimeError(relative + ' failed:\n' + proc.stdout + '\n' + proc.stderr)
    result = trailing_json(proc.stdout)
    if result.get('status') != 'PASS' or result.get('checks') != expected_checks:
        raise ValueError('Unexpected check result from ' + relative)
    return {'program': relative, 'source_sha256': digest(ROOT / relative),
            'isolated_python': True, 'bytecode_disabled': True,
            'returncode': proc.returncode, 'seconds': round(time.monotonic() - start, 3),
            'stdout_sha256': hashlib.sha256(proc.stdout.encode('utf-8')).hexdigest(),
            'stdout': proc.stdout, 'stderr': proc.stderr, 'result': result}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', default='SHA256SUMS',
                        choices=['SHA256SUMS', 'PAYLOAD_SHA256SUMS'])
    parser.add_argument('--receipt', type=Path,
                        help='Optional receipt OUTSIDE the immutable extracted package.')
    args = parser.parse_args()
    try:
        if args.receipt and (ROOT == args.receipt.resolve()
                            or ROOT in args.receipt.resolve().parents):
            raise ValueError('Save a new receipt outside the immutable package.')
        start = time.monotonic()
        before = manifest_check(args.manifest)
        runs = [run_check('code/verify.py', 315), run_check('code/test_consumers.py', 21)]
        after = manifest_check(args.manifest)
        receipt = {'status': 'PASS', 'round': 'B699-ProB-REG3-COMPAT-20261002-R3',
                   'utc': datetime.now(timezone.utc).isoformat(), 'extracted_root': str(ROOT),
                   'python': sys.version, 'manifest_before': before, 'manifest_after': after,
                   'payload_changed_by_replay': False, 'checks': runs,
                   'seconds': round(time.monotonic() - start, 3),
                   'old_mathematical_theorems_rerun': False, 'lean_run': False,
                   'network_used': False, 'external_independent_review': False,
                   'global_original_finiteness_proved': False,
                   'full_REG4_closed': False, 'complete_i3_closed': False,
                   'historical_original_net_gain': '0 / not audited'}
        text = json.dumps(receipt, ensure_ascii=False, indent=2) + '\n'
        if args.receipt:
            args.receipt.parent.mkdir(parents=True, exist_ok=True)
            args.receipt.write_text(text, encoding='utf-8')
        print(text, end='')
        return 0
    except (OSError, ValueError, RuntimeError, subprocess.TimeoutExpired) as error:
        print(json.dumps({'status': 'FAIL', 'error': str(error)}, ensure_ascii=False),
              file=sys.stderr)
        return 1


if __name__ == '__main__':
    raise SystemExit(main())
