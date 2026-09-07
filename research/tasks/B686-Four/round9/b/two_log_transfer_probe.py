"""Selected exact checks of the quadratic two-logarithm transfer, not a scan.

Uses only integer arithmetic, rational root isolation, and a rigorous log series.
The Matveev theorem is a separately audited paper input, not verified by this file.
"""

from fractions import Fraction as F
from math import gcd, isqrt
import json

from cofactor_gap_probe import alpha_interval


def log_bounds(x, terms=80):
    """Bound log(x), x>=1, using the positive atanh series and a tail bound."""
    assert x >= 1
    u = (x-1)/(x+1)
    power, value = u, F(0)
    for j in range(terms):
        value += 2*power/(2*j+1)
        power *= u*u
    tail = 2*power/((2*terms+1)*(1-u*u))
    return value, value+tail


def grid(interval, scale=10**12):
    lo, hi = (x*scale for x in interval)
    return [lo.numerator//lo.denominator,
            -((-hi.numerator)//hi.denominator)]


def check(k, A):
    alpha_lo, alpha_hi = alpha_interval(k, bits=112)
    gamma_lo = (4-alpha_hi)/(alpha_hi-1)
    gamma_hi = (4-alpha_lo)/(alpha_lo-1)
    theta_lo, theta_hi = A*A*gamma_lo**2, A*A*gamma_hi**2
    middle = (theta_lo+theta_hi)/2+F(1, 2)
    C = middle.numerator//middle.denominator
    assert C-F(1, 2) < theta_lo < theta_hi < C+F(1, 2)
    if C < theta_lo:
        delta_lo, delta_hi = theta_lo-C, theta_hi-C
        expected_sign = 1  # f is decreasing, so s<gamma gives beta>alpha.
    else:
        assert theta_hi < C
        delta_lo, delta_hi = C-theta_hi, C-theta_lo
        expected_sign = -1

    denominator = 1 << 112
    root_floor = isqrt(C*denominator**2)
    sqrt_lo = F(root_floor, denominator)
    sqrt_hi = F(root_floor+1, denominator)
    assert sqrt_lo**2 <= C < sqrt_hi**2
    s_lo, s_hi = sqrt_lo/A, sqrt_hi/A
    beta_lo = (s_hi+4)/(s_hi+1)
    beta_hi = (s_lo+4)/(s_lo+1)
    assert 16*A*A < C <= 10*A*A*k*k
    assert k <= s_lo and k <= gamma_lo
    assert 1 < beta_lo < beta_hi < F(8, 5)

    # Verify the defining polynomial at its algebraic root exactly by reduction
    # modulo T^2-C, after multiplying by (T+A)^2.
    a, b, c = C-A*A, 8*A*A-2*C, C-16*A*A
    assert a*(C+16*A*A)+b*(C+4*A*A)+c*(C+A*A) == 0
    assert 8*A*a+5*A*b+2*A*c == 0
    content = gcd(gcd(abs(a), abs(b)), abs(c))
    assert (a+b+c)//content == -9*A*A//content
    assert 9*A*A % content == 0
    assert F(a, content) >= F(k*k, 16)

    log_beta_lo, _ = log_bounds(beta_lo)
    _, log_beta_hi = log_bounds(beta_hi)
    log4_lo, log4_hi = log_bounds(F(4))
    lambda_lo = k*log_beta_lo-log4_hi
    lambda_hi = k*log_beta_hi-log4_lo
    if expected_sign == 1:
        assert lambda_lo > 0
        abs_lo, abs_hi = lambda_lo, lambda_hi
    else:
        assert lambda_hi < 0
        abs_lo, abs_hi = -lambda_hi, -lambda_lo
    derivative_bound_lo = F(3, 2*A*A*k*k)*delta_lo
    assert abs_hi < derivative_bound_lo

    return {"k": k, "A": A, "nearest_C": C,
            "quadratic_polynomial_descending": [a, b, c],
            "primitive_leading_coefficient": a//content,
            "delta_units_1e_minus_12": grid((delta_lo, delta_hi)),
            "Lambda_units_1e_minus_12": grid((lambda_lo, lambda_hi)),
            "abs_Lambda_lt_3_delta_over_2_A2_k2": True,
            "Lambda_sign": expected_sign}


def rational_branch_check():
    # A structural square-C control, deliberately not advertised as nearest to
    # any A^2 gamma_k^2: k=3,A=1,C=25 gives beta=3/2.
    k, A, C = 3, 1, 25
    beta = F(isqrt(C)+4*A, isqrt(C)+A)
    assert beta == F(3, 2)
    assert beta**k != 4
    assert beta.numerator >= F(k, 3)
    return {"k": k, "A": A, "C": C, "beta": str(beta),
            "scope": "square-C algebra/height control only; C is not nearest"}


def main():
    rows = [check(k, A) for k, A in ((3, 1), (4, 1), (5, 1), (9, 1), (5, 3))]
    print(json.dumps({"evidence": "exact rational intervals including logarithm tails",
                      "status": "five selected consistency checks, no uniform gap by computation",
                      "checks": rows, "rational_control": rational_branch_check()}, indent=2))


if __name__ == "__main__":
    main()
