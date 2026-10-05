#!/usr/bin/env python3
"""Bind original task and previous result bytes; no mathematical acceptance."""
from pathlib import Path
from hashlib import sha256
import argparse
import json
import zipfile


def digest(data: bytes) -> str:
    return sha256(data).hexdigest()


def audit(path: Path, manifest_name: str, path_key: str) -> dict:
    raw = path.read_bytes()
    with zipfile.ZipFile(path) as z:
        files = [n for n in z.namelist() if not n.endswith('/')]
        hits = [n for n in files if n.split('/')[-1] == manifest_name]
        if len(hits) != 1:
            raise ValueError(f'{path.name}: expected exactly one {manifest_name}')
        name = hits[0]
        prefix = name[:-len(manifest_name)]
        manifest = json.loads(z.read(name))
        rows = []
        covered = {name}
        for entry in manifest['members']:
            rel = entry[path_key]
            if rel.startswith('/') or '..' in Path(rel).parts:
                raise ValueError('unsafe manifest member path')
            member = prefix + rel
            data = z.read(member)
            if len(data) != entry['bytes'] or digest(data) != entry['sha256']:
                raise ValueError(f'hash/length mismatch: {member}')
            covered.add(member)
            rows.append({'member': rel, 'bytes': len(data), 'sha256': digest(data), 'ok': True})
        if covered != set(files):
            raise ValueError(f'unbound extra/missing files: {covered.symmetric_difference(files)}')
    return {'zip': path.name, 'bytes': len(raw), 'sha256': digest(raw),
            'manifest': name, 'checked_members': len(rows),
            'status': 'byte binding only; no mathematical acceptance', 'members': rows}


def main() -> None:
    p = argparse.ArgumentParser()
    p.add_argument('--original', type=Path, required=True)
    p.add_argument('--previous', type=Path, required=True)
    p.add_argument('--out', type=Path, required=True)
    a = p.parse_args()
    result = {'scope': 'original task plus previous result; no unrelated project material',
              'original': audit(a.original, 'CONTENTS.json', 'member'),
              'previous': audit(a.previous, 'MANIFEST.json', 'path')}
    a.out.write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n')
    print(json.dumps({k: {'sha256':result[k]['sha256'],
                        'checked_members':result[k]['checked_members']}
                      for k in ['original','previous']},ensure_ascii=False,indent=2))

if __name__ == '__main__':
    main()
