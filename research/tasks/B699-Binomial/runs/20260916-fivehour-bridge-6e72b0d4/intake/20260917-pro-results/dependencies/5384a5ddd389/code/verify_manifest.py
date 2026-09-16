#!/usr/bin/env python3
"""Verify every shipped file, excluding only the manifest and Python bytecode."""
from __future__ import annotations
from pathlib import Path
from hashlib import sha256
import json

ROOT = Path(__file__).resolve().parents[1]


def eligible_files(root: Path) -> dict[str, Path]:
    return {
        p.relative_to(root).as_posix(): p
        for p in root.rglob('*')
        if p.is_file()
        and '__pycache__' not in p.parts
        and p.suffix != '.pyc'
        and p.relative_to(root).as_posix() != 'MANIFEST.json'
    }


def verify(root: Path = ROOT) -> dict:
    root = root.resolve()
    document = json.loads((root / 'MANIFEST.json').read_text(encoding='utf-8'))
    if document.get('schema') != 'b699-file-manifest-v1':
        raise ValueError('Unexpected manifest schema')
    actual = eligible_files(root)
    expected = document['files']
    if set(actual) != set(expected):
        raise ValueError(
            f'Member mismatch: missing={sorted(set(expected)-set(actual))}, '
            f'extra={sorted(set(actual)-set(expected))}'
        )
    total_bytes = 0
    for name, path in sorted(actual.items()):
        content = path.read_bytes()
        entry = expected[name]
        if len(content) != entry['bytes'] or sha256(content).hexdigest() != entry['sha256']:
            raise ValueError(f'Hash or size mismatch: {name}')
        total_bytes += len(content)
    return {
        'status': 'PASS_MANIFEST',
        'bound_files': len(actual),
        'bound_bytes': total_bytes,
        'manifest_sha256': sha256((root / 'MANIFEST.json').read_bytes()).hexdigest(),
    }


if __name__ == '__main__':
    print(json.dumps(verify(), sort_keys=True))
