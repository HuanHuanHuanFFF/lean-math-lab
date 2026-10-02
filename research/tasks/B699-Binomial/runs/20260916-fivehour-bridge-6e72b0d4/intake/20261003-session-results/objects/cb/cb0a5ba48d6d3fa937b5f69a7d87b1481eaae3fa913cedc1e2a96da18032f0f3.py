#!/usr/bin/env python3
"""Refresh only this extracted evidence tree; hash all members and nested source ZIPs."""
from __future__ import annotations
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import stat
import zipfile

ROOT = Path(__file__).resolve().parents[1]
PARENT_SHA = '50f86db06d2e0b7ee5e53d96a34efde01a0ad636d0daa925d4c6b8ebca01f0ce'

def digest(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()

def dump(value: object) -> str:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, indent=2) + '\n'

def embedded_records(data: bytes, chain: list[str]) -> list[dict]:
    records = []
    with zipfile.ZipFile(io.BytesIO(data)) as archive:
        seen = set()
        for info in sorted(archive.infolist(), key=lambda x: x.filename):
            rel = PurePosixPath(info.filename)
            if rel.is_absolute() or '..' in rel.parts or '\\' in info.filename or info.filename in seen or stat.S_ISLNK(info.external_attr >> 16):
                raise ValueError('Unsafe nested ZIP member')
            seen.add(info.filename)
            if info.is_dir():
                continue
            content = archive.read(info)
            records.append({'container_chain': chain, 'container_sha256': digest(data), 'path': info.filename,
                            'bytes': len(content), 'sha256': digest(content), 'source_refs': ['D08']})
            if info.filename.lower().endswith('.zip'):
                records.extend(embedded_records(content, chain + [info.filename]))
    return records

def source_refs(name: str) -> list[str]:
    if name == 'dependencies/D08-evidence.zip':
        return ['D08']
    if name.endswith('CURRENT_OVERVIEW_D_excerpt.md'):
        return ['OV_CURRENT']
    if name.endswith('R27_P0_J_excerpt.md'):
        return ['R27_J']
    if name.endswith('SQ_PRECEDENT_excerpt.md'):
        return ['SQ_PRECEDENT']
    if name.endswith('OVERVIEW-2026-09-22-original.md.txt'):
        return ['OLD22']
    if name == 'logs/PARENT_REPLAY.json':
        return ['NEW', 'D08']
    if name in ('SOURCES.json', 'SOURCE_ADOPTION.md', 'logs/SOURCE_ACCESS.json'):
        return ['NEW', 'D08', 'OV_CURRENT', 'R27_J', 'SQ_PRECEDENT', 'OLD22']
    if name == 'SESSION_STATE.json':
        return ['NEW', 'U_CURRENT', 'D08', 'OV_CURRENT', 'R27_J']
    if name.endswith('.md'):
        return ['NEW', 'D08', 'R27_J', 'OV_CURRENT']
    return ['NEW']

def main() -> None:
    data = (ROOT / 'dependencies/D08-evidence.zip').read_bytes()
    if digest(data) != PARENT_SHA:
        raise ValueError('Parent source archive SHA mismatch')
    members = []
    for p in sorted(ROOT.rglob('*')):
        if p.is_symlink():
            raise ValueError('Symlink not permitted in evidence tree')
        if not p.is_file() or p.name in ('SHA256SUMS.txt', 'MEMBERS.json'):
            continue
        name = p.relative_to(ROOT).as_posix()
        members.append({'path': name, 'bytes': p.stat().st_size, 'sha256': digest(p.read_bytes()), 'source_refs': source_refs(name)})
    meta = {'schema': 'B699-D-R03-members-v1', 'payload_members': members,
            'embedded_archive_members': embedded_records(data, ['dependencies/D08-evidence.zip']),
            'self_hash_rule': 'MEMBERS.json excludes itself and SHA256SUMS.txt; SHA256SUMS.txt includes MEMBERS.json and every other member except itself.'}
    (ROOT / 'MEMBERS.json').write_text(dump(meta), encoding='utf-8')
    lines = []
    for p in sorted(ROOT.rglob('*')):
        if p.is_file() and p.name != 'SHA256SUMS.txt':
            lines.append(digest(p.read_bytes()) + '  ' + p.relative_to(ROOT).as_posix())
    (ROOT / 'SHA256SUMS.txt').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    print(dump({'status': 'PASS', 'payload_members': len(members), 'sha256_bound_members': len(lines),
                'embedded_archive_members': len(meta['embedded_archive_members'])}), end='')

if __name__ == '__main__':
    main()
