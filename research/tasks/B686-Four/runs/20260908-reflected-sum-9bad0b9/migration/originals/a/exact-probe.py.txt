"""Round 9 A: exact rational probes, without historical-method inputs.

Run from the repository root:
  python3 research/tasks/B686-Four/round9/a/exact-probe.py

All polynomial coefficient lists are ascending; all arithmetic is exact.
No files are written by this test runner. Bounded checks are not proofs.
"""

from fractions import Fraction as F
from math import ceil, lcm, prod
import json


def trim(p):
    p = list(p)
    while len(p) > 1 and p[-1] == 0:
        p.pop()
    return p


def mul(p, q):
    out = [F(0)] * (len(p) + len(q) - 1)
    for i, a in enumerate(p):
        for j, b in enumerate(q):
            out[i + j] += a * b
    return trim(out)


def sub(p, q):
    return trim([
        (p[i] if i < len(p) else F(0))
        - (q[i] if i < len(q) else F(0))
        for i in range(max(len(p), len(q)))
    ])


def derivative(p):
    return trim([i * p[i] for i in range(1, len(p))] or [F(0)])


def evaluate(p, x):
    out = F(0)
    for a in reversed(p):
        out = out * x + a
    return out


def construction(k):
    assert k >= 2 and k % 2 == 0
    r = k // 2
    p = [F(1)]
    for i in range(1, k + 1):
        p = mul(p, [F(i), F(1)])
    desc = list(reversed(p))
    qdesc = [F(1)]
    for j in range(1, r + 1):
        qdesc.append((desc[j] - sum(
            qdesc[i] * qdesc[j-i] for i in range(1, j)
        )) / 2)
    q = list(reversed(qdesc))
    remainder = sub(p, mul(q, q))
    w = sub(mul(derivative(remainder), p), mul(remainder, derivative(p)))
    denominator = lcm(*(a.denominator for a in q))
    a_norm = sum(abs(a) for a in q[:-1])
    c_norm = sum(abs(a) for a in remainder)
    lower_w_norm = sum(abs(a) for a in w[:-1])
    bound = 1 + ceil(max(
        F(1), 2*a_norm, 3*denominator*c_norm, lower_w_norm/abs(w[-1])
    ))
    universal_bound = (8*k)**(2*k+2)

    assert remainder != [0] and len(remainder)-1 <= r-1
    assert w != [0]
    assert (2**(k-1)) % denominator == 0
    assert bound <= universal_bound
    assert all((denominator * a).denominator == 1 for a in q)
    for n in (0, 1, k, k**3):
        direct = prod(n+i for i in range(1, k+1))
        assert evaluate(p, n) == direct
        assert direct == evaluate(q, n)**2 + evaluate(remainder, n)
    return p, q, remainder, w, denominator, bound, universal_bound


def main():
    # Check the newly supplied neutral witness against the original definition.
    left = prod(25+i for i in range(1, 4))
    right = 9 * prod(11+i for i in range(1, 4))
    assert left == right == 19656 and 25 >= 11+3
    print(json.dumps({"neutral_ratio9_witness": {
        "k": 3, "n": 11, "m": 25, "left": left, "right": right,
        "disjoint": True,
    }}, sort_keys=True))

    rows = []
    for k in range(2, 42, 2):
        p, q, remainder, w, denominator, bound, universal = construction(k)
        rows.append({
            "k": k, "D": denominator, "degree_R": len(remainder)-1,
            "coefficient_bound_digits": len(str(bound)),
            "universal_bound_digits": len(str(universal)),
        })
    print(json.dumps({"exact_construction_checks": rows}, sort_keys=True))

    # A counterexample to an auxiliary small-error claim, not to B686.
    k, n, m = 10, 1000, 1150
    p, q, remainder, w, denominator, bound, universal = construction(k)
    q_n = evaluate(q, n)
    p_n_direct = prod(n+i for i in range(1, k+1))
    delta = (q_n-F(1, denominator))**2 - p_n_direct
    assert q_n > F(1, denominator) and delta > 0
    assert n >= k**3
    d = m-n
    assert d >= k and k*d < 2*m and 3*m < 4*k*d
    assert 250000*d > k*k
    assert prod(m+i for i in range(1, k+1)) != 4*p_n_direct
    print(json.dumps({"false_cubic_small_error_claim": {
        "k": k, "n": n, "m_for_scale_checks": m, "D": denominator,
        "Q_coefficients_ascending": [str(a) for a in q],
        "Q_n": str(q_n), "P_n_direct": p_n_direct,
        "(Q_n_minus_1_over_D)^2_minus_P_n": str(delta),
        "conclusion": "Q(n)-sqrt(P(n)) > 1/D",
        "all_packet_scale_conditions": True,
        "is_B686_solution": False,
    }}, sort_keys=True))
    print("PASS: rational identities, direct products, denominator bounds, and counterexample")


if __name__ == "__main__":
    main()
