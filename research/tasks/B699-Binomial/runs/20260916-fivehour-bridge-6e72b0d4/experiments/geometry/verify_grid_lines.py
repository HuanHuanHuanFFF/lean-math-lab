"""Independent standard-library verification of H023 NC7 exclusion on grid lines."""
from pathlib import Path
from itertools import combinations
import hashlib
import json
import math

ROOT = Path(__file__).resolve().parent
ROWS = (1, 4, 5, 6)
POINTS = [(x, r-x) for r in ROWS for x in range(r+1)]


def primitive_line(p, q):
    a, b, c = p[1]-q[1], q[0]-p[0], p[0]*q[1]-q[0]*p[1]
    div = math.gcd(a, b, c)
    ans = (a//div, b//div, c//div)
    if next(v for v in ans if v) < 0:
        ans = tuple(-v for v in ans)
    return ans


def val(n, p):
    assert n > 0
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def factors(n):
    p = 2
    out = {}
    while p*p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0)+1
            n //= p
        p = 3 if p == 2 else p+2
    if n > 1:
        out[n] = out.get(n, 0)+1
    return out


def lucas_divides(n, j, p):
    while n or j:
        if j % p > n % p:
            return True
        n //= p
        j //= p
    return False


def h023(n):
    return all(max(val(n-r, p) for r in range(7)) ==
               max(val(n-r, p) for r in (0, 2, 3)) for p in (2, 3, 5))


def main():
    lines = sorted({primitive_line(p, q) for p, q in combinations(POINTS, 2)})
    small = {r: math.prod(p**max(val(abs(r-h), p) for h in (0, 2, 3))
                         for p in (2, 3, 5))*7 for r in ROWS}
    assert small == {1: 14, 4: 28, 5: 210, 6: 84}
    certificates = []
    witnesses = []
    unique_points = set()
    count = 0
    for a, b, c in lines:
        if a*b >= 0:
            # Such a line through two nonnegative points of sum <=6 cannot meet X,Y>=8.
            assert a >= 0 and b >= 0
            assert a*8+b*8+c > 0
            certificates.append({'line': [a, b, c], 'legal_zero_empty_by_sign': True})
            continue
        bounds = []
        for r in ROWS:
            vals = [a*x+b*(r-x)+c for x in range(r+1)]
            if any(v == 0 for v in vals):
                continue
            exponents = {}
            for v in vals:
                for p, e in factors(abs(v)).items():
                    if p > 7 or p == 7 and e >= 2:
                        exponents[p] = max(exponents.get(p, 0), e)
            rough_lcm = math.prod(p**e for p, e in exponents.items())
            bounds.append({'row': r, 'values': vals, 'rough_lcm': rough_lcm,
                           'n_upper': small[r]*rough_lcm+r})
        assert bounds
        chosen = min(bounds, key=lambda z: z['n_upper'])
        upper = chosen['n_upper']
        cases = 0
        for n in range(16, upper+1):
            num, den = -b*n-c, a-b
            if num % den:
                continue
            j = num//den
            if not (8 <= j <= n//2) or not h023(n):
                continue
            cases += 1
            count += 1
            unique_points.add((n, j))
            ps = set()
            for r in range(7):
                for p, e in factors(n-r).items():
                    if p > 7 or p == 7 and e >= 2:
                        ps.add(p)
            witness = next((p for p in sorted(ps) if lucas_divides(n, j, p)), None)
            assert witness is not None, (a, b, c, n, j)
            # Independently check both divisibilities using exact binomial integers.
            assert math.comb(n, 7) % witness == 0
            assert math.comb(n, j) % witness == 0
            witnesses.append([a, b, c, n, j, witness])
        certificates.append({'line': [a, b, c], 'missing_row_certificate': chosen,
                             'h023_legal_cases_checked': cases})
    payload = json.dumps(witnesses, separators=(',', ':')).encode()
    witness_file = ROOT/'grid_line_witnesses.json'
    witness_file.write_bytes(payload)
    result = {'verified': True, 'grid_points': len(POINTS), 'grid_lines': len(lines),
              'positive_ray_lines': sum(a*b < 0 for a, b, c in lines),
              'max_zero_branch_n_upper': max(c['missing_row_certificate']['n_upper']
                    for c in certificates if 'missing_row_certificate' in c),
              'h023_cases_checked_with_repetitions': count,
              'distinct_h023_legal_points': len(unique_points),
              'witness_sha256': hashlib.sha256(payload).hexdigest(),
              'certificates': certificates,
              'scope': 'all 99 grid-determined affine lines nonzero under H023 and NC7; paper tail plus exhaustive finite zero branches; no Lean'}
    (ROOT/'grid_line_verification.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({k: v for k, v in result.items() if k != 'certificates'}))


if __name__ == '__main__':
    main()
