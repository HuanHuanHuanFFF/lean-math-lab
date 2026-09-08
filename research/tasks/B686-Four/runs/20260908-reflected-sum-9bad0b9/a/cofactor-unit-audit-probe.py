"""Independent original-polynomial tests of B §§5--6.

Roots are found by testing every next p-adic digit of the original product
equation, not by constructing roots from the proposed unit correction.
All roots are local modular models, not natural multiplier-four witnesses.
"""

from fractions import Fraction as F
from math import gcd, prod


def product_mod(k, n, modulus):
    value = 1
    for offset in range(1, k + 1):
        value = value * (n + offset) % modulus
    return value


def discrepancy(k, n, d, modulus):
    return (product_mod(k, n + d, modulus) - 4 * product_mod(k, n, modulus)) % modulus


def root_lift(k, position, prime, exponent, d):
    assert prime > k >= 3
    assert all(prime % q for q in range(2, prime))
    root, modulus = (-position) % prime, prime
    assert discrepancy(k, root, d, modulus) == 0
    for _ in range(1, 3 * exponent):
        next_modulus = modulus * prime
        choices = [root + digit * modulus for digit in range(prime)
                   if discrepancy(k, root + digit * modulus, d, next_modulus) == 0]
        assert len(choices) == 1
        root, modulus = choices[0], next_modulus
    assert modulus == prime ** (3 * exponent)
    return root, modulus


def harmonic(k, position):
    return sum((F(1, offset - position) for offset in range(1, k + 1) if offset != position), F(0))


def crt_pair(a, modulus_a, b, modulus_b):
    assert gcd(modulus_a, modulus_b) == 1
    return a + modulus_a * (((b - a) * pow(modulus_a, -1, modulus_b)) % modulus_b)


def check_local(k, i, j, p, p_exp, q, q_exp, smooth_part):
    s, t = p ** p_exp, q ** q_exp
    assert i < j and gcd(s, t) == 1 and gcd(smooth_part, s * t) == 1
    d, h = smooth_part * s * t, j - i
    ni, mod_i = root_lift(k, i, p, p_exp, d)
    nj, mod_j = root_lift(k, j, q, q_exp, d)
    n = crt_pair(ni, mod_i, nj, mod_j)
    assert discrepancy(k, n, d, mod_i * mod_j) == 0

    R_i, R_j = 3 * (n + i) - d, 3 * (n + j) - d
    assert R_i > 0 and R_j > 0 and R_i % (s * s) == R_j % (t * t) == 0
    u, v = R_i // (s * s), R_j // (t * t)
    C = u * v
    assert v * t * t - u * s * s == 3 * h
    assert gcd(u, t) == gcd(v, s) == 1
    H_i, H_j = harmonic(k, i), harmonic(k, j)
    pi, qi, pj, qj = H_i.numerator, H_i.denominator, H_j.numerator, H_j.denominator
    X_i = qi * C - 4 * h * pi * smooth_part ** 2
    X_j = qj * C + 4 * h * pj * smooth_part ** 2
    assert X_i % s == X_j % t == 0
    assert (3 * qi * u - 4 * pi * smooth_part ** 2 * t * t) % s == 0
    assert (3 * qj * v - 4 * pj * smooth_part ** 2 * s * s) % t == 0
    if pi == 0:
        assert qi == 1 and C % s == u % s == 0
    if pj % q == 0:
        assert v % q == 0  # Do not cancel the harmonic numerator or v.
    if i + j == k + 1:
        assert H_j == -H_i and X_i == X_j
        G = qi * R_i * R_j - 4 * h * pi * d * d
        assert G % ((s * t) ** 3) == 0
    else:
        G = None
    print(f"k={k},i={i},j={j},s={s},t={t},A={smooth_part}: H=({H_i},{H_j})")
    print(f"  X residues=(0,0); u mod s={u % s}, v mod t={v % t}; symmetric cubic={G is not None}")
    print(f"  n={n}, d={d}; local only, original mod (st)^3 passed")


def denominators_and_bounds():
    total = 0
    for k in [3, 4, 5, 14, 38, 39, 40, 41, 82, 101]:
        for position in range(1, k + 1):
            H = harmonic(k, position)
            rho = abs(k + 1 - 2 * position)
            lo, hi = sorted([position - 1, k - position])
            denominator_product = prod(range(lo + 1, hi + 1))
            assert denominator_product % H.denominator == 0
            assert H.denominator <= k ** rho
            assert abs(H) <= F(k, 2)
            if rho == 0:
                assert H == 0 and H.denominator == 1
            total += 1
        margin = (F(3 * k, 2) - 4) ** 2 - 2 * k * (k - 1)
        assert margin == F((k - 40) ** 2, 4) + 10 * (k - 40) + 16
        if k >= 40:
            assert margin >= 16
        if k in [38, 39, 40]:
            print(f"k={k}: coarse positivity margin={margin}")
    assert harmonic(40, 20) == F(1, 20)
    assert harmonic(40, 22) == F(-1199, 7980)
    assert 1199 % 109 == 0
    assert harmonic(41, 21) == 0
    print(f"harmonic denominator/zero/size checks: {total} positions PASS")


def main():
    denominators_and_bounds()
    for parameters in [(4, 2, 3, 5, 1, 7, 1, 1),
                       (14, 7, 8, 17, 2, 19, 1, 6),
                       (40, 20, 22, 41, 1, 109, 1, 6),
                       (41, 21, 22, 43, 1, 47, 1, 6),
                       (41, 20, 22, 43, 1, 47, 1, 1)]:
        check_local(*parameters)
    print("all original-polynomial digit lifts and integer corrections PASS; no original witness claim")


if __name__ == "__main__":
    main()
