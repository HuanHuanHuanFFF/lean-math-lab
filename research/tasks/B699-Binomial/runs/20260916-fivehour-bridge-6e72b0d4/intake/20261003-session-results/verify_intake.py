"""Administrative integrity checks only; does not run archived research code."""
import argparse, ast, hashlib, io, json, re, tarfile, zipfile
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote

class TarEntry:
    def __init__(self, member):
        self.member = member
        self.filename = member.name
    def is_dir(self):
        return self.member.isdir()

class TarArchive:
    def __init__(self, archive):
        self.archive = archive
    def infolist(self):
        return [TarEntry(m) for m in self.archive.getmembers()]
    def read(self, entry):
        with self.archive.extractfile(entry.member) as stream:
            return stream.read()

def digest(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()

def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--downloads', type=Path, help='Optional original ZIP directory')
    ap.add_argument('--output', type=Path, help='New verification receipt path')
    args = ap.parse_args()
    base = Path(__file__).resolve().parent
    data = json.loads((base / 'MEMBERS.json').read_text(encoding='utf-8'))
    errors = []
    for h, obj in data['objects'].items():
        path = base / obj['path']
        if not path.is_file() or path.stat().st_size != obj['size'] or digest(path) != h:
            errors.append('object: ' + obj['path'])
    ordinary = [row for row in data['members'] if row['kind'] == 'ordinary']
    for row in ordinary:
        obj = data['objects'].get(row['sha256'])
        if obj is None or obj['path'] != row['retained_path'] or obj['size'] != row['size']:
            errors.append('member: ' + row['name'])
    container_map = {c['sha256']: c for c in data['containers']}
    containers = set(container_map)
    for row in data['members']:
        if row['archive_sha256'] not in containers or (row['kind'] == 'archive' and row['sha256'] not in containers):
            errors.append('container mapping: ' + row['name'])
    roots_checked = 0
    containers_replayed = set()
    original_members_replayed = 0
    def replay(archive, archive_hash):
        nonlocal original_members_replayed
        if archive_hash in containers_replayed:
            return
        containers_replayed.add(archive_hash)
        expected = {r['index']: r for r in data['members'] if r['archive_sha256'] == archive_hash}
        infos = archive.infolist()
        if len(infos) != len(expected):
            errors.append('original entry count: ' + archive_hash)
        for index, info in enumerate(infos):
            row = expected.get(index)
            if row is None or row['name'] != info.filename:
                errors.append('original member path: ' + archive_hash + ':' + str(index))
                continue
            original_members_replayed += 1
            if isinstance(info, TarEntry) and (info.member.issym() or info.member.islnk()):
                kind = 'symlink' if info.member.issym() else 'hardlink'
                if row['kind'] != kind or row.get('link_target') != info.member.linkname:
                    errors.append('link metadata: ' + info.filename)
                continue
            if info.is_dir():
                if row['kind'] != 'directory':
                    errors.append('directory type: ' + info.filename)
                continue
            payload = archive.read(info)
            actual = hashlib.sha256(payload).hexdigest()
            if len(payload) != row['size'] or actual != row['sha256']:
                errors.append('original member bytes: ' + info.filename)
            if row['kind'] == 'archive':
                if container_map[actual].get('format', 'zip') == 'tar':
                    with tarfile.open(fileobj=io.BytesIO(payload), mode='r:*') as child:
                        replay(TarArchive(child), actual)
                else:
                    with zipfile.ZipFile(io.BytesIO(payload)) as child:
                        replay(child, actual)
            elif row['kind'] != 'ordinary':
                errors.append('original member kind: ' + info.filename)
    if args.downloads:
        for root in data['roots']:
            path = args.downloads / root['filename']
            if not path.is_file() or path.stat().st_size != root['size'] or digest(path) != root['sha256']:
                errors.append('original archive: ' + root['filename'])
            else:
                with zipfile.ZipFile(path) as archive:
                    replay(archive, root['sha256'])
            roots_checked += 1
        if containers_replayed != containers:
            errors.append('original container graph differs')
    forbidden = [str(p.relative_to(base)) for p in base.rglob('*') if p.is_file() and p.suffix.lower() in ['.zip', '.7z', '.rar', '.gz', '.xz', '.bz2', '.tar', '.pyc', '.pyo']]
    if forbidden:
        errors.extend('unexpected archive/cache: ' + p for p in forbidden)
    docs = sorted(base.glob('*.md')) + sorted((base / 'notes').glob('*.md'))
    run = base.parent.parent
    problem = run.parent.parent
    docs += [run / 'README.md', problem / 'OVERVIEW.md']
    document_hashes = {}
    links = 0
    for doc in docs:
        if not doc.is_file():
            errors.append('missing generated document: ' + str(doc))
            continue
        document_hashes[str(doc.relative_to(problem))] = digest(doc)
        text = doc.read_text(encoding='utf-8')
        for target in re.findall(r'\[[^\]]*\]\(([^\n]*?)\)', text):
            target = target.strip().strip('<>').split('#', 1)[0]
            if not target or re.match(r'^[a-zA-Z][a-zA-Z0-9+.-]*://', target):
                continue
            target = unquote(target)
            if not (doc.parent / target).resolve().exists():
                errors.append('link: ' + str(doc.relative_to(problem)) + ' -> ' + target)
            links += 1
    for script in ['locate_member.py', 'restore_members.py', 'verify_intake.py']:
        ast.parse((base / script).read_text(encoding='utf-8'), filename=script)
    checks = json.loads((base / 'SOURCE_CHECKSUMS.json').read_text(encoding='utf-8'))
    source_anomalies = json.loads((base / 'SOURCE_ANOMALIES.json').read_text(encoding='utf-8'))['anomalies']
    def anomaly_key(archive, manifest, mismatch):
        return (archive, manifest, mismatch['path'], mismatch['expected_sha256'], tuple(sorted(mismatch['actual_sha256'])))
    observed = sorted(anomaly_key(c['archive_sha256'], c['manifest'], m) for c in checks for m in c['mismatches'])
    documented = sorted(anomaly_key(a['archive_sha256'], a['manifest'], a) for a in source_anomalies)
    if observed != documented or any(c['unresolved_after_hash_lookup'] for c in checks):
        errors.append('unrecorded source checksum gap')
    for anomaly in source_anomalies:
        path = base / anomaly['actual_retained_path']
        if digest(path) not in anomaly['actual_sha256']:
            errors.append('source anomaly actual bytes changed')
    warning_status = 'PASS_WITH_SOURCE_WARNING' if source_anomalies else 'PASS'

    receipt = {'timestamp_utc': datetime.now(timezone.utc).isoformat(), 'status': warning_status if not errors else 'FAIL', 'source_manifest_mismatches': len(source_anomalies), 'source_manifest_status': 'WARNING' if source_anomalies else 'PASS', 'link_metadata_members': sum(r['kind'] in ['symlink','hardlink'] for r in data['members']), 'ordinary_objects_verified': len(data['objects']), 'ordinary_members_verified': len(ordinary), 'container_mappings': len(containers), 'original_archives_verified': roots_checked, 'original_containers_replayed': len(containers_replayed), 'original_members_replayed': original_members_replayed, 'generated_documents': len(docs), 'local_links_checked': links, 'document_hashes': document_hashes, 'errors': errors, 'author_programs_executed': False, 'mathematical_verification': False, 'lean_run': False, 'push': False}
    if args.output:
        args.output.write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n', encoding='utf-8', newline='\n')
    print(json.dumps({k: v for k, v in receipt.items() if k != 'document_hashes'}, ensure_ascii=False))
    if errors:
        raise SystemExit(1)

if __name__ == '__main__':
    main()
