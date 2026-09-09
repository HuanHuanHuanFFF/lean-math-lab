#!/usr/bin/env python3
"""Fresh verifier entry point with repository-relative source filtering.

The underlying strict verifier is loaded from ``verify.py``. This entry point
fixes the Windows nested-worktree case by filtering ``.git``, ``.lake`` and
``.tools`` only after paths are made relative to the repository root. It also
keeps the short ignored output root used by ``verify_short.py``.
"""

from __future__ import annotations

import importlib.util
import sys
from datetime import datetime, timezone
from pathlib import Path


def load_verifier():
  path = Path(__file__).with_name("verify.py")
  spec = importlib.util.spec_from_file_location("b699_fresh_verify_repo_relative", path)
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


def short_allocate_outputs(repo: Path, run_dir: Path):
  public_parent = run_dir / "verification"
  raw_parent = repo / ".tools" / "b699-b41a5a63" / "verification"
  public_parent.mkdir(parents=True, exist_ok=True)
  raw_parent.mkdir(parents=True, exist_ok=True)
  base = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
  for suffix in ("", *[f"-{index:02d}" for index in range(1, 1000)]):
    stamp = base + suffix
    public_root = public_parent / stamp
    raw_root = raw_parent / stamp
    if public_root.exists() or raw_root.exists():
      continue
    try:
      public_root.mkdir()
      raw_root.mkdir()
    except FileExistsError:
      continue
    (public_root / "logs").mkdir()
    (raw_root / "logs").mkdir()
    (raw_root / "tmp").mkdir()
    (raw_root / "olean").mkdir()
    return public_root, raw_root, stamp
  raise RuntimeError("could not allocate a fresh short-path timestamped output")


def main() -> int:
  verifier = load_verifier()
  verifier.build_source_index = lambda repo: repo_relative_source_index(verifier, repo)
  verifier.allocate_outputs = short_allocate_outputs
  return verifier.main()


if __name__ == "__main__":
  raise SystemExit(main())
