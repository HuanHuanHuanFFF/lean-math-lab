#!/usr/bin/env python3
"""A proved-height, finite norm obstruction for one balanced Pell fibre.

Theorems and scope: PROOFS.md P0, P5--P7. The input is an auxiliary Pell index,
not an asserted NC3 pair. Empty output excludes the CONDITIONAL balanced
fibre. Surviving exponents do NOT assert integer recovery, primality, or NC3.
This implementation does not factor y, y-1 or compute discrete logarithms.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from arithmetic import pell, factor_witness


def bounded_gate(index: int, *, max_index: int = 5000,
                 single_prime: bool = False) -> dict:
    if index < 1:
        raise ValueError("index must be positive")
    if max_index < 1:
        raise ValueError("max_index must be positive")
    if index > max_index:
        return {"status": "INCONCLUSIVE_RESOURCE_LIMIT", "index": index,
                "max_index": max_index, "original_NC3_asserted": False}
    if index % 8 != 1:
        return {"status": "OUTSIDE_CANONICAL_PELL_INDEX", "index": index,
                "required": "index == 1 mod 8", "original_NC3_asserted": False}
    if single_prime:
        divisor = factor_witness(index)
        if divisor is not None:
            return {"status": "EXCLUDED_SINGLE_PRIME_INDEX_CONDITION", "index": index,
                    "proper_divisor_or_index_one": divisor,
                    "original_NC3_asserted": False}
    U, x, y, delta = pell(index)
    if delta < 17:
        return {"status": "OUTSIDE_DELTA_MINIMUM", "index": index,
                "delta": delta, "original_NC3_asserted": False}
    bound = (171 * index + 9) // 10
    hits = {}
    stream = hashlib.sha256()
    for c in (1, 3):
        nmod = c % y
        found = []
        for exponent in range(bound + 1):
            residue = (nmod * nmod - 6 * nmod + 4) % y
            stream.update(f"{c}:{exponent}:{residue}\n".encode("ascii"))
            if residue == 0:
                found.append(exponent)
            nmod = (2 * nmod) % y
        hits[str(c)] = found
    empty = not any(hits.values())
    return {
        "status": ("EXCLUDED_BALANCED_CORE_IN_THIS_PELL_FIBRE" if empty else
                   "NECESSARY_EXPONENT_CANDIDATES_NOT_NC3"),
        "index": index, "U": str(U), "x": str(x), "y": str(y),
        "delta": str(delta), "exponent_bound": bound,
        "checked_c": [1, 3], "checked_s_inclusive": [0, bound],
        "checks": 2 * (bound + 1), "hits": hits,
        "residue_stream_sha256": stream.hexdigest(),
        "y_primality_asserted": False,
        "original_NC3_asserted": False,
        "scope": "frozen same-input minimal branch AND Dv=DW=y",
        "global_finite_reduction_asserted": False,
    }


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--index", type=int, required=True)
    parser.add_argument("--max-index", type=int, default=5000)
    parser.add_argument("--single-prime", action="store_true",
                        help="also enforce necessary primality of Pell INDEX")
    args = parser.parse_args()
    try:
        result = bounded_gate(args.index, max_index=args.max_index,
                              single_prime=args.single_prime)
    except ValueError as exc:
        parser.error(str(exc))
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
