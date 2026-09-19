#!/usr/bin/env python3
"""Run all NEW certificates in an isolated output directory (stdlib only).
This does not replay or upgrade the frozen mathematical dependencies.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]

def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', required=True, type=Path)
    args = parser.parse_args()
    out = args.out.resolve()
    if out.exists() and (not out.is_dir() or any(out.iterdir())):
        raise SystemExit('Refusing to overwrite a nonempty output path')
    out.mkdir(parents=True, exist_ok=True)
    start = time.monotonic()
    commands = [
        [sys.executable, '-B', str(ROOT / 'code/verify.py'), '--out', str(out / 'main')],
        [sys.executable, '-B', str(ROOT / 'code/verify_diagnostics.py')],
    ]
    results = []
    for index, command in enumerate(commands):
        completed = subprocess.run(command, capture_output=True, text=True, check=False)
        (out / f'{index+1}.stdout').write_text(completed.stdout, encoding='utf-8')
        (out / f'{index+1}.stderr').write_text(completed.stderr, encoding='utf-8')
        if completed.returncode:
            raise SystemExit(f'New verifier {index+1} failed; see {out}')
        result = json.loads(completed.stdout)
        results.append(result)
    assert results[0]['status'] == 'PASS_NEW_CUBIC_SOURCE_CONSUMERS_REPLAY'
    assert results[1]['status'] == 'PASS_NEW_METHOD_BOUNDARY_CHECKS'
    receipt = {
        'status': 'PASS_COMPLETE_NEW_CUBIC_CONSUMERS_REPLAY',
        'commands': commands,
        'new_main': results[0],
        'new_diagnostics': results[1],
        'verifier_sha256': {
            name: hashlib.sha256((ROOT / 'code' / name).read_bytes()).hexdigest()
            for name in ('verify.py', 'verify_diagnostics.py', 'reproduce.py')
        },
        'old_proof_chains_replayed': False,
        'lean': False,
        'external_independent_review': False,
        'elapsed_seconds': time.monotonic() - start,
    }
    (out / 'COMPLETE_REPLAY.json').write_text(json.dumps(receipt, indent=2), encoding='utf-8')
    print(json.dumps({key: receipt[key] for key in ('status', 'elapsed_seconds')}, indent=2))

if __name__ == '__main__':
    main()
