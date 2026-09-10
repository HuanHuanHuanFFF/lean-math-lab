#!/usr/bin/env python3
"""Replay this new i=13 chain in a clean temporary directory, not in-place.

All accepted computations use the Python standard library. Each output is
compared byte-for-byte with the frozen result. The publication inputs and
infinite arguments in notes/PROOFS.md are not proved by running this script.
"""
from __future__ import annotations
import argparse
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import platform
import resource
import shutil
import subprocess
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parents[1]
STEPS = [
    'check_inputs.py', 'certify_i13_cuts.py', 'check_i13_cuts_independent.py',
    'check_i13_graph.py', 'generate_i13_blocks.py', 'check_i13_blocks.py',
    'generate_i13_terminal.py', 'check_i13_terminal.py',
    'check_edge_cases.py', 'adversarial_checks.py',
]
COMPARE = [
    'outputs/input_integrity_recheck.json', 'outputs/i13_cuts_certified.json',
    'outputs/i13_cuts_independent.json', 'outputs/i13_graph_check.json',
    'outputs/block_certificate.json', 'outputs/i13_block_check.json',
    'input/compressed_heights.json', 'outputs/i13_terminal_certificate.json',
    'outputs/i13_terminal_check.json', 'outputs/edge_cases.json',
    'outputs/adversarial_checks.json',
]

def digest(path: Path) -> str:
    with path.open('rb') as stream:
        h = hashlib.sha256()
        for block in iter(lambda: stream.read(1 << 20), b''):
            h.update(block)
    return h.hexdigest()

def now() -> str:
    return datetime.now(timezone.utc).isoformat()

def source_paths() -> list[str]:
    paths = [str(p.relative_to(ROOT)) for p in (ROOT/'code').rglob('*.py')
             if '__pycache__' not in p.parts]
    paths += ['input/B699-research-context-20260910.zip', 'input/CURRENT_STATE.md',
              'input/SOURCE_MAP.md', 'input/ARCHIVES.json', 'input/i13_cuts.json',
              'sources/adopted_code.json', 'sources/startup_snapshot.json']
    return sorted(paths)

def run(record: Path) -> None:
    if not __debug__:
        raise RuntimeError('Do not use -O/-OO for certificate checking')
    if record.exists():
        raise FileExistsError(f'Use a new record directory; preserving prior record: {record}')
    record.mkdir(parents=True)
    started = time.monotonic()
    paths = source_paths()
    before = {p: digest(ROOT/p) for p in paths}
    evidence = {
        'status': 'RUNNING', 'started_at_utc': now(),
        'python_version': sys.version, 'platform': platform.platform(),
        'argv': sys.argv, 'cwd': str(ROOT),
        'scope': 'New i=13 exact computations only; no Lean, publication-proof replay, or historical full experiment replay',
        'source_sha256_before': before, 'commands': [], 'comparisons': [],
    }
    def save():
        (record/'reproduction.json').write_text(json.dumps(evidence, indent=2)+'\n')
    save()
    try:
        with tempfile.TemporaryDirectory(prefix='b699-i13-clean-') as temporary:
            work = Path(temporary)
            for rel in paths:
                target = work/rel
                target.parent.mkdir(parents=True, exist_ok=True)
                shutil.copyfile(ROOT/rel, target)
            (work/'outputs').mkdir()
            env = dict(os.environ, PYTHONDONTWRITEBYTECODE='1', PYTHONHASHSEED='0')
            env.pop('PYTHONOPTIMIZE', None)
            for num, script in enumerate(STEPS, 1):
                command = [sys.executable, '-B', 'code/'+script]
                log = record/f'{num:02d}-{Path(script).stem}.log'
                step = {'command': command, 'cwd': str(work), 'started_at_utc': now(),
                        'log': log.name}
                t = time.monotonic()
                with log.open('wb') as output:
                    result = subprocess.run(command, cwd=work, env=env,
                        stdout=output, stderr=subprocess.STDOUT, timeout=180, check=False)
                step.update({'exit_code': result.returncode, 'seconds': time.monotonic()-t,
                             'log_bytes': log.stat().st_size, 'log_sha256': digest(log)})
                evidence['commands'].append(step)
                save()
                print(f'{num:02d} {script}: exit {result.returncode}, {step["seconds"]:.3f}s', flush=True)
                if result.returncode != 0:
                    raise RuntimeError(f'Replay failed: {script}; see {log}')
            for rel in COMPARE:
                regenerated = work/rel
                expected = ROOT/rel
                match = regenerated.read_bytes() == expected.read_bytes()
                evidence['comparisons'].append({'path': rel, 'bytes': regenerated.stat().st_size,
                    'sha256': digest(regenerated), 'byte_identical': match})
                if not match:
                    shutil.copyfile(regenerated, record/('mismatch-'+Path(rel).name))
                    raise RuntimeError(f'Frozen result mismatch: {rel}')
            # Timing and checkpoint logs are evidence, not mathematical comparison inputs.
            for name in ['i13_terminal_timings.json', 'generator_stage_times.json']:
                shutil.copyfile(work/'outputs'/name, record/name)
        after = {p: digest(ROOT/p) for p in paths}
        evidence['source_sha256_after'] = after
        evidence['sources_unchanged'] = before == after
        if before != after:
            raise RuntimeError('Source or original input mutated during replay')
        evidence['status'] = 'PASS'
    except BaseException as exc:
        evidence.update({'status': 'FAIL', 'error_type': type(exc).__name__, 'error': str(exc)})
        raise
    finally:
        evidence.update({'finished_at_utc': now(), 'wall_seconds': time.monotonic()-started,
            'max_child_rss_kib_linux': resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss})
        save()
    print(f'PASS: {len(STEPS)} commands, {len(COMPARE)} byte-identical mathematical outputs.')

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--record', default='replay/latest', help='New output directory relative to package root')
    args = parser.parse_args()
    dest = Path(args.record)
    run(dest if dest.is_absolute() else ROOT/dest)
