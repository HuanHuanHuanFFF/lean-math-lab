#!/usr/bin/env python3
"""Checker A: independently recompute the discriminant-route finite scan."""
import argparse, json, math, tempfile
from pathlib import Path


def factor_small(n):
    out = {}
    f = 2
    while f * f <= n:
        if n % f == 0:
            e = 0
            while n % f == 0:
                n //= f; e += 1
            out[f] = e
        f = 3 if f == 2 else f + 2
    if n > 1: out[n] = out.get(n, 0) + 1
    return out


def merge(a, b):
    c = dict(a)
    for p, e in b.items(): c[p] = c.get(p, 0) + e
    return c


def divs(fi):
    a = [1]
    for p, e in sorted(fi.items()):
        b = []
        for x in a:
            z = 1
            for _ in range(e + 1):
                b.append(x * z); z *= p
        a = b
    return sorted(a)


def recompute(limit):
    count = 0; core = []; width = []
    for D in range(3, limit + 1, 2):
        fi = merge(factor_small(D - 1), factor_small(D*D + D + 1))
        for v in divs(fi):
            count += 1
            Q = D + v
            A = v*D*D
            B = -2*Q*v*(3*Q-v)
            C = -4*Q**3 + Q*Q*v + 4
            disc = B*B - 4*A*C
            if disc < 0: continue
            s = math.isqrt(disc)
            if s*s != disc: continue
            for numerator in (-B+s, -B-s):
                if numerator <= 0 or numerator % (2*A): continue
                h = numerator // (2*A)
                nd = h*D-Q
                if h % 2 == 0 or nd <= 0 or nd % 2: continue
                nu = nd//2; P = Q+h*v
                if v*nu*nu != P*Q*Q-1: continue
                if v*(nu*nu-h*Q*Q) != Q**3-1: continue
                rec = {"D":D,"v":v,"Q":Q,"h":h,"P":P,"nu":nu}
                core.append(rec)
                t=P+nu
                if P>=4*Q and t<Q*Q: width.append({**rec,"t":t})
    return count, core, width


def verify(path):
    d=json.loads(Path(path).read_text(encoding="utf-8"))
    if d.get("schema") != "B699-i3-core-scan-v1": return False, "schema"
    count, core, width = recompute(int(d["limit_D"]))
    ok = (count == d["divisor_pair_count"] and core == d["core_solutions"] and width == d["current_width_solutions"])
    return ok, {"count":count,"core":core,"width":width}


def main():
    ap=argparse.ArgumentParser(); ap.add_argument("certificate", type=Path); ap.add_argument("--self-test-tamper", action="store_true"); args=ap.parse_args()
    ok, info=verify(args.certificate)
    if not ok: raise SystemExit(f"REJECT: {info}")
    print("PASS checker-A")
    if args.self_test_tamper:
        d=json.loads(args.certificate.read_text(encoding="utf-8")); d["divisor_pair_count"] += 1
        with tempfile.NamedTemporaryFile("w", suffix=".json", delete=False, encoding="utf-8") as f:
            json.dump(d,f); p=f.name
        bad,_=verify(p)
        Path(p).unlink(missing_ok=True)
        if bad: raise SystemExit("tamper self-test FAILED: bad certificate accepted")
        print("PASS tamper-rejection")

if __name__=="__main__": main()
