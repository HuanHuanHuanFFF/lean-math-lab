#!/usr/bin/env python3
"""Replay GAP31 evidence. Default mode uses Python's standard library only.

Default: independently regenerate the cubic-root certificate and all small-C
witnesses, compare against the frozen evidence, and exercise negative tests.
--full: additionally rerun square-divisor discovery and symbolic identities.
No network access, Lean, external review or background work is performed.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import subprocess
import sys

ROOT = Path(__file__).resolve().parent.parent


def load(path: Path) -> dict:
    with path.open(encoding='utf-8') as stream:
        return json.load(stream)


def run(script: str, args: list[str], out: Path, *, stdlib: bool) -> None:
    cmd = [sys.executable]
    if stdlib:
        cmd += ['-S', '-B']
    cmd += [str(ROOT / 'code' / script), *args]
    with (out / (Path(script).stem + '.log')).open('w', encoding='utf-8') as log:
        result = subprocess.run(cmd, stdout=log, stderr=subprocess.STDOUT, check=False)
    if result.returncode:
        raise RuntimeError(f'{script} failed ({result.returncode}); read its replay log')


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output-dir', type=Path, required=True)
    parser.add_argument('--full', action='store_true')
    options = parser.parse_args()
    out = options.output_dir.resolve()
    if out == ROOT or ROOT in out.parents:
        parser.error('use an output directory OUTSIDE the frozen evidence directory')
    out.mkdir(parents=True, exist_ok=True)
    reference = ROOT / 'outputs' / 'gap_probe31.json'
    tasks = []
    if options.full:
        new_reference = out / 'gap_probe31.json'
        run('gap_probe.py', ['--max-delta','31','--output',str(new_reference)],out,stdlib=False)
        if load(new_reference) != load(reference):
            raise AssertionError('discovery differs from frozen deterministic evidence')
        reference = new_reference
        tasks.append('square_divisor_discovery_matches_frozen')
    verified = out / 'gap_verify31.json'
    run('verify_gap.py', ['--max-delta','31','--reference',str(reference),
        '--negative-tests','--output',str(verified)],out,stdlib=True)
    if load(verified) != load(ROOT / 'outputs' / 'gap_verify31.json'):
        raise AssertionError('second implementation differs from frozen deterministic evidence')
    tasks.append('cubic_root_verification_and_five_negative_tests_match_frozen')
    terminals = out / 'terminals.json'
    run('check_terminals.py',['--output',str(terminals)],out,stdlib=True)
    if load(terminals) != load(ROOT / 'outputs' / 'terminals.json'):
        raise AssertionError('small-C witnesses or isolated-3 diagnostics differ')
    tasks.append('all_1406_small_C_witnesses_and_three_terminal_diagnostics_match_frozen')
    if options.full:
        algebra = out / 'algebra.json'
        run('check_algebra.py',['--output',str(algebra)],out,stdlib=False)
        if load(algebra)['checks'] != load(ROOT / 'outputs' / 'algebra.json')['checks']:
            raise AssertionError('symbolic identities differ')
        tasks.append('all_18_exact_algebra_checks_match_frozen')
    record = {
        'status':'REPLAY_PASS', 'python':sys.version.split()[0],
        'mode':'full' if options.full else 'standard-library',
        'completed':tasks,
        'proof_level':'same-author exact replay of bounded certificates; not Lean or external review',
    }
    with (out / 'reproduction.json').open('w',encoding='utf-8') as stream:
        json.dump(record,stream,ensure_ascii=False,indent=2)
    print(json.dumps(record,ensure_ascii=False,indent=2))

if __name__ == '__main__':
    main()
