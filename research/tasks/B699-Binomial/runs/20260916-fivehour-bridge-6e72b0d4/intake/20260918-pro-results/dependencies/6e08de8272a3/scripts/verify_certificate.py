#!/usr/bin/env python3
"""Independent algorithm: primality + Legendre valuations, NOT math.comb/gcd.
Does not import the certificate builder. Optional negative tests mutate the
certificate in memory. All checks use integers; assertions are not relied on.
"""
import argparse
import copy
import json
from pathlib import Path


def require(condition: bool, message: str) -> None:
    if not condition:
        raise ValueError(message)


def is_prime(p: int) -> bool:
    if p < 2:
        return False
    d = 2
    while d*d <= p:
        if p % d == 0:
            return False
        d += 1
    return True


def fact_val(n: int, p: int) -> int:
    value = 0
    while n:
        n //= p
        value += n
    return value


def choose_val(n: int, j: int, p: int) -> int:
    return fact_val(n, p) - fact_val(j, p) - fact_val(n-j, p)


def check_row(row: dict) -> tuple:
    require(set(row).issuperset({"n", "j", "p"}), "missing row field")
    n, j, p = row["n"], row["j"], row["p"]
    require(all(type(x) is int for x in (n, j, p)), "noninteger input")
    require(4 <= j <= n//2, "illegal original interval")
    require(p >= 3 and is_prime(p), "witness is not an odd prime")
    require(choose_val(n, 3, p) > 0, "prime does not divide choose(n,3)")
    require(choose_val(n, j, p) > 0, "prime does not divide choose(n,j)")
    return n, j


def check(data: dict) -> dict:
    require(data.get("format") == "B699-ProE-CUBE-20260917-v1", "wrong format")
    e = data["endpoint"]
    require(e["n_min"] == 8 and e["n_max"] == 108, "wrong endpoint range")
    expected = {(n,j) for n in range(8,109) for j in range(4,n//2+1)}
    seen = set()
    for row in e["rows"]:
        pair = check_row(row)
        require(pair in expected and pair not in seen, "extra or duplicate endpoint")
        seen.add(pair)
    require(seen == expected, "endpoint coverage incomplete")
    cube_seen = set()
    centers = 0
    for row in data["cube_regression"]:
        n, j = check_row(row)
        require((n,j) not in cube_seen, "duplicate cube regression pair")
        cube_seen.add((n,j))
        r = row["cube_root"]
        require(type(r) is int and r > 0, "invalid cube root")
        k = n-j
        require(r**3 == (n*j*k)**2*(n-2)*(j-1)*(k-1), "cube identity false")
        centers += (2*j == n)
    # These are the frozen regression rows, not a proof of global cube coverage.
    require(cube_seen == {(n,n//2) for n in range(8,5001,2)},
            "regression rows differ from the frozen 8..5000 search")
    return {"endpoint_pairs": len(seen), "cube_regression_pairs": len(cube_seen),
            "central_cube_pairs": centers,
            "verification_method": "trial primality and factorial valuations"}


def negative_tests(data: dict) -> list:
    results = []
    mutations = [
        ("missing_endpoint", lambda d: d["endpoint"]["rows"].pop()),
        ("duplicate_endpoint", lambda d: d["endpoint"]["rows"].append(
            copy.deepcopy(d["endpoint"]["rows"][0]))),
        ("prime_two", lambda d: d["endpoint"]["rows"][0].update(p=2)),
        ("composite_witness", lambda d: d["endpoint"]["rows"][0].update(p=9)),
        ("nondividing_prime", lambda d: d["endpoint"]["rows"][0].update(p=11)),
        ("illegal_j", lambda d: d["endpoint"]["rows"][0].update(j=3)),
        ("altered_bound", lambda d: d["endpoint"].update(n_max=107)),
        ("bad_cube_root", lambda d: d["cube_regression"][0].update(cube_root=97)),
        ("missing_cube_row", lambda d: d["cube_regression"].pop()),
    ]
    for name, mutate in mutations:
        corrupted = copy.deepcopy(data)
        mutate(corrupted)
        try:
            check(corrupted)
        except (ValueError, KeyError, TypeError) as exc:
            results.append({"mutation": name, "rejected": True, "reason": str(exc)})
        else:
            raise RuntimeError(f"Damaged certificate accepted: {name}")
    return results


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--certificate", type=Path, required=True)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--negative-tests", action="store_true")
    args = ap.parse_args()
    data = json.loads(args.certificate.read_text())
    result = check(data)
    if args.negative_tests:
        result["negative_tests"] = negative_tests(data)
    result["status"] = "PASS_FINITE_ENDPOINT_AND_RECORDED_REGRESSIONS"
    result["not_verified"] = ["unrestricted NC implication", "external independent review",
                              "new nonempty difference from all prior consumers"]
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2)+"\n")
    print(json.dumps({k:v for k,v in result.items() if k not in ("negative_tests", "not_verified")}))
    print("damaged_certificates_rejected="+str(len(result.get("negative_tests", []))))

if __name__ == "__main__":
    main()
