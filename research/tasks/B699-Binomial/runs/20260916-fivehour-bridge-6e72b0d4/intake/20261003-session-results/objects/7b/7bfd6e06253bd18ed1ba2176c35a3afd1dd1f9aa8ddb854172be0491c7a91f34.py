#!/usr/bin/env python3
"""Offline evidence replay. No Lean, network, or repository operations. Stdlib only."""
from __future__ import annotations
import argparse
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import stat
import subprocess
import sys
import tempfile
import zipfile

PARENT_SHA = '50f86db06d2e0b7ee5e53d96a34efde01a0ad636d0daa925d4c6b8ebca01f0ce'

def need(ok: bool, message: str) -> None:
    if not ok:
        raise RuntimeError(message)

def dump(x: object) -> str:
    return json.dumps(x, ensure_ascii=False, sort_keys=True, indent=2) + '\n'

def sha(p: Path) -> str:
    return hashlib.sha256(p.read_bytes()).hexdigest()

def safe_infos(z: zipfile.ZipFile) -> list:
    seen = set()
    result = []
    for i in sorted(z.infolist(), key=lambda x: x.filename):
        rel = PurePosixPath(i.filename)
        need(not rel.is_absolute() and '..' not in rel.parts and '\\' not in i.filename,
             'Unsafe ZIP path')
        need(i.filename not in seen and not stat.S_ISLNK(i.external_attr >> 16), 'ZIP duplicate or symlink')
        seen.add(i.filename)
        result.append(i)
    return result

def embedded(data: bytes, chain: list[str]) -> list[dict]:
    records = []
    with zipfile.ZipFile(io.BytesIO(data)) as z:
        for i in safe_infos(z):
            if i.is_dir():
                continue
            content = z.read(i)
            records.append({'container_chain': chain, 'container_sha256': hashlib.sha256(data).hexdigest(),
                            'path': i.filename, 'bytes': len(content), 'sha256': hashlib.sha256(content).hexdigest(),
                            'source_refs': ['D08']})
            if i.filename.lower().endswith('.zip'):
                records.extend(embedded(content, chain + [i.filename]))
    return records

def check_manifest(root: Path) -> dict:
    listing = root / 'SHA256SUMS.txt'
    need(listing.is_file(), 'Missing SHA manifest')
    seen = set()
    for line in listing.read_text(encoding='utf-8').splitlines():
        digest, name = line.split('  ', 1)
        rel = PurePosixPath(name)
        need(not rel.is_absolute() and '..' not in rel.parts and '\\' not in name and name not in seen,
             'Invalid manifest path')
        p = root / name
        need(p.is_file() and not p.is_symlink() and sha(p) == digest, 'Member SHA mismatch: ' + name)
        seen.add(name)
    actual = {p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file() and p != listing}
    need(seen == actual, 'SHA manifest membership mismatch')
    need(not any(p.is_symlink() for p in root.rglob('*')), 'Symlinks not allowed')
    meta = json.loads((root / 'MEMBERS.json').read_text(encoding='utf-8'))
    rows = meta['payload_members']
    need(len(rows) == len({x['path'] for x in rows}), 'Duplicate provenance member')
    need({x['path'] for x in rows} == actual - {'MEMBERS.json'}, 'Provenance membership mismatch')
    sources = {x['id'] for x in json.loads((root / 'SOURCES.json').read_text(encoding='utf-8'))['sources']}
    for x in rows:
        p = root / x['path']
        need(x['bytes'] == p.stat().st_size and x['sha256'] == sha(p), 'Provenance hash/size mismatch')
        need(bool(x['source_refs']) and set(x['source_refs']) <= sources, 'Invalid source references')
    parent = root / 'dependencies/D08-evidence.zip'
    need(sha(parent) == PARENT_SHA, 'Immutable parent hash mismatch')
    need(meta['embedded_archive_members'] == embedded(parent.read_bytes(), ['dependencies/D08-evidence.zip']),
         'Nested source archive member mismatch')
    return meta

def run(cmd: list[str], cwd: Path) -> str:
    r = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, timeout=180, check=False)
    need(r.returncode == 0, f'Execution exit {r.returncode}:\n{r.stdout}\n{r.stderr}')
    return r.stdout

def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument('--output', type=Path, help='Receipt path outside the extracted evidence directory')
    a = ap.parse_args()
    root = Path(__file__).resolve().parent
    if a.output:
        out = a.output.resolve()
        need(root != out and root not in out.parents, 'Output must be outside evidence tree')
    meta = check_manifest(root)
    with tempfile.TemporaryDirectory(prefix='b699-d-r03-') as td:
        work = Path(td)
        with zipfile.ZipFile(root / 'dependencies/D08-evidence.zip') as z:
            safe_infos(z)
            z.extractall(work / 'parent')
        parent_root = work / 'parent/B699-D08-ORIGIN-SOURCE-20261002'
        need((parent_root / 'replay.py').is_file(), 'Missing parent replay')
        parent = json.loads(run([sys.executable, '-I', '-B', str(parent_root/'replay.py'),
                                 '--output', str(work/'parent_receipt.json')], parent_root))
        need(parent == json.loads((root/'logs/PARENT_REPLAY.json').read_text(encoding='utf-8')),
             'Parent replay changed')
        build = json.loads(run([sys.executable, '-I', '-B', str(root/'scripts/build_certificate.py'),
                                '--output-dir', str(work/'rebuilt')], root))
        need(build == json.loads((root/'logs/BUILD.json').read_text(encoding='utf-8')), 'Builder log mismatch')
        certificates = []
        for name in ('certificate.json','summary.json'):
            frozen, rebuilt = root/'certificates'/name, work/'rebuilt'/name
            need(frozen.read_bytes() == rebuilt.read_bytes(), 'Regenerated bytes mismatch: '+name)
            certificates.append({'path':'certificates/'+name, 'bytes':frozen.stat().st_size, 'sha256':sha(frozen)})
        verification = json.loads(run([sys.executable, '-I', '-B', str(root/'scripts/verify_certificate.py'),
                                       '--certificate', str(work/'rebuilt/certificate.json'),
                                       '--output', str(work/'verification.json'), '--negative-tests'], root))
        need(verification == json.loads((root/'logs/VERIFY.json').read_text(encoding='utf-8')),
             'Second implementation result changed')
        need(verification['status'] == 'PASS' and len(verification['negative_tests']) == 12
             and all(x['rejected'] for x in verification['negative_tests']), 'Bad mathematical verification')
    # The external final archive receipt binds the whole ZIP. Omit self-referential
    # administrative hashes from this deterministic mathematical replay receipt.
    names = ['REPORT.md','PROOFS.md','FAILURE_BOUNDARIES.md','HANDOFF.md','README.md','SESSION_STATE.json',
             'SOURCE_ADOPTION.md','SOURCES.json','replay.py','scripts/build_certificate.py',
             'scripts/verify_certificate.py','scripts/refresh_manifest.py','dependencies/D08-evidence.zip']
    names += sorted(p.relative_to(root).as_posix() for p in (root/'sources').rglob('*') if p.is_file())
    result = {'schema':'B699-D-R03-replay-v1','status':'PASS','manifest_and_provenance':'PASS',
      'nested_source_member_count':len(meta['embedded_archive_members']), 'parent_archive_sha256':PARENT_SHA,
      'parent_replay':parent,'regenerated_new_certificates':certificates,'build':build,'verification':verification,
      'bound_payload':[{'path':n,'sha256':sha(root/n)} for n in names],
      'scope':'author proofs and same-session exact independent algorithms within the adopted original balanced core',
      'historical_net_increment_certified':0,'historical_net_status':'not audited','whole_A5616_entry_closed':False,
      'original_PQ_full_exponents_preserved':True,'paper_uniform_proofs_are_not_machine_formalized':True,
      'network_access':False,'lean_executed':False,'repository_operations':False,'external_independent_review':False}
    text = dump(result)
    if a.output:
        a.output.parent.mkdir(parents=True,exist_ok=True)
        a.output.write_text(text,encoding='utf-8')
    print(text,end='')

if __name__ == '__main__':
    main()
