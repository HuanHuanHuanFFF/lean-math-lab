#!/usr/bin/env python3
"""Audit the recorded migration snapshot, original bytes, and import-only changes.

Run this at the migration commit to reproduce its inventory check. Later
intentional research edits can differ from target hashes; keep the historical
manifest and record new verification instead of updating old evidence to pass.
"""
from pathlib import Path
import argparse, hashlib, json, re, subprocess, sys

def sha(data):
    return hashlib.sha256(data).hexdigest()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--verify-git-sources', action='store_true')
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    manifests = sorted((root/'research/tasks').glob('*/runs/*/migration/manifest.json'))
    manifests += sorted((root/'research/shared').glob('*/migration/manifest.json'))
    if not manifests:
        raise ValueError('No migration inventories found')
    failures, summaries, targets, source_paths = [], [], set(), set()
    for path in manifests:
        record = json.loads(path.read_text())
        for row in record['files']:
            source_paths.add(row['source'])
            target = root/row['target']
            try:
                if row['target'] in targets:
                    raise ValueError('duplicate target')
                targets.add(row['target'])
                data = target.read_bytes()
                if sha(data) != row['target_sha256']:
                    raise ValueError('current SHA mismatch')
                original = (root/row['original_copy']).read_bytes() if row['original_copy'] else data
                if sha(original) != row['source_sha256']:
                    raise ValueError('original bytes missing or changed')
                if row['source'].endswith('.lean'):
                    without_imports = lambda b: re.sub(rb'(?m)^\s*import[^\r\n]*', b'', b)
                    if without_imports(original) != without_imports(data):
                        raise ValueError('Lean changed beyond import lines')
                if args.verify_git_sources:
                    source = subprocess.check_output(['git','show',record['source_commit']+':'+row['source']],cwd=root)
                    if source != original:
                        raise ValueError('original differs from pinned Git source')
            except (OSError, ValueError, subprocess.CalledProcessError) as exc:
                failures.append({'target':row['target'],'error':str(exc)})
        summaries.append({'manifest':str(path.relative_to(root)),'source_commit':record['source_commit'],'files':len(record['files'])})
    for old in sorted(source_paths - targets):
        # Problem-level entries intentionally remain as newly written navigation.
        if re.fullmatch(r'research/tasks/[^/]+/(README|frontier)\.md', old):
            continue
        if (root/old).exists():
            failures.append({'target':old,'error':'deprecated source copy remains outside its run'})
    print(json.dumps({'success':not failures,'git_sources_checked':args.verify_git_sources,
                      'manifests':summaries,'files':len(targets),'failures':failures},ensure_ascii=False,indent=2))
    return bool(failures)

if __name__ == '__main__':
    sys.exit(main())
