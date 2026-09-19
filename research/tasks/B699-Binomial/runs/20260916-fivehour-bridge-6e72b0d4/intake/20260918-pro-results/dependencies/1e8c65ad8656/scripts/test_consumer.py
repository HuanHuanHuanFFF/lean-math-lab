"""Bounded API checks: source and reflected target must remain distinct."""
from __future__ import annotations
import argparse
import json
from math import comb, gcd
from pathlib import Path
from transport import witness


def run() -> dict:
    good = witness(35, 13, 3)
    assert (good['target_n'], good['target_j']) == (19, 6)
    assert gcd(comb(19, 3), comb(19, 6)) % 3 == 0
    assert good['claim_scope'] == 'REFLECTED_PAIR_ONLY'
    assert good['original_NC3_status'] == 'NOT_ASSERTED'
    bad = [
        ('illegal_source', (35, 3, 3)),
        ('prime_two', (35, 13, 2)),
        ('composite_prime', (35, 13, 9)),
        ('nonpositive_prime', (35, 13, -3)),
        ('nonintegral_reflection', (12, 5, 3)),
        ('illegal_small_target', (10, 4, 3)),
        ('not_middle_prime', (35, 13, 5)),
    ]
    rejected = []
    for name, args in bad:
        try:
            witness(*args)
        except ValueError as exc:
            rejected.append({'case': name, 'rejected': True, 'reason': str(exc)})
        else:
            raise AssertionError(f'Invalid input accepted: {name}')
    return {
        'status': 'PASS',
        'positive_source': [35, 13],
        'positive_target': [19, 6],
        'negative_input_cases': rejected,
        'scope': 'API regression, not an original-NC3 exclusion certificate',
    }


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    data = run()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(data, indent=2, sort_keys=True) + '\n', encoding='utf-8')
    print(json.dumps({'status': data['status'], 'negative_input_rejections': len(data['negative_input_cases'])}))
