from __future__ import annotations

import hashlib
import json
from collections import Counter
from pathlib import Path
from time import perf_counter

EXP = Path(__file__).resolve().parent
RUN = EXP.parents[1]
DATA_DIR = EXP / "data"
DATA_DIR.mkdir(parents=True, exist_ok=True)
PROBE_RESULT = RUN / "experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json"
REFERENCE_GENERATOR = RUN / "verification/runner/generate_huan_crt_stage0_pair23.py"
RESULT = json.loads(PROBE_RESULT.read_text(encoding="utf-8"))


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def row_bounds(P: int, Q: int, v: int, cap_a: int, cap_c: int, d: int):
    residue = (d * v) % Q
    rho = residue or Q
    assert (P * rho - d) % Q == 0
    c0 = (P * rho - d) // Q
    lo = max(0, (1 - c0 + P - 1) // P)
    hi = min((cap_a - rho) // Q, (cap_c - c0) // P)
    assert lo <= 0 or c0 + P * (lo - 1) < 1
    assert cap_a < rho + Q * (hi + 1) or cap_c < c0 + P * (hi + 1)
    empty = hi < lo
    upper = min(P * (rho + Q * hi), Q * (c0 + P * hi)) + 10
    return {"d": d, "rho": rho, "c0": c0, "lo": lo, "hi": hi,
            "empty": empty, "upper": upper}


def cell_payload(p: int, q: int, H: int, M: int, T: int, a: int, b: int):
    P, Q = p ** a, q ** b
    inverse = pow(P, -1, Q)
    cap_a = min(M, (H - 1) // P)
    cap_c = min(M, (H - 1) // Q)
    rows = [row_bounds(P, Q, inverse, cap_a, cap_c, d) for d in range(-10, 11)]
    common = Counter((r["lo"], r["hi"]) for r in rows).most_common(1)[0][0]
    exceptions = [{"d": r["d"], "lo": r["lo"], "hi": r["hi"]}
                  for r in rows if (r["lo"], r["hi"]) != common]
    for r in rows:
        if not r["empty"]:
            A = r["rho"] + Q * r["hi"]
            C = r["c0"] + P * r["hi"]
            assert 1 <= A <= cap_a and 1 <= C <= cap_c
            assert P * A - Q * C == r["d"]
            assert r["upper"] <= T
    return {"a": a, "b": b, "P": P, "Q": Q, "inverse": inverse,
            "capA": cap_a, "capC": cap_c, "default": list(common),
            "exceptions": exceptions}, rows


def verify_cell(p: int, q: int, H: int, M: int, T: int, cell):
    a, b = cell["a"], cell["b"]
    P, Q = p ** a, q ** b
    assert (cell["P"], cell["Q"], cell["inverse"]) == (P, Q, pow(P, -1, Q))
    cap_a, cap_c = min(M, (H - 1) // P), min(M, (H - 1) // Q)
    assert [cell["capA"], cell["capC"]] == [cap_a, cap_c]
    expected = [row_bounds(P, Q, cell["inverse"], cap_a, cap_c, d)
                for d in range(-10, 11)]
    extra = {x["d"]: (x["lo"], x["hi"]) for x in cell["exceptions"]}
    for row in expected:
        assert extra.get(row["d"], tuple(cell["default"])) == (row["lo"], row["hi"])
        if not row["empty"]:
            assert row["upper"] <= T



stage_specs = {}
for stage in RESULT["stages"]:
    if stage["stage"] != 4:
        stage_specs[stage["stage"]] = {
            "H": stage["H"], "M": stage["M"], "T": stage["output_upper"],
            "power_counts": {int(k): v for k, v in stage["power_counts"].items()},
            "ordered_rows_sha256": stage["ordered_rows_sha256"],
        }

pairs = [(2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]
jobs = [(0, p, q) for p, q in pairs]
for stage in (1, 2, 3):
    jobs.extend((stage, p, q) for p, q in
                [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)])
assert len(jobs) == 23 and all(stage != 4 for stage, _, _ in jobs)

started = perf_counter()
manifest_rows = []
for stage, p, q in jobs:
    spec = stage_specs[stage]
    H, M, T = spec["H"], spec["M"], spec["T"]
    amax, bmax = spec["power_counts"][p], spec["power_counts"][q]
    file_name = f"stage{stage}_pair{p}{q}.json"
    file_started = perf_counter()
    cells, empty_rows, nonempty_rows, negative_c0_rows, lo_positive_rows = [], 0, 0, 0, 0
    for a in range(1, amax + 1):
        for b in range(1, bmax + 1):
            cell, rows = cell_payload(p, q, H, M, T, a, b)
            cells.append(cell)
            empty_rows += sum(r["empty"] for r in rows)
            nonempty_rows += sum(not r["empty"] for r in rows)
            negative_c0_rows += sum(r["c0"] < 0 for r in rows)
            lo_positive_rows += sum(r["lo"] > 0 for r in rows)
    payload = {
        "status": "exact_complete_grid_data_not_Lean", "stage": stage, "p": p, "q": q,
        "H": H, "M": M, "T": T, "aMin": 1, "aMax": amax, "bMin": 1, "bMax": bmax,
        "cell_count": len(cells), "signed_rows": len(cells) * 21,
        "displacements": list(range(-10, 11)),
        "formula": "v=pow(P,-1,Q); cap=min(M,(H-1)//P); rho=(d*v)%Q or Q; C0=(P*rho-d)//Q; lo=max(0,ceil((1-C0)/P)); hi=min(floor((capA-rho)/Q),floor((capC-C0)/P))",
        "stage_ordered_rows_sha256": spec["ordered_rows_sha256"], "cells": cells,
        "new_B_original_results": 0,
    }
    out = DATA_DIR / file_name
    out.write_text(json.dumps(payload, ensure_ascii=False, separators=(",", ":")) + "\n", encoding="utf-8")
    file_seconds = perf_counter() - file_started
    loaded = json.loads(out.read_text(encoding="utf-8"))
    assert len(loaded["cells"]) == amax * bmax
    seen = set()
    for cell in loaded["cells"]:
        key = (cell["a"], cell["b"])
        assert key not in seen
        seen.add(key)
        verify_cell(p, q, H, M, T, cell)
    assert seen == {(a, b) for a in range(1, amax + 1) for b in range(1, bmax + 1)}
    manifest_rows.append({"stage": stage, "p": p, "q": q, "file": f"data/{file_name}",
        "H": H, "M": M, "T": T, "aMax": amax, "bMax": bmax, "cells": len(cells),
        "signed_rows": len(cells) * 21, "empty_signed_rows": empty_rows,
        "nonempty_signed_rows": nonempty_rows, "negative_c0_rows": negative_c0_rows,
        "lo_positive_rows": lo_positive_rows, "generation_seconds": file_seconds,
        "sha256": sha(out)})



manifest = {
    "status": "generated_and_reloaded_exactly_not_Lean",
    "input": {
        "probe_result": str(PROBE_RESULT).replace("\\", "/"),
        "probe_result_sha256": sha(PROBE_RESULT),
        "reference_generator": str(REFERENCE_GENERATOR).replace("\\", "/"),
        "reference_generator_sha256": sha(REFERENCE_GENERATOR),
    },
    "scope": {
        "stage0_pairs": [[2, 5], [2, 7], [3, 5], [3, 7], [5, 7]],
        "stages1_2_3_pairs": [[2, 3], [2, 5], [2, 7], [3, 5], [3, 7], [5, 7]],
        "excluded_stage": 4,
        "block_count": len(manifest_rows),
        "total_cells": sum(x["cells"] for x in manifest_rows),
        "total_signed_rows": sum(x["signed_rows"] for x in manifest_rows),
    },
    "blocks": manifest_rows,
    "independent_reload": "all cells and d=-10..10 tuples recomputed from source formula",
    "lean_checked": False,
    "git_checked": False,
    "new_original_results": 0,
    "total_seconds": perf_counter() - started,
}
(EXP / "manifest.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
(EXP / "README.md").write_text("""# CRT remaining grid data

本目录只生成数据，不运行 Lean。范围是 stage0 除 (2,3) 外的其余五对，以及 stage1、stage2、stage3 的六对，共 23 张完整矩形；stage4 明确排除。

每张 JSON 保留 a=1..aMax、b=1..bMax 的全部细胞和 d=-10..10。每格保存 P/Q、精确逆元、capA/capC、最常见 default(lo,hi) 和全部例外。生成后重新加载每张 JSON，逐格逐位移重算公式并验证覆盖无重复、无缺失。未生成 Lean 源码，不修改现有 runner 或主源。
""", encoding="utf-8")
print(json.dumps({
    "status": manifest["status"],
    "blocks": len(manifest_rows),
    "cells": manifest["scope"]["total_cells"],
    "signed_rows": manifest["scope"]["total_signed_rows"],
    "seconds": manifest["total_seconds"],
}, ensure_ascii=False))

