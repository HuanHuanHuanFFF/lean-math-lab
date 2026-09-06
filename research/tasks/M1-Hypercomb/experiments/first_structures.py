from exact_tools import *
import importlib.util


def run():
    out = {"scope": "exact integers; ell=3..32, n=0..160; sparse large ell n<=80", "checks": {}, "sympy": bool(importlib.util.find_spec("sympy"))}
    first = {}
    for ell in list(range(3, 33)) + [50, 100, 1000, 10**6]:
        nmax = 160 if ell < 33 else 80
        r, q = ell - 2, [1, ell - 1]
        aa, bb = mul(q, [1, r]), [0, 1, ell - 1]
        ds = [[1], add(aa, [0, 1])]
        for n in range(2, nmax + 1):
            ds.append(add(mul(aa, ds[-1]), mul(bb, ds[-2])))
        for n, cc in enumerate(hypercombs(ell, nmax)):
            for label, bad in [("C_unimodal", unimodality_failure(cc)), ("C_LC", logconcavity_failures(cc)),
                               ("D_LC", logconcavity_failures(ds[n]))]:
                if bad and label not in first:
                    first[label] = {"ell": ell, "n": n, "failure": bad[:3] if isinstance(bad,list) else bad}
            if n:
                assert cc == mul(q, add(ds[n], [0] + ds[n - 1]))
                bad = cross_failures(ds[n], [0] + ds[n - 1])
                if bad and "D_sync_xDprev" not in first:
                    first["D_sync_xDprev"] = {"ell": ell, "n": n, "failure": bad[:3]}
                bad = cross_failures(mul(q, ds[n]), mul(q, [0] + ds[n - 1]))
                if bad and "QD_sync_xQDprev" not in first:
                    first["QD_sync_xQDprev"] = {"ell": ell, "n": n, "failure": bad[:3]}
                # Remaining D factor after all Q divisors, structurally Q^floor(n/2).
                rem = ds[n]
                for _ in range(n // 2):
                    rem = polynomial_divide(rem, q)
                bad = logconcavity_failures(rem)
                if bad and "D_remainder_LC" not in first:
                    first["D_remainder_LC"] = {"ell": ell, "n": n, "failure": bad[:3], "coefficients":rem if n<10 else None}
        out["checks"][str(ell)] = nmax
    out["first_failures"] = first
    if out["sympy"]:
        import sympy as s
        x = s.Symbol("x")
        roots = []
        for ell in [3, 4, 5, 10]:
            q = s.Poly(1 + (ell-1)*x, x)
            for n, cc in enumerate(hypercombs(ell, 12)):
                p = s.Poly.from_list(list(reversed(cc)), x)
                rem = p
                power = 0
                while rem.rem(q).is_zero:
                    rem = rem.exquo(q)
                    power += 1
                nonreal = rem.degree() - rem.count_roots(-s.oo, s.oo)
                if nonreal:
                    roots.append({"ell": ell,"n":n,"Q_power":power,"nonreal_roots":int(nonreal),"remainder_coefficients": list(reversed([int(v) for v in rem.all_coeffs()]))})
                    break
        out["exact_nonreal_root_witnesses"] = roots
    write_report("first-structures.json", out)


if __name__ == "__main__":
    run()
