#!/usr/bin/env python3
"""Record a real command without interpreting its exit code as proof acceptance.

Uses only Python's standard library. GNU time is optional and its maximum RSS
is NOT a simultaneous process-tree memory measurement. No command is inferred,
no toolchain is installed, and no repository operation is performed implicitly.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import re
import shutil
import subprocess
import sys
import time


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda: f.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    parser.add_argument('--cwd', type=Path, default=Path.cwd())
    parser.add_argument('--kind', default='command')
    parser.add_argument('--source', type=Path, action='append', default=[])
    parser.add_argument('--timeout', type=float, default=None)
    parser.add_argument('--gnu-time', action='store_true')
    parser.add_argument('command', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    cmd = args.command[1:] if args.command[:1] == ['--'] else args.command
    if not cmd:
        parser.error('supply the exact command after --')
    if args.timeout is not None and args.timeout <= 0:
        parser.error('--timeout must be positive')
    cwd = args.cwd.resolve(strict=True)
    if not cwd.is_dir():
        parser.error('--cwd must be a directory')
    out = args.out.resolve()
    if out.exists():
        parser.error('output path already exists; use a new path to preserve evidence')
    out.mkdir(parents=True)
    resolved = shutil.which(cmd[0]) if '/' not in cmd[0] else str((cwd / cmd[0]).resolve())
    source_hashes = {}
    for p in args.source:
        p = p if p.is_absolute() else cwd / p
        source_hashes[str(p)] = sha256(p)
    receipt = {
        'kind': args.kind, 'command': cmd, 'cwd': str(cwd),
        'source_sha256': source_hashes,
        'resolved_executable': resolved,
        'resolved_executable_sha256': sha256(Path(resolved)) if resolved and Path(resolved).is_file() else None,
        'platform': platform.platform(), 'python_version': sys.version,
        'LEAN_PATH': os.environ.get('LEAN_PATH'),
        'cache_state': 'not controlled; no OS cache flush performed',
        'started_utc': utc_now(), 'process_started': False,
        'command_exit_code': None, 'wall_seconds': None,
        'max_rss_kib': None, 'gnu_time_used': False,
        'max_rss_scope': None,
        'measurement_scope': 'If the process starts, total command wall time includes startup and imports; not a proof-only or checker-only estimate.',
        'proof_acceptance': 'not inferred by this recorder',
    }
    launched = cmd
    use_time = args.gnu_time and resolved and Path(resolved).is_file() and Path('/usr/bin/time').is_file() and sys.platform.startswith('linux')
    if use_time:
        launched = ['/usr/bin/time', '-f', 'elapsed_seconds=%e\nuser_seconds=%U\nsystem_seconds=%S\nmax_rss_kib=%M\nexit_code=%x', '-o', str(out / 'gnu-time.log'), '--', *cmd]
        receipt['gnu_time_used'] = True
        receipt['max_rss_scope'] = 'GNU time %M on Linux; maximum RSS statistic, not simultaneous aggregate process-tree RSS'
    receipt['launched_argv'] = launched
    started = time.perf_counter()
    with (out / 'stdout.log').open('wb') as stdout, (out / 'stderr.log').open('wb') as stderr:
        try:
            proc = subprocess.Popen(launched, cwd=cwd, stdout=stdout, stderr=stderr)
            receipt['process_started'] = True
            receipt['pid'] = proc.pid
            try:
                code = proc.wait(timeout=args.timeout)
                receipt['command_exit_code'] = code
                receipt['status'] = 'exited'
                result_code = code if code >= 0 else 128 - code
            except subprocess.TimeoutExpired:
                proc.kill()
                proc.wait()
                receipt['status'] = 'timeout'
                receipt['command_exit_code'] = proc.returncode
                result_code = 124
                # No process-tree termination guarantee is made by this small helper.
            receipt['wall_seconds'] = time.perf_counter() - started
        except OSError as exc:
            receipt['status'] = 'not_started'
            receipt['launch_error'] = {'type': type(exc).__name__, 'errno': exc.errno, 'message': str(exc)}
            (out / 'launch-error.log').write_text(f'{type(exc).__name__}: {exc}\n', encoding='utf-8')
            result_code = 127 if isinstance(exc, FileNotFoundError) else 126
    receipt['attempt_wall_seconds'] = time.perf_counter() - started
    receipt['ended_utc'] = utc_now()
    if (out / 'gnu-time.log').exists():
        m = re.search(r'^max_rss_kib=(\d+)$', (out / 'gnu-time.log').read_text(), re.MULTILINE)
        if m:
            receipt['max_rss_kib'] = int(m.group(1))
    receipt['recorder_exit_code'] = result_code
    receipt['logs_sha256'] = {p.name: sha256(p) for p in sorted(out.iterdir()) if p.is_file()}
    (out / 'receipt.json').write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({k: receipt[k] for k in ['kind', 'status', 'command_exit_code', 'recorder_exit_code', 'process_started']}, ensure_ascii=False))
    return result_code


if __name__ == '__main__':
    raise SystemExit(main())
