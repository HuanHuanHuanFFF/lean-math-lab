#!/usr/bin/env python3
"""Safely extract and replay this evidence archive using only Python's standard library.

The receipt binds the supplied ZIP, all manifested payload bytes, and the newly
regenerated certificates. It is not an independent proof review or a Lean check.
"""
from __future__ import annotations

import argparse
import datetime as dt
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import stat
import subprocess
import sys
import tempfile
import zipfile


def stamp() -> str:
    return dt.datetime.now(dt.timezone.utc).isoformat()


def digest(path: Path) -> str:
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()


def fail(message: str) -> None:
    raise ValueError(message)


def payload_hashes(root: Path) -> dict[str, str]:
    return {p.relative_to(root).as_posix(): digest(p)
            for p in sorted(root.rglob('*')) if p.is_file()}


def extract_checked(archive: Path, destination: Path) -> Path:
    with zipfile.ZipFile(archive) as z:
        seen: set[str] = set()
        roots: set[str] = set()
        total = 0
        infos = z.infolist()
        for info in infos:
            name = info.filename
            path = PurePosixPath(name)
            if (not name or '\\' in name or path.is_absolute()
                    or any(part in ('', '.', '..') for part in path.parts)):
                fail('Unsafe archive member: ' + repr(name))
            canonical = path.as_posix().rstrip('/')
            if canonical in seen:
                fail('Duplicate archive member: ' + name)
            seen.add(canonical)
            roots.add(path.parts[0])
            mode = info.external_attr >> 16
            if stat.S_ISLNK(mode):
                fail('Symlink member is not allowed: ' + name)
            if info.flag_bits & 1:
                fail('Encrypted archive member is not allowed: ' + name)
            total += info.file_size
        if len(roots) != 1 or total > 512 * 1024 * 1024:
            fail('Expected one root and at most 512 MiB of payload')
        for info in infos:
            target = destination.joinpath(*PurePosixPath(info.filename).parts)
            if info.is_dir():
                target.mkdir(parents=True, exist_ok=True)
            else:
                target.parent.mkdir(parents=True, exist_ok=True)
                # Reading the member also checks its CRC through zipfile.
                target.write_bytes(z.read(info))
    root = destination / next(iter(roots))
    if not root.is_dir():
        fail('Archive root is not a directory')
    return root


def check_manifest(root: Path) -> dict[str, str]:
    manifest = root / 'MANIFEST.sha256'
    if not manifest.is_file():
        fail('MANIFEST.sha256 is missing')
    records: dict[str, str] = {}
    for line in manifest.read_text(encoding='utf-8').splitlines():
        if not line:
            continue
        sha, separator, name = line.partition('  ')
        path = PurePosixPath(name)
        if (not separator or len(sha) != 64 or any(c not in '0123456789abcdef' for c in sha)
                or name in records or path.is_absolute() or '\\' in name
                or '..' in path.parts or name == 'MANIFEST.sha256'):
            fail('Invalid manifest record: ' + repr(line))
        records[name] = sha
    actual = payload_hashes(root)
    actual.pop('MANIFEST.sha256', None)
    if set(actual) != set(records):
        fail('Manifest file-set mismatch: ' + repr({
            'unlisted': sorted(set(actual) - set(records)),
            'missing': sorted(set(records) - set(actual))}))
    for name, sha in records.items():
        if actual[name] != sha:
            fail('Manifest hash mismatch: ' + name)
    return records


def replay(archive: Path, receipt_path: Path) -> dict:
    archive = archive.resolve(strict=True)
    receipt_path = receipt_path.resolve()
    report: dict = {
        'schema': 'b699-r11-clean-archive-replay-v1',
        'status': 'STARTED', 'started_at_utc': stamp(),
        'archive_name': archive.name, 'archive_sha256': digest(archive),
        'archive_size_bytes': archive.stat().st_size,
        'python_version': sys.version,
        'scope': 'Local hash audit and deterministic program replay, not Lean or independent mathematical review',
        'old_research_programs_executed': False,
        'network_used': False, 'Lean_run': False, 'repository_operations': False,
    }
    try:
        with tempfile.TemporaryDirectory(prefix='b699-r11-replay-') as temp_name:
            temp = Path(temp_name)
            root = extract_checked(archive, temp / 'extracted')
            records = check_manifest(root)
            before = payload_hashes(root)
            generated = temp / 'regenerated'
            env = dict(os.environ)
            env.update({'PYTHONDONTWRITEBYTECODE': '1', 'PYTHONHASHSEED': '0'})
            command = [sys.executable, str(root / 'code' / 'verify.py'),
                       '--root', str(root), '--output', str(generated),
                       '--check', str(root / 'certificates')]
            result = subprocess.run(command, cwd=temp, env=env, text=True,
                                    encoding='utf-8', capture_output=True, timeout=300)
            report['verifier_returncode'] = result.returncode
            report['verifier_stdout'] = result.stdout
            report['verifier_stderr'] = result.stderr
            if result.returncode != 0:
                fail('Verifier failed; see stdout/stderr in the receipt')
            summary = json.loads(result.stdout)
            if summary.get('status') != 'PASS':
                fail('Verifier did not report PASS')
            frozen_names = sorted(p.name for p in (root / 'certificates').glob('*.json'))
            generated_names = sorted(p.name for p in generated.glob('*.json'))
            if frozen_names != generated_names:
                fail('Regenerated certificate file-set mismatch')
            certificates = {}
            for name in frozen_names:
                frozen, new = root / 'certificates' / name, generated / name
                if json.loads(frozen.read_text()) != json.loads(new.read_text()):
                    fail('Certificate JSON mismatch: ' + name)
                if frozen.read_bytes() != new.read_bytes():
                    fail('Certificate byte mismatch: ' + name)
                certificates[name] = digest(new)
            after = payload_hashes(root)
            if after != before:
                fail('Extracted payload was modified by replay')
            report.update({
                'status': 'PASS', 'clean_extraction': True,
                'manifest_sha256': digest(root / 'MANIFEST.sha256'),
                'manifest_members_checked': len(records),
                'all_manifest_hashes_match': True,
                'certificates_regenerated': len(certificates),
                'all_certificate_JSON_and_bytes_match': True,
                'certificate_sha256': certificates,
                'payload_unchanged': True,
                'mathematical_summary': summary,
            })
    except Exception as exc:
        report['status'] = 'FAIL'
        report['error'] = type(exc).__name__ + ': ' + str(exc)
    report['finished_at_utc'] = stamp()
    receipt_path.parent.mkdir(parents=True, exist_ok=True)
    receipt_path.write_text(json.dumps(report, ensure_ascii=False, sort_keys=True, indent=2) + '\n', encoding='utf-8')
    return report


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('archive', type=Path)
    parser.add_argument('--receipt', type=Path, required=True)
    args = parser.parse_args()
    report = replay(args.archive, args.receipt)
    print(json.dumps({k: report[k] for k in (
        'status', 'archive_name', 'archive_sha256', 'manifest_members_checked',
        'certificates_regenerated', 'payload_unchanged', 'finished_at_utc') if k in report},
        ensure_ascii=False, sort_keys=True, indent=2))
    return 0 if report['status'] == 'PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
