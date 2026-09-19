#!/usr/bin/env python3
"""Reassemble the near-slot certificate from the saved exact discovery outputs.

Standard library only. Does not modify the frozen evidence by default. The
separate verify.py checks the complete class enumeration and every identity.
"""
from __future__ import annotations
import argparse
import json
import math
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def canonical(terms: list[list[int]]) -> tuple[tuple[int, int, int], ...]:
    coeffs = {(a, b): c for a, b, c in terms if c}
    if not coeffs:
        raise ValueError('zero polynomial is not an admissible factor')
    divisor = math.gcd(*coeffs.values())
    if coeffs[max(coeffs)] < 0:
        divisor = -divisor
    return tuple((a, b, coeffs[a, b] // divisor) for a, b in sorted(coeffs))


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, default=ROOT / 'replay/near-geometry-rebuilt.json')
    args = parser.parse_args()
    discovery = json.loads((ROOT / 'evidence/near-slot-discovery.json').read_text())
    roots = json.loads((ROOT / 'evidence/near-root-discovery.json').read_text())
    lookup = {canonical(c['terms']): i + 1 for i, c in enumerate(roots['curves'])}
    if len(lookup) != 6:
        raise ValueError('expected six distinct primitive factors')
    classes = []
    for c in discovery['classes']:
        if c['nullity'] != 1 or len(c['kernel']) != 1:
            raise ValueError('a class does not have exactly one kernel vector')
        kernel = c['kernel'][0]
        factors = []
        for f in kernel['factors']:
            factors.extend([lookup[canonical(f['terms'])]] * f['power'])
        classes.append({**{key: c[key] for key in ('a', 'b', 'multiplicities', 'nullity')},
                        'terms': kernel['terms'], 'factors': factors})
    rebuilt = {'schema': 'B699-D-row4-missing-near-geometry-v1',
               'deleted_slot': 1, 'degree_bound': 27, 'classes': classes, 'roots': roots}
    expected = json.loads((ROOT / 'evidence/near-geometry.json').read_text())
    if rebuilt != expected:
        raise ValueError('reassembled certificate differs from frozen certificate')
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(rebuilt, ensure_ascii=False, indent=2) + '\n')
    print('PASS_REASSEMBLED_CERTIFICATE: 36 classes, six factors, exact data equality')


if __name__ == '__main__':
    main()
