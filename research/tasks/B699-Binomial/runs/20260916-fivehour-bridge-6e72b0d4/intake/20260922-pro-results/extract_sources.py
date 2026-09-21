"""Archive intake only: verify bytes, recursively unpack, reuse exact tracked files.

Does not import or execute any delivered source. Run from the repository root.
Original archives and temporary archive streams stay outside the checkout.
"""

import argparse
from collections import defaultdict
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import shutil
import stat
import subprocess
import tempfile
import zipfile


HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / 'AGENTS.md').is_file())
PACKAGES = {
    'ProA': 'B699-ProA-session-20260922-complete-evidence.zip',
    'D-i3': 'B699-D-i3-20260922-session-complete-evidence.zip',
    'B-i3': 'B699-B-i3-session-complete-20260922.zip',
    'ProD': 'B699-ProD-session-evidence-2026-09-22.zip',
}


def digest(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()


def rel(path):
    return path.relative_to(ROOT).as_posix()


def safe_name(name):
    p = PurePosixPath(name)
    if p.is_absolute() or any(x in ('..', '') for x in p.parts):
        raise ValueError(f'Unsafe member: {name}')
    if '\\' in name or ':' in name or any(x.endswith(('.', ' ')) for x in p.parts):
        raise ValueError(f'Unsafe Windows member: {name}')
    return p


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source-dir', type=Path, required=True)
    parser.add_argument('--temp-dir', type=Path, required=True)
    args = parser.parse_args()
    args.temp_dir.mkdir(parents=True, exist_ok=True)
    if args.temp_dir.resolve().is_relative_to(ROOT):
        raise ValueError('Temporary archive streams must stay outside the checkout')
    git = ['git', '-c', f'safe.directory={ROOT.as_posix()}']
    baseline = subprocess.check_output(git + ['rev-parse', 'HEAD'], cwd=ROOT, text=True).strip()
    entries = subprocess.check_output(git + ['ls-files', '-s', '-z'], cwd=ROOT).split(b'\0')
    blobs = defaultdict(list)
    for entry in entries:
        if not entry:
            continue
        metadata, filename = entry.split(b'\t', 1)
        mode, blob, stage = metadata.split()
        if mode in (b'100644', b'100755') and stage == b'0':
            blobs[blob.decode()].append(filename.decode('utf-8'))
    archives, roots, kept = {}, [], {}
    totals = {'new_plain_files': 0, 'new_plain_bytes': 0, 'reused_member_entries': 0}

    def walk(stream, sha, size, display, top=None):
        if sha in archives:
            return sha
        record = {'sha256': sha, 'bytes': size, 'original_name': display, 'members': []}
        archives[sha] = record
        with zipfile.ZipFile(stream) as z:
            infos = z.infolist()
            names = [safe_name(i.filename) for i in infos if not i.is_dir()]
            first = {p.parts[0] for p in names}
            strip = len(first) == 1 and all(len(p.parts) > 1 for p in names)
            seen = set()
            for info in infos:
                p = safe_name(info.filename)
                folded = info.filename.casefold()
                if folded in seen or stat.S_ISLNK(info.external_attr >> 16):
                    raise ValueError(f'Duplicate or symlink member: {info.filename}')
                seen.add(folded)
                if info.is_dir():
                    record['members'].append({'original_path': info.filename, 'kind': 'directory'})
                    continue
                m = {'original_path': info.filename, 'bytes': info.file_size}
                record['members'].append(m)
                if p.suffix.lower() in ('.zip', '.npz'):
                    with tempfile.TemporaryFile(dir=args.temp_dir) as child:
                        with z.open(info) as src:
                            shutil.copyfileobj(src, child, length=2**20)
                        child.seek(0)
                        child_sha = hashlib.file_digest(child, 'sha256').hexdigest()
                        child.seek(0)
                        m.update(kind='archive', sha256=child_sha, archive_sha256=child_sha)
                        walk(child, child_sha, info.file_size, info.filename)
                    continue
                if p.suffix.lower() in ('.7z', '.rar', '.gz', '.bz2', '.xz', '.tar', '.tgz'):
                    raise ValueError(f'Unsupported archive requires explicit extraction: {info.filename}')
                data = z.read(info)  # zipfile also checks CRC; bounded to one ordinary member
                sha_file = hashlib.sha256(data).hexdigest()
                blob = hashlib.sha1(f'blob {len(data)}\0'.encode() + data).hexdigest()
                m.update(kind='file', sha256=sha_file, git_blob=blob)
                canonical = None
                # Keep small current documents structurally complete; dedup large payloads and dependencies.
                if top is None or len(data) >= 100000:
                    canonical = kept.get(sha_file)
                    if canonical is None:
                        for candidate in blobs.get(blob, []):
                            path = ROOT / candidate
                            if path.is_file() and path.stat().st_size == len(data) and digest(path) == sha_file:
                                canonical = candidate
                                break
                if canonical:
                    totals['reused_member_entries'] += 1
                    m.update(retained_path=canonical, storage='exact_existing_file')
                else:
                    parts = p.parts[1:] if strip else p.parts
                    base = HERE / 'sources' / top if top else HERE / 'dependencies' / sha[:12]
                    dest = base.joinpath(*parts)
                    if len(str(dest)) > 245:
                        dest = base / f'{sha_file[:16]}{p.suffix}'
                    if dest.exists():
                        if digest(dest) != sha_file:
                            raise ValueError(f'Refusing different existing file: {dest}')
                    else:
                        dest.parent.mkdir(parents=True, exist_ok=True)
                        dest.write_bytes(data)
                    totals['new_plain_files'] += 1
                    totals['new_plain_bytes'] += len(data)
                    canonical = rel(dest)
                    m.update(retained_path=canonical, storage='extracted_plain_file')
                kept[sha_file] = canonical
        return sha

    for label, filename in PACKAGES.items():
        path = args.source_dir / filename
        sha = digest(path)
        roots.append({'label': label, 'source_path': path.as_posix(), 'sha256': sha,
                      'bytes': path.stat().st_size})
        with path.open('rb') as stream:
            walk(stream, sha, path.stat().st_size, filename, top=label)
    # Long-name shortening can map several identical source members to one path.
    # Count distinct retained payload files separately from member occurrences.
    totals['extracted_member_entries'] = totals.pop('new_plain_files')
    totals['extracted_member_bytes'] = totals.pop('new_plain_bytes')
    extracted = {m['retained_path']: m['bytes']
                 for a in archives.values() for m in a['members']
                 if m['kind'] == 'file' and m['storage'] == 'extracted_plain_file'}
    totals['new_plain_files'] = len(extracted)
    totals['new_plain_bytes'] = sum(extracted.values())
    manifest = {'schema': 1, 'created_utc': datetime.now(timezone.utc).isoformat(),
                'source_baseline': baseline, 'roots': roots, 'archives': archives,
                'summary': {**totals, 'unique_archive_containers': len(archives),
                            'ordinary_member_entries': sum(m['kind'] == 'file' for a in archives.values() for m in a['members'])},
                'boundary': 'Byte intake only; delivered code was not executed; no new mathematical acceptance.'}
    (HERE / 'MEMBERS.json').write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + '\n', encoding='utf-8', newline='\n')
    print(json.dumps(manifest['summary'], ensure_ascii=False))


if __name__ == '__main__':
    main()
