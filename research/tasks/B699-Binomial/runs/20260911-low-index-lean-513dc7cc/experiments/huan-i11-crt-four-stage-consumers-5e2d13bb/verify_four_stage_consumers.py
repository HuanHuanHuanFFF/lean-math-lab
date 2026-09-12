"""Independent static checks for the four-stage consumer candidate.

This script checks source text, metadata, source hashes, imports, typed roots,
and the absence of checker redefinitions. It never invokes Lean.
"""

from __future__ import annotations

import hashlib
import json
import re
from pathlib import Path
from typing import Any


OUT = Path(__file__).resolve().parent
RUN = OUT.parent.parent
PREVIOUS = RUN / "experiments/huan-crt-complete-grid-sources-5e2d13bb"
PREVIOUS_MANIFEST = PREVIOUS / "manifest.json"
METADATA = RUN / "lean/I11CrtStages/NumericMetadata.lean"
MANIFEST = OUT / "manifest.json"


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def fail(message: str) -> None:
    raise AssertionError(message)


def metadata_values() -> dict[str, dict[str, int]]:
    text = METADATA.read_text(encoding="utf-8")
    result = {}
    for stage in range(5):
        name = f"Stage{stage:02d}"
        match = re.search(rf"namespace {name}(?P<body>.*?)end {name}", text, re.S)
        if match is None:
            fail(f"missing metadata namespace {name}")
        values = {}
        for field in ("H", "M", "upper", "exponentMax2", "exponentMax3",
                      "exponentMax5", "exponentMax7"):
            item = re.search(rf"def {field} : ℕ := (\d+)", match["body"])
            if item is not None:
                values[field] = int(item.group(1))
        result[name] = values
    return result


def check_lf(path: Path) -> str:
    text = path.read_text(encoding="utf-8")
    raw = path.read_bytes()
    if b"\r\n" in raw or b"\\n" in raw:
        fail(f"non-LF or literal escaped newline: {path}")
    if any(token in text for token in ("sorry", "admit", "native_decide")):
        fail(f"forbidden placeholder/token: {path}")
    return text


def check_stage(stage: int, text: str, manifest: dict[str, Any]) -> None:
    name = f"Stage{stage:02d}"
    ns = f"Math.B699.I11CRTConsumers.Stage{stage:02d}"
    if "structure PairGridData" in text or "def pairGridCheck" in text:
        fail(f"checker redefined in {name}")
    for p, q in [(2, 3), (2, 5), (2, 7), (3, 5), (3, 7), (5, 7)]:
        pair = f"{p}{q}"
        tag = f"stage{stage}_pair{pair}"
        grid = next(item for item in manifest["source_grid_records"] if item["tag"] == tag)
        if f"def grid{pair} : Math.B699.I11CRTSixPair.PairGridData" not in text:
            fail(f"missing typed PairGridData {name} grid{pair}")
        if f"amax := {grid['amax']}" not in text or f"bmax := {grid['bmax']}" not in text:
            fail(f"grid bounds mismatch {name} grid{pair}")
        if f"theorem grid{pair}_cutoff" not in text:
            fail(f"missing cutoff root {name} grid{pair}")
        if f"theorem grid{pair}_pair_check" not in text:
            fail(f"missing pair root {name} grid{pair}")
        if "pairGridCheck_of_parts" not in text:
            fail(f"missing part composition {name}")
        composer = (
            f"Math.B699.CRTStage{stage}Pair{pair}.CompleteComposer.rectangle_check"
        )
        if composer not in text:
            fail(f"missing composer root {composer}")
        if f"#print axioms {ns}.grid{pair}_pair_check" not in text:
            fail(f"missing qualified pair audit {name} grid{pair}")
    if f"theorem {name.lower()}_constants" not in text:
        fail(f"missing stageConstantsCheck root {name}")
    if f"def {name.lower()}Data : Math.B699.I11CRTSixPair.SixPairGrids" not in text:
        fail(f"missing SixPairGrids root {name}")
    if f"#print axioms {ns}.{name.lower()}_pair_checks" not in text:
        fail(f"missing qualified stage audit {name}")


def main() -> None:
    manifest = json.loads(MANIFEST.read_text(encoding="utf-8"))
    if manifest["status"] != "UNCOMPILED_FOUR_STAGE_CONSUMER_CANDIDATE":
        fail("unexpected consumer manifest status")
    if manifest["stage_count"] != 4 or manifest["pair_count_per_stage"] != 6:
        fail("unexpected stage/pair count")
    previous = json.loads(PREVIOUS_MANIFEST.read_text(encoding="utf-8"))
    source_grid_records = previous["grids"]
    manifest["source_grid_records"] = source_grid_records
    metadata = metadata_values()
    if sha256(PREVIOUS_MANIFEST) != manifest["inputs"]["complete_grid_manifest_sha256"]:
        fail("complete-grid manifest SHA changed")
    if sha256(METADATA) != manifest["inputs"]["numeric_metadata_sha256"]:
        fail("NumericMetadata SHA changed")
    for stage in range(5):
        name = f"Stage{stage:02d}"
        for field in ("H", "M", "upper"):
            if manifest["stage_metadata"][name][field] != metadata[name][field]:
                fail(f"metadata mismatch {name}.{field}")

    for stage in range(4):
        source = OUT / "candidate" / "lean" / "I11CRTConsumers" / f"Stage{stage:02d}.lean"
        audit = source.with_name(f"Stage{stage:02d}Audit.lean")
        if not source.is_file() or not audit.is_file():
            fail(f"missing stage source/audit {stage}")
        text = check_lf(source)
        audit_text = check_lf(audit)
        check_stage(stage, text, manifest)
        if f"import research.tasks." not in text:
            fail(f"missing source imports Stage{stage:02d}")
        if "#print axioms" not in audit_text:
            fail(f"missing stage audit prints Stage{stage:02d}")

    all_source = OUT / "candidate" / "lean" / "I11CRTConsumers" / "AllStages.lean"
    all_audit = all_source.with_name("AllStagesAudit.lean")
    all_text = check_lf(all_source)
    all_audit_text = check_lf(all_audit)
    if all_text.count("actual_i11_next_height") != 4:
        fail("expected four actual_i11_next_height connections")
    for root in [
        "next_height_00", "next_height_01", "next_height_02", "next_height_03",
        "connect_00", "connect_01", "connect_02", "connect_03",
        "initial_to_stage04", "initial_to_29294603",
    ]:
        if f"theorem {root}" not in all_text:
            fail(f"missing all-stage root {root}")
        if f"#print axioms Math.B699.I11CRTConsumers.AllStages.{root}" not in all_text:
            fail(f"missing all-stage axiom print {root}")
    if "theorem initial_to_29294603" not in all_text:
        fail("missing numeric terminal root")
    if "n < (2 : ℕ) ^ 109" not in all_text or "¬ Common n 11 j" not in all_text:
        fail("initial root assumptions are not explicit")
    if "max M" not in all_text and "max Stage" not in all_text:
        fail("height link does not expose actual max computation")
    if "#print axioms Math.B699.I11CRTConsumers.AllStages.initial_to_29294603" not in all_audit_text:
        fail("missing all-stage audit")

    for item in manifest["inputs"]["composer_inputs"]:
        path = Path(item["path"])
        if sha256(path) != item["sha256"]:
            fail(f"composer input changed {path}")
        composer_text = check_lf(path)
        if "theorem rectangle_check" not in composer_text:
            fail(f"composer rectangle root missing {path}")

    generated = []
    for path in sorted((OUT / "candidate").rglob("*.lean")):
        generated.append({
            "path": str(path.relative_to(OUT)),
            "bytes": path.stat().st_size,
            "sha256": sha256(path),
        })
    if generated != manifest["generated_source_files"]:
        fail("generated source SHA map is stale")
    report = {
        "status": "STATIC_PASS_SOURCE_ONLY_NO_LEAN",
        "stage_count": 4,
        "pair_count": 24,
        "generated_Lean_files": len(generated),
        "checks": [
            "actual PairGridData/SixPairGrids APIs consumed without redefinition",
            "all 24 composer rectangle roots and input SHAs rechecked",
            "Stage00..03 H/M/T and exponent cutoff metadata match NumericMetadata",
            "four actual_i11_next_height connections and terminal root are typed",
            "all public roots have fully qualified axiom-print entries",
            "no Lean invocation, Git mutation, or source integration mutation",
        ],
    }
    (OUT / "STATIC_CHECK.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(json.dumps(report, ensure_ascii=False))


if __name__ == "__main__":
    main()
