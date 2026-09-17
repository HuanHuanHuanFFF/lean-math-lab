#!/usr/bin/env python3
"""Replay only this delivery's new checks; never run a parent evidence chain.

Use --regenerate to rebuild the certificate with SymPy. The accepting checker,
finite regressions, mutation tests, and conditional consumer use the standard library.
An optional --receipt must be outside this manifest-bound package.
"""
from __future__ import annotations
from pathlib import Path
from hashlib import sha256
from datetime import datetime, timezone
from time import perf_counter
import argparse
import json
import os
import platform
import subprocess
import sys
from verify_manifest import verify

ROOT = Path(__file__).resolve().parents[1]
MATH_FILES = (
    'evidence/new-certificate.json',
    'evidence/check.json',
    'evidence/regression.json',
    'evidence/mutations.json',
)


def digest(path: Path) -> str:
    return sha256(path.read_bytes()).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--regenerate', action='store_true')
    parser.add_argument('--receipt', type=Path)
    args = parser.parse_args()
    receipt_path = args.receipt.resolve() if args.receipt else None
    if receipt_path is not None and (receipt_path == ROOT or ROOT in receipt_path.parents):
        parser.error('--receipt must be outside this manifest-bound package')
    started = datetime.now(timezone.utc).isoformat()
    before_manifest = verify(ROOT)
    before = {name: digest(ROOT / name) for name in MATH_FILES}
    programs = (['generate.py'] if args.regenerate else []) + ['check.py', 'regression.py', 'mutations.py']
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1')
    stages = []
    start = perf_counter()
    for program in programs:
        clock = perf_counter()
        completed = subprocess.run(
            [sys.executable, str(ROOT / 'code' / program)],
            cwd=ROOT, env=env, capture_output=True, text=True, check=False,
        )
        stage = {
            'program': program, 'returncode': completed.returncode,
            'elapsed_seconds': round(perf_counter() - clock, 6),
            'stdout': completed.stdout, 'stderr': completed.stderr,
        }
        stages.append(stage)
        if completed.returncode:
            raise RuntimeError(f'{program} failed:\n{completed.stdout}\n{completed.stderr}')
        print(json.dumps({k: stage[k] for k in ('program', 'returncode', 'elapsed_seconds')}), flush=True)
    after = {name: digest(ROOT / name) for name in MATH_FILES}
    if before != after:
        changed = [name for name in MATH_FILES if before[name] != after[name]]
        raise RuntimeError(f'New mathematical output changed: {changed}')
    after_manifest = verify(ROOT)
    receipt = {
        'schema': 'b699-paired-midpoint-replay-v1',
        'status': 'PASS_NEW_CHAIN_ONLY',
        'started_utc': started,
        'finished_utc': datetime.now(timezone.utc).isoformat(),
        'python': platform.python_version(),
        'elapsed_seconds': round(perf_counter() - start, 6),
        'regenerated_certificate': args.regenerate,
        'mathematical_files_byte_identical': list(MATH_FILES),
        'output_sha256': after,
        'manifest_before': before_manifest, 'manifest_after': after_manifest,
        'stages': stages,
        'scope': {
            'old_chain_replayed': False,
            'lean_run': False,
            'external_independent_mathematical_review': False,
            'finite_regressions_are_not_infinite_proofs': True,
        },
    }
    if receipt_path:
        receipt_path.parent.mkdir(parents=True, exist_ok=True)
        receipt_path.write_text(json.dumps(receipt, ensure_ascii=False, indent=2, sort_keys=True) + '\n', encoding='utf-8')
    print(json.dumps({k: receipt[k] for k in ('status', 'elapsed_seconds', 'regenerated_certificate', 'mathematical_files_byte_identical')}, ensure_ascii=False))


if __name__ == '__main__':
    main()
