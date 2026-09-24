"""Check complete archive-member provenance without running delivered code."""

import argparse
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path, PurePosixPath
import subprocess


HERE = Path(__file__).resolve().parent
ROOT = next(p for p in HERE.parents if (p / 'AGENTS.md').is_file())


def sha(path):
    with path.open('rb') as f:
        return hashlib.file_digest(f, 'sha256').hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check-originals', action='store_true')
    parser.add_argument('--check-index', action='store_true', help='Also require exact raw bytes in the Git index')
    parser.add_argument('--out', type=Path)
    args = parser.parse_args()
    manifest_path = HERE / 'MEMBERS.json'
    manifest = json.loads(manifest_path.read_text(encoding='utf-8'))
    archives = manifest['archives']
    checked, reached, active = {}, set(), set()
    entries = 0

    def walk(key):
        nonlocal entries
        if key in active:
            raise ValueError('Cyclic archive graph')
        if key in reached:
            return
        active.add(key)
        a = archives[key]
        assert key == a['sha256']
        for m in a['members']:
            if m['kind'] == 'directory':
                continue
            if m['kind'] == 'archive':
                child = archives[m['archive_sha256']]
                assert (child['sha256'], child['bytes']) == (m['sha256'], m['bytes'])
                walk(child['sha256'])
                continue
            assert m['kind'] == 'file'
            entries += 1
            p = (ROOT / m['retained_path']).resolve()
            assert p.is_relative_to(ROOT) and p.is_file()
            if p not in checked:
                checked[p] = (p.stat().st_size, sha(p))
            assert checked[p] == (m['bytes'], m['sha256']), str(p)
        active.remove(key)
        reached.add(key)

    originals = []
    for r in manifest['roots']:
        a = archives[r['sha256']]
        assert a['bytes'] == r['bytes']
        walk(r['sha256'])
        if args.check_originals:
            p = Path(r['source_path'])
            assert (p.stat().st_size, sha(p)) == (r['bytes'], r['sha256'])
            originals.append(r['label'])
    assert reached == set(archives), 'Unreachable archives'
    assert entries == manifest['summary']['ordinary_member_entries']
    ordinary = [m for a in archives.values() for m in a['members'] if m['kind'] == 'file']
    extracted = {m['retained_path']: m['bytes'] for m in ordinary
                 if m['storage'] == 'extracted_plain_file'}
    summary = manifest['summary']
    assert summary['new_plain_files'] == len(extracted)
    assert summary['new_plain_bytes'] == sum(extracted.values())
    assert summary['extracted_member_entries'] == sum(m['storage'] == 'extracted_plain_file' for m in ordinary)
    assert summary['reused_member_entries'] == sum(m['storage'] == 'exact_existing_file' for m in ordinary)
    payload_paths = {p.relative_to(ROOT).as_posix()
                     for dirname in ('sources', 'dependencies')
                     for p in (HERE / dirname).rglob('*') if p.is_file()}
    assert payload_paths == set(extracted), 'Unexpected or missing retained payload files'
    archive_suffixes = {'.zip', '.npz', '.7z', '.rar', '.tar', '.gz', '.bz2', '.xz', '.tgz', '.tbz2', '.txz'}
    unexpected = [str(p.relative_to(HERE)) for p in HERE.rglob('*')
                  if p.is_file() and p.suffix.lower() in archive_suffixes]
    assert not unexpected, unexpected
    git = ['git', '-c', f'safe.directory={ROOT.as_posix()}']
    tracked = subprocess.check_output(git + ['ls-files', '-z'], cwd=ROOT).split(b'\0')
    # Existing frozen NPZ numerical evidence is not a delivery package. Do not
    # migrate old proof artifacts as a side effect of receiving new deliveries.
    delivery_suffixes = archive_suffixes - {'.npz'}
    tracked_archives = [x.decode('utf-8') for x in tracked
                        if x and Path(x.decode('utf-8')).suffix.lower() in delivery_suffixes]
    assert not tracked_archives, tracked_archives
    if args.check_index:
        index = {}
        rows = subprocess.check_output(git + ['ls-files', '-s', '-z'], cwd=ROOT).split(b'\0')
        for row in rows:
            if not row:
                continue
            metadata, name = row.split(b'\t', 1)
            mode, blob, stage = metadata.split()
            assert stage == b'0', 'Unmerged index'
            index[name.decode('utf-8')] = blob.decode()
        for a in archives.values():
            for m in a['members']:
                if m['kind'] == 'file':
                    assert index.get(m['retained_path']) == m['git_blob'], m['retained_path']
    # Author checksum lists are checked against original member bytes, including
    # container records. Missing nested ZIP paths in the materialized tree are intentional.
    author_checksums = []
    for root in manifest['roots']:
        members = archives[root['sha256']]['members']
        lookup = {m['original_path']: m for m in members if m['kind'] != 'directory'}

        def resolve_author_member(name, prefix):
            name = str(PurePosixPath(name.lstrip('*')))
            target = lookup.get(name) or lookup.get(str(PurePosixPath(prefix) / name))
            if target is None and '/' not in name:
                matches = [m for path, m in lookup.items() if PurePosixPath(path).name == name]
                if len(matches) == 1:
                    target = matches[0]
            assert target, name
            return target

        # Only the outer delivery manifest is an intake-level checksum list.
        # Original per-stage manifests are preserved without changing their scope.
        outer = [m for m in members if m['kind'] == 'file'
                 and (len(PurePosixPath(m['original_path']).parts) <= 2
                      or (root['label'] == 'D-i3' and PurePosixPath(m['original_path']).parts[-2:] == ('meta', 'TOTAL_SHA256SUMS.txt')))]
        checksums = [m for m in outer if Path(m['original_path']).name in ('SHA256SUMS', 'SHA256SUMS.txt', 'MANIFEST.sha256', 'MASTER_SHA256SUMS', 'MASTER_SHA256SUMS.txt', 'TOTAL_SHA256SUMS.txt')]
        for c in checksums:
            prefix_path = PurePosixPath(c['original_path']).parent
            if prefix_path.name == 'meta' and Path(c['original_path']).name == 'TOTAL_SHA256SUMS.txt':
                prefix_path = prefix_path.parent
            prefix = str(prefix_path)
            count = 0
            for line in (ROOT / c['retained_path']).read_text(encoding='utf-8').splitlines():
                if not line.strip():
                    continue
                expected, name = line.split(maxsplit=1)
                target = resolve_author_member(name, prefix)
                assert target['sha256'] == expected, name
                count += 1
            author_checksums.append({'package': root['label'], 'list': c['original_path'], 'entries': count})
        for c in outer:
            if c['kind'] != 'file' or Path(c['original_path']).name != 'MANIFEST.json':
                continue
            content = json.loads((ROOT / c['retained_path']).read_text(encoding='utf-8'))
            if 'files' not in content:
                continue
            prefix = str(Path(c['original_path']).parent).replace('\\', '/')
            files = content['files']
            records = files.items() if isinstance(files, dict) else ((m['path'], m) for m in files)
            for name, expected in records:
                target = resolve_author_member(name, prefix)
                if isinstance(expected, str):
                    assert target['sha256'] == expected, name
                    continue
                size = expected.get('bytes', expected.get('size'))
                assert size is not None, name
                assert (target['sha256'], target['bytes']) == (expected['sha256'], size), name
            author_checksums.append({'package': root['label'], 'list': c['original_path'], 'entries': len(content['files'])})
    result = {'status': 'PASS', 'checked_utc': datetime.now(timezone.utc).isoformat(),
              'manifest_sha256': sha(manifest_path), 'unique_archive_containers': len(reached),
              'ordinary_member_entries': entries, 'unique_retained_paths': len(checked),
              'originals_verified': originals, 'author_checksum_lists': author_checksums,
              'git_index_raw_bytes_verified': args.check_index,
              'archive_files_in_intake': 0, 'tracked_archive_files': 0,
              'boundary': 'File integrity and navigation only; no mathematical replay or Lean verification.'}
    if args.out:
        args.out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8', newline='\n')
    print(json.dumps(result, ensure_ascii=False))


if __name__ == '__main__':
    main()
