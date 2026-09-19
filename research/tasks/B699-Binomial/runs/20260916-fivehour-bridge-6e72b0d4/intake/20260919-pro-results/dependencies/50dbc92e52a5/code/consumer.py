"""Native i6 consumers for the two H025 tail classes.

The returned cofactor is NOT asserted to be prime. Every prime factor of a
nontrivial source defect is a common prime >= 7 for the original (n,j).
No binomial coefficient and no factorization of q_r is needed.
"""
from __future__ import annotations
from math import gcd, prod
from typing import Any


def rough6(x: int) -> int:
    if x <= 0:
        raise ValueError("rough6 expects a positive integer")
    for p in (2, 3, 5):
        while x % p == 0:
            x //= p
    return x


def checked_input(n: int, j: int) -> None:
    if isinstance(n, bool) or isinstance(j, bool) or not isinstance(n, int) or not isinstance(j, int):
        raise TypeError("n and j must be integers")
    if n % 1800 not in (1280, 1530) or not 7 <= j <= n // 2:
        raise ValueError("requires an original legal i6 input in the two tail classes")


def source_defect(n: int, j: int, r: int) -> int:
    q = rough6(n-r)
    return q // gcd(q, prod(j-b for b in range(r+1)))


def source_witness(n: int, j: int, rows: tuple[int, ...]) -> dict[str, int]:
    for r in rows:
        d = source_defect(n, j, r)
        if d > 1:
            return {"row": r, "witness_cofactor": d}
    raise AssertionError("the proved sufficient condition contradicts all listed complete source windows")


def inspect(n: int, j: int) -> dict[str, Any]:
    checked_input(n, j)
    k, N = n-j, n-1
    J = j*k
    q = [rough6(n-r) for r in range(6)]
    E3, E4 = gcd(q[3], J), gcd(q[4], J)
    A4 = gcd(q[4], (j-1)*(k-1))
    C = gcd(q[4], j-2)
    Q50, Q51 = gcd(q[5], J), gcd(q[5], (j-1)*(k-1))
    g = gcd(n, j)
    c = 9 if n % 1800 == 1280 else 125
    mu = (256 if n % 1800 == 1280 else 1152) if j % 2 == 0 else 1
    out: dict[str, Any] = {
        "n": n, "j": j, "g": g, "E3": E3, "E4": E4,
        "A4": A4, "C": C, "Q50": Q50, "Q51": Q51,
        "central_balance_trigger": j % 2 == 0 and C >= A4,
        "old_mass": g**4 * Q50**2 * Q51**4,
        "threshold": c*n, "parity_multiplier": mu,
        "first_window": J % N == 0,
    }
    if J % N:
        out["amplification_trigger"] = False
        return out
    U = J//N
    if U <= 1 or U % (g*g):
        raise AssertionError("first-row arithmetic identity failed")
    t = U//(g*g)
    M = E3*E4*Q50
    I3 = q[3]//E3
    # Totalized definitions. Under NC they equal t/M and (U-1)/(I3*A4*Q51).
    zeta = t//gcd(t, M)
    nu = (U-1)//gcd(U-1, I3*A4*Q51)
    mass = out["old_mass"] * zeta**2 * nu**3
    out.update(U=U, t=t, zeta=zeta, nu=nu,
               amplified_mass=mass,
               amplification_trigger=mu*mass >= c*n)
    return out


def prove_if_triggered(n: int, j: int) -> dict[str, Any]:
    """Return a source cofactor only on a proved route; otherwise report open."""
    a = inspect(n, j)
    if a["central_balance_trigger"]:
        return {"status": "proved", "consumer": "CENTRE_LT_NEARSIDE",
                **source_witness(n, j, (1, 3, 4)), "data": a}
    if not a["first_window"]:
        return {"status": "proved", "consumer": "FIRST_WINDOW_DEFECT",
                **source_witness(n, j, (1,)), "data": a}
    if a["amplification_trigger"]:
        return {"status": "proved", "consumer": "RESIDUAL_AMPLIFICATION",
                **source_witness(n, j, (1, 3, 4, 5)), "data": a}
    return {"status": "not_decided", "data": a}


if __name__ == "__main__":
    import argparse, json
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("n", type=int)
    parser.add_argument("j", type=int)
    args = parser.parse_args()
    print(json.dumps(prove_if_triggered(args.n, args.j), ensure_ascii=False, indent=2))
