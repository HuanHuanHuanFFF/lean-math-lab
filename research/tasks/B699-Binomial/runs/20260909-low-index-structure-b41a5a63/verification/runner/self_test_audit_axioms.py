#!/usr/bin/env python3
"""Self-test the base verifier's guard-aware axiom audit without Lean."""

from __future__ import annotations

import importlib.util
import json
import shutil
import sys
import tempfile
from pathlib import Path


def find_repo() -> Path:
  for parent in Path(__file__).resolve().parents:
    if (parent / "lake-manifest.json").is_file():
      return parent
  raise RuntimeError("repository root not found")


def load_verifier():
  path = Path(__file__).with_name("verify.py")
  spec = importlib.util.spec_from_file_location("b699_guard_audit_verifier", path)
  if spec is None or spec.loader is None:
    raise RuntimeError(f"cannot load verifier: {path}")
  module = importlib.util.module_from_spec(spec)
  sys.modules[spec.name] = module
  spec.loader.exec_module(module)
  return module


def require(condition: bool, message: str) -> None:
  if not condition:
    raise AssertionError(message)


def main() -> int:
  repo = find_repo()
  verifier = load_verifier()
  tools_root = repo / ".tools" / "20260909-low-index-structure-b41a5a63"
  temp_root = Path(tempfile.mkdtemp(prefix="axiom-audit-self-test-", dir=tools_root))
  checks: list[str] = []
  try:
    def make_source(name: str, text: str) -> Path:
      path = temp_root / name
      path.write_text(text, encoding="utf-8")
      return path

    mixed = verifier.audit_axioms(
      make_source(
        "mixed.lean",
        "#guard_msgs in\n#print axioms hidden\n#print axioms visible\n",
      ),
      "does not depend on any axioms\n",
    )
    require(mixed["declared_print_axioms"] == 1, "mixed bare print count")
    require(mixed["guarded_print_axioms"] == 1, "mixed guarded print count")
    require(mixed["actual_printed"] == 1 and "error" not in mixed, "mixed accepted")
    checks.append("mixed guard plus bare print")

    multiline = verifier.audit_axioms(
      make_source("multiline.lean", "#print axioms visible\n"),
      "depends on axioms: [\n  propext,\n  Classical.choice\n]\n",
    )
    require(multiline["actual_printed"] == 1, "multiline output count")
    require("error" not in multiline, "multiline accepted")
    require(
      multiline["printed"][0]["axioms"] == ["propext", "Classical.choice"],
      "multiline axiom names",
    )
    checks.append("multiline axiom list")

    missing = verifier.audit_axioms(
      make_source("missing.lean", "#print axioms visible\n"), ""
    )
    require("error" in missing, "missing bare output accepted")
    checks.append("missing bare output rejected")

    extra = verifier.audit_axioms(
      make_source("extra.lean", "#print axioms visible\n"),
      "does not depend on any axioms\ndoes not depend on any axioms\n",
    )
    require("error" in extra, "extra output accepted")
    checks.append("extra output rejected")

    sorry = verifier.audit_axioms(
      make_source("sorry.lean", "#print axioms visible\n"),
      "depends on axioms: [sorryAx]\n",
    )
    require("error" in sorry and "sorryAx" in str(sorry.get("error")), "sorryAx accepted")
    checks.append("sorryAx rejected")

    unknown = verifier.audit_axioms(
      make_source("unknown-guard.lean", "#guard_msgs\n#print axioms hidden\n"),
      "",
    )
    require("error" in unknown, "unknown guard form accepted")
    checks.append("unknown guard rejected")

    b686 = repo / "research" / "tasks" / "B686-Four" / "round8" / "lean" / "BigPrimeSupport.lean"
    b686_result = verifier.audit_axioms(b686, "")
    require(b686_result["declared_print_axioms"] == 0, "B686 bare print count")
    require(b686_result["guarded_print_axioms"] == 4, "B686 guarded print count")
    require(b686_result["actual_printed"] == 0 and "error" not in b686_result, "B686 classification")
    checks.append("B686 guarded source: bare=0 guarded=4 actual=0")

    three_window = (
      repo
      / "research"
      / "tasks"
      / "B699-Binomial"
      / "runs"
      / "20260909-low-index-structure-b41a5a63"
      / "lean"
      / "ThreeWindowWeights.lean"
    )
    synthetic_output = "\n".join(["does not depend on any axioms"] * 7) + "\n"
    three_result = verifier.audit_axioms(three_window, synthetic_output)
    require(three_result["declared_print_axioms"] == 7, "ThreeWindow bare print count")
    require(three_result["guarded_print_axioms"] == 0, "ThreeWindow guarded print count")
    require(three_result["actual_printed"] == 7 and "error" not in three_result, "ThreeWindow classification")
    checks.append("ThreeWindowWeights source: bare=7 guarded=0 actual=7")

    result = {
      "status": "PASS",
      "lean_run": False,
      "temporary_root": ".tools/20260909-low-index-structure-b41a5a63/<removed>",
      "checks": checks,
      "B686": {
        "path": "research/tasks/B686-Four/round8/lean/BigPrimeSupport.lean",
        "declared_print_axioms": b686_result["declared_print_axioms"],
        "guarded_print_axioms": b686_result["guarded_print_axioms"],
        "actual_printed": b686_result["actual_printed"],
      },
      "ThreeWindowWeights": {
        "path": "research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean/ThreeWindowWeights.lean",
        "declared_print_axioms": three_result["declared_print_axioms"],
        "guarded_print_axioms": three_result["guarded_print_axioms"],
        "actual_printed": three_result["actual_printed"],
      },
    }
    print(json.dumps(result, ensure_ascii=False, sort_keys=True))
    return 0
  finally:
    shutil.rmtree(temp_root)


if __name__ == "__main__":
  raise SystemExit(main())


