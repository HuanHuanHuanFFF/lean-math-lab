#!/usr/bin/env python3
"""Inspect the round-12 POWER gate on an exact formal high-bridge row."""
from __future__ import annotations

import argparse
import json

from arithmetic import high_bridge_exact, odd_divisors_below, pell_pair, theta, v2


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--q", type=int, help="Pell parameter q in t=8q+1")
    parser.add_argument("--multiplier", type=int, help="odd high-bridge multiplier m")
    parser.add_argument("--theta-rho", type=int, help="print theta_(rho-2)")
    args = parser.parse_args()

    if args.theta_rho is not None:
        rho = args.theta_rho
        if rho < 3:
            raise SystemExit("rho must be at least 3")
        print(json.dumps({"rho": rho, "bits": rho - 2, "theta": theta(rho - 2)}, indent=2))
        return

    if args.q is None:
        raise SystemExit("provide --q or --theta-rho")
    q = args.q
    _, X_b = pell_pair(4 * q)
    rho = v2(X_b)
    U_a, _ = pell_pair(4 * q + 1)
    bound = 27 * (1 << (rho - 1))
    if args.multiplier is not None:
        rows = [high_bridge_exact(q, args.multiplier)]
    else:
        rows = [high_bridge_exact(q, m) for m in odd_divisors_below(9 * (U_a // 2), bound)]
    payload = {
        "scope": "formal balanced high-bridge necessary core only; CANDIDATE does not imply NC3",
        "q": q,
        "rho": rho,
        "strict_multiplier_bound": bound,
        "rows": rows,
    }
    print(json.dumps(payload, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
