#!/usr/bin/env python3
"""Capture one command verbatim; a successful command is not a proof acceptance claim."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import resource
import signal
import subprocess
import sys
import time
from datetime import datetime, timezone


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', required=True, type=Path)
    parser.add_argument('--cwd', required=True, type=Path)
    parser.add_argument('--label', required=True)
    parser.add_argument('--source', type=Path)
    parser.add_argument('--timeout', type=float, default=120.0)
    parser.add_argument('argv', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    argv = args.argv[1:] if args.argv[:1] == ['--'] else args.argv
    if not argv or any(c not in 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_' for c in args.label):
        parser.error('Provide a command and a simple alphanumeric/dash/underscore label.')
    cwd, out = args.cwd.resolve(strict=True), args.out.resolve()
    if not cwd.is_dir():
        parser.error('--cwd must be a directory')
    out.mkdir(parents=True, exist_ok=True)
    stdout_path = out / f'{args.label}.stdout.log'
    stderr_path = out / f'{args.label}.stderr.log'
    receipt_path = out / f'{args.label}.receipt.json'
    if any(p.exists() for p in [stdout_path, stderr_path, receipt_path]):
        parser.error('Refusing to overwrite an earlier record; choose a new label or output directory.')
    record = {
        'argv': argv, 'cwd': str(cwd),
        'start_utc': datetime.now(timezone.utc).isoformat(),
        'source_path': str(args.source.resolve()) if args.source else None,
        'source_sha256': sha256(args.source) if args.source else None,
        'process_started': False, 'exit_code': None, 'timeout': False,
        'spawn_error': None, 'proof_acceptance': None,
        'stdout': stdout_path.name, 'stderr': stderr_path.name,
        'measurement_scope': 'Entire requested command, including any shell/Lake startup and imports. Not theorem-only time.',
        'memory_scope': 'POSIX RUSAGE_CHILDREN maxrss; high-water of individual waited-for processes, NOT summed process-tree RSS.',
        'cache_state': 'Not controlled or inferred by this recorder.',
    }
    start = time.perf_counter()
    with stdout_path.open('xb') as stdout, stderr_path.open('xb') as stderr:
        try:
            proc = subprocess.Popen(argv, cwd=cwd, stdout=stdout, stderr=stderr, start_new_session=True)
            record['process_started'] = True
            try:
                record['exit_code'] = proc.wait(timeout=args.timeout)
            except subprocess.TimeoutExpired:
                record['timeout'] = True
                os.killpg(proc.pid, signal.SIGKILL)
                record['exit_code'] = proc.wait()
        except OSError as exc:
            record['spawn_error'] = {'errno': exc.errno, 'message': str(exc)}
    record['command_wall_seconds'] = time.perf_counter() - start
    record['end_utc'] = datetime.now(timezone.utc).isoformat()
    usage = resource.getrusage(resource.RUSAGE_CHILDREN)
    record['children_user_seconds'] = usage.ru_utime
    record['children_system_seconds'] = usage.ru_stime
    record['children_maxrss_raw'] = usage.ru_maxrss if record['process_started'] else None
    record['children_maxrss_unit'] = 'bytes' if sys.platform == 'darwin' else 'KiB (Linux)'
    record['platform'] = platform.platform()
    record['stdout_sha256'] = sha256(stdout_path)
    record['stderr_sha256'] = sha256(stderr_path)
    receipt_path.write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'receipt': str(receipt_path), 'exit_code': record['exit_code'],
                      'spawn_error': record['spawn_error']}, ensure_ascii=False))
    code = record['exit_code']
    return code if isinstance(code, int) and 0 <= code <= 255 else 1


if __name__ == '__main__':
    raise SystemExit(main())
