"""Exact bounded transcription diagnostics; does not invoke Lean or prove the generic theorem."""
from __future__ import annotations
import argparse, hashlib, itertools, json, math, time
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).resolve().parent

def primes_to(n):
    flags = bytearray(b'\x01') * (n + 1)
    if n >= 0: flags[0] = 0
    if n >= 1: flags[1] = 0
    for p in range(2, math.isqrt(n) + 1):
        if flags[p]: flags[p*p:n+1:p] = b'\x00' * (((n - p*p) // p) + 1)
    return [p for p in range(2, n + 1) if flags[p]]

def mask(x, y, z, q):
    assert q > 0
    return int(x % q + y % q + z % q >= 2 * q + 1)

def all_layers(x, y, z):
    result = []
    for p in primes_to(x + y + z):
        q, h, e, hits = p, 1, 0, []
        while q <= x + y + z:
            active = mask(x, y, z, q)
            if active:
                e += 1
                hits.append([h, q])
            q *= p
            h += 1
        assert mask(x, y, z, q) == mask(x, y, z, q * p) == 0
        if e:
            result.append({"p": p, "exponent": e, "layers": hits})
    return result

def divisor(x, y, z):
    factors = all_layers(x, y, z)
    return math.prod(t["p"] ** t["exponent"] for t in factors), factors

def vp(n, p):
    assert n > 0 and p >= 2
    h = 0
    while n % p == 0:
        n //= p
        h += 1
    return h

def Q(A, B, C, r):
    assert 0 <= r <= A
    return math.comb(A + C - r, C) * math.comb(B + r, r)

def P(A, B, C, k):
    assert 0 <= k <= C
    return (-1) ** (C + k) * math.comb(A + B + C + 1, k) * math.comb(A + C - k, A)

def legendre_layer(n, k, q):
    assert 0 <= k <= n and q > 0
    return n // q - k // q - (n - k) // q

def sample_indices(n):
    return sorted({0, n, n // 2, min(1, n), min(2, n), min(3, n), max(0, n - 1)})

def check_row(x, y, z, delta, full_convolution, counter):
    assert min(x, y, z) >= 1 and delta in (0, 1)
    A, B, C = x - delta, z - 1 + delta, y - delta
    N, factors = divisor(x, y, z)
    q_values = [Q(A, B, C, r) for r in range(A + 1)]
    p_values = [P(A, B, C, k) for k in range(C + 1)]
    assert N > 0 and math.gcd(*q_values) % N == 0
    assert divisor(y, x, z)[0] == N
    for val in q_values + p_values:
        assert val % N == 0
        assert (val // N) * N == val
        counter["coefficient_divisibility_checks"] += 1
    # Individual p-adic values are computed by direct integer division of exact binomials.
    for factor in factors:
        p, exponent = factor["p"], factor["exponent"]
        for val in q_values:
            assert exponent <= vp(val, p)
            counter["full_exponent_direct_valuation_checks"] += 1
        for r in sample_indices(A):
            for h, q in factor["layers"]:
                carry1 = legendre_layer(A + C - r, C, q)
                carry2 = legendre_layer(B + r, r, q)
                assert mask(x, y, z, q) <= carry1 + carry2
                assert carry1 == int(C % q + (A - r) % q >= q)
                assert carry2 == int(r % q + B % q >= q)
                counter["active_layer_checks_same_coefficient"] += 1
    for k in range(C + 1) if full_convolution else sample_indices(C):
        convolution = sum(Q(C, B, A, r) * math.comb(C - r, k - r) for r in range(k + 1))
        expected = math.comb(A + C - k, A) * math.comb(A + B + C + 1, k)
        assert convolution == expected == abs(p_values[k])
        counter["asymmetric_convolution_checks"] += 1
    for a, b in ((0, 0), (1, 0), (0, 1), (-2, 3), (3, -2)):
        for vals in (q_values, p_values):
            degree = len(vals) - 1
            raw = sum(val * a ** r * b ** (degree - r) for r, val in enumerate(vals))
            normalized = sum((val // N) * a ** r * b ** (degree - r) for r, val in enumerate(vals))
            assert N * normalized == raw
            counter["homogeneous_integer_checks"] += 1
    counter["delta_rows"] += 1
    return {"x_y_z": [x, y, z], "delta": delta, "A_B_C": [A, B, C], "N": str(N), "factors": factors, "q_content": str(math.gcd(*q_values)), "min_q_vp": {str(f["p"]): min(vp(v, f["p"]) for v in q_values) for f in factors}}

def counters():
    return dict(delta_rows=0, coefficient_divisibility_checks=0, full_exponent_direct_valuation_checks=0, active_layer_checks_same_coefficient=0, asymmetric_convolution_checks=0, homogeneous_integer_checks=0)

def run():
    started = datetime.now(timezone.utc).isoformat()
    t0 = time.monotonic()
    small, stress = counters(), counters()
    for x, y, z in itertools.product(range(1, 7), repeat=3):
        for delta in (0, 1):
            check_row(x, y, z, delta, True, small)
    assert small["delta_rows"] == 432
    assert small["coefficient_divisibility_checks"] == 3456
    assert small["asymmetric_convolution_checks"] == 1728
    targets = [(2, 2), (2, 3), (2, 5), (2, 8), (3, 2), (3, 4), (3, 5), (5, 2), (5, 3), (7, 2), (11, 2)]
    stress_triples = {(6, 6, 6), (7, 7, 7), (1, 1, 1)}
    stress_triples.update((p**h - 1, 2*p**h - 1, 3*p**h - 1) for p, h in targets)
    family_inputs = [(e, d, f, m) for e, d, f in ((2, 3, 5), (7, 5, 9), (11, 7, 5), (23, 15, 8)) for m in (1, 2, 3, 7, 16)]
    stress_triples.update((e*m, d*m, f*m) for e, d, f, m in family_inputs)
    stress_rows = [check_row(x, y, z, delta, False, stress) for x, y, z in sorted(stress_triples) for delta in (0, 1)]
    target_checks = []
    for p, h in targets:
        x, y, z = p**h - 1, 2*p**h - 1, 3*p**h - 1
        N, fs = divisor(x, y, z)
        pf = next(t for t in fs if t["p"] == p)
        assert [h, p**h] in pf["layers"]
        target_checks.append({"p": p, "h": h, "q": p**h, "x_y_z": [x, y, z], "full_exponent": pf["exponent"], "contributing_h": [t[0] for t in pf["layers"]]})
    local_count = 0
    for A, B, C in itertools.product(range(13), repeat=3):
        for r in range(A + 1):
            for q in range(1, 21):
                assert A % q <= (A-r) % q + r % q
                s = A % q + B % q + C % q
                one = C % q + (A-r) % q >= q
                two = r % q + B % q >= q
                assert one or two or s <= 2*q - 2
                assert s < 2*q - 1 or one or two
                local_count += 1
    # Same-source controls reject deletion of hypotheses or all h>1 layers.
    N6, factors6 = divisor(6, 6, 6)
    assert N6 == 14 and next(f for f in factors6 if f["p"] == 2)["layers"] == [[3, 8]]
    first_layer_only = math.prod(f["p"] for f in factors6 if any(h == 1 for h, _ in f["layers"]))
    assert first_layer_only == 7 and N6 != first_layer_only
    assert divisor(3, 3, 3)[0] == 2 and Q(1, 4, 1, 1) == 5
    assert 3 % 2 > max(3 - 4, 0) % 2 + 4 % 2
    return {
        "status": "PASS_EXACT_BOUNDED_DIAGNOSTICS_NOT_LEAN", "started_utc": started,
        "elapsed_seconds": round(time.monotonic() - t0, 6),
        "script_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "small_cube_1_to_6": small,
        "stress_scope": {"prime_power_targets": target_checks, "source_family_inputs_e_d_f_m": family_inputs, "full_q_and_p_coefficients": True, "convolution_indices": "0,1,2,3,C//2,C-1,C intersect 0..C", "counts": stress},
        "stress_rows": stress_rows,
        "local_no_carry": {"A_B_C": [0, 12], "r": "0..A", "q": [1, 20], "checks": local_count},
        "controls": {"high_layer_only": {"x_y_z": [6, 6, 6], "N": N6, "first_layer_only": first_layer_only, "factors": factors6, "q_content_delta0_delta1": [math.gcd(*(Q(6-d, 5+d, 6-d, r) for r in range(7-d))) for d in (0,1)]}, "delta2_counterexample": {"x_y_z": [3,3,3], "delta": 2, "r": 1, "N": 2, "qMagnitude": 5}, "r_above_A_counterexample": {"A": 3, "r": 4, "q": 2}},
        "evidence_boundary": "Finite integer diagnostics of source transcription only. Generic proof, Lean compilation and transitive axiom audit remain pending; no growth bound or original B699 claim."
    }

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", help="New JSON output path beneath this directory; existing outputs are never overwritten.")
    args = parser.parse_args()
    result = run()
    if args.output:
        output = (ROOT / args.output).resolve()
        output.relative_to(ROOT)
        with output.open("x", encoding="utf-8") as f:
            json.dump(result, f, ensure_ascii=False, indent=2)
            f.write("\n")
    print(json.dumps({k: result[k] for k in ("status", "elapsed_seconds", "small_cube_1_to_6", "local_no_carry")} | {"stress_counts": result["stress_scope"]["counts"], "stress_rows": len(result["stress_rows"])}, ensure_ascii=False))
