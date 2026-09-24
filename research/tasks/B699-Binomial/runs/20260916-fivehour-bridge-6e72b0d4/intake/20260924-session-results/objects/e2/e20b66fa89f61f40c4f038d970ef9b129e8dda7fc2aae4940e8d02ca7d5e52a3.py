"""Generate a complete finite-period cover for 0 <= J_B < 70.

Search used a larger prime pool. This script needs only the selected witnesses;
set-cover optimization is not a proof dependency.
"""
import argparse
import json
from pathlib import Path
from arithmetic import is_prime, first_return_q, pell_coordinates, power

SELECTORS = {
    0: [97], 4: [37, 53], 8: [13], 12: [31], 16: [53, 193],
    20: [2521], 24: [11, 79], 28: [31], 32: [5, 37],
    36: [19, 53, 61, 421, 757, 1009],
    40: [29, 31, 37, 89, 577], 44: [13], 48: [29, 661],
    52: [97], 56: [17, 73], 60: [13], 64: [29, 241], 68: [41, 71],
}


def allowed_values(p: int):
    """Algorithm A: solve the exact h-quadratic after enumerating AB=T.

    A=0, B=0, and d=0 are retained. No modular division by A, B, or d
    is made without checking its nonzero residue first.
    """
    assert is_prime(p) and p > 3
    sqrt_table = {}
    for z in range(p):
        sqrt_table[z * z % p] = z
    inverses = [0] + [pow(z, -1, p) for z in range(1, p)]
    table = []
    for q in range(len(first_return_q(p))):
        d, y = pell_coordinates(q, p)
        T = 3 * (d - 1) % p
        possible = set()
        for A in range(p):
            Bs = [T * inverses[A] % p] if A else (range(p) if T == 0 else [])
            for B in Bs:
                lead = d * d % p
                linear = -(6 * d * d + 10 * A * d * y + 4 * A * A * y * y) % p
                constant = -(11 * d * d + 10 * A * d * y + 3 * A * A * y * y + 4 * B * y) % p
                if lead:
                    D = (linear * linear - 4 * lead * constant) % p
                    if D not in sqrt_table:
                        continue
                    z = sqrt_table[D]
                    inv = inverses[2 * lead % p]
                    roots = {(-linear + z) * inv % p, (-linear - z) * inv % p}
                elif linear:
                    roots = [-constant * inverses[linear] % p]
                elif constant == 0:
                    roots = range(p)
                else:
                    roots = []
                for h in roots:
                    possible.add((16 * A * d + 120 * y + 27 * B - 4 * B * h) % p)
        table.append(possible)
    return table


def parity_states(q_mod4: int, branch: str):
    """Full mod-16 regression of the same-origin n=0 gate."""
    d, y = 1, 1 + 8 * (q_mod4 % 2)
    if branch == "low":
        As = [0] if q_mod4 == 0 else [8] if q_mod4 == 2 else [4, 12]
        Bs = [4, 12]
    else:
        As = [2, 6, 10, 14]
        Bs = [0] if q_mod4 % 2 == 0 else [8]
    result = []
    for A in As:
        v = A * y
        Q = d + v
        for B in Bs:
            for h in range(1, 16, 2):
                P = Q + h * v
                for nu in range(16):
                    if (2 * nu - h * d + Q) % 16:
                        continue
                    if (P * Q * nu + 2) % 16:
                        continue
                    F = nu * nu - B * y - (h + 3) * d * d - (2 * h + 3) * d * v - (h + 1) * v * v
                    if F % 16:
                        continue
                    J = (16 * A * d + 120 * y + 27 * B - 4 * B * h) % 16
                    result.append([A, B, h, nu, J])
    return result


def make_certificate():
    primes = sorted({p for xs in SELECTORS.values() for p in xs})
    tables = {p: allowed_values(p) for p in primes}
    periods = {p: len(tables[p]) for p in primes}
    records = []
    for J, plist in SELECTORS.items():
        for p in plist:
            bad = [q for q, values in enumerate(tables[p]) if J % p not in values]
            records.append({"J": J, "p": p, "period": periods[p], "bad_q": bad})
    parity = [{"q_mod4": q, "branch": b, "states": parity_states(q, b)}
              for q in range(4) for b in ["low", "high"]]
    return {
        "schema": "B699-D-round21-nonnegative-J-cover-v1",
        "global_q_period": 1260,
        "J_values": list(range(0, 69, 4)),
        "q_allowed_mod3": [0, 2],
        "parity_gate": {"q_even_J_mod16": [4, 8], "q_odd_J_mod16": [0, 12]},
        "parity_regression": parity,
        "primes": [{"p": p, "period": periods[p], "gamma8": list(power((2, 1), 8, p))} for p in primes],
        "selectors": {str(J): ps for J, ps in SELECTORS.items()},
        "local_exclusions": records,
        "scope": "Necessary same-origin balanced core; finite-ring state counts are not original (n,j) counts.",
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    cert = make_certificate()
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(cert, ensure_ascii=False, indent=2) + "\n")
    print("GENERATED", len(cert["primes"]), "primes;", len(cert["local_exclusions"]), "exclusion records")

if __name__ == "__main__":
    main()
