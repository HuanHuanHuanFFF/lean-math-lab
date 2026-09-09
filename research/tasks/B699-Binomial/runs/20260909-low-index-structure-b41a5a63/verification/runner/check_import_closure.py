#!/usr/bin/env python3
"""Read-only closure check for the nested-worktree source-index fix.

This check resolves the selected Lean root and its project import closure but
does not invoke Lean, Lake, package Git checks, or compilation.
"""

from __future__ import annotations

import argparse
import importlib.util
import sys
from pathlib import Path


def load_verifier():
  path = Path(__file__).with_name("verify.py")
  spec = importlib.util.spec_from_file_location("b699_closure_probe", path)
  if spec is None or spec.loader is None:
    raise RuntimeError(f"cannot load verifier: {path}")
  module = importlib.util.module_from_spec(spec)
  sys.modules[spec.name] = module
  spec.loader.exec_module(module)
  return module


def repo_relative_source_index(verifier, repo: Path):
  index = {}
  ignored = {".git", ".lake", ".tools"}
  for root_name in verifier.PROJECT_PREFIXES:
    root = repo / root_name
    if not root.is_dir():
      continue
    for path in root.rglob("*.lean"):
      relative = path.resolve().relative_to(repo.resolve())
      if any(part in ignored for part in relative.parts):
        continue
      module = verifier.module_name_for_path(path, repo)
      index.setdefault(module, []).append(path.resolve())
  return index


def main() -> int:
  parser = argparse.ArgumentParser(description=__doc__)
  parser.add_argument("--project-root", type=Path, required=True)
  parser.add_argument("--root", type=Path, required=True)
  args = parser.parse_args()
  verifier = load_verifier()
  repo = args.project_root.resolve()
  root = args.root
  if not root.is_absolute():
    root = (repo / root).resolve()
  if not root.is_file() or root.suffix != ".lean":
    raise verifier.VerificationFailure(f"root is not a Lean source file: {root}")
  index = repo_relative_source_index(verifier, repo)
  manifest = verifier.load_manifest(repo)
  prefixes = verifier.package_prefixes(manifest)
  closure, imports = verifier.build_closure(
    [root], repo=repo, index=index, package_prefixes=prefixes
  )
  modules = {reference.module for reference in closure}
  target = "research.tasks.B699-Binomial.runs.20260909-large-prime-structure-cb4764f0.lean.SmallPartBound"
  if target not in modules:
    raise verifier.VerificationFailure(f"expected prior consumer dependency not found: {target}")
  if not any(".tools" in str(path) for path in index.get(target, [])):
    raise verifier.VerificationFailure("probe did not exercise a nested .tools worktree path")
  print(
    "PASS repository-relative source index: "
    f"root={verifier.relpath(root, repo)} closure={len(closure)} "
    f"imports={sum(len(value) for value in imports.values())} resolved={target}"
  )
  return 0


if __name__ == "__main__":
  raise SystemExit(main())
