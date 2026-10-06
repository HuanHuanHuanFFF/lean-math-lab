"""Restore only missing old source inputs from exact, reachable Git blob bytes."""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess


def sha256(data):
    return hashlib.sha256(data).hexdigest()


def checked_blob(repo, commit, entry):
    ref = commit + ':' + entry['anchorPath']
    oid = subprocess.check_output(['git', 'rev-parse', ref], cwd=repo, timeout=10).decode('ascii').strip()
    if oid != entry['gitBlobOid']:
        raise RuntimeError('fixed commit/path blob changed: ' + ref)
    data = subprocess.check_output(['git', 'cat-file', 'blob', oid], cwd=repo, timeout=10)
    if len(data) != entry['bytes'] or sha256(data) != entry['sha256']:
        raise RuntimeError('fixed blob bytes/digest mismatch: ' + oid)
    return data


def restore_entry(repo, entry, data, restore_missing):
    target = repo / entry['target']
    resolved = target.resolve()
    if not resolved.is_relative_to(repo.resolve()):
        raise RuntimeError('target resolves outside repository')
    if target.exists():
        if not target.is_file() or sha256(target.read_bytes()) != entry['sha256']:
            raise RuntimeError('existing target differs; preserved without overwrite: ' + entry['target'])
        return 'existing-byte-identical-source-preserved'
    if not restore_missing:
        return 'missing-source-recoverable-from-verified-blob'
    target.parent.mkdir(parents=True, exist_ok=True)
    # Exclusive binary creation also refuses a target created since the precheck.
    with target.open('xb') as stream:
        stream.write(data)
    if sha256(target.read_bytes()) != entry['sha256']:
        raise RuntimeError('restored source failed read-back digest')
    return 'restored-missing-source-from-verified-blob'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--restore-missing', action='store_true')
    args = parser.parse_args()
    here = Path(__file__).resolve().parent
    repo = next(parent for parent in here.parents if (parent / 'AGENTS.md').is_file())
    manifest = json.loads((here / 'REPRODUCTION-GIT-BLOB-INPUTS.json').read_text(encoding='utf-8'))
    rows = []
    for entry in manifest['entries']:
        data = checked_blob(repo, manifest['verifiedAgainstCommit'], entry)
        status = restore_entry(repo, entry, data, args.restore_missing)
        rows.append({'target': entry['target'], 'sha256': entry['sha256'], 'status': status})
    print(json.dumps({'mode': 'restore-only-missing' if args.restore_missing else 'read-only-precheck',
                      'entries': rows, 'nativeLeanExecuted': False, 'proofAccepted': False}))


if __name__ == '__main__':
    main()
