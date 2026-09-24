#!/usr/bin/env python3
"""Check this round in a new output directory; optional exact reconstruction/search.

Default: Python standard library only. Optional --regenerate additionally needs
SymPy 1.14.0, a C++17 compiler and GMP development headers/libraries.
All generated files are kept under the requested output directory.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def run(cmd: list[str], log: Path, env: dict[str, str] | None = None) -> None:
    with log.open('w', encoding='utf-8') as out:
        proc = subprocess.run(cmd, stdin=subprocess.DEVNULL, stdout=out,
                              stderr=subprocess.STDOUT, env=env, check=False)
    if proc.returncode:
        raise RuntimeError(f'Command failed ({proc.returncode}); see {log}')

def same(a: Path, b: Path) -> dict[str, str]:
    if a.read_bytes() != b.read_bytes():
        raise AssertionError(f'Byte mismatch: {a} and {b}')
    return {'name': b.name, 'sha256': digest(b), 'status': 'BYTE_IDENTICAL'}

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument('--output-dir', type=Path, required=True)
    ap.add_argument('--regenerate', action='store_true')
    args = ap.parse_args()
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=False)
    receipt: dict[str, object] = {
        'scope': 'This round only; no Lean, no original integer-instance enumeration',
        'standard_check': None,
        'regeneration': 'NOT_REQUESTED',
    }
    run([sys.executable, '-B', '-u', str(ROOT/'src/check.py'),
         '--output-dir', str(out/'standard')], out/'standard.log')
    receipt['standard_check'] = same(out/'standard/check.json', ROOT/'outputs/check.json')
    print('MIX_DW_NONZERO_STANDARD_REPLAY=PASS', flush=True)
    print('STANDARD_RESULT_BYTE_IDENTICAL=PASS', flush=True)
    if args.regenerate:
        run([sys.executable, '-B', '-u', str(ROOT/'src/derive.py'),
             '--output-dir', str(out/'derived')], out/'derive.log')
        rec = [same(out/'derived/algebra.json', ROOT/'certificates/algebra.json')]
        compiler = shutil.which('g++')
        if not compiler:
            raise RuntimeError('Optional regeneration needs g++ and GMP development files')
        exe = out/'gbtrace'
        run([compiler, '-O2', '-std=c++17', str(ROOT/'src/gbtrace.cpp'),
             '-lgmpxx', '-lgmp', '-o', str(exe)], out/'compile.log')
        for i in (0, 1):
            env = os.environ.copy()
            env.update(GB_DIV_MODE='0', GB_MAX_BITS='0',
                       GB_TARGET_FILE=str(out/f'derived/y{i}.target'))
            target = out/f'y{i}.json'
            run([str(exe), str(out/f'derived/y{i}.in'), str(target)],
                out/f'y{i}_generation.log', env)
            rec.append(same(target, ROOT/f'certificates/y{i}.json'))
        receipt['regeneration'] = rec
        print('EXACT_SOURCE_AND_ENDPOINT_DAGS_REGENERATED=PASS', flush=True)
        print('ALL_CERTIFICATES_BYTE_IDENTICAL=PASS', flush=True)
    (out/'REPLAY_RECEIPT.json').write_text(
        json.dumps(receipt, ensure_ascii=False, sort_keys=True, indent=2)+'\n',
        encoding='utf-8')
    print('MIX_DW_NONZERO_CLEAN_REPLAY=PASS', flush=True)

if __name__ == '__main__':
    main()
