#!/usr/bin/env python3
"""Replay all six research checks and record exact source/output provenance."""
from __future__ import annotations

import argparse
import hashlib
import json
import os
import platform
import subprocess
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input-archive', type=Path)
    args = parser.parse_args()
    if sys.flags.optimize or os.environ.get('PYTHONOPTIMIZE'):
        parser.error('Assertions must remain enabled: do not use -O or PYTHONOPTIMIZE.')
    try:
        import sympy
    except ImportError:
        parser.error('SymPy is required for verify_core.py; the recorded run used SymPy 1.14.0.')
    provenance = json.loads((ROOT / 'PROVENANCE.json').read_text())
    archive_check = {'provided': False, 'expected_sha256': provenance['input_archive_sha256']}
    if args.input_archive is not None:
        archive = args.input_archive.expanduser().resolve()
        if not archive.is_file():
            parser.error(f'Input archive not found: {archive}')
        archive_check.update(provided=True, path=str(archive), actual_sha256=digest(archive))
        if archive_check['actual_sha256'] != archive_check['expected_sha256']:
            parser.error('Input archive SHA256 does not match the task archive.')
        archive_check['status'] = 'PASS'

    tasks = [
        ('local_digit_probe', ['scripts/local_digit_probe.py', '--N', '10000', '--imin', '3', '--imax', '10', '--output', 'evidence/local_digit_10000.json'], 'evidence/local_digit_10000.json'),
        ('shifted_candidates', ['scripts/shifted_candidates.py', '--B', '32', '--output', 'evidence/shifted_candidates_B32.json'], 'evidence/shifted_candidates_B32.json'),
        ('check_shifted_candidates', ['scripts/check_shifted_candidates.py', '--input', 'evidence/shifted_candidates_B32.json', '--output', 'evidence/shifted_candidates_B32_verified.json'], 'evidence/shifted_candidates_B32_verified.json'),
        ('verify_core', ['scripts/verify_core.py'], 'evidence/core_verification.json'),
        ('relaxed_local_probe', ['scripts/relaxed_local_probe.py'], 'evidence/relaxed_local_100000.json'),
        ('check_small_box', ['scripts/check_small_box.py'], 'evidence/small_box_verified.json'),
    ]
    log_dir = ROOT / 'evidence' / 'replay'
    log_dir.mkdir(parents=True, exist_ok=True)
    sources_before = {str(p.relative_to(ROOT)): digest(p) for p in sorted((ROOT / 'scripts').glob('*.py'))}
    summary = {
        'started_at_utc': datetime.now(timezone.utc).isoformat(),
        'python': sys.version,
        'python_executable': sys.executable,
        'sympy': sympy.__version__,
        'platform': platform.platform(),
        'input_archive': archive_check,
        'source_sha256_before': sources_before,
        'runs': [],
        'status': 'RUNNING',
        'scope': 'Executed arithmetic checks and provenance, not Lean or a substitute for paper-proof review',
    }
    failed = False
    environment = os.environ.copy()
    environment['PYTHONDONTWRITEBYTECODE'] = '1'
    for name, arguments, output_name in tasks:
        command = [sys.executable, '-B', *arguments]
        start = time.perf_counter()
        process = subprocess.run(command, cwd=ROOT, env=environment, capture_output=True, text=True, check=False)
        elapsed = time.perf_counter() - start
        stdout = log_dir / f'{name}.stdout.txt'
        stderr = log_dir / f'{name}.stderr.txt'
        stdout.write_text(process.stdout)
        stderr.write_text(process.stderr)
        output = ROOT / output_name
        record = {
            'name': name,
            'command': command,
            'cwd': '.',
            'exit_code': process.returncode,
            'elapsed_seconds': elapsed,
            'stdout': str(stdout.relative_to(ROOT)),
            'stdout_sha256': digest(stdout),
            'stderr': str(stderr.relative_to(ROOT)),
            'stderr_sha256': digest(stderr),
            'expected_output': output_name,
            'output_sha256': digest(output) if process.returncode == 0 and output.is_file() else None,
        }
        summary['runs'].append(record)
        print(f"{name}: exit={process.returncode}, output={record['output_sha256']}", flush=True)
        if process.returncode != 0 or not output.is_file():
            failed = True
            break
    sources_after = {str(p.relative_to(ROOT)): digest(p) for p in sorted((ROOT / 'scripts').glob('*.py'))}
    summary['source_sha256_after'] = sources_after
    summary['sources_unchanged'] = sources_before == sources_after
    failed = failed or not summary['sources_unchanged']
    summary['finished_at_utc'] = datetime.now(timezone.utc).isoformat()
    summary['status'] = 'FAIL' if failed else 'PASS'
    (ROOT / 'evidence' / 'reproduction.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2) + '\n')
    print('FINAL STATUS:', summary['status'], flush=True)
    return int(failed)


if __name__ == '__main__':
    raise SystemExit(main())
