"""Administrative integrity checks only; does not run archived research code."""
import argparse, ast, hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
from urllib.parse import unquote

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
    containers = {c['sha256'] for c in data['containers']}
    for row in data['members']:
        if row['archive_sha256'] not in containers or (row['kind'] == 'archive' and row['sha256'] not in containers):
            errors.append('container mapping: ' + row['name'])
    roots_checked = 0
    if args.downloads:
        for root in data['roots']:
            path = args.downloads / root['filename']
            if not path.is_file() or path.stat().st_size != root['size'] or digest(path) != root['sha256']:
                errors.append('original archive: ' + root['filename'])
            roots_checked += 1
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
    if any(c['mismatches'] or c['unresolved_after_hash_lookup'] for c in checks):
        errors.append('source checksum gap')
    receipt = {'timestamp_utc': datetime.now(timezone.utc).isoformat(), 'status': 'PASS' if not errors else 'FAIL', 'ordinary_objects_verified': len(data['objects']), 'ordinary_members_verified': len(ordinary), 'container_mappings': len(containers), 'original_archives_verified': roots_checked, 'generated_documents': len(docs), 'local_links_checked': links, 'document_hashes': document_hashes, 'errors': errors, 'author_programs_executed': False, 'mathematical_verification': False, 'lean_run': False, 'push': False}
    if args.output:
        args.output.write_text(json.dumps(receipt, ensure_ascii=False, indent=2) + '\n', encoding='utf-8', newline='\n')
    print(json.dumps({k: v for k, v in receipt.items() if k != 'document_hashes'}, ensure_ascii=False))
    if errors:
        raise SystemExit(1)

if __name__ == '__main__':
    main()
