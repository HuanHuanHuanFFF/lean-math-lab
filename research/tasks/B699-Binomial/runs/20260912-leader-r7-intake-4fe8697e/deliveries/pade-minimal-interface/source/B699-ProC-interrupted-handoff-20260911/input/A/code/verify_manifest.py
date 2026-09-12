"""Check delivered bytes and the immutable input archive, not mathematical truth.

Run at any location with Python 3.9+. Runtime files under replay/, cache/ and
bin/ are allowed; additional files in mathematical/source directories are not.
"""
from pathlib import Path, PurePosixPath
import hashlib
import json
import sys

ROOT = Path(__file__).resolve().parents[1]
INPUT_PATH = 'originals/B699-R9-ABC-context.zip'
INPUT_SHA256 = 'a9b0ce24948d502f6e2c3dd0ea6cfe7dbb8cab78a852c0ce645720073e888a59'


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()


def main():
    manifest = json.loads((ROOT / 'MANIFEST.json').read_text(encoding='utf-8'))
    if manifest.get('schema') != 'b699-i10-delivery-manifest-v1':
        raise ValueError('Unsupported manifest schema')
    expected = set()
    checked_bytes = 0
    for row in manifest['files']:
        rel = row['path']
        clean = PurePosixPath(rel)
        if clean.is_absolute() or '..' in clean.parts or str(clean) != rel or rel in expected:
            raise ValueError('Unsafe, duplicate, or noncanonical path: ' + rel)
        expected.add(rel)
        path = ROOT / rel
        if not path.is_file() or path.is_symlink():
            raise ValueError('Missing/nonregular delivered file: ' + rel)
        if path.stat().st_size != row['bytes'] or digest(path) != row['sha256']:
            raise ValueError('Size/SHA-256 mismatch: ' + rel)
        checked_bytes += row['bytes']
    if INPUT_PATH not in expected or digest(ROOT / INPUT_PATH) != INPUT_SHA256:
        raise ValueError('Immutable frozen input not present with expected bytes')
    extras = []
    for path in ROOT.rglob('*'):
        if not path.is_file():
            continue
        rel = path.relative_to(ROOT).as_posix()
        if rel in expected or rel == 'MANIFEST.json':
            continue
        if rel.startswith(('replay/', 'cache/', 'bin/')) or '__pycache__' in path.parts or path.suffix == '.pyc':
            continue
        extras.append(rel)
    if extras:
        raise ValueError('Unexpected files: ' + ', '.join(sorted(extras)))
    print(json.dumps(dict(status='PASS_BYTES_ONLY_NOT_MATHEMATICAL_ACCEPTANCE',
                          files=len(expected), bytes=checked_bytes,
                          frozen_input_sha256=INPUT_SHA256,
                          extra_core_files=0), ensure_ascii=False, indent=2))


if __name__ == '__main__':
    if not __debug__:
        raise RuntimeError('Do not run with -O or -OO')
    main()
