#!/usr/bin/env python3
"""Restore complete author environments from hash-identified original ZIPs."""
from pathlib import Path, PurePosixPath
import argparse
import hashlib
import json
import stat
import zipfile

ROOT = Path(__file__).resolve().parent

def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as f:
        for block in iter(lambda: f.read(1024 * 1024), b''):
            h.update(block)
    return h.hexdigest()

def safe_relative(name, prefix):
    if not name.startswith(prefix):
        raise ValueError('archive member outside declared root')
    rel = name[len(prefix):]
    p = PurePosixPath(rel)
    if not rel or '\\' in rel or p.is_absolute() or '..' in p.parts:
        raise ValueError('unsafe archive member path')
    return p

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--archives-dir', required=True, type=Path)
    ap.add_argument('--output', required=True, type=Path)
    args = ap.parse_args()
    if args.output.exists():
        raise SystemExit('Output must be a new isolated directory; refusing overwrite')
    manifest = json.loads((ROOT/'ARCHIVES.json').read_text())
    resolved = []
    for s in manifest['sources']:
        preferred = args.archives_dir/s['original_filename']
        candidates = [preferred] if preferred.is_file() else sorted(args.archives_dir.glob('*.zip'))
        matches = [p for p in candidates if p.stat().st_size == s['size_bytes'] and digest(p) == s['sha256']]
        if not matches:
            raise SystemExit('Missing or hash-mismatched source: '+s['original_filename'])
        path = matches[0]
        with zipfile.ZipFile(path) as z:
            infos = [i for i in z.infolist() if not i.is_dir()]
            if len({i.filename for i in infos}) != len(infos):
                raise SystemExit('Duplicate ZIP member')
            if {i.filename for i in infos} != {m['original_path'] for m in s['members']}:
                raise SystemExit('Source member inventory mismatch')
            for i in infos:
                safe_relative(i.filename, s['zip_root_prefix'])
                if stat.S_ISLNK(i.external_attr >> 16):
                    raise SystemExit('Symbolic link ZIP members are not supported')
        resolved.append((s, path))
    files = total = 0
    for s, path in resolved:
        with zipfile.ZipFile(path) as z:
            for m in s['members']:
                rel = safe_relative(m['original_path'], s['zip_root_prefix'])
                target = args.output/s['delivery_directory']/str(rel)
                data = z.read(m['original_path'])
                if len(data) != m['size_bytes'] or hashlib.sha256(data).hexdigest() != m['sha256']:
                    raise SystemExit('Member hash mismatch: '+m['original_path'])
                target.parent.mkdir(parents=True, exist_ok=True)
                with target.open('xb') as f:
                    f.write(data)
                files += 1
                total += len(data)
    print(json.dumps({'status':'PASS','restored_files':files,'restored_bytes':total,
                      'output':str(args.output.resolve()),'scope':'file bytes only; no mathematical execution'}))

if __name__ == '__main__':
    main()
