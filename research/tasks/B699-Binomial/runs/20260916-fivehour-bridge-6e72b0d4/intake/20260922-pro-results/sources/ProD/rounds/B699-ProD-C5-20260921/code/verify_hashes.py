#!/usr/bin/env python3
"""Verify SHA256SUMS for the C5 evidence directory."""
from __future__ import annotations

import hashlib
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "SHA256SUMS"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1 << 20), b""):
            h.update(chunk)
    return h.hexdigest()


def main() -> None:
    failures: list[str] = []
    checked = 0
    for line in MANIFEST.read_text(encoding="utf-8").splitlines():
        if not line.strip():
            continue
        expected, rel = line.split("  ", 1)
        path = ROOT / rel
        if not path.is_file():
            failures.append(f"MISSING {rel}")
            continue
        actual = sha256(path)
        checked += 1
        if actual != expected:
            failures.append(f"MISMATCH {rel}: {actual} != {expected}")
    if failures:
        raise SystemExit("\n".join(failures))
    print(f"PASS: {checked} files match SHA256SUMS")


if __name__ == "__main__":
    main()
