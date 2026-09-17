#!/usr/bin/env python3
"""Replay frozen evidence in a new directory, checking exact byte equality.

No third-party package is needed unless --rebuild is requested. The optional
builder may use SymPy to propose factors; the standalone verifier certifies
all primes and all complete allocations using exact integer arithmetic.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent


def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--rebuild', action='store_true')
    parser.add_argument('--timeout-seconds', type=float, default=0,
                        help='Optional per-program timeout; zero means no imposed timeout')
    args = parser.parse_args()
    if args.timeout_seconds < 0:
        parser.error('Timeout must be nonnegative')
    out = args.output_dir.resolve()
    if out == ROOT or ROOT in out.parents:
        parser.error('Use an output directory outside the frozen package')
    if out.exists() and any(out.iterdir()):
        parser.error('Output directory must be absent or empty')
    out.mkdir(parents=True, exist_ok=True)
    records = []
    comparisons = []
    before = {str(p.relative_to(ROOT)): digest(p)
              for p in sorted(ROOT.rglob('*'))
              if p.is_file() and '__pycache__' not in p.parts}

    def run(name: str, argv: list[str]) -> None:
        result = subprocess.run(argv, cwd=ROOT, text=True, capture_output=True,
                                check=False, timeout=args.timeout_seconds or None)
        (out / (name + '.stdout.txt')).write_text(result.stdout, encoding='utf-8')
        (out / (name + '.stderr.txt')).write_text(result.stderr, encoding='utf-8')
        records.append({'name': name, 'argv': argv, 'returncode': result.returncode,
                        'stdout_sha256': digest(out / (name + '.stdout.txt')),
                        'stderr_sha256': digest(out / (name + '.stderr.txt'))})
        if result.returncode:
            raise RuntimeError(name + ' failed; inspect recorded stderr')

    def compare(name: str, actual: Path) -> None:
        frozen = ROOT / 'outputs' / name
        identical = actual.read_bytes() == frozen.read_bytes()
        comparisons.append({'file': name, 'byte_identical': identical,
                            'sha256': digest(actual), 'bytes': actual.stat().st_size})
        if not identical:
            raise RuntimeError('Frozen output mismatch: ' + name)

    certificate = ROOT / 'outputs/CERTIFICATE.json'
    try:
        if args.rebuild:
            certificate = out / 'CERTIFICATE.json'
            run('build', [sys.executable, '-B', str(ROOT / 'scripts/build_certificate.py'),
                          '--output', str(certificate)])
            compare('CERTIFICATE.json', certificate)
        acceptance = out / 'ACCEPTANCE.json'
        run('verify', [sys.executable, '-S', '-B', str(ROOT / 'scripts/verify_certificate.py'),
                       '--certificate', str(certificate), '--output', str(acceptance),
                       '--negative-tests'])
        compare('ACCEPTANCE.json', acceptance)
        algebra = out / 'ALGEBRA.json'
        run('algebra', [sys.executable, '-S', '-B', str(ROOT / 'scripts/check_algebra.py'),
                        '--output', str(algebra)])
        compare('ALGEBRA.json', algebra)
        after = {str(p.relative_to(ROOT)): digest(p)
                 for p in sorted(ROOT.rglob('*'))
                 if p.is_file() and '__pycache__' not in p.parts}
        if before != after:
            raise RuntimeError('Frozen package changed during replay')
        report = {'status': 'PASS', 'rebuild': args.rebuild, 'commands': records,
                  'comparisons': comparisons, 'frozen_package_unchanged': True,
                  'python': sys.version, 'observed_container_utc':
                  datetime.now(timezone.utc).isoformat(),
                  'task_date_label': '2026-09-18',
                  'time_note': 'UTC observations and the local task-date label are recorded separately; no elapsed research duration inferred.'}
        (out / 'REPLAY.json').write_text(json.dumps(report, ensure_ascii=False,
                                      sort_keys=True, indent=2)+'\n', encoding='utf-8')
        print(json.dumps({'status': 'PASS', 'comparisons': len(comparisons),
                          'frozen_package_unchanged': True}))
        return 0
    except (RuntimeError, OSError, ValueError, subprocess.SubprocessError) as exc:
        failure={'status':'FAIL','error':str(exc),'commands':records,'comparisons':comparisons}
        (out/'REPLAY_FAILURE.json').write_text(json.dumps(failure,indent=2)+'\n',encoding='utf-8')
        print(str(exc),file=sys.stderr)
        return 1

if __name__ == '__main__':
    raise SystemExit(main())
