#!/usr/bin/env python3
"""Read-only gate for the proved round-11 conditional domains.

It never labels an input NC3 and never constructs an original counterexample.
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
    ap = argparse.ArgumentParser()
    ap.add_argument("--layer", choices=["low", "high", "weak-model"], required=True)
    ap.add_argument("--multiplier", type=int)
    ap.add_argument("--r", type=int)
    args = ap.parse_args()

    if args.layer == "weak-model":
        print(json.dumps(load("remaining_weak_model.json"), indent=2, sort_keys=True))
        return

    if args.multiplier is None:
        ap.error("--multiplier is required")

    if args.layer == "low":
        data = load("low_endpoint.json")
        for rec in data["records"]:
            if rec["multiplier"] == args.multiplier:
                print(json.dumps({
                    "scope": "low two-adic endpoint beta=2 only",
                    "multiplier": args.multiplier,
                    "status": rec["status"],
                    "base_valid_states": rec["base_valid_states"],
                    "conclusion": "EXCLUDED_CONDITIONAL_CORE" if rec["status"] != "no_branch_state" else "NO_BRANCH_STATE",
                    "warning": "not an NC3 constructor and not an original counterexample",
                }, indent=2, sort_keys=True))
                return
        print("OUTSIDE_PROVED_LOW_MULTIPLIER_RANGE")
        return

    if args.r is None:
        ap.error("--r is required for high layer")
    data = load("high_layers.json")
    for layer in data["layers"]:
        if layer["r"] != args.r:
            continue
        for rec in layer["records"]:
            if rec["multiplier"] == args.multiplier:
                print(json.dumps({
                    "scope": f"high two-adic endpoint at exact r={args.r}",
                    "multiplier": args.multiplier,
                    "status": rec["status"],
                    "base_valid_states": rec["base_valid_states"],
                    "conclusion": "EXCLUDED_CONDITIONAL_CORE" if rec["status"] != "no_branch_state" else "NO_BRANCH_STATE",
                    "warning": "not an NC3 constructor and not an original counterexample",
                }, indent=2, sort_keys=True))
                return
        print("OUTSIDE_PROVED_HIGH_MULTIPLIER_RANGE")
        return
    print("OUTSIDE_PROVED_HIGH_LAYER; proved r values are 3..7")


if __name__ == "__main__":
    main()
