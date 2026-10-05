#!/usr/bin/env python3
"""Exact rational checks for the accompanying PAPER proof.

This does not compute primes, Chebyshev values, or zeta zeros; it is not a
Lean/kernel verification. All inequalities below use Fraction, integer
arithmetic, or rational enclosures of exp from a proved Taylor remainder.
Python >= 3.9, standard library only.
"""
from __future__ import annotations
import argparse
import json
from fractions import Fraction as Q
from pathlib import Path


def qtext(q: Q | int) -> str:
    q = Q(q)
    return f"{q.numerator}/{q.denominator}"


def exp_interval(x: Q, n: int = 96) -> tuple[Q, Q]:
    """For x>=0 and x<n+2: S_n <= exp(x) <= S_n+a_(n+1)/(1-x/(n+2)).
    The tail's successive ratios are <= x/(n+2). No floating point.
    """
    if x < 0 or n < 0 or x >= n + 2:
        raise ValueError("Taylor interval requires 0<=x<n+2 and n>=0")
    term = Q(1)
    partial = Q(1)
    for k in range(1, n + 1):
        term = term * x / k
        partial += term
    next_term = term * x / (n + 1)
    upper = partial + next_term / (1 - x / (n + 2))
    return partial, upper


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    checks: list[dict[str, object]] = []
    intervals: dict[str, dict[str, object]] = {}

    def ei(x: Q, n: int = 96) -> tuple[Q, Q]:
        key = f"exp({qtext(x)}),n={n}"
        lo, hi = exp_interval(x, n)
        intervals[key] = {"x": qtext(x), "n": n, "lower": qtext(lo), "upper": qtext(hi)}
        return lo, hi

    def check(name: str, left: Q | int, relation: str, right: Q | int) -> None:
        left, right = Q(left), Q(right)
        ok = {"<": left < right, "<=": left <= right, "=": left == right,
              ">": left > right, ">=": left >= right}[relation]
        if not ok:
            raise ArithmeticError(f"FAILED: {name}: {left} {relation} {right}")
        checks.append({"name": name, "left": qtext(left), "relation": relation,
                       "right": qtext(right), "verified": True})

    D, A, B, T0 = 4095, 100000000, 50000000000, 122568684
    r, ep, c = Q(4096, 4095), Q(1, 32768), Q(18)
    H, s, v0 = 589824, 294912, 49990000000
    eps_target, lp = Q(3, 25000), Q(1, 300000)

    # Local prime-power increment: logarithms bounded through exp and monotonicity.
    check("log(r*A)<19: exp(19) lower", r*A, "<", ei(Q(19))[0])
    check("log(r*A)>2: exp(2) upper", ei(Q(2))[1], "<", r*A)
    check("log(2)>2/3: exp(2/3) upper", ei(Q(2,3))[1], "<", 2)
    check("sqrt(A)=10000", 10000**2, "=", A)
    lp_base = Q(19)*Q(10000,D) + Q(3*19**2,4)
    check("LP base bound < A/300000", lp_base, "<", Q(A,300000))
    gap_margin = Q(1,D) - eps_target*(2+Q(1,D)) - lp
    check("exact strict theta-increment margin", gap_margin, "=", Q(49,58500000))
    check("strict theta-increment margin positive", gap_margin, ">", 0)

    # pi lower bound: pi/4=int_0^1 1/(1+t^2), 26-term even partial sum is strict lower.
    pi_lower = 4*sum((Q((-1)**k,2*k+1) for k in range(26)), Q(0))
    check("26-term integral lower bound for pi > 31/10", pi_lower, ">", Q(31,10))

    # Chosen smoothing constants and zero cutoffs.
    check("H=c/epsilon", c/ep, "=", H)
    check("s=H/2", Q(H,2), "=", s)
    check("epsilon <= 1e-4", ep, "<=", Q(1,10000))
    check("v0 > 223000^2", v0, ">", 223000**2)
    check("e^-epsilon*B >= (1-epsilon)*B > v0", (1-ep)*B, ">", v0)
    check("1+1/v0 < 1001/1000", 1+Q(1,v0), "<", Q(1001,1000))
    check("low zero logarithm < 54/5", Q(5*(s+1),31), "<", ei(Q(54,5))[0])
    check("log(H+1)<14", H+1, "<", ei(Q(14))[0])
    check("log(2H+1)<15", 2*H+1, "<", ei(Q(15))[0])
    check("log((H+1)/s)<7/10", Q(H+1,s), "<", ei(Q(7,10))[0])
    check("log((2H+1)/H)<7/10", Q(2*H+1,H), "<", ei(Q(7,10))[0])
    check("middle inverse-zero sum < 8/5", Q(49,31)+Q(70,s), "<", Q(8,5))
    check("high-near inverse-zero sum < 2", Q(7,4)+Q(70,H), "<", 2)
    check("log(100)<5, for monotone t/6-1-log(t)", 100, "<", ei(Q(5))[0])
    check("t/6-1-log(t)>0 at t=100 using log(100)<5", Q(100,6)-1-5, ">", 0)

    # Critical-line Logan kernel bound <= 1/7 on [H/2,H].
    check("sqrt(3)>5/3", Q(5,3)**2, "<", 3)
    check("sqrt(3)<7/4", 3, "<", Q(7,4)**2)
    elo18, _ = ei(Q(18))
    _, ehi1575 = ei(Q(63,4))
    # sinh(18)>(exp_lower(18)-1)/2; sinh(63/4)<exp_upper(63/4)/2.
    check("sinh(18)>30000000", (elo18-1)/2, ">", 30000000)
    check("sinh(63/4)/sinh(18)<5/42", ehi1575/(elo18-1), "<", Q(5,42))
    check("middle kernel coefficient <=1/7", Q(6,5)*Q(5,42), "=", Q(1,7))

    # Off-line kernel bound from |Re sqrt(c^2-(epsilon*t+ib)^2)|<1/50.
    check("c*epsilon/2 + epsilon^2/4 < 1/2500", c*ep/2+ep**2/4, "<", Q(1,2500))
    check("exp(1/50)<103/100", ei(Q(1,50))[1], "<", Q(103,100))
    check("epsilon^2/4 < c^2", ep**2/4, "<", c**2)
    check("far-tail sum multiplier 16/(3*2H) = (8/3)/H", Q(16,3*2), "=", Q(8,3))

    # Exact collected error budgets.
    low = Q(2916,155)
    middle = Q(16,35)
    C = low+middle
    beta = (c*Q(103,100)*2 + Q(206,100)*Q(8,3))/30000000
    check("core coefficient", C, "=", Q(20908,1085))
    check("unconditional high-zero beta", beta, "=", Q(3193,2250000000))
    delta_upper = C/223000 + beta*Q(1001,1000) + Q(2,v0)
    check("smoothed relative error < 89/1e6", delta_upper, "<", Q(89,1000000))
    unsmoothed = Q(32768,32767)*(1+Q(89,1000000))-1
    check("unsmoothed exact budget", unsmoothed, "=", Q(61193,511984375))
    check("unsmoothed error < 3/25000", unsmoothed, "<", eps_target)
    check("unsmoothed slack", eps_target-unsmoothed, "=", Q(1961,4095875000))
    check("finite psi error sufficient above A", Q(81,100)/10000, "<", eps_target)
    check("original splice T0 lies above A", T0, ">", A)
    check("original splice T0 lies below B", T0, "<", B)

    # Audited scale bounds, not generated prime/zero certificates.
    check("log(H/6)<23/2 for N(H) size bound", Q(H,6), "<", ei(Q(23,2))[0])
    check("N(H) analytic upper bound", Q(H,6)*Q(21,2)+15, "=", 1032207)
    # Exact necessary number of prime intervals for an OPTIONAL bridge; no prime witnesses.
    k=24618
    if not pow(4096,k)*T0 < pow(4095,k)*B:
        raise ArithmeticError("chain lower-bound comparison failed")
    if not pow(4096,k+1)*T0 >= pow(4095,k+1)*B:
        raise ArithmeticError("chain logarithmic bracket failed")
    chain = {"necessary_intervals_at_least": k+1,
             "proof_comparisons": [f"4096^{k}*{T0} < 4095^{k}*{B}",
                                   f"4096^{k+1}*{T0} >= 4095^{k+1}*{B}"],
             "integer_comparisons_verified": True,
             "is_existence_or_upper_bound_on_certificate_size": False,
             "prime_witnesses_generated": 0}

    # Small, separately reusable repair of Dusart's rounded step; NOT a proof of (U).
    check("exp(14)<1202605", ei(Q(14))[1], "<", 1202605)
    check("Dusart unrounded coefficient suffices", Q(2841,100000000)-Q(9999,10000)/1202605,
          "<", Q(1,36260))
    check("printed 0.00002758 alone is too large", Q(2758,100000000), ">", Q(1,36260))

    result = {
        "format": "B699-exact-rational-paper-constants-v1",
        "scope": "constants only; no prime sieve, zeta verification, Lean, kernel, or CI",
        "all_checks_verified": True,
        "check_count": len(checks),
        "parameters": {"D":D, "A":A, "B":B, "splice_T0":T0, "c":18,
                       "epsilon":qtext(ep), "H":H, "s":s, "v0":v0},
        "derived": {"LP_base":qtext(lp_base), "gap_margin":qtext(gap_margin),
                    "core_coefficient":qtext(C), "high_zero_beta":qtext(beta),
                    "smoothed_rational_upper":qtext(delta_upper),
                    "unsmoothed_rational_upper":qtext(unsmoothed)},
        "checks":checks, "exp_enclosures":intervals, "optional_bridge_scale":chain}
    text=json.dumps(result, ensure_ascii=False, indent=2)+"\n"
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding="utf-8")
        print(f"VERIFIED {len(checks)} exact rational relations; wrote {args.output.name}")
        print("No primes, zeta zeros, Lean, kernel, or CI were computed.")
    else:
        print(text, end="")

if __name__ == "__main__":
    main()
