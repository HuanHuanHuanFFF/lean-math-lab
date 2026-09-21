"""Verify this archive's member bytes. This is not a mathematical proof checker."""
from __future__ import annotations
from hashlib import sha256
from pathlib import Path
import sys


def main() -> int:
    root = Path(__file__).resolve().parents[1]
    manifest = root / 'SHA256SUMS'
    if not manifest.is_file():
        print('FAIL: missing SHA256SUMS', file=sys.stderr)
        return 1
    seen: set[str] = set()
    failures: list[str] = []
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line:
            continue
        try:
            digest, name = line.split('  ', 1)
            rel = Path(name)
            if len(digest) != 64 or any(c not in '0123456789abcdef' for c in digest):
                raise ValueError('invalid digest')
            if rel.is_absolute() or '..' in rel.parts or name in seen:
                raise ValueError('unsafe or repeated member')
            seen.add(name)
            p = root / rel
            if p.is_symlink() or not p.is_file():
                raise ValueError('missing or symbolic member')
            if sha256(p.read_bytes()).hexdigest() != digest:
                failures.append(name + ': hash mismatch')
        except (ValueError, OSError) as exc:
            failures.append(str(exc))
    actual = {p.relative_to(root).as_posix() for p in root.rglob('*')
              if p.is_file() and p.name != 'SHA256SUMS' and '__pycache__' not in p.parts}
    if actual != seen:
        failures.append('Member inventory differs: ' + str(sorted(actual ^ seen)))
    if failures:
        print('FAIL\n' + '\n'.join(failures), file=sys.stderr)
        return 1
    print(f'PASS: {len(seen)} member SHA-256 digests and inventory verified; not a mathematical audit.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
