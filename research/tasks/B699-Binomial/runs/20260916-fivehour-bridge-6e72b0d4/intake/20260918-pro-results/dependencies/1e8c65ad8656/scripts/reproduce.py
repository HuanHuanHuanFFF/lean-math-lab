"""Rebuild only this round's evidence, without rerunning historical/Pell scans.

Core jobs use Python's standard library. --symbolic adds the optional SymPy
identity check. Generated outputs must go outside the frozen package.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--symbolic', action='store_true')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    out = args.output_dir.resolve()
    if out == root or root in out.parents:
        parser.error('Use a fresh output directory outside the frozen package.')
    if out.exists() and any(out.iterdir()):
        parser.error('Output directory is not empty; use a fresh directory.')
    out.mkdir(parents=True, exist_ok=True)
    scripts = root / 'scripts'
    jobs = [
        ('CERTIFICATE.json', 'build_certificate.py', ['--output', str(out/'CERTIFICATE.json')], True),
        ('ACCEPTANCE.json', 'verify_certificate.py', ['--certificate', str(out/'CERTIFICATE.json'), '--output', str(out/'ACCEPTANCE.json'), '--negative-tests'], True),
        ('CONSUMER_TESTS.json', 'test_consumer.py', ['--output', str(out/'CONSUMER_TESTS.json')], True),
    ]
    if args.symbolic:
        jobs.append(('SYMBOLIC.json', 'check_identities.py', ['--output', str(out/'SYMBOLIC.json')], False))
    receipt = {'status': 'RUNNING', 'python': sys.version, 'jobs': [],
               'historical_chains_replayed': False, 'exploratory_pell_scans_replayed': False,
               'scope': 'Finite exact arithmetic replay; no independent researcher or Lean verification'}
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1')
    receipt_path = out / 'REPRODUCTION.json'
    try:
        for filename, script, extra, stdlib_only in jobs:
            command = [sys.executable, '-B'] + (['-S'] if stdlib_only else []) + [str(scripts/script)] + extra
            result = subprocess.run(command, check=True, capture_output=True, text=True,
                                    env=env, timeout=45)
            actual = sha256(out/filename)
            expected = sha256(root/'outputs'/filename)
            entry = {'file': filename, 'script': script, 'stdout': result.stdout.strip(),
                     'stderr': result.stderr.strip(), 'sha256': actual,
                     'frozen_sha256': expected, 'byte_equal': actual == expected}
            receipt['jobs'].append(entry)
            if actual != expected:
                raise RuntimeError(f'Frozen byte comparison failed for {filename}')
        receipt['status'] = 'PASS'
    except Exception as exc:
        receipt['status'] = 'FAIL'
        receipt['error'] = f'{type(exc).__name__}: {exc}'
        raise
    finally:
        receipt_path.write_text(json.dumps(receipt, indent=2, sort_keys=True) + '\n', encoding='utf-8')
    print(json.dumps({'status': 'PASS', 'byte_equal_files': len(jobs), 'receipt': str(receipt_path)}))


if __name__ == '__main__':
    main()
