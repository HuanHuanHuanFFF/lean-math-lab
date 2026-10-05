#!/usr/bin/env python3
"""Explicit packaging-only regeneration of evidence member provenance and SHA-256."""
from __future__ import annotations
import hashlib
import json
from pathlib import Path
import zipfile


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def origin(name: str) -> tuple[str, list[str]]:
    if name == 'dependencies/D04-evidence.zip':
        return 'byte-exact parent ZIP', ['D04']
    if name.startswith('sources/OVERVIEW-2026-09-22'):
        return 'byte-exact mounted historical navigation', ['OLD22']
    if name.startswith('sources/OVERVIEW_current'):
        return 'selected transcript excerpt, not original complete bytes', ['OVC']
    if name.startswith('sources/R27'):
        return 'selected source excerpt with formula transcription', ['R27']
    if name == 'logs/PARENT_REPLAY.json':
        return 'actual parent replay output in this round', ['D04', 'DER']
    if name.startswith('logs/'):
        return 'current-session execution output or explicitly labeled research record', ['DER', 'D04', 'R27', 'OVC']
    if name.startswith('certificates/'):
        return 'current exact generated mathematical certificate', ['DER', 'D04', 'R27']
    if name.startswith('scripts/') or name == 'replay.py':
        return 'current-session authored standard-library script', ['DER', 'D04', 'R27']
    return 'current-session authored report, proof, assumptions or state', ['U08', 'DER', 'D04', 'R27', 'OVC', 'OLD22']


def main() -> None:
    root = Path(__file__).resolve().parent.parent
    members = []
    for p in sorted(root.rglob('*')):
        if not p.is_file() or p.relative_to(root).as_posix() in {'MEMBERS.json', 'SHA256SUMS.txt'}:
            continue
        if p.is_symlink():
            raise RuntimeError('Evidence cannot contain symlinks')
        name = p.relative_to(root).as_posix()
        role, refs = origin(name)
        members.append({'path': name, 'bytes': p.stat().st_size, 'sha256': sha(p.read_bytes()),
                        'representation': role, 'source_refs': refs})
    parent = root / 'dependencies/D04-evidence.zip'
    digest = sha(parent.read_bytes())
    with zipfile.ZipFile(parent) as z:
        nested = [{'path': i.filename, 'bytes': i.file_size, 'sha256': sha(z.read(i)),
                   'container_sha256': digest, 'source_refs': ['D04']}
                  for i in sorted(z.infolist(), key=lambda i: i.filename) if not i.is_dir()]
    obj = {'schema': 'B699-D08-member-provenance-v1', 'payload_members': members,
           'embedded_parent_members': nested,
           'self_reference_policy': 'MEMBERS and SHA256SUMS excluded from payload self-hashes; SHA256SUMS covers MEMBERS; external receipt binds final ZIP'}
    (root/'MEMBERS.json').write_text(json.dumps(obj, ensure_ascii=False, sort_keys=True, indent=2)+'\n', encoding='utf-8')
    checks = []
    for p in sorted(root.rglob('*')):
        if p.is_file() and p != root/'SHA256SUMS.txt':
            checks.append(f'{sha(p.read_bytes())}  {p.relative_to(root).as_posix()}')
    (root/'SHA256SUMS.txt').write_text('\n'.join(checks)+'\n', encoding='utf-8')
    print(json.dumps({'payload_members': len(members), 'parent_nested_members': len(nested), 'hash_entries':len(checks)}))


if __name__ == '__main__':
    main()
