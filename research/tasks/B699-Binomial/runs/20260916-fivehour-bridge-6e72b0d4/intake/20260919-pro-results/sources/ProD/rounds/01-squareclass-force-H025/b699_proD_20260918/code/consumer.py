#!/usr/bin/env python3
"""Check this package's sufficient predicate for ONE supplied original input."""
from __future__ import annotations
import argparse
import json
from core import applicability, witness_certificate


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("n", type=int)
    p.add_argument("j", type=int)
    p.add_argument("--i", type=int, default=5)
    p.add_argument("--witness", type=int,
                   help="optionally verify a supplied prime, using exact trial primality")
    a = p.parse_args()
    out = {"predicate": applicability(a.n, a.j, a.i)}
    if a.witness is not None:
        out["witness"] = witness_certificate(a.n, a.j, a.i, a.witness)
    print(json.dumps(out, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
