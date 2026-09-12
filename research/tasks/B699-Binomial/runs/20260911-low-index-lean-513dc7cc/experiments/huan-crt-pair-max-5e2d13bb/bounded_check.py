"""Small independent CRT diagnostics; never loads or executes the old CRT scripts."""
from datetime import datetime, timezone
from pathlib import Path
from math import gcd
import hashlib
import json

HERE = Path(__file__).resolve().parent


def ceil_div(n, d):
    assert d > 0
    return -((-n) // d)


def coordinates(P, Q, v, d):
    residue = v * d % Q
    rho = residue if residue else Q
    numerator = P * rho - d
    assert numerator % Q == 0
    return rho, numerator // Q


def bounds(P, Q, rho, c0, capA, capC):
    lo = max(0, ceil_div(1 - c0, P))
    hi = min((capA - rho) // Q, (capC - c0) // P)
    return lo, hi


def check_one(P, Q, v, d, w, capA, capC):
    assert P >= 2 and Q >= 2 and P * v % Q == 1 and -w <= d <= w
    rho, c0 = coordinates(P, Q, v, d)
    lo, hi = bounds(P, Q, rho, c0, capA, capC)
    lower = lo <= 0 or c0 + P * (lo - 1) < 1
    upper = capA < rho + Q * (hi + 1) or capC < c0 + P * (hi + 1)
    assert lower and upper
    actual = []
    for A in range(1, capA + 1):
        for C in range(1, capC + 1):
            if P * A - Q * C != d:
                continue
            assert (A - rho) % Q == 0
            t = (A - rho) // Q
            assert t >= 0 and lo <= t <= hi
            assert A == rho + Q * t and C == c0 + P * t
            actual.append((A, C, t))
    generated = []
    for t in range(lo, hi + 1):
        A, C = rho + Q * t, c0 + P * t
        assert 1 <= A <= capA and 1 <= C <= capC
        assert P * A - Q * C == d
        generated.append((A, C, t))
    assert sorted(actual) == sorted(generated)
    upper_value = min(P * (rho + Q * hi), Q * (c0 + P * hi)) + w
    if hi < lo:
        assert not actual
    else:
        # These *tight computed* bounds attain their endpoint. The generic Lean
        # certificate only claims an upper bound for arbitrary sufficient bounds.
        assert actual
        assert max(min(P * A, Q * C) + w for A, C, _ in actual) == upper_value
    for A, C, t in actual:
        assert min(P * A, Q * C) + w <= upper_value
        # Compare the old zero representative with our positive representative.
        a0 = v * d % Q
        c_old = (P * a0 - d) // Q
        t_old = (A - a0) // Q
        assert A == a0 + Q * t_old and C == c_old + P * t_old
        assert t_old == t + (1 if a0 == 0 else 0)
        old_endpoint = P * a0 + w - max(d, 0) + P * Q * t_old
        assert old_endpoint == min(P * A, Q * C) + w
    return {
        'P': P, 'Q': Q, 'v': v, 'd': d, 'w': w,
        'capA': capA, 'capC': capC, 'rho': rho, 'baseC': c0,
        'lo': lo, 'hi': hi, 'empty': not actual,
        'solution_count': len(actual), 'upper_value': upper_value,
        'max_solution': max(actual, key=lambda row: row[2]) if actual else None,
    }


def main():
    count = empty = zero_residue = negative_seed = solutions = inverse_lifts = 0
    caps = [0, 1, 2, 4, 8]
    for P in range(2, 10):
        for Q in range(2, 10):
            if gcd(P, Q) != 1:
                continue
            for lift in [0, 1]:
                v = pow(P, -1, Q) + lift * Q
                for d in range(-5, 6):
                    for capA in caps:
                        for capC in caps:
                            result = check_one(P, Q, v, d, 5, capA, capC)
                            count += 1
                            empty += result['empty']
                            zero_residue += v * d % Q == 0
                            negative_seed += result['baseC'] < 0
                            solutions += result['solution_count']
                            inverse_lifts += lift == 1
    named = {
        'zero_difference_and_cap_below_rho': check_one(5, 7, 3, 0, 0, 6, 100),
        'negative_baseC_nonempty': check_one(2, 3, 2, 8, 8, 20, 20),
        'negative_baseC_zero_cap': check_one(2, 3, 2, 8, 8, 20, 0),
        'negative_difference': check_one(5, 7, 3, -3, 3, 30, 20),
    }
    # Sound but deliberately loose bounds do not imply an attained maximum.
    P, Q, v, d, w, capA, capC, lo, hi = 5, 7, 3, 0, 0, 0, 0, -10, 100
    rho, c0 = coordinates(P, Q, v, d)
    assert lo <= 0
    assert capA < rho + Q * (hi + 1)
    assert lo <= hi and capA == capC == 0
    limitations_example = {
        'P': P, 'Q': Q, 'v': v, 'd': d, 'w': w,
        'capA': capA, 'capC': capC, 'lo': lo, 'hi': hi,
        'check_passes': True, 'interval_nonempty': True, 'actual_solutions': 0,
        'meaning': 'Arbitrary sufficient bounds do not assert existence or attainment.'
    }
    result = {
        'utc': datetime.now(timezone.utc).isoformat(),
        'status': 'PASS_BOUNDED_EXACT_DIAGNOSTIC_NOT_LEAN',
        'range': {'P': [2, 9], 'Q': [2, 9], 'coprime_only': True,
                  'inverse_lifts': [0, 1], 'd': [-5, 5], 'w': 5, 'caps': caps},
        'counts': {'configurations': count, 'empty': empty, 'zero_residue': zero_residue,
                   'negative_baseC': negative_seed, 'positive_cofactor_solutions': solutions,
                   'lifted_inverse_configurations': inverse_lifts},
        'named_edges': named, 'loose_bounds_are_not_existence': limitations_example,
        'old_scripts_executed': False,
        'lean_invocations': 0,
        'candidate_obligations_checked_numerically': [
            'actual seed equation and integer baseC',
            'complete and unique nonnegative parameterization',
            'both sufficient linear bound conditions',
            'no feasible positive cofactors when hi < lo',
            'computed endpoint bounds every actual cofactor window upper value',
            'tight bounds attain the endpoint in this diagnostic',
            'old zero residue and new positive residue coordinate conversion'
        ],
        'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
    }
    destination = HERE / 'bounded-check.json'
    destination.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'status': result['status'], 'counts': result['counts'],
                      'named_edges': named, 'output': str(destination)}, ensure_ascii=False))


if __name__ == '__main__':
    main()
