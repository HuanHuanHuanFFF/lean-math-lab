"""Independent finite-period checker, standard library only.

Algorithm B solves the J-equation linearly for h (instead of the generator's
quadratic formula) and checks the unsquared, divided norm with nu=(hd-Q)/2.
Zero residue factors are explicitly included.
"""
import argparse
from fractions import Fraction
from math import gcd, isqrt, lcm
from pathlib import Path
import json
from arithmetic import is_prime, mul, power, first_return_q, pell_coordinates


def excluded_independently(p: int, q: int, J: int):
    d, y = pell_coordinates(q, p)
    T = 3 * (d - 1) % p
    inv2 = pow(2, -1, p)
    inverse = [0] + [pow(a, -1, p) for a in range(1, p)]
    tested = 0
    for A in range(p):
        if A:
            Bs = [T * inverse[A] % p]
        elif T == 0:
            Bs = range(p)
        else:
            Bs = []
        for B in Bs:
            lhs = (16 * A * d + 120 * y + 27 * B - J) % p
            if B:
                hs = [lhs * inverse[(4 * B) % p] % p]
            elif lhs == 0:
                hs = range(p)
            else:
                hs = []
            for h in hs:
                v = A * y % p
                Q = (d + v) % p
                nu = (h * d - Q) * inv2 % p
                value = (nu * nu - B * y - (h + 3) * d * d
                         - (2 * h + 3) * d * v - (h + 1) * v * v) % p
                tested += 1
                if value == 0:
                    return False, tested, [A, B, h, nu]
    return True, tested, None


def independent_parity(qr: int, branch: str):
    d, y = 1, 1 + 8 * (qr % 2)
    result = []
    for A in range(16):
        if branch == 'low':
            good_A = (A == 0) if qr == 0 else (A == 8) if qr == 2 else (A % 8 == 4)
        else:
            good_A = A % 4 == 2
        if not good_A:
            continue
        for B in range(16):
            good_B = B % 8 == 4 if branch == 'low' else (B == (0 if qr % 2 == 0 else 8))
            if not good_B:
                continue
            if A * B % 16:
                continue
            for h in range(16):
                if h % 2 == 0:
                    continue
                for nu in range(16):
                    v = A * y
                    Q = d + v
                    P = Q + h * v
                    if (2 * nu - h * d + Q) % 16 or (P * Q * nu + 2) % 16:
                        continue
                    E = nu * nu - B * y - (h + 3) * d * d - (2 * h + 3) * d * v - (h + 1) * v * v
                    if E % 16:
                        continue
                    J = (16 * A * d + 120 * y + 27 * B - 4 * B * h) % 16
                    result.append([A, B, h, nu, J])
    return result


def verify_certificate(cert):
    assert cert['schema'] == 'B699-D-round21-nonnegative-J-cover-v1'
    assert cert['global_q_period'] == 1260
    assert cert['J_values'] == list(range(0, 69, 4))
    assert cert['q_allowed_mod3'] == [0, 2]
    assert cert['parity_gate'] == {'q_even_J_mod16': [4, 8], 'q_odd_J_mod16': [0, 12]}
    primes = {}
    for row in cert['primes']:
        p = row['p']
        assert is_prime(p) and p > 3
        period = len(first_return_q(p))
        assert row['period'] == period
        assert row['gamma8'] == list(power((2, 1), 8, p))
        # A second Pell implementation: eight direct recurrence steps per q.
        # This does not call the shared multiplication or binary power routine.
        uu, xx = 1, 0
        for q in range(period):
            if q:
                assert (uu, xx) != (1, 0)
            ut, xt = (2 * uu + 3 * xx) % p, (uu + 2 * xx) % p
            inv2 = pow(2, -1, p)
            direct = ((3 * xt - 1) * inv2 % p, ut * inv2 % p)
            assert direct == pell_coordinates(q, p)
            for _ in range(8):
                uu, xx = (2 * uu + 3 * xx) % p, (uu + 2 * xx) % p
        assert (uu, xx) == (1, 0)
        assert 1260 % period == 0
        assert p not in primes
        primes[p] = period
    assert lcm(6, *primes.values()) == 1260
    tested = 0
    local_cells = 0
    bad_lookup = {}
    for record in cert['local_exclusions']:
        p, J, per = record['p'], record['J'], record['period']
        assert p in primes and per == primes[p] and J in cert['J_values']
        assert record['bad_q'] == sorted(set(record['bad_q']))
        assert (J, p) not in bad_lookup
        bad_lookup[J, p] = set(record['bad_q'])
        for q in record['bad_q']:
            assert 0 <= q < per
            empty, count, witness = excluded_independently(p, q, J)
            assert empty, (p, q, J, witness)
            tested += count
            local_cells += 1
    parity_count = 0
    seen = set()
    for row in cert['parity_regression']:
        key = row['q_mod4'], row['branch']
        assert key not in seen
        seen.add(key)
        states = independent_parity(*key)
        assert row['states'] == states
        allowed = [4, 8] if row['q_mod4'] % 2 == 0 else [0, 12]
        assert states and all(v[-1] in allowed for v in states)
        parity_count += len(states)
    assert seen == {(q, b) for q in range(4) for b in ['low', 'high']}
    checked = 0
    skipped_parity = 0
    by_J = {}
    for J in cert['J_values']:
        assert str(J) in cert['selectors']
        ps = cert['selectors'][str(J)]
        assert ps and all((J, p) in bad_lookup for p in ps)
        witnesses = {}
        for q in range(1260):
            if q % 3 == 1:
                continue
            allowed = [4, 8] if q % 2 == 0 else [0, 12]
            if J % 16 not in allowed:
                skipped_parity += 1
                continue
            found = next((p for p in ps if q % primes[p] in bad_lookup[J, p]), None)
            assert found is not None, ('UNCOVERED', J, q)
            witnesses[found] = witnesses.get(found, 0) + 1
            checked += 1
        by_J[str(J)] = {str(k): v for k, v in sorted(witnesses.items())}
    assert parity_count == 14 and checked == 7560 and skipped_parity == 7560
    return {
        'status': 'PASS', 'auxiliary_primes': len(primes),
        'first_return_periods': {str(p): T for p, T in sorted(primes.items())},
        'J_values': 18, 'q_global_period': 1260,
        'after_TRI3_grid_states': 15120, 'source_parity_excluded': skipped_parity,
        'odd_prime_covered': checked, 'uncovered': 0,
        'mod16_states': parity_count, 'independent_Pell_recurrence': 'PASS', 'local_exclusion_records': len(bad_lookup),
        'independently_checked_empty_cells': local_cells,
        'independently_checked_local_h_candidates': tested,
        'coverage_by_J': by_J,
        'semantics': 'finite-ring necessary states, not original (n,j) or Lean proof states',
    }


def rational_checks():
    assert Fraction(693, 400) ** 2 > 3
    bound = Fraction(693, 10) + Fraction(813, 1280)
    assert bound == Fraction(89517, 1280) < 70
    assert 17 ** 3 > 8
    assert 3 * 8 < 128 ** 2
    assert power((2, 1), 8, 32) == (1, 16)
    U5, _ = power((2, 1), 5)
    _, X4 = power((2, 1), 4)
    assert 3 * U5 * X4 + 1 == 60817 > 128
    return {'upper_J_bound': str(bound), 'first_d': 60817,
            'alpha8_mod32': [1, 16], 'status': 'PASS'}


def failure_object():
    q = 5
    d, y = pell_coordinates(q)
    U, _ = power((2, 1), 4 * q + 1)
    _, X = power((2, 1), 4 * q)
    A = 4 * 13 * 11 * 19 * 181
    B = 3 * (d - 1) // A
    v, W = A * y, B * y
    S = v ** 4 + 5 * d * v ** 3 + 10 * d ** 2 * v ** 2 + 10 * d ** 3 * v + 5 * d ** 4 + d ** 2 * W
    r = isqrt(S)
    assert A * B == 3 * (d - 1) == 9 * U * X
    assert 3 * y * y == d * d + d + 1
    assert y < 2 ** 17 * A ** 3 and A // 4 > q * q
    assert B > 16 * A and B % 16 == 12 and A % 8 == 4
    assert gcd(A, B) == 4 and gcd(y, 3 * (d - 1)) == 1
    assert B // gcd(B, 9 * X) > 2 and B // gcd(B, 9 * U) > 2
    assert r * r < S < (r + 1) ** 2
    return {'q': q, 't': 41, 'd': d, 'y': y, 'A': A, 'B': B,
            'gcd_A_B': 4, 'lambda': str(Fraction(2 * A, X)),
            'B_U': B // gcd(B, 9 * X), 'B_X': B // gcd(B, 9 * U),
            'S_floor_sqrt': r, 'S_minus_floor_square': S - r * r,
            'next_square_minus_S': (r + 1) ** 2 - S,
            'passed': ['balanced Pell and AB', 'odd--odd deficits', 'A-CUBIC', 'ODDPART', 'B>16A', 'new low mod16 B gate'],
            'failed': ['full integer-square norm'],
            'not_claimed': ['an NC3 point', 'an original (n,j)', 'all historical gates', 'an integer h satisfying the norm']}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--certificate', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    cert = json.loads(args.certificate.read_text())
    result = verify_certificate(cert)
    result['rational_checks'] = rational_checks()
    result['failure_object'] = failure_object()
    # A malformed cover and a false local obstruction must both be rejected.
    import copy
    bad = copy.deepcopy(cert)
    for rec in bad['local_exclusions']:
        if rec['J'] == 68:
            rec['bad_q'] = []
    try:
        verify_certificate(bad)
    except AssertionError:
        result['damaged_cover_rejected'] = True
    else:
        raise AssertionError('bad cover accepted')
    # q=0,p=5,J=68 has a weak residue solution; excluding it is invalid.
    empty, _, witness = excluded_independently(5, 0, 68)
    assert not empty and witness is not None
    result['false_local_exclusion_rejected'] = {'p': 5, 'q': 0, 'J': 68, 'witness': witness}
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n')
    print('SAME_ORIGIN_PARITY16=PASS; STATES=', result['mod16_states'])
    print('NONNEGATIVE_J_COVER=PASS; GRID=15120; PARITY=7560; ODD_PRIMES=7560; UNCOVERED=0')
    print('INDEPENDENT_LOCAL_CHECK=PASS; EMPTY_CELLS=', result['independently_checked_empty_cells'])
    print('BAD_CERTIFICATES_REJECTED=PASS')
    print('ROUND21_VERIFY=PASS')

if __name__ == '__main__':
    main()
