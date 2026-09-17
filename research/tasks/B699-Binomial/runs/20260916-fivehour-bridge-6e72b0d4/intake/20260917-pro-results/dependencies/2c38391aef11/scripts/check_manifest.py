#!/usr/bin/env python3
"""Check exact delivered bytes. This is an integrity check, not a proof checker."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--root', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--allow-extra', action='store_true')
    args = parser.parse_args()
    root = args.root.resolve()
    data = json.loads((root/'MANIFEST.json').read_text(encoding='utf-8'))
    if data.get('schema') != 'b699-proe-thin9-file-manifest-v1':
        raise ValueError('Unrecognized manifest schema')
    expected = set()
    total = 0
    for row in data['files']:
        path = Path(row['path'])
        if path.is_absolute() or '..' in path.parts:
            raise ValueError('Unsafe manifest path')
        if row['path'] in expected:
            raise ValueError('Duplicate manifest entry')
        expected.add(row['path'])
        raw = (root/path).read_bytes()
        if len(raw) != row['bytes'] or hashlib.sha256(raw).hexdigest() != row['sha256']:
            raise ValueError('Byte mismatch: '+row['path'])
        total += len(raw)
    actual = {p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()
              and '__pycache__' not in p.parts and p.suffix != '.pyc'
              and p != root/'MANIFEST.json'}
    if not args.allow_extra and actual != expected:
        raise ValueError('File set differs: '+str(sorted(actual ^ expected)))
    print(json.dumps({'status':'PASS_FILE_INTEGRITY','files':len(expected),'bytes':total,
                      'scope':'Delivered file integrity only; not mathematical acceptance.'},ensure_ascii=False))

if __name__ == '__main__':
    main()
