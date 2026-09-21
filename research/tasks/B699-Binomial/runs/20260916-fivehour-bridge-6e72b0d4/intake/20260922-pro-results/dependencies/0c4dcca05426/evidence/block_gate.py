#!/usr/bin/env python3
"""Inspect the proved one-block gates.

This is a gate for necessary balanced-core parameters.  It never labels a
parameter tuple as an NC3 input or as a B699 counterexample.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
CERT = ROOT / "certificates"


def load(name: str):
    return json.loads((CERT / name).read_text(encoding="utf-8"))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--side", choices=["X", "U"], required=True,
                        help="X means B|9X_b; U means B|9U_a")
    parser.add_argument("--multiplier", type=int, required=True,
                        help="m=9X_b/B or m=9U_a/B")
    args = parser.parse_args()
    cert = load("xblock.json" if args.side == "X" else "ublock.json")
    if not (1 <= args.multiplier <= cert["max_multiplier"]):
        print(json.dumps({
            "status": "OUTSIDE_PROVED_MULTIPLIER_RANGE",
            "side": args.side,
            "multiplier": args.multiplier,
            "max_multiplier": cert["max_multiplier"],
            "meaning": "no conclusion; not NC3",
        }, indent=2))
        return
    rec = cert["records"][args.multiplier - 1]
    status = {
        "analytic": "EXCLUDED_BY_ANALYTIC_FACTOR_OR_MOD9_PROOF",
        "no_branch_state": "EXCLUDED_BY_EXACT_BRANCH_PERIOD",
        "nonresidue_cover": "EXCLUDED_BY_COMPLETE_NONRESIDUE_COVER",
    }[rec["status"]]
    print(json.dumps({
        "status": status,
        "side": args.side,
        "multiplier": args.multiplier,
        "record": rec,
        "meaning": "conditional necessary core excluded; no claim of an NC3 input",
    }, indent=2, sort_keys=True))


if __name__ == "__main__":
    main()
