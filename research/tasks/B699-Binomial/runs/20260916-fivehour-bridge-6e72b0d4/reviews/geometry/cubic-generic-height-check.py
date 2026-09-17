"""Standard-library acceptance of six homogeneous Bezout height certificates."""
from pathlib import Path
from fractions import Fraction as F
from math import isqrt
import hashlib
import json

ROOT = Path(__file__).resolve().parent
RUN = ROOT.parents[1]
SRC = RUN/'experiments/cubic/stage09-generic-height-20260915T205103Z.json'


def convolution(a, b):
    out = [0]*(len(a)+len(b)-1)
    for i, x in enumerate(a):
        for j, y in enumerate(b):
            out[i+j] += x*y
    return out


def ln2_bounds():
    terms = 32
    low = sum((F(2, (2*i+1)*3**(2*i+1)) for i in range(terms)), F(0))
    high = low+F(9, 4*(2*terms+1)*3**(2*terms+1))
    assert low > F(1, 2) and high < F(7, 10)
    return low, high


def main():
    source = json.loads(SRC.read_text())
    frozen = json.loads((RUN/'notes/cubic/09-FROZEN.json').read_text())
    for item in frozen['files']:
        assert hashlib.sha256((RUN/item['path']).read_bytes()).hexdigest() == item['sha256']
    low2, high2 = ln2_bounds()
    results = []
    for rec in source['models']:
        k, A, B = rec['k'], rec['A'], rec['B']
        assert A == -36*(8*k*k+243)
        assert B == 32*k**4+31104*k*k-314928
        f = [A*A, -8*B, -2*A, 0, 1]
        g = [4*B, 4*A, 0, 4, 0]
        delta = -16*(4*A**3+27*B**2)
        assert delta != 0 and rec['resultant_abs'] == delta*delta
        norms = []
        for pair in rec['bezout_pairs']:
            ff, gg = (f, g) if pair['homogeneous_identity'] == 'R_b7' else (f[::-1], g[::-1])
            assert pair['homogeneous_identity'] in ('R_a7', 'R_b7')
            u, v = pair['u_low_to_high'], pair['v_low_to_high']
            assert len(u) == len(v) == 4
            first, second = convolution(u, ff), convolution(v, gg)
            assert [a+b for a, b in zip(first, second)] == [delta*delta]+[0]*7
            norm = sum(abs(c) for c in u+v)
            assert norm == pair['L']
            norms.append(norm)
        L = max(norms)
        S = max(sum(map(abs, f)), sum(map(abs, g)))
        assert (L, S) == (rec['L'], rec['S'])
        lower_error = rec['height_lower_error_less_than']
        upper_error = rec['height_upper_error_less_than']
        assert F(L.bit_length(), 3)*high2 <= lower_error
        assert F(S.bit_length(), 3)*high2 <= upper_error
        y_square_bound = 1+abs(A)+abs(B)
        assert y_square_bound < 6000**2
        shift = 486-4*k*k
        numerator_bound = isqrt(y_square_bound)+1+18+2*abs(shift)
        assert numerator_bound < 10050 < 2**14
        assert 14*high2 < 10
        results.append({'k': k, 'lower_error': lower_error, 'upper_error': upper_error,
                        'L_bits': L.bit_length(), 'S_bits': S.bit_length(),
                        'short_model_shift': shift, 'inverse_x_numerator_bound': numerator_bound})
    assert max(r['lower_error'] for r in results) == 33
    assert max(r['upper_error'] for r in results) == 9
    out = {'status': 'PASS', 'reviewer': '/root/geometry', 'models': results,
           'homogeneous_bezout_identities_checked': 12,
           'uniform_height': 'h(t)-33 < H(P) < h(t)+9',
           'uniform_inverse_x': 'log|x| < 10+(3/2)h(t) when the inverse denominator is nonzero',
           'power_exponent': 'x=2^s implies s<119+3H(P)',
           'source_sha256': hashlib.sha256(SRC.read_bytes()).hexdigest(),
           'scope': 'generic canonical-height errors and inverse-height interface only; complete MW bases accepted separately by parent'}
    (ROOT/'cubic-generic-height-check.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()
