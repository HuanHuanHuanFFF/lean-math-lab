from __future__ import annotations
from ctypes import Structure, WinDLL, byref, c_size_t, sizeof, wintypes
from datetime import datetime, timezone
from fractions import Fraction
from functools import reduce
from math import factorial, gcd, prod as integer_prod
from pathlib import Path
import hashlib
import json
import time

OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
PAIRS = [(5, 4), (5, 3), (25, 17)]
SAMPLES = list(range(1, 65)) + [100, 256]


def poly_mul(a, b):
    result = [0] * (len(a) + len(b) - 1)
    for i, v in enumerate(a):
        for j, w in enumerate(b):
            result[i + j] += v * w
    while len(result) > 1 and result[-1] == 0:
        result.pop()
    return result


def poly_prod(factors):
    return reduce(poly_mul, factors, [1])


def poly_scale(a, scalar):
    return [v * scalar for v in a]


def poly_sub(a, b):
    result = [(a[i] if i < len(a) else 0) - (b[i] if i < len(b) else 0)
              for i in range(max(len(a), len(b)))]
    while len(result) > 1 and result[-1] == 0:
        result.pop()
    return result


def poly_eval(coefficients, x):
    result = 0
    for value in reversed(coefficients):
        result = result * x + value
    return result


def factorial_term(c, d, delta, m):
    # Direct original definition. All indices are checked before factorial;
    # no truncated Nat subtraction is imported into the calculation.
    indices = [(c + d) * m - delta, d * m - delta,
               (c - d) * m + delta - 1]
    assert c > d > 0 and m >= 1 and delta in (0, 1)
    assert min(indices) >= 0
    return Fraction(factorial(indices[0]), factorial(indices[1]) ** 2 * factorial(indices[2]))


def fstr(value):
    return f'{value.numerator}/{value.denominator}'


def peak_working_set():
    class Counters(Structure):
        _fields_ = [('cb', wintypes.DWORD), ('PageFaultCount', wintypes.DWORD)] + [
            (name, c_size_t) for name in ('PeakWorkingSetSize', 'WorkingSetSize',
            'QuotaPeakPagedPoolUsage', 'QuotaPagedPoolUsage', 'QuotaPeakNonPagedPoolUsage',
            'QuotaNonPagedPoolUsage', 'PagefileUsage', 'PeakPagefileUsage')]
    kernel = WinDLL('kernel32', use_last_error=True)
    psapi = WinDLL('psapi', use_last_error=True)
    kernel.GetCurrentProcess.restype = wintypes.HANDLE
    psapi.GetProcessMemoryInfo.argtypes = [wintypes.HANDLE, wintypes.LPVOID, wintypes.DWORD]
    counters = Counters()
    counters.cb = sizeof(counters)
    assert psapi.GetProcessMemoryInfo(kernel.GetCurrentProcess(), byref(counters), counters.cb)
    return counters.PeakWorkingSetSize


def calculate():
    start = time.perf_counter()
    rows = []
    for c, d in PAIRS:
        a, b = c + d, c - d
        beta = Fraction(a ** a, d ** (2 * d) * b ** b)
        uf = [[a + j, a] for j in range(1, a)]
        wf = [[d + j, d] for j in range(1, d)] * 2 + [[b + j, b] for j in range(1, b)]
        U, W = poly_prod(uf), poly_prod(wf)
        # Variable x=m-1; this is exactly the accepted ratio consumer's residual.
        residual = poly_sub(
            poly_scale(poly_mul(poly_prod([[2, 1]] * 3), W), beta.numerator * b * d ** 2),
            poly_scale(poly_mul([3, 1], U), a * beta.denominator))
        content = reduce(gcd, residual)
        primitive = [v // content for v in residual]
        assert content > 0 and all(v > 0 for v in primitive)
        assert len(residual) - 1 == a - 2
        # Independent evaluation through integer products, not polynomial convolution.
        eval_points = [Fraction(k, 3) for k in range(a + 3)]
        for x in eval_points:
            direct_U = integer_prod(a * (x + 1) + j for j in range(1, a))
            direct_W = (integer_prod(d * (x + 1) + j for j in range(1, d)) ** 2
                        * integer_prod(b * (x + 1) + j for j in range(1, b)))
            expected = (beta.numerator * b * d ** 2 * (x + 2) ** 3 * direct_W
                        - a * beta.denominator * (x + 3) * direct_U)
            assert poly_eval(residual, x) == expected
        cases = []
        for delta in (0, 1):
            # Separate direct-factor polynomials before endpoint cancellation.
            N = poly_prod([[a + j, a] for j in range(1 - delta, a - delta + 1)])
            T = poly_prod([[d + j, d] for j in range(1 - delta, d - delta + 1)] * 2
                          + [[b + j, b] for j in range(delta, b + delta)])
            raw = poly_sub(
                poly_scale(poly_mul(poly_prod([[2, 1]] * 2), T), beta.numerator),
                poly_scale(poly_mul(poly_prod([[1, 1], [3, 1]]), N), beta.denominator))
            multiplier = poly_prod([[1, 1], [2, 1]]) if delta == 0 else poly_prod([[1, 1]] * 2)
            assert raw == poly_mul(multiplier, residual)
            F1 = factorial_term(c, d, delta, 1)
            K = 2 * F1 / beta
            assert 0 < K < Fraction(1, 2)
            for m in SAMPLES:
                Fm = factorial_term(c, d, delta, m)
                ratio = factorial_term(c, d, delta, m + 1) / Fm
                reduced = Fraction(a * poly_eval(U, m - 1), b * d ** 2 * m * (m + 1) * poly_eval(W, m - 1))
                assert ratio == reduced
                assert ratio <= beta * Fraction((m + 1) ** 2, m * (m + 2))
                assert factorial_term(c, d, 1, m) / factorial_term(c, d, 0, m) == Fraction(d ** 2, a * b)
                envelope = K * beta ** m * Fraction(m, m + 1)
                assert Fm <= envelope < beta ** m / 2
                assert Fm < K * beta ** m
                assert (Fm == envelope) == (m == 1)
            cases.append({'delta': delta, 'F1': fstr(F1), 'K': fstr(K),
                          'K_less_than_half': True, 'raw_residual_degree': len(raw) - 1,
                          'raw_residual_factorization': 'm*(m+1)*residual' if delta == 0 else 'm^2*residual',
                          'direct_factorial_samples': SAMPLES, 'sample_count': len(SAMPLES),
                          'sample_checks': ['actual ratio identity', 'delta ratio identity',
                                            'ratio bound', 'telescoping and middle strict half bound',
                                            'strict K bound', 'equality only at m=1']})
        rows.append({'c': c, 'd': d, 'a': a, 'b': b, 'beta': fstr(beta),
                     'delta1_over_delta0': fstr(Fraction(d ** 2, a * b)),
                     'variable': 'x=m-1', 'U_factors_ascending': uf, 'W_factors_ascending': wf,
                     'residual_definition': 'beta.num*b*d^2*(x+2)^3*W(x)-a*beta.den*(x+3)*U(x)',
                     'residual_content': str(content),
                     'primitive_coefficients_ascending': [str(v) for v in primitive],
                     'residual_degree': len(residual) - 1,
                     'all_primitive_coefficients_strictly_positive': True,
                     'independent_product_evaluation_points': [fstr(x) for x in eval_points],
                     'cases': cases})
    record = {'schema': 1, 'utc': datetime.now(timezone.utc).isoformat(),
              'evidence': 'exact Python integer/rational calculation; no Lean execution or kernel acceptance',
              'script_sha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              'source_hash_record': 'INPUT_SOURCES.json',
              'pairs': rows, 'direct_factorial_cases': sum(len(case['direct_factorial_samples']) for row in rows for case in row['cases']),
              'elapsed_seconds': time.perf_counter() - start, 'peak_working_set_bytes': peak_working_set()}
    assert record['peak_working_set_bytes'] < 200 * 1024 * 1024
    (OUT / 'extra-factorial-certificates.json').write_text(json.dumps(record, indent=2) + '\n', encoding='utf-8')
    print(json.dumps({'pairs': [{'pair': [row['c'], row['d']], 'degree': row['residual_degree'],
                                'K': [case['K'] for case in row['cases']]} for row in rows],
                      'direct_factorial_cases': record['direct_factorial_cases'],
                      'elapsed_seconds': record['elapsed_seconds'],
                      'peak_working_set_bytes': record['peak_working_set_bytes']}, indent=2))


if __name__ == '__main__':
    calculate()
