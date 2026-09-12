#!/usr/bin/env python3
"""Restore deduplicated historical files without overwriting local changes."""
import argparse
import hashlib
import json
import re
import subprocess
from pathlib import Path, PurePosixPath

MANIFEST = 'research/shared/20260912-artifact-dedup-c8c256bc/duplicates.json'


def safe_path(root, name):
    path = PurePosixPath(name)
    if not name or path.is_absolute() or '..' in path.parts or '\\' in name or ':' in name:
        raise ValueError(f'Unsafe repository path: {name}')
    result = root.joinpath(*path.parts)
    # Reject symlinks even when they resolve inside the repository.
    current = root
    for part in path.parts:
        current = current / part
        if current.is_symlink():
            raise ValueError(f'Symlink in artifact path: {name}')
    if not result.resolve().is_relative_to(root.resolve()):
        raise ValueError(f'Path escapes repository: {name}')
    return result


def blob_id(data):
    return hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest()


def original_bytes(repo, source_commit, group):
    source = safe_path(repo, group['canonical'])
    if source.is_file():
        data = source.read_bytes()
        if len(data) == group['size'] and blob_id(data) == group['git_blob']:
            return data
    # Handles edited canonical files and Windows CRLF checkout conversion.
    result = subprocess.run(
        ['git', '-C', str(repo), 'show', f"{source_commit}:{group['canonical']}"],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, check=False)
    if result.returncode:
        raise ValueError('Exact source unavailable; fetch the manifest source commit, then retry: '
                         + group['canonical'])
    data = result.stdout
    if len(data) != group['size'] or blob_id(data) != group['git_blob']:
        raise ValueError('Source hash mismatch: ' + group['canonical'])
    return data


def restore(repo, manifest, prefix='', check=False):
    commit = manifest['source_commit']
    if manifest.get('schema_version') != 1 or not re.fullmatch(r'[0-9a-f]{40}', commit):
        raise ValueError('Unsupported manifest or invalid source commit')
    groups = manifest['groups']
    paths = [p for group in groups for p in group['duplicates']]
    if len(set(paths)) != len(paths):
        raise ValueError('Duplicate destinations in manifest')
    removed = set(paths)
    for group in groups:
        if group['canonical'] in removed or not re.fullmatch(r'[0-9a-f]{40}', group['git_blob']):
            raise ValueError('Invalid canonical mapping')
        safe_path(repo, group['canonical'])
        for name in group['duplicates']:
            safe_path(repo, name)
    selected = [(g, [p for p in g['duplicates'] if not prefix or p == prefix or p.startswith(prefix.rstrip('/') + '/')])
                for g in groups]
    selected = [(g, paths) for g, paths in selected if paths]
    if prefix and not selected:
        raise ValueError('No mapped artifacts match the requested prefix')
    stats = {'selected': sum(len(paths) for _, paths in selected), 'existing': 0, 'missing': 0, 'restored': 0}
    # Preflight all destinations before writing any file.
    for group, names in selected:
        original_bytes(repo, commit, group)
        for name in names:
            dest = safe_path(repo, name)
            if dest.exists():
                if not dest.is_file() or blob_id(dest.read_bytes()) != group['git_blob']:
                    raise ValueError('Refusing to overwrite different existing content: ' + name)
                stats['existing'] += 1
            else:
                stats['missing'] += 1
    if check:
        return stats
    for group, names in selected:
        data = original_bytes(repo, commit, group)
        for name in names:
            dest = safe_path(repo, name)
            if dest.exists():
                continue
            dest.parent.mkdir(parents=True, exist_ok=True)
            # Exclusive creation also protects files created after preflight.
            with dest.open('xb') as stream:
                stream.write(data)
            stats['restored'] += 1
    return stats


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo', type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument('--manifest', default=MANIFEST, help='Repository-relative exact-byte reuse manifest')
    parser.add_argument('--prefix', default='', help='Exact old file path or directory; default: all mapped files')
    parser.add_argument('--check', action='store_true', help='Check byte availability and existing files without writing')
    args = parser.parse_args()
    repo = args.repo.resolve()
    manifest = json.loads(safe_path(repo, args.manifest).read_text(encoding='utf-8'))
    try:
        print(json.dumps(restore(repo, manifest, args.prefix, args.check), sort_keys=True))
    except (ValueError, OSError) as error:
        parser.exit(1, str(error) + '\n')


if __name__ == '__main__':
    main()
