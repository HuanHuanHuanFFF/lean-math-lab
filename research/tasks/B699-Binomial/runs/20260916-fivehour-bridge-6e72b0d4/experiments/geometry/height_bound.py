"""Integer checks for the deliberately coarse Cramer/Hadamard height bound."""
from pathlib import Path
import hashlib
import json
import math

ROOT = Path(__file__).resolve().parent


def valuation(n, p):
    e = 0
    while n % p == 0:
        n //= p
        e += 1
    return e


def main():
    w = {1: 123, 4: 49, 5: 41, 6: 34}
    D, W, rows, cols = 246, sum(w.values()), 7501, 7503
    assert W == D+1
    assert rows < 2**14
    assert 2*12**242 < 2**869
    entry_bits, hadamard_sqrt_bits = 869, 7
    determinant_bits = (entry_bits+hadamard_sqrt_bits)*rows
    assert 2*cols < 2**14
    H_norm_bits = determinant_bits+14
    assert 3**242 < 2**384
    G_norm_bits = H_norm_bits+384
    F_norm_bits = G_norm_bits+2
    cost = {p: max(sum(m*valuation(abs(r-h), p) for r, m in w.items())
                   for h in (0, 2, 3)) for p in (2, 3, 5)}
    cost[7] = max(w.values())
    assert cost == {2: 164, 3: 41, 5: 41, 7: 123}
    C = math.prod(p**e for p, e in cost.items())
    assert C < 2**738
    n_bits = W+738+F_norm_bits
    assert n_bits == 6572261 and n_bits < 6600000
    residual = json.loads((ROOT/'d246_residual_resultant.json').read_text())
    assert residual['actual_degree'] == 78
    assert residual['Fp_roots'] == []
    assert not residual['root_at_infinity_at_degree_78']
    out = {'verified_integer_inequalities': True, 'D': D, 'W': W,
           'row_weights': w, 'matrix_shape': [rows, cols],
           'matrix_entry_bits': entry_bits, 'determinant_bits': determinant_bits,
           'H_norm_bits': H_norm_bits, 'G_norm_bits': G_norm_bits,
           'F_norm_bits': F_norm_bits, 'cost_exponents': cost, 'cost_bits': 738,
           'absolute_n_bits': n_bits, 'rounded_absolute_n_bits': 6600000,
           'dependency': 'paper no-common-rational-zero and full-prime-power argument in notes/geometry/05-h023-absolute-height.md',
           'remaining': 'finite endpoint is immense and not completed; H023 and i7 not closed',
           'residual_resultant_sha256': hashlib.sha256((ROOT/'d246_residual_resultant.json').read_bytes()).hexdigest()}
    (ROOT/'d246_height_bound.json').write_text(json.dumps(out, indent=2), encoding='utf-8')
    print(json.dumps(out))


if __name__ == '__main__':
    main()
