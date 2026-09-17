"""Create this round's ZIP, then replay only new checks in a clean directory.

No historical script is executed. Outputs must be outside the source tree.
"""
from pathlib import Path
import argparse
import datetime
import hashlib
import json
import subprocess
import sys
import time
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def sha(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def file_map(root: Path) -> dict[str, str]:
    return {str(p.relative_to(root)): sha(p.read_bytes())
            for p in sorted(root.rglob('*'))
            if p.is_file() and '__pycache__' not in p.parts and p.suffix != '.pyc'}


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument('--zip', required=True, type=Path)
    parser.add_argument('--work', required=True, type=Path)
    parser.add_argument('--receipt', required=True, type=Path)
    args = parser.parse_args()
    targets = [args.zip.resolve(), args.work.resolve(), args.receipt.resolve()]
    for p in targets:
        if p == ROOT or ROOT in p.parents:
            raise ValueError('release outputs must be outside the source tree')
        if p.exists():
            raise FileExistsError(str(p))
    args.zip.parent.mkdir(parents=True, exist_ok=True)
    records = file_map(ROOT)
    records.pop('SHA256SUMS.json', None)
    manifest = {'algorithm': 'sha256', 'excludes_self': True,
                'members': records}
    (ROOT/'SHA256SUMS.json').write_text(json.dumps(manifest, indent=2) + '\n')
    names = sorted([*records, 'SHA256SUMS.json'])
    with zipfile.ZipFile(args.zip, 'w', compression=zipfile.ZIP_DEFLATED,
                         compresslevel=9) as out:
        for name in names:
            out.write(ROOT/name, ROOT.name+'/'+name)
    args.work.mkdir(parents=True)
    with zipfile.ZipFile(args.zip) as z:
        if z.testzip() is not None:
            raise RuntimeError('ZIP CRC failure')
        if len(z.infolist()) != len(names):
            raise RuntimeError('ZIP member count mismatch')
        for name, digest in records.items():
            if sha(z.read(ROOT.name+'/'+name)) != digest:
                raise RuntimeError('ZIP source hash mismatch: '+name)
        z.extractall(args.work)
    clean = args.work/ROOT.name
    before = file_map(clean)
    outdir = args.work/'clean-new-replay'
    st = time.perf_counter()
    proc = subprocess.run([sys.executable, '-B', str(clean/'code/reproduce.py'),
                           '--out', str(outdir)], capture_output=True, text=True,
                          check=False)
    elapsed = time.perf_counter()-st
    (args.work/'stdout.txt').write_text(proc.stdout)
    (args.work/'stderr.txt').write_text(proc.stderr)
    if proc.returncode != 0:
        raise RuntimeError('clean new replay failed; see '+str(args.work))
    after = file_map(clean)
    if after != before:
        raise RuntimeError('clean replay changed archived data')
    summary = json.loads((outdir/'summary.json').read_text())
    expected = 'PASS_COMPLETE_NEW_COMPONENT_OBSTRUCTIONS_REPLAY'
    if summary['status'] != expected:
        raise RuntimeError('unexpected replay status')
    receipt = {'status': 'PASS_ARCHIVE_INTEGRITY_AND_CLEAN_NEW_REPLAY',
               'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
               'zip_name': args.zip.name, 'zip_bytes': args.zip.stat().st_size,
               'zip_sha256': sha(args.zip.read_bytes()),
               'zip_members': len(names), 'data_members_in_manifest': len(records),
               'manifest_excludes_itself': True, 'crc_all_members': 'PASS',
               'all_member_sha256': 'PASS', 'hashes_before_after_equal': True,
               'new_replay_wall_seconds': elapsed,
               'new_replay_reported_seconds': summary['seconds'],
               'new_replay': summary, 'old_code_executed': False,
               'no_lean_no_external_independent_review': True}
    args.receipt.parent.mkdir(parents=True, exist_ok=True)
    args.receipt.write_text(json.dumps(receipt, indent=2) + '\n')
    print(json.dumps({k: receipt[k] for k in ['status', 'zip_bytes', 'zip_members',
                      'data_members_in_manifest', 'new_replay_reported_seconds']}))


if __name__ == '__main__':
    main()
