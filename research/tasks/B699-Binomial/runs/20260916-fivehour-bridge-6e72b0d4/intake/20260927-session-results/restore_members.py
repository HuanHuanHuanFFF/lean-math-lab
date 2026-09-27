"""Restore ordinary files from one frozen container, without executing them.

Defaults to a dry run. Original ZIP bytes stay in the external downloaded
parent archives. This tool does not recompress or recreate those ZIP bytes.
"""
import argparse, hashlib, json
from pathlib import Path, PurePosixPath, PureWindowsPath

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--archive', required=True, help='Unique container SHA-256 prefix')
    ap.add_argument('--destination', type=Path, required=True)
    ap.add_argument('--write', action='store_true')
    args = ap.parse_args()
    base = Path(__file__).resolve().parent
    data = json.loads((base / 'MEMBERS.json').read_text(encoding='utf-8'))
    matches = [c for c in data['containers'] if c['sha256'].startswith(args.archive)]
    if len(matches) != 1:
        raise SystemExit('Select exactly one container SHA-256 prefix.')
    target_root = args.destination.resolve()
    if target_root == base or base in target_root.parents or target_root in base.parents:
        raise SystemExit('Choose a separate scratch directory, not the intake or its ancestor.')
    planned = []
    skipped = 0
    for row in data['members']:
        if row['archive_sha256'] != matches[0]['sha256']:
            continue
        if row['kind'] != 'ordinary':
            skipped += row['kind'] == 'archive'
            continue
        name = row['name'].replace('\\', '/')
        parts = PurePosixPath(name)
        if parts.is_absolute() or PureWindowsPath(name).drive or '..' in parts.parts or '.git' in parts.parts:
            raise SystemExit('Unsafe original path: ' + name)
        target = (target_root / name).resolve()
        if not target.is_relative_to(target_root):
            raise SystemExit('Path escapes destination: ' + name)
        payload = (base / row['retained_path']).read_bytes()
        if len(payload) != row['size'] or hashlib.sha256(payload).hexdigest() != row['sha256']:
            raise SystemExit('Retained bytes changed: ' + name)
        if target.exists() and (not target.is_file() or target.read_bytes() != payload):
            raise SystemExit('Refusing to overwrite different existing content: ' + name)
        planned.append((target, row['retained_path']))
    if args.write:
        for target, retained in planned:
            target.parent.mkdir(parents=True, exist_ok=True)
            if not target.exists():
                target.write_bytes((base / retained).read_bytes())
    print(json.dumps({'mode': 'restored' if args.write else 'dry-run', 'ordinary_files': len(planned), 'nested_archives_not_recreated': skipped, 'source_programs_executed': False}))

if __name__ == '__main__':
    main()
