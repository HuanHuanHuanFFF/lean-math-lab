from __future__ import annotations

import hashlib
import json
from pathlib import Path

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
PROBE = RUN / "experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json"
MANIFEST = json.loads((EXP / "manifest.json").read_text(encoding="utf-8"))


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def row_bounds(P, Q, v, cap_a, cap_c, d):
    rho = (d * v) % Q or Q
    c0 = (P * rho - d) // Q
    lo = max(0, (1 - c0 + P - 1) // P)
    hi = min((cap_a - rho) // Q, (cap_c - c0) // P)
    return lo, hi, min(P * (rho + Q * hi), Q * (c0 + P * hi)) + 10


assert MANIFEST["status"] == "generated_and_reloaded_exactly_not_Lean"
assert MANIFEST["scope"]["block_count"] == 23
for block in MANIFEST["blocks"]:
    path = EXP / block["file"]
    assert sha(path) == block["sha256"]
    payload = json.loads(path.read_text(encoding="utf-8"))
    assert payload["cell_count"] == block["cells"] == block["aMax"] * block["bMax"]
    seen = set()
    for cell in payload["cells"]:
        key = (cell["a"], cell["b"])
        assert key not in seen
        seen.add(key)
        P, Q = block["p"] ** cell["a"], block["q"] ** cell["b"]
        assert (cell["P"], cell["Q"], cell["inverse"]) == (P, Q, pow(P, -1, Q))
        ca, cc = min(block["M"], (block["H"] - 1) // P), min(block["M"], (block["H"] - 1) // Q)
        assert [cell["capA"], cell["capC"]] == [ca, cc]
        extra = {x["d"]: (x["lo"], x["hi"]) for x in cell["exceptions"]}
        for d in range(-10, 11):
            lo, hi, upper = row_bounds(P, Q, cell["inverse"], ca, cc, d)
            assert extra.get(d, tuple(cell["default"])) == (lo, hi)
            assert hi < lo or upper <= block["T"]
    assert seen == {(a, b) for a in range(1, block["aMax"] + 1) for b in range(1, block["bMax"] + 1)}

summary = {
    "status": "independent_reload_passed_not_Lean",
    "probe_result_sha256": sha(PROBE),
    "blocks": 23,
    "cells": MANIFEST["scope"]["total_cells"],
    "signed_rows": MANIFEST["scope"]["total_signed_rows"],
    "all_rectangles_complete": True,
    "all_signed_displacements": True,
    "all_file_sha256": True,
    "stage4_included": False,
    "lean_checked": False,
    "git_checked": False,
}
(EXP / "static-checks.json").write_text(json.dumps(summary, indent=2) + "\n", encoding="utf-8")
print(json.dumps(summary, separators=(",", ":")))
