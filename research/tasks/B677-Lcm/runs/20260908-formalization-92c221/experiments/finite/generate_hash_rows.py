#!/usr/bin/env python3
"""Generate modular rows with deterministic lookup and gcd certificates.

All generated data is untrusted. Lean checks the lookup span at every start
and the exact modular recurrence. Hash injectivity is not assumed.
"""
import argparse
from datetime import datetime, timezone
import hashlib
import json
from math import gcd, lcm
from pathlib import Path
import sys
import time

from generate_mod_rows import module_name, render_tree
from generate_hash_helpers import build_lookup

sys.set_int_max_str_digits(100000)

CORE = 'research.tasks.«B677-Lcm».runs.«20260908-formalization-92c221».lean.finite.HashCertificate'
OPTIONS = 'set_option maxHeartbeats 0\nset_option maxRecDepth 1000000\n'
NS = 'B677FiniteHashGenerated'
MODULUS = 2**64 - 59


def combine(kind, depth, chunk_depth, offset=0):
    if depth == chunk_depth:
        return f'{kind}_{offset}'
    return ('(B677Finite.allTree_join ' + combine(kind, depth - 1, chunk_depth, offset) +
            ' ' + combine(kind, depth - 1, chunk_depth, offset + 2**(depth - 1)) + ')')


def cases_text(lo, hi, indent='  '):
    if lo == hi:
        return (indent + f'have he : k = {lo} := by omega\n' + indent + 'subst k\n' +
                indent + f'exact B677Finite.hash_rows_noncollision (by decide +kernel) rep{lo} hash_checked{lo} n m hsep hm\n')
    mid = (lo + hi) // 2
    return (indent + f'by_cases h{lo}_{hi} : k ≤ {mid}\n' +
            indent + '·\n' + cases_text(lo, mid, indent + '  ') +
            indent + '·\n' + cases_text(mid + 1, hi, indent + '  '))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--limit', type=int, default=2000)
    ap.add_argument('--lengths', type=int, default=33)
    ap.add_argument('--block', type=int, default=2048)
    ap.add_argument('--chunk-depth', type=int, default=10)
    ap.add_argument('--out', type=Path)
    ap.add_argument('--direct-gcd', action='store_true')
    args = ap.parse_args()
    repo = next(p for p in Path(__file__).resolve().parents if (p / 'lake-manifest.json').is_file())
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    out = (args.out.resolve() if args.out else Path(__file__).resolve().parent /
           f'hash-{args.limit}-{args.lengths}-{stamp}')
    out.mkdir(exist_ok=False, parents=True)
    started = time.monotonic()
    width = max(1, (args.limit - 1).bit_length())
    witness_width = (args.limit + args.lengths).bit_length()
    depth = max(0, (args.limit - 1).bit_length())
    chunk_depth = min(depth, args.chunk_depth)
    values = [n + 1 for n in range(args.limit)]
    initial_lcm = 1
    divisors, inverses = [], []
    records = []
    for k in range(1, args.lengths + 1):
        first_by_value = {}
        for n, value in enumerate(values):
            if value in first_by_value:
                assert n < first_by_value[value] + k, (k, n, first_by_value[value], value)
            else:
                first_by_value[value] = n
        lookup = build_lookup(first_by_value, args.limit)
        data = out / f'Data{k:02d}.lean'
        text = (f'import {CORE}\n' + OPTIONS + f'namespace {NS}\n'
                f'def row{k} : B677Finite.ModCertificate := {{\n'
                '  values := ' + render_tree(values, 64, args.block) + ',\n'
                f'  initialLcm := {initial_lcm},\n'
                '  sorted := { width := 1, groups := 0, first := .block 0, rank := .block 0 } }\n'
                f'def lookup{k} : B677Finite.LookupCertificate := {{\n'
                f'  width := {lookup["width"]}, directCut := {args.limit}, bucketMod := {lookup["bucket_mod"]}, slotMod := {lookup["slot_mod"]},\n'
                '  seeds := ' + render_tree(lookup['seeds'], lookup['width'], args.block) + ',\n'
                '  representatives := ' + render_tree(lookup['representatives'], lookup['width'], args.block) + ' }\n')
        if k > 1 and not args.direct_gcd:
            text += (f'def transition{k} : B677Finite.TransitionCertificate := {{\n'
                     f'  width := {witness_width},\n'
                     '  divisors := ' + render_tree(divisors, witness_width, args.block) + ',\n'
                     '  inverses := ' + render_tree(inverses, witness_width, args.block) + ' }\n')
        data.write_text(text + f'end {NS}\n')
        check = out / f'Check{k:02d}.lean'
        text = f'import {module_name(data, repo)}\n'
        if k > 1:
            text += f'import {module_name(out / f"Data{k - 1:02d}.lean", repo)}\n'
        text += OPTIONS + f'namespace {NS}\n'
        predicates = {
            'hash': f'B677Finite.hashPointCheck {args.limit} {k} 64 row{k} lookup{k}',
            'step': (f'B677Finite.initialPointCheck {args.limit} 64 {MODULUS} row1' if k == 1 else
                     (f'B677Finite.directNextPointCheck {args.limit} {k - 1} 64 {MODULUS} row{k - 1} row{k}' if args.direct_gcd else f'B677Finite.nextPointCheck {args.limit} {k - 1} 64 {MODULUS} row{k - 1} row{k} transition{k}'))}
        for kind, pred in predicates.items():
            # Name a small predicate so each chunk's proposition stays compact.
            ident = f'{kind}{k}'
            text += f'def {ident} : ℕ → Bool := {pred}\n'
            for offset in range(0, 2**depth, 2**chunk_depth):
                proof = ('by apply B677Finite.allTree_outside; decide +kernel'
                         if offset >= args.limit else 'by decide +kernel')
                text += (f'theorem {ident}_{offset} : B677Finite.allTree {chunk_depth} {offset} {ident} = true := {proof}\n')
            text += (f'theorem {ident}_checked : B677Finite.allTree {depth} 0 {ident} = true :=\n  ' +
                     combine(ident, depth, chunk_depth) + '\n')
        text += (f'theorem hash_checked{k} : B677Finite.allTree {depth} 0 (B677Finite.hashPointCheck {args.limit} {k} 64 row{k} lookup{k}) = true := hash{k}_checked\n')
        if k == 1:
            text += (f'theorem step_checked1 : B677Finite.modInitialCheck {depth} {args.limit} 64 {MODULUS} row1 = true :=\n'
                     '  B677Finite.modInitialCheck_of_parts (by decide +kernel) step1_checked\n')
        elif args.direct_gcd:
            text += (f'theorem step_checked{k} : B677Finite.modNextCheck {depth} {args.limit} {k - 1} 64 {MODULUS} row{k - 1} row{k} = true :=\n'
                     f'  B677Finite.directNextCheck_of_parts (by decide +kernel) step{k}_checked\n')
        else:
            text += (f'theorem step_checked{k} : B677Finite.witnessedModNextCheck {depth} {args.limit} {k - 1} 64 {MODULUS} row{k - 1} row{k} transition{k} = true :=\n'
                     f'  B677Finite.witnessedModNextCheck_of_parts (by decide +kernel) step{k}_checked\n')
        text += f'end {NS}\n'
        check.write_text(text)
        print(f'generated row {k}/{args.lengths}: {len(first_by_value)} signatures', flush=True)
        records.append({'k': k, 'groups': len(first_by_value), 'bucket_mod': lookup['bucket_mod'], 'slot_mod': lookup['slot_mod'], 'max_displacement': lookup['max_displacement'], 'starts': args.limit,
                        'data_bytes': data.stat().st_size,
                        'data_sha256': hashlib.sha256(data.read_bytes()).hexdigest(),
                        'check_sha256': hashlib.sha256(check.read_bytes()).hexdigest()})
        divisors, inverses, next_values = [], [], []
        for n, value in enumerate(values):
            x = n + k + 1
            d = gcd(initial_lcm, x)
            inverse = 0 if d == x else pow(initial_lcm // d, -1, x // d)
            assert initial_lcm % d == 0 and x % d == 0
            assert d == x or initial_lcm * inverse % x == d
            divisors.append(d)
            inverses.append(inverse)
            next_values.append(value * (x // d) % MODULUS)
        values = next_values
        initial_lcm = lcm(initial_lcm, k + 1)
    consumer = out / 'Consumer.lean'
    text = ''.join(f'import {module_name(out / f"Check{k:02d}.lean", repo)}\n'
                   for k in range(1, args.lengths + 1))
    text += OPTIONS + f'namespace {NS}\n'
    text += (f'theorem rep1 : B677Finite.ModRep {args.limit} 1 64 {MODULUS} row1 :=\n'
             '  B677Finite.modInitialCheck_sound (by decide +kernel) step_checked1\n')
    for k in range(2, args.lengths + 1):
        sound = 'modNextCheck_sound' if args.direct_gcd else 'witnessedModNextCheck_sound'
        text += (f'theorem rep{k} : B677Finite.ModRep {args.limit} {k} 64 {MODULUS} row{k} :=\n'
                 f'  B677Finite.{sound} (by decide +kernel) rep{k - 1} step_checked{k}\n')
    text += (f'theorem certified_finite_range : ∀ n m k : ℕ, 0 < k → k ≤ {args.lengths} → n+k ≤ m → m < {args.limit} → B677.intervalLcm n k ≠ B677.intervalLcm m k := by\n'
             '  intro n m k hk hbound hsep hm\n' + cases_text(1, args.lengths) +
             f"/-- info: '{NS}.certified_finite_range' depends on axioms: [propext, Classical.choice, Quot.sound] -/\n"
             '#guard_msgs in\n#print axioms certified_finite_range\n' + f'end {NS}\n')
    consumer.write_text(text)
    report = {'evidence': 'untrusted input generation; every row requires Lean kernel checks',
              'limit': args.limit, 'lengths': args.lengths, 'modulus': MODULUS,
              'block': args.block, 'direct_gcd': args.direct_gcd, 'chunk_depth': chunk_depth, 'depth': depth,
              'rows': records, 'seconds': time.monotonic() - started,
              'total_data_bytes': sum(r['data_bytes'] for r in records),
              'consumer_sha256': hashlib.sha256(consumer.read_bytes()).hexdigest(),
              'generator_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              'lookup_helper_sha256': hashlib.sha256(Path(__file__).with_name('generate_hash_helpers.py').read_bytes()).hexdigest(),
              'tree_renderer_sha256': hashlib.sha256(Path(__file__).with_name('generate_mod_rows.py').read_bytes()).hexdigest()}
    (out / 'generation.json').write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({k: v for k, v in report.items() if k != 'rows'}, indent=2))
    print(out)


if __name__ == '__main__':
    main()
