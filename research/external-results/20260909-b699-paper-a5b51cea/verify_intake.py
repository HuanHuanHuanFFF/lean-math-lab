#!/usr/bin/env python3
"""Verify frozen intake bytes, source manifests, scope and navigation only."""
from pathlib import Path
import datetime
import hashlib
import json
import re
import subprocess
import zipfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def git(*args):
    return subprocess.check_output(['git', *args], cwd=ROOT)


def main():
    manifest = json.loads((HERE / 'manifest.json').read_text())
    counts = {}
    for category in ('originals', 'extracted_members', 'prior_review_snapshots'):
        for row in manifest[category]:
            assert sha256((ROOT / row['path']).read_bytes()) == row['sha256'], row['path']
        counts[category] = len(manifest[category])
    source_counts = {}
    for original in manifest['originals']:
        rows = [row for row in manifest['extracted_members'] if row['archive_id'] == original['id']]
        with zipfile.ZipFile(ROOT / original['path']) as z:
            actual = [i.filename for i in z.infolist() if not i.is_dir()]
            assert len(actual) == len(set(actual))
            assert set(actual) == {row['zip_member'] for row in rows}
            for row in rows:
                assert z.read(row['zip_member']) == (ROOT / row['path']).read_bytes()
            count = 0
            for line in z.read(original['source_manifest_member']).decode().splitlines():
                if not line.strip():
                    continue
                sha, member = line.split(maxsplit=1)
                member = member.lstrip('*')
                if not member.startswith(original['zip_prefix']):
                    member = original['zip_prefix'] + member
                assert sha256(z.read(member)) == sha, member
                count += 1
            source_counts[original['id']] = count
    edited = {'research/external-results/README.md', 'research/tasks/B699-Binomial/README.md'}
    preserved = 0
    for row in git('ls-tree', '-rz', manifest['base_main']).split(b'\0'):
        if not row:
            continue
        metadata, rawpath = row.split(b'\t', 1)
        mode, kind, sha = metadata.decode().split()
        path = rawpath.decode()
        if kind != 'blob' or path in edited:
            continue
        data = (ROOT / path).read_bytes()
        assert hashlib.sha1(b'blob ' + str(len(data)).encode() + b'\0' + data).hexdigest() == sha, path
        preserved += 1
    changed = set(git('diff', '--name-only', manifest['base_main']).decode().splitlines())
    changed.update(git('ls-files', '--others', '--exclude-standard').decode().splitlines())
    allowed = manifest['runs'] + [str(HERE.relative_to(ROOT))]
    assert all(p in edited or any(p.startswith(a + '/') for a in allowed) for p in changed)
    assert not any(p.endswith('.lean') and '/delivery/' not in p for p in changed)
    links = 0
    for path in list(edited) + manifest['navigation_documents']:
        doc = ROOT / path
        for target in re.findall(r'\]\(([^)]+)\)', doc.read_text()):
            if target.startswith(('https://', 'http://', '#', 'mailto:')):
                continue
            dest = (doc.parent / target.split('#', 1)[0]).resolve()
            if dest == HERE / 'integration-checks.json':
                continue
            assert dest.exists(), (path, target)
            links += 1
    record = {
        'status': 'PASS', 'checked_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'base_main': manifest['base_main'], 'hashes_checked': counts,
        'original_source_manifest_entries': source_counts,
        'base_files_preserved_except_two_indices': preserved,
        'changed_or_new_paths_in_scope': len(changed), 'navigation_links_checked': links,
        'lean_run': False, 'mathematical_recomputation': False,
        'acceptance': 'Archive integrity and navigation only; prior replay retained separately; new mathematics remains unformalized.',
    }
    (HERE / 'integration-checks.json').write_text(json.dumps(record, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps(record, ensure_ascii=False, indent=2))


if __name__ == '__main__':
    main()
