#!/usr/bin/env python3
"""Read-only package verification and fresh deterministic replay.
Only the output directory is written. Historical archives are never executed.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
import platform
import subprocess
import sys
import time
from pathlib import Path


def sha(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def check_manifest(root: Path) -> dict:
    record = json.loads((root / 'MANIFEST.json').read_text(encoding='utf-8'))
    require(record.get('schema') == 1, 'unsupported manifest')
    entries = record.get('files')
    require(isinstance(entries, list), 'manifest file list required')
    seen = set()
    for row in entries:
        rel = row['path']
        p = Path(rel)
        require(not p.is_absolute() and '..' not in p.parts and rel not in seen, 'unsafe/duplicate member')
        require(rel != 'MANIFEST.json', 'manifest must not hash itself')
        seen.add(rel)
        full = root / p
        require(full.is_file() and not full.is_symlink(), 'missing member or symlink')
        require(full.stat().st_size == row['bytes'] and sha(full) == row['sha256'], 'member mismatch: ' + rel)
    actual = {str(p.relative_to(root)) for p in root.rglob('*') if p.is_file() and p.name != 'MANIFEST.json'}
    require(actual == seen, 'manifest not the exact file set')
    require(not any(p.is_symlink() for p in root.rglob('*')), 'symlinks are not accepted')
    return {'status': 'PASS_EXACT_MANIFEST', 'listed_files': len(seen), 'manifest_sha256': sha(root / 'MANIFEST.json')}


def main(out: Path) -> None:
    root = Path(__file__).resolve().parent.parent
    out = out.resolve()
    require(out != root and root not in out.parents, 'output must be outside the evidence package')
    require(not out.exists() or (out.is_dir() and not any(out.iterdir())), 'output must be absent or empty')
    start = time.perf_counter()
    integrity = check_manifest(root)
    out.mkdir(parents=True, exist_ok=True)
    (out / 'logs').mkdir()
    evidence = out / 'evidence'
    outputs = out / 'outputs'
    steps = [
        ('generate', ['generate.py', '--out', str(evidence)]),
        ('verify', ['verify.py', '--certificate', str(evidence / 'certificate.json'), '--out', str(outputs)]),
        ('all_positions', ['verify_by_all_positions.py', '--out', str(outputs)]),
        ('diagnostics', ['diagnostics.py', '--out', str(outputs)]),
        ('mutations', ['mutations.py', '--certificate', str(evidence / 'certificate.json'), '--out', str(outputs)]),
    ]
    receipts = []
    env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONHASHSEED='0')
    for name, args in steps:
        command = [sys.executable, '-S', '-B', str(root / 'code' / args[0]), *args[1:]]
        t = time.perf_counter()
        done = subprocess.run(command, cwd=out, env=env, text=True, capture_output=True, check=False)
        elapsed = time.perf_counter() - t
        (out / 'logs' / (name + '.stdout.txt')).write_text(done.stdout, encoding='utf-8')
        (out / 'logs' / (name + '.stderr.txt')).write_text(done.stderr, encoding='utf-8')
        require(done.returncode == 0, 'replay failed: ' + name + '\n' + done.stderr[-2000:])
        receipts.append({'step': name, 'returncode': done.returncode, 'seconds': elapsed})
    compares = []
    for rel in ['evidence/certificate.json', 'evidence/generation.json', 'outputs/acceptance.json',
                'outputs/all_positions.json', 'outputs/diagnostics.json', 'outputs/mutations.json']:
        expected, regenerated = root / rel, out / rel
        require(expected.read_bytes() == regenerated.read_bytes(), 'deterministic output differs: ' + rel)
        compares.append({'path': rel, 'bytes': expected.stat().st_size, 'sha256': sha(expected), 'identical': True})
    result = {'status': 'PASS_CLEAN_NEW_CHAIN_REPLAY', 'integrity': integrity, 'steps': receipts,
              'byte_identical_mathematical_files': compares, 'seconds': time.perf_counter() - start,
              'python': sys.version, 'platform': platform.platform(),
              'historical_mathematical_chains_rerun': False, 'repository_actions': False,
              'lean': False, 'external_independent_mathematical_review': False}
    (out / 'receipt.json').write_text(json.dumps(result, ensure_ascii=False, sort_keys=True, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': result['status'], 'manifest_files': integrity['listed_files'],
                      'identical_files': len(compares), 'seconds': result['seconds']}, sort_keys=True))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    main(parser.parse_args().out)
