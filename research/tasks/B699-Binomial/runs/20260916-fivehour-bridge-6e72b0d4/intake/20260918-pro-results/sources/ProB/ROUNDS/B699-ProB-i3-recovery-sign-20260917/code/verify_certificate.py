#!/usr/bin/env python3
"""Second, non-importing checker. Rebuilds the coefficient set and uses
w=lambda*mu*H and the original N,Q equations, NOT the builder's f(x).
Finite verification does not replace the infinite reductions in PROOFS.md.
"""
from __future__ import annotations
import argparse
import copy
import hashlib
import json
from functools import lru_cache
from math import gcd, isqrt
from pathlib import Path

class CertificateError(ValueError):
    pass

def need(ok: bool, msg: str) -> None:
    if not ok:
        raise CertificateError(msg)

def ord2(n: int) -> int:
    n = abs(n)
    need(n > 0, "zero valuation")
    k = 0
    while n % 2 == 0:
        n //= 2
        k += 1
    return k

def divisors(n: int) -> list[int]:
    ans = set()
    for d in range(1, isqrt(n)+1):
        if n % d == 0:
            ans.update((d, n//d))
    return sorted(ans)

def independently_enumerate_rows() -> list[tuple[int, ...]]:
    ans = set()
    for A, lam, mu in ((9,1,3), (27,3,1)):
        # Enumerate the factor pair first, unlike the constructor.
        for eps in range(1, 5*A, 2):
            for T in range(1, (5*A-1)//eps+1, 2):
                rho = eps*T
                if 27*rho*rho > 104*A*rho+48*A*A or rho == 3*A:
                    continue
                eta = rho-3*A
                for g in divisors(abs(eta)//2):
                    if (eta//(2*g)) % 2 != g % 2:
                        continue
                    if gcd(g, eps*lam*mu) != 1:
                        continue
                    if A % gcd(g*g*T, eps*eps) != 0:
                        continue
                    ans.add((lam,mu,A,rho,eps,T,g))
    return sorted(ans)

def prime(p: int) -> bool:
    return p >= 2 and all(p % d for d in range(2, isqrt(p)+1))

def fact_val(n: int, p: int) -> int:
    ans = 0
    while n:
        n //= p
        ans += n
    return ans

def common_witness(n: int, j: int, p: int) -> bool:
    return (4 <= j <= n//2 and p >= 3 and prime(p)
            and fact_val(n,p)-fact_val(3,p)-fact_val(n-3,p) > 0
            and fact_val(n,p)-fact_val(j,p)-fact_val(n-j,p) > 0)

@lru_cache(maxsize=None)
def original_modular_values(row: tuple[int, ...], p: int) -> frozenset[int]:
    lam,mu,A,rho,eps,T,g = row
    ie2 = pow(eps*eps, -1, p)
    ilm = pow(lam*mu, -1, p)
    ic = pow(lam*lam*mu*mu, -1, p)
    ig2 = pow(g*g, -1, p)
    il = pow(lam, -1, p)
    inv2 = (p+1)//2
    vals = set()
    # All residues are retained, including w=0 and x=0.
    for w in range(p):
        x = (w-eps)*inv2 % p
        z = (x*T-A)*ie2 % p
        H = w*ilm % p
        C = (4*z*x+4*z*eps+T)*ic % p
        n = (2*mu*C*H+2) % p
        d2 = (mu*mu*C*C-z*(n-1)*il)*ig2 % p
        if d2 == 0 or pow(d2, (p-1)//2, p) == 1:
            vals.add(n)
    return frozenset(vals)

def verify(data: dict) -> dict:
    need(data.get("schema") == 1 and data.get("theorem") == "RECOVERY-DISC-NEG", "schema")
    need(data.get("period") == 720, "period")
    pp = data.get("primes")
    need(isinstance(pp, list) and len(pp) == len(set(pp)), "prime list")
    for p in pp:
        need(type(p) is int and p >= 5 and prime(p) and pow(2,720,p) == 1,
             "prime or period does not verify")
    rs = independently_enumerate_rows()
    need(data.get("coefficient_rows") == [list(r) for r in rs], "coefficient completeness")
    small = [[i,s,r[-1]*(1 << s)] for i,r in enumerate(rs)
             for s in range(3,ord2(r[-1])+3)]
    need(data.get("small_exponent_states") == small, "small exponent completeness")
    ns = sorted({t[2] for t in small})
    need(data.get("small_n_rows") == ns, "small n rows")
    ws = data.get("small_original_witnesses", [])
    pairs = [(n,j) for n in ns for j in range(4,n//2+1)]
    need([(a[0],a[1]) for a in ws] == pairs, "small original pair completeness")
    for n,j,p in ws:
        need(common_witness(n,j,p), "invalid common prime")
    expected_high = [i for i,r in enumerate(rs) if ord2(r[3]-3*r[2]) == 2*ord2(r[-1])+1]
    cover = data.get("modular_cover", [])
    need([v.get("row_index") for v in cover] == expected_high, "high rows completeness")
    total, killed_total, tail_total = 0, 0, 0
    used = set()
    tails_found = []
    for item in cover:
        i = item["row_index"]
        r = rs[i]
        lam,mu,A,rho,eps,T,g = r
        targets = (4,7) if lam == 3 else (5,8)
        allowed = {s for s in range(720) if g*pow(2,s,9) % 9 in targets}
        total += len(allowed)
        seen = set()
        for group in item["eliminated"]:
            p = group["prime"]
            need(p in pp and A*eps*g % p != 0, "invalid modulus")
            used.add(p)
            ss = group["s_classes"]
            need(ss == sorted(set(ss)), "duplicate exponent class")
            possible = original_modular_values(r,p)
            for s in ss:
                need(s in allowed and s not in seen, "coverage overlap or invalid class")
                need(g*pow(2,s,p) % p not in possible, "alleged obstruction has a same-input root")
                seen.add(s)
            killed_total += len(ss)
        tail = item["factorization_tail_s_classes"]
        need(tail == sorted(allowed-seen), "incomplete exponent coverage")
        if tail:
            need(r in ((1,3,9,9,1,9,1),(1,3,9,9,3,3,1),(1,3,9,9,9,1,1))
                 and tail == [3], "unproved infinite tail")
            tails_found.append((r,tail))
            tail_total += len(tail)
    need(len(tails_found) == 3 and data.get("tail_proof") == "A9_RHO9_G1_ODD_QUADRATIC", "tail proof mapping")
    return {"status": "PASS", "coefficient_rows": len(rs), "high_rows": len(cover),
            "exponent_classes": total, "modularly_excluded_classes": killed_total,
            "factorization_tail_classes": tail_total, "small_exponent_states": len(small),
            "small_n_rows": ns, "small_original_pairs": len(ws), "used_primes": sorted(used),
            "maximum_prime": max(used), "period": 720,
            "checker": "w-coordinate, original row recovery and Q, Euler squares",
            "evidence_level": "same-author second implementation; infinite arguments in PROOFS.md"}

def check_sources(root: Path) -> dict:
    hm = json.loads((root/"sources"/"SOURCE_HASHES.json").read_text(encoding="utf-8"))
    for name, expected in hm.items():
        need(hashlib.sha256((root/"sources"/name).read_bytes()).hexdigest() == expected, "source hash: "+name)
    old = json.loads((root/"sources"/"small-C-terminals.json").read_text(encoding="utf-8"))
    wanted = [(n,j) for n in range(8,82) for j in range(4,n//2+1)]
    ws = old["witnesses"]
    need([(n,j) for n,j,p in ws] == wanted, "old small-C completeness")
    for n,j,p in ws:
        need(common_witness(n,j,p), "old small-C witness")
    return {"frozen_sources": len(hm), "old_small_C_rechecked": len(ws)}

def negative_tests(data: dict) -> list[str]:
    tests = []
    d = copy.deepcopy(data); d["coefficient_rows"].pop(); tests.append(("missing coefficient",d))
    d = copy.deepcopy(data); d["period"] = 719; tests.append(("wrong period",d))
    d = copy.deepcopy(data); d["primes"][0] = 9; tests.append(("composite modulus",d))
    d = copy.deepcopy(data); d["modular_cover"][0]["eliminated"][0]["s_classes"].pop(); tests.append(("missing exponent class",d))
    d = copy.deepcopy(data); d["small_original_witnesses"].pop(); tests.append(("missing original endpoint",d))
    d = copy.deepcopy(data); d["small_original_witnesses"][0][2] = 2; tests.append(("even witness",d))
    d = copy.deepcopy(data); d["small_exponent_states"].pop(); tests.append(("lost low exponent",d))
    d = copy.deepcopy(data)
    tail = next(v for v in d["modular_cover"] if v["factorization_tail_s_classes"])
    tail["factorization_tail_s_classes"] = [4]; tests.append(("incorrect tail class",d))
    rejected = []
    for name,bad in tests:
        try:
            verify(bad)
        except (CertificateError, KeyError, TypeError, IndexError):
            rejected.append(name)
        else:
            raise CertificateError("bad certificate accepted: "+name)
    return rejected

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--certificate", type=Path, required=True)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--negative-tests", action="store_true")
    args = ap.parse_args()
    data = json.loads(args.certificate.read_text(encoding="utf-8"))
    result = verify(data)
    result.update(check_sources(Path(__file__).resolve().parents[1]))
    if args.negative_tests:
        result["negative_tests_rejected"] = negative_tests(data)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__ == "__main__":
    main()
