#!/usr/bin/env python3
"""Offline D08 replay. Stdlib only; no Lean, network, or repository operations."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import stat
import subprocess
import sys
import tempfile
import zipfile

PARENT_SHA = 'cf315c42bdf034c29001c35042cbd2c70ce844df2f79480aebb28d4797ea7a24'
CERT_NAMES = ('certificate.json', 'summary.json', 'RETAINED_A_4095.txt')


def sha(p: Path) -> str:
    return hashlib.sha256(p.read_bytes()).hexdigest()


def dump(x: object) -> str:
    return json.dumps(x, ensure_ascii=False, sort_keys=True, indent=2) + '\n'


def require(ok: bool, message: str) -> None:
    if not ok:
        raise RuntimeError(message)


def check_manifest(root: Path) -> None:
    m = root / 'SHA256SUMS.txt'
    require(m.is_file(), 'Missing SHA256SUMS.txt')
    seen: set[str] = set()
    for line in m.read_text(encoding='utf-8').splitlines():
        digest, name = line.split('  ', 1)
        rel = PurePosixPath(name)
        require(not rel.is_absolute() and '..' not in rel.parts and name not in seen, 'Invalid manifest path')
        p = root / name
        require(p.is_file() and not p.is_symlink() and sha(p) == digest, 'SHA mismatch: ' + name)
        seen.add(name)
    actual = {p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file() and p != m}
    require(seen == actual, 'Manifest membership mismatch')
    meta = json.loads((root / 'MEMBERS.json').read_text(encoding='utf-8'))
    records = meta['payload_members']
    require(len(records) == len({x['path'] for x in records}), 'Duplicate member provenance')
    require({x['path'] for x in records} == actual - {'MEMBERS.json'}, 'Provenance membership mismatch')
    ids = {x['id'] for x in json.loads((root / 'SOURCES.json').read_text(encoding='utf-8'))['sources']}
    for x in records:
        p = root / x['path']
        require(x['bytes'] == p.stat().st_size and x['sha256'] == sha(p), 'Member hash/size mismatch')
        require(set(x['source_refs']) <= ids, 'Unknown provenance source')
    archive = root / 'dependencies/D04-evidence.zip'
    require(sha(archive) == PARENT_SHA, 'Parent ZIP hash mismatch')
    with zipfile.ZipFile(archive) as z:
        expected = [{'path': i.filename, 'bytes': i.file_size,
                     'sha256': hashlib.sha256(z.read(i)).hexdigest(),
                     'container_sha256': PARENT_SHA, 'source_refs': ['D04']}
                    for i in sorted(z.infolist(), key=lambda i: i.filename) if not i.is_dir()]
    require(meta['embedded_parent_members'] == expected, 'Embedded parent member provenance mismatch')


def extract_safe(archive: Path, destination: Path) -> Path:
    names: set[str] = set()
    with zipfile.ZipFile(archive) as z:
        for i in z.infolist():
            p = PurePosixPath(i.filename)
            require(not p.is_absolute() and '..' not in p.parts and '\\' not in i.filename,
                    'Unsafe ZIP member')
            require(i.filename not in names and not stat.S_ISLNK(i.external_attr >> 16), 'Duplicate/symlink ZIP member')
            names.add(i.filename)
        z.extractall(destination)
    parent_root = destination / 'B699-D04-SYNC455-20261002'
    require((parent_root / 'replay.py').is_file(), 'Missing parent replay entry')
    return parent_root


def run(cmd: list[str], cwd: Path) -> str:
    r = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True, timeout=180, check=False)
    require(r.returncode == 0, f'Execution failed, exit {r.returncode}:\n{r.stdout}\n{r.stderr}')
    return r.stdout


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, help='Must be outside the unpacked evidence directory')
    args = parser.parse_args()
    root = Path(__file__).resolve().parent
    if args.output:
        output = args.output.resolve()
        require(root != output and root not in output.parents, 'Receipt output must be outside evidence tree')
    check_manifest(root)
    with tempfile.TemporaryDirectory(prefix='b699-d08-replay-') as temp:
        work = Path(temp)
        parent_root = extract_safe(root / 'dependencies/D04-evidence.zip', work / 'parent')
        parent_out = run([sys.executable, '-I', '-B', str(parent_root / 'replay.py'),
                          '--output', str(work / 'parent_receipt.json')], parent_root)
        parent_receipt = json.loads(parent_out)
        require(parent_receipt['status'] == 'PASS', 'Parent mathematics replay failed')
        require(parent_receipt == json.loads((root / 'logs/PARENT_REPLAY.json').read_text(encoding='utf-8')),
                'Parent replay differs from frozen output')
        build_out = run([sys.executable, '-I', '-B', str(root / 'scripts/build_certificate.py'),
                         '--parent', str(root / 'dependencies/D04-evidence.zip'),
                         '--output-dir', str(work / 'rebuilt')], root)
        require(json.loads(build_out) == json.loads((root / 'logs/BUILD.json').read_text(encoding='utf-8')),
                'Builder output differs from frozen result')
        compared = []
        for name in CERT_NAMES:
            original, regenerated = root / 'certificates' / name, work / 'rebuilt' / name
            require(original.read_bytes() == regenerated.read_bytes(), 'Regenerated bytes differ: ' + name)
            compared.append({'path': 'certificates/' + name, 'sha256': sha(original), 'bytes': original.stat().st_size})
        verification_out = run([sys.executable, '-I', '-B', str(root / 'scripts/verify_certificate.py'),
                                '--certificate', str(work / 'rebuilt/certificate.json'),
                                '--parent', str(root / 'dependencies/D04-evidence.zip'),
                                '--output', str(work / 'verification.json'), '--negative-tests'], root)
        verification = json.loads(verification_out)
        require(verification == json.loads((root / 'logs/VERIFY.json').read_text(encoding='utf-8')),
                'Second implementation output differs from frozen result')
        require(verification['status'] == 'PASS' and len(verification['negative_tests']) == 10
                and all(x['rejected'] for x in verification['negative_tests']), 'Verification/negative tests failed')
    # Bind mathematics and source assumptions without introducing a self-hash loop.
    # Administrative manifest and clean receipt hashes are bound by the external final ZIP receipt.
    names = ['REPORT.md', 'PROOFS.md', 'FAILURE_BOUNDARIES.md', 'HANDOFF.md', 'SESSION_STATE.json',
             'SOURCE_ADOPTION.md', 'SOURCES.json', 'replay.py', 'scripts/build_certificate.py',
             'scripts/verify_certificate.py', 'scripts/refresh_manifest.py', 'dependencies/D04-evidence.zip']
    names += sorted(p.relative_to(root).as_posix() for p in (root / 'sources').rglob('*') if p.is_file())
    result = {
        'schema': 'B699-D08-replay-v1', 'status': 'PASS', 'manifest_and_member_provenance': 'PASS',
        'parent_archive_sha256': PARENT_SHA, 'parent_replay': parent_receipt,
        'regenerated_new_certificates': compared, 'verification': verification,
        'bound_payload': [{'path': n, 'sha256': sha(root/n)} for n in names],
        'network_access': False, 'lean_executed': False, 'repository_operations': False,
        'paper_dependencies_remain_author_level': ['historical NC3-to-core map', 'old q>=6', 'old A-EXP', 'old h>A^2'],
        'scope': 'adopted same-origin balanced core with original full P/Q; not the broad C_Z model or full i=3',
        'review_scope': 'same-session exact second implementation and clean replay; not external review or Lean'
    }
    text = dump(result)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(text, encoding='utf-8')
    print(text, end='')


if __name__ == '__main__':
    main()
