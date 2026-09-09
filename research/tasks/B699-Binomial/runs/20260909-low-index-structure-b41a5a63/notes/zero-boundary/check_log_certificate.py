"""Fail-closed checker independent of the generator and of continued fractions.

Rebuilds all logarithm bounds from a finite rational integral-series identity.
No floating-point values and no stored large rational intervals are trusted.
"""
import argparse
from fractions import Fraction
from math import gcd
import json
from pathlib import Path

P = (2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31)
EXPONENT_BOUND = 2 ** 53


def require(condition, message):
    if not condition:
        raise ValueError(message)


def log_interval(a, terms):
    def small(z):
        partial = sum((Fraction(2) * z ** (2 * k + 1) / (2 * k + 1)
                       for k in range(terms)), Fraction(0))
        error = Fraction(2) * z ** (2 * terms + 1) / ((2 * terms + 1) * (1 - z * z))
        return partial, partial + error
    power, k = 1, 0
    while 2 * power <= a:
        power *= 2
        k += 1
    l2, u2 = small(Fraction(1, 3))
    lo, hi = small(Fraction(a - power, a + power))
    return k * l2 + lo, k * u2 + hi


def divide_boxes(nbox, dbox):
    require(dbox[0] > 0, "nonpositive logarithm divisor")
    corners = tuple(n / d for n in nbox for d in dbox)
    return min(corners), max(corners)


def floor_rational(value):
    return value.numerator // value.denominator


def distance_lower(box):
    left, right = box
    least_integer = -floor_rational(-left)
    greatest_integer = floor_rational(right)
    if least_integer <= greatest_integer:
        return Fraction(0)
    return min(left - floor_rational(left), -floor_rational(-right) - right)


def is_resonant(a, b, p, q):
    powers = []
    for prime in (p, q):
        numerator_count = denominator_count = 0
        while a % prime == 0:
            a //= prime
            numerator_count += 1
        while b % prime == 0:
            b //= prime
            denominator_count += 1
        powers.append(numerator_count - denominator_count)
    if a == b == 1:
        require(all(abs(e) <= 6 for e in powers), "unexpected coefficient shift")
        return True
    return False


def check(data):
    require(data.get("version") == 1 and data.get("status") == "complete", "not a complete certificate")
    require(data.get("M0") == str(EXPONENT_BOUND), "wrong initial exponent bound")
    require(data.get("prime_limit") == 31 and data.get("coefficient_limit") == 64, "wrong scope")
    require(data.get("epsilon") == "1/100", "wrong epsilon threshold")
    require(data.get("ratio_order") == "coprime_a_major_b_minor", "unknown coefficient ordering")
    terms = data.get("terms")
    require(isinstance(terms, int) and 1 <= terms <= 4096, "invalid series length")
    ratios = [(a, b) for a in range(1, 65) for b in range(1, 65) if gcd(a, b) == 1]
    require(data.get("ratio_count") == len(ratios), "coefficient count mismatch")
    pairs = [(p, q) for pos, p in enumerate(P) for q in P[pos + 1:]]
    records = data.get("pairs", [])
    require(len(records) == len(pairs), "prime pair coverage incomplete")
    logs = {a: log_interval(a, terms) for a in range(1, 65)}
    mu_cache = {}
    maximum_used = 0
    checked_assignments = 0
    for (p, q), record in zip(pairs, records):
        require((record.get("p"), record.get("q")) == (p, q), "prime pair order mismatch")
        require(record.get("complete") is True and record.get("unresolved_count") == 0, "unfinished pair")
        tau = divide_boxes(logs[p], logs[q])
        candidates = []
        for candidate in record.get("candidates", []):
            u, v = int(candidate["u"]), int(candidate["v"])
            require(v > 0 and gcd(u, v) == 1, "candidate must be a reduced fraction")
            delta = max(abs(v * tau[0] - u), abs(v * tau[1] - u))
            candidates.append((u, v, delta))
        res = record.get("resonance_index")
        require(isinstance(res, int) and 0 <= res < len(candidates), "missing resonance witness")
        _, v_res, delta_res = candidates[res]
        require(v_res > EXPONENT_BOUND, "resonance denominator too small")
        require(delta_res < Fraction(1, 2 * EXPONENT_BOUND), "resonance error too large")
        maximum_used = max(maximum_used, v_res)
        choices = record.get("assignments", [])
        require(len(choices) == len(ratios), "coefficient assignment coverage incomplete")
        if q not in mu_cache:
            mu_cache[q] = [divide_boxes((logs[a][0] - logs[b][1], logs[a][1] - logs[b][0]), logs[q])
                           for a, b in ratios]
        for index, ((a, b), choice) in enumerate(zip(ratios, choices)):
            if is_resonant(a, b, p, q):
                require(choice == -1, "resonance must be explicitly classified")
            else:
                require(isinstance(choice, int) and 0 <= choice < len(candidates), "missing nonresonant witness")
                _, v, delta = candidates[choice]
                mu_lo, mu_hi = mu_cache[q][index]
                epsilon_lower = distance_lower((v * mu_lo, v * mu_hi)) - EXPONENT_BOUND * delta
                require(epsilon_lower >= Fraction(1, 100), f"epsilon failed for {p},{q},{a},{b}")
                maximum_used = max(maximum_used, v)
            checked_assignments += 1
    raw_bound = max(4097, 25600 * maximum_used)
    decimal_bound = 1
    while decimal_bound < raw_bound:
        decimal_bound *= 10
    require(data.get("max_used_v") == str(maximum_used), "wrong maximum denominator")
    require(data.get("raw_strict_n_bound") == str(raw_bound), "wrong raw n bound")
    require(data.get("strict_n_bound") == str(decimal_bound), "wrong rounded n bound")
    return {"verified": True, "prime_pairs": len(pairs), "assignments": checked_assignments,
            "max_used_v": str(maximum_used), "strict_n_bound": str(decimal_bound)}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("certificate")
    args = parser.parse_args()
    data = json.loads(Path(args.certificate).read_text(encoding="utf-8"))
    try:
        result = check(data)
    except (ValueError, KeyError, TypeError) as error:
        print(json.dumps({"verified": False, "error": str(error)}))
        return 1
    print(json.dumps(result))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
