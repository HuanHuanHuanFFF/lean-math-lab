#!/usr/bin/env python3
"""Reconcile final B686 sources with immutable successful Lean evidence.

This does not replace Lean compilation or claim a new kernel run. It checks
the current exact source closures, historical source hashes, successful
compile records, retained raw logs and source policy, then writes a separate
timestamped reconciliation record. Deleted rebuildable objects are not inputs.
"""
from datetime import datetime, timezone
import hashlib
import importlib.util
import json
from pathlib import Path
import sys


HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / 'lake-manifest.json').is_file())


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    result = importlib.util.module_from_spec(spec)
    sys.modules[name] = result
    spec.loader.exec_module(result)
    return result


def require(condition, message):
    if not condition:
        raise RuntimeError(message)


def main():
    stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
    manifest_path = HERE / 'accepted-results.json'
    manifest = json.loads(manifest_path.read_text())
    helper = module('b686_final_verifier', REPO / 'scripts/verify-research-runs.py')
    fresh = module('b686_final_fresh', REPO /
                   'research/shared/20260909-formalization-environment/fresh-root.py')
    fresh.install_allowed_run_guard(helper)
    policy = helper.load_policy(REPO)
    exact, basename = helper.build_source_index(REPO)
    report = {'success': False, 'timestamp': stamp,
              'purpose': 'Read-only source/evidence reconciliation; not a new Lean build',
              'manifest_sha256': sha(manifest_path), 'entries': [], 'failure': None}
    try:
        union = set()
        for entry in manifest['entries']:
            evidence_path = REPO / entry['evidence']
            data = json.loads(evidence_path.read_text())
            require(data.get('success') is True, f"Non-success evidence: {entry['id']}")
            roots = [REPO / root for root in entry['roots']]
            require(roots, f"No root for {entry['id']}")
            closure, _ = helper.build_closure(roots, repo=REPO, run_id='fresh-root',
                                              exact=exact, basename=basename)
            expected = {str(ref.path.relative_to(REPO)) for ref in closure}
            records = data.get('compile_records', data.get('sources'))
            require(isinstance(records, list), f"No compile records: {entry['id']}")
            observed = {record.get('source', record.get('path')) for record in records}
            require(observed == expected, f"Closure mismatch: {entry['id']}")
            require(len(records) == len(expected), f"Duplicate records: {entry['id']}")
            rows = []
            for record in records:
                source = record.get('source', record.get('path'))
                current = sha(REPO / source)
                before = record.get('source_sha256_before', record.get('sha256'))
                require(current == before, f"Source drift: {source}")
                if 'source_sha256_after' in record:
                    require(current == record['source_sha256_after'],
                            f"Post-build source drift: {source}")
                require(record.get('exit_code') == 0, f"Failed compile: {source}")
                log = REPO / record['log']
                require(log.is_file(), f"Missing raw log: {log}")
                digest = sha(log)
                old_digest = record.get('log_sha256')
                if old_digest is not None:
                    require(digest == old_digest, f"Raw log drift: {log}")
                rows.append({'source': source, 'source_sha256': current,
                             'log': record['log'], 'log_sha256': digest,
                             'original_log_digest_recorded': old_digest is not None})
                union.add(source)
            if 'manifest_sha256' in data:
                require(data['manifest_sha256'] == sha(REPO / 'lake-manifest.json'),
                        f"Manifest drift: {entry['id']}")
            negative = data.get('negative_audit')
            if negative is not None:
                require(negative.get('expected_rejection_observed') is True and
                        negative.get('exit_code') != 0,
                        f"Missing expected negative audit: {entry['id']}")
            report['entries'].append({**entry, 'evidence_sha256': sha(evidence_path),
                                      'source_closure_exact': True, 'records': rows})
        violations = []
        for source in sorted(union):
            violations.extend(policy['scan_text']((REPO / source).read_text(), source))
        require(not violations, 'Source policy violations: ' + str(violations))
        report['source_policy'] = {'files': len(union), 'violations': []}
        report['success'] = True
    except Exception as error:
        report['failure'] = str(error)
    output = HERE / 'reconciliation' / stamp
    output.mkdir(parents=True, exist_ok=False)
    (output / 'evidence.json').write_text(json.dumps(report, ensure_ascii=False, indent=2) + '\n')
    print(json.dumps({'success': report['success'], 'failure': report['failure'],
                      'evidence': str((output / 'evidence.json').relative_to(REPO))},
                     ensure_ascii=False))
    return 0 if report['success'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
