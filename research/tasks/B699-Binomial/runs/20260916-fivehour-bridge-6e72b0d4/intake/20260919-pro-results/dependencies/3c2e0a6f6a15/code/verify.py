#!/usr/bin/env python3
"""Replay ONLY this round's exact identities and analytically bounded endpoint.

This is not a Lean proof checker and does not rerun the historical contracts.
The finite endpoint is (M,d,z), with M<=10 and z|d(M-d), proved in PROOFS.md.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
from math import gcd
from core import (SQUAREFREE_235, applicability, binomial_valuation,
                  is_prime_trial, square_class_235, witness_certificate)

# Sparse integer polynomials in (M,L,d,z,g); no numerical substitution.
ZERO = (0, 0, 0, 0, 0)

def constant(c):
    return {} if c == 0 else {ZERO: c}

def var(i):
    e = list(ZERO); e[i] = 1
    return {tuple(e): 1}

def add(*polys):
    out = {}
    for p in polys:
        for e, c in p.items():
            out[e] = out.get(e, 0) + c
    return {e: c for e, c in out.items() if c}

def scale(p, c):
    return {e: c * v for e, v in p.items() if c * v}

def mul(p, q):
    out = {}
    for e, c in p.items():
        for f, d in q.items():
            h = tuple(a+b for a, b in zip(e, f))
            out[h] = out.get(h, 0) + c*d
    return {e: c for e, c in out.items() if c}

def product(*ps):
    out = constant(1)
    for p in ps:
        out = mul(out, p)
    return out

def omega5star(t):
    result = int(t % 25 == 0)
    for p in range(7, t + 1):
        if t % p == 0 and is_prime_trial(p):
            result += 1
    return result

def small_part_5(x):
    s = 1
    for p in (2, 3):
        while x % p == 0:
            x //= p; s *= p
    if x % 5 == 0 and x % 25 != 0:
        s *= 5
    return s

def require(cond, message):
    if not cond:
        raise AssertionError(message)


def certificate():
    M,L,d,z,g = [var(i) for i in range(5)]
    identities = []
    for eps in (-1, 1):
        beta = add(product(d,L), scale(z,eps))
        gamma = add(product(add(M,scale(d,-1)),L), scale(z,-eps))
        left = add(product(beta,gamma), scale(product(z,z,
                   add(product(g,M,L),constant(-1))),-1))
        bracket = add(product(d,add(M,scale(d,-1)),L),
                      scale(product(add(M,scale(d,-2)),z),eps),
                      scale(product(g,M,z,z),-1))
        residual = add(left,scale(product(L,bracket),-1))
        require(not residual, "root-splitting identity failed")
        identities.append({"epsilon":eps,"nonzero_residual_coefficients":len(residual)})
    # A deliberately corrupted sign must NOT pass the polynomial check.
    bad = add(left,scale(product(L,bracket),1))
    require(bool(bad), "negative test did not detect sign corruption")

    matching = []
    for modulus in (8,3):
        for s in (1,5):
            for tau in (1,5):
                ok = (s-tau) % modulus == 0
                require(ok == (s==tau), "squareclass matching failed")
                matching.append({"modulus":modulus,"s":s,"tau":tau,"possible":ok})

    # This is a proved finite endpoint, not an empirical exponent cutoff.
    endpoints = []
    for m in (1,2,5,10):
        require(28*m-1 > m*m, "uniform z<L/2 bound failed")
        for dd in range(1,m//2+1):
            w = dd*(m-dd)
            require(0 < w <= 25, "endpoint bound failed")
            for zz in range(1,w+1):
                if w % zz:
                    continue
                for s in (1,5):
                    t = s*zz*zz
                    count = omega5star(t)
                    require(count <= 1, "historical low-support consumer not forced")
                    endpoints.append({"M":m,"d":dd,"z":zz,"s":s,
                                      "t":t,"omega5star":count})

    two_high = [D for D in SQUAREFREE_235 if D%2 and D%8==1]
    three_high = [D for D in SQUAREFREE_235 if D%3 and D%3==1]
    require(two_high==[1], "2-adic D table failed")
    require(three_high==[1,10], "3-adic D table failed")
    coeff10 = [c for c in (1,2,5,10) if gcd(c,10)==1]
    require(coeff10==[1], "D=10 alpha coefficient filter failed")

    # Exact symbolic exponent inequalities for a SIZE-ONLY relaxation.
    # Not an integer NC model; the missing conditions are listed in FAILURES.md.
    comparisons = {
        "H025 g^2 q5^2 < n": (22,40),
        "g^7 < n": (7,40),
        "q3-slot squared < n": (20,40),
        "q4-slot squared < n": (16,40),
        "n < (q3/Q)^3": (40,90),
        "n < (q4/Q)^3": (40,96),
        "n < q4-pair^9": (40,144),
        "n < q4-pair^10": (40,160),
        "n < q4-pair^11": (40,176),
        "n < q4-pair^12": (40,192),
        "g < t": (1,38),
        "alpha < t^4": (39,152),
        "n < t^5": (40,190),
        "g^2 < t": (2,38),
        "alpha < t^3": (39,114),
        "n^2 < t^7": (80,266),
    }
    require(all(a < b for a,b in comparisons.values()), "magnitude relaxation failed")

    # Finite local diagnostic, explicitly NOT an original NC example.
    require((8*8 - 10*1*1) % 27 == 0, "nonsplit diagnostic failed")
    require(8 % 27 not in (1,26), "diagnostic accidentally split")

    # Three specified examples only. They do not establish the infinite theorem.
    examples = [witness_certificate(666,210,5,37),
                witness_certificate(1556730,518322,6,353),
                witness_certificate(4914,1820,5,17)]
    require(applicability(666,210,5)["applies"], "i5 receiver failed")
    require(applicability(1556730,518322,6)["applies"], "i6 receiver failed")
    require(not applicability(4914,1820,5)["applies"], "unclosed D=10 branch mislabelled")
    diagnostic = {"n":4914,"j":1820,"g":182,"alpha":27,
                  "W_class":square_class_235((4914-1)*1820*(4914-1820)),
                  "q1":4913,"beta_gamma":170,
                  "first_window_passes":170%4913==0,
                  "status":"not NC; actual common prime 17"}
    require(not diagnostic["first_window_passes"], "D=10 diagnostic unexpectedly passes q1")

    # Source-prime endpoint convention and receiver rejection tests.
    require(small_part_5(5)==5 and small_part_5(25)==1 and small_part_5(125)==1,
            "the complete endpoint 5-power was discarded")
    require(not applicability(1556730,518322,4)["applies"], "unsupported i4 accepted")
    require(not applicability(4914,1820,6)["applies"], "general i6 incorrectly accepted")
    try:
        witness_certificate(666,210,5,5)
        raise AssertionError("bad witness accepted")
    except ValueError:
        pass
    return {
        "status":"PASS_NEW_SQUARECLASS_FORCE",
        "evidence_grade":"author paper + same-session exact arithmetic; not Lean",
        "historical_contracts_replayed":False,
        "identity_coefficients":identities,
        "local_squareclass_matching":matching,
        "finite_endpoint":{"proof_bound":"z divides d(M-d) <= 25", "records":endpoints},
        "squarefree235":{"two_high":two_high,"three_high":three_high,
                         "D10_allowed_coefficient":coeff10},
        "size_only_relaxation":{"weights":{"n":40,"g":1,"alpha":39,"t":38,
                                   "q3":40,"q3_each_slot":10,"q4":40,
                                   "q4_each_slot":8,"q5":10,"5^E":30},
                                "strict_exponent_comparisons":comparisons,
                                "is_an_integer_NC_model":False},
        "examples":examples,"D10_diagnostic":diagnostic,
        "negative_tests_passed":["polynomial sign", "isolated vs complete 5 power",
                                 "i4 unsupported", "i6 domain", "nonwitness rejected"],
        "unbounded_n_or_exponent_scan":False
    }


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--write", action="store_true", help="write the deterministic certificate")
    a = ap.parse_args()
    out = certificate()
    root = Path(__file__).resolve().parents[1]
    path = root / "certificates" / "verification.json"
    data = (json.dumps(out, ensure_ascii=False, indent=2, sort_keys=True)+"\n").encode()
    if a.write:
        path.parent.mkdir(parents=True,exist_ok=True)
        path.write_bytes(data)
    else:
        require(path.exists(), "missing certificate; run --write once")
        require(path.read_bytes()==data, "certificate byte mismatch")
    print(out["status"])
    print("endpoint records:",len(out["finite_endpoint"]["records"]))
    print("certificate sha256:",hashlib.sha256(data).hexdigest())
    print("No n/exponent scan. No historical replay. No Lean or external review.")


if __name__ == "__main__":
    main()
