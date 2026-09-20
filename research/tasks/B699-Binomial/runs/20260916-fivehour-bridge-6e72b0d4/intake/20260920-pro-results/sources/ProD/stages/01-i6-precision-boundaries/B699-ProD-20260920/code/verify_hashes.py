#!/usr/bin/env python3
"""Verify byte integrity of the packaged files; this is not a mathematical verifier."""
from __future__ import annotations
from pathlib import Path
import hashlib
import sys


def main() -> int:
    root = Path(__file__).resolve().parent.parent
    manifest = root / 'SHA256SUMS'
    if not manifest.is_file():
        print('Missing SHA256SUMS', file=sys.stderr)
        return 1
    failures: list[str] = []
    count = 0
    for line in manifest.read_text(encoding='utf-8').splitlines():
        expected, relative = line.split('  ', 1)
        target = (root / relative).resolve()
        if not target.is_relative_to(root) or not target.is_file():
            failures.append(relative + ': missing or invalid path')
            continue
        actual = hashlib.sha256(target.read_bytes()).hexdigest()
        if actual != expected:
            failures.append(relative + ': SHA256 mismatch')
        count += 1
    for failure in failures:
        print(failure, file=sys.stderr)
    if failures:
        return 1
    print(f'PASS: {count} file SHA256 hashes verified. This does not verify mathematical claims.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
