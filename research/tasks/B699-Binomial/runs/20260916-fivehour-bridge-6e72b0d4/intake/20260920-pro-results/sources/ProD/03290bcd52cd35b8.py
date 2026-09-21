#!/usr/bin/env python3
"""Check the fixed file set and SHA256 manifest. Uses standard library only."""
from __future__ import annotations
import hashlib
from pathlib import Path
import sys


def main() -> int:
    root = Path(__file__).resolve().parents[1]
    manifest = root / 'SHA256SUMS'
    if not manifest.is_file():
        print('FAIL: missing SHA256SUMS', file=sys.stderr)
        return 1
    expected = {}
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line.strip():
            continue
        digest, relative = line.split('  ', 1)
        path = Path(relative)
        if len(digest) != 64 or path.is_absolute() or '..' in path.parts:
            raise ValueError('Invalid manifest record')
        if relative in expected:
            raise ValueError('Duplicate manifest record')
        expected[relative] = digest
    errors = []
    for relative, digest in expected.items():
        path = root / relative
        if not path.is_file():
            errors.append(f'missing {relative}')
        elif hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            errors.append(f'changed {relative}')
    actual = {str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()
              and p != manifest and '__pycache__' not in p.parts}
    for extra in sorted(actual - expected.keys()):
        errors.append(f'unlisted {extra}')
    if errors:
        print('FAIL: ' + '; '.join(errors), file=sys.stderr)
        return 1
    print(f'PASS: {len(expected)} files, exact SHA256 manifest and file set')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
