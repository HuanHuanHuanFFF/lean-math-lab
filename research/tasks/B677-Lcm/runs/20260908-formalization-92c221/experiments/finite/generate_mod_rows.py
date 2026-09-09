#!/usr/bin/env python3
"""Untrusted modular LCM row certificates; only Lean kernel checks accept them."""
import argparse
from datetime import datetime, timezone
import hashlib
import json
from math import gcd, lcm
from pathlib import Path
import sys
import time

sys.set_int_max_str_digits(100000)


def module_name(path, repo):
    return '.'.join(p if p.replace('_', '').isalnum() and not p[0].isdigit()
                    else '«' + p + '»' for p in path.relative_to(repo).with_suffix('').parts)


def render_tree(xs, width, block):
    if len(xs) <= block:
        return '.block ' + str(sum(value << (width * i) for i, value in enumerate(xs)))
    cut = len(xs) // 2
    return (f'.node {cut} (' + render_tree(xs[:cut], width, block) + ') (' +
            render_tree(xs[cut:], width, block) + ')')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--limit', type=int, default=2000)
    ap.add_argument('--lengths', type=int, default=33)
    ap.add_argument('--block', type=int, default=64)
    args = ap.parse_args()
    repo = next(p for p in Path(__file__).resolve().parents if (p / 'lake-manifest.json').is_file())
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    out = Path(__file__).resolve().parent / f'mod-{args.limit}-{args.lengths}-{stamp}'
    out.mkdir(exist_ok=False)
    started = time.monotonic()
    modulus = 2**64 - 59
    width = max(1, (args.limit - 1).bit_length())
    depth = max(0, (args.limit - 1).bit_length())
    values = [n + 1 for n in range(args.limit)]
    initial_lcm = 1
    sources, stats = [], []
    for k in range(1, args.lengths + 1):
        first_by_value = {}
        for n, value in enumerate(values):
            if value in first_by_value:
                assert n < first_by_value[value] + k, (k, n, first_by_value[value], value)
            else:
                first_by_value[value] = n
        first = [first_by_value[v] for v in sorted(first_by_value)]
        ranks = {values[n]: r for r, n in enumerate(first)}
        rank = [ranks[v] for v in values]
        sources.append(f'def row{k} : B677Finite.ModCertificate := {{\n'
                       '  values := ' + render_tree(values, 64, args.block) + ',\n'
                       f'  initialLcm := {initial_lcm},\n'
                       f'  sorted := {{\n    width := {width}, groups := {len(first)},\n'
                       '    first := ' + render_tree(first, width, args.block) + ',\n'
                       '    rank := ' + render_tree(rank, width, args.block) + ' } }\n')
        stats.append({'k': k, 'groups': len(first), 'starts': args.limit})
        values = [(v * ((n + k + 1) // gcd(initial_lcm, n + k + 1))) % modulus
                  for n, v in enumerate(values)]
        initial_lcm = lcm(initial_lcm, k + 1)
    data = out / 'Data.lean'
    data.write_text('import research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.ModularRows\n'
                    'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n'
                    'namespace B677FiniteModGenerated\n' + '\n'.join(sources) +
                    'def rest : List B677Finite.ModCertificate := [' +
                    ','.join(f'row{k}' for k in range(2, args.lengths + 1)) + ']\n'
                    'end B677FiniteModGenerated\n')
    check = out / 'Check.lean'
    check.write_text(f'import {module_name(data, repo)}\n'
                     'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n'
                     'namespace B677FiniteModGenerated\n'
                     f'theorem initial_checked : B677Finite.modInitialCheck {depth} {args.limit} 64 {modulus} row1 = true := by decide +kernel\n'
                     f'theorem rows_checked : B677Finite.modCheckRows {depth} {args.limit} 1 64 {modulus} row1 rest = true := by decide +kernel\n'
                     f'theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ {args.lengths} → n+k ≤ m → m < {args.limit} → B677.intervalLcm n k ≠ B677.intervalLcm m k := by\n'
                     '  have h := B677Finite.checked_mod_rows_noncollision (by decide +kernel) initial_checked rows_checked\n'
                     f'  have hlen : 1 + rest.length = {args.lengths} := by decide +kernel\n'
                     '  simpa only [hlen] using h\n'
                     "/-- info: 'B677FiniteModGenerated.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n"
                     '#guard_msgs in\n#print axioms certified_finite_range\nend B677FiniteModGenerated\n')
    report = {'evidence': 'untrusted generated input; Lean kernel acceptance required',
              'limit': args.limit, 'lengths': args.lengths, 'modulus': modulus,
              'block': args.block, 'rows': stats, 'seconds': time.monotonic() - started,
              'data_bytes': data.stat().st_size,
              'data_sha256': hashlib.sha256(data.read_bytes()).hexdigest(),
              'check_sha256': hashlib.sha256(check.read_bytes()).hexdigest(),
              'generator_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest()}
    (out / 'generation.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({k: v for k, v in report.items() if k != 'rows'}, indent=2))
    print(out)


if __name__ == '__main__':
    main()
