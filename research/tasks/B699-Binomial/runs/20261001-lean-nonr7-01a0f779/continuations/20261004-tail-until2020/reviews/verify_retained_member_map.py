"""Check every actual retained ordinary/binary byte path against the complete raw ZIP.

Usage: python verify_retained_member_map.py RAW_INTAKE SIGNATURE OUTPUT_JSON
This is retention/provenance verification, not a new proof or kernel rerun.
"""
import hashlib
import json
import sys
import zipfile
from datetime import datetime, timezone
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = next(p for p in HERE.parents if (p / '.git').exists())
DEADLINE = datetime.fromisoformat('2026-10-04T12:20:00+00:00')


def require(value, message):
    if not value:
        raise ValueError(message)


def digest(stream):
    h = hashlib.sha256()
    for chunk in iter(lambda: stream.read(1024 * 1024), b''):
        h.update(chunk)
    return h.hexdigest()


def main():
    require(len(sys.argv) == 4, 'Expected intake, signature, output')
    require(datetime.now(timezone.utc) < DEADLINE, 'Original review deadline expired')
    intake_path, sig_path, output_path = map(Path, sys.argv[1:])
    intake_raw = intake_path.read_bytes()
    sig_raw = sig_path.read_bytes()
    intake = json.loads(intake_raw)
    signature = json.loads(sig_raw)
    require(intake['sourceCommit'] == signature['fixedSourceCommit']
                and str(intake['runId']) == signature['actualRunId']
                and str(intake['artifactId']) == signature['artifactId']
                and intake['zipSha256'] == signature['archiveSha256'],
            'Retention map fixed source/run/artifact/ZIP differs from acceptance')
    archive = Path(intake['archivePath'])
    require(archive.stat().st_size == intake['zipBytes'], 'Raw retained archive size differs')
    with archive.open('rb') as raw:
        require(digest(raw) == intake['zipSha256'], 'Raw retained archive SHA differs')
    mapped = {row['member']: row for row in intake['members']}
    require(len(mapped) == len(intake['members']), 'Duplicate retention mapping')
    binary_count = 0
    total_bytes = 0
    with zipfile.ZipFile(archive) as z:
        names = z.namelist()
        require(len(names) == len(set(names)) and set(names) == set(mapped),
                'Every ordinary member, including nested/self manifests, must be retained')
        for name, row in mapped.items():
            require(datetime.now(timezone.utc) < DEADLINE, 'Original review deadline expired')
            stored = Path(row['storedPath']).resolve()
            is_binary = name.startswith('objects/')
            require(row['binaryOutsideGit'] is is_binary, 'Member binary classification differs')
            require(stored.is_relative_to(REPO) is (not is_binary), 'Member retained in wrong Git boundary')
            require(stored.stat().st_size == row['bytes'] == z.getinfo(name).file_size,
                    'Retained member size differs: ' + name)
            with stored.open('rb') as raw:
                actual = digest(raw)
            with z.open(name) as raw:
                archived = digest(raw)
            require(actual == archived == row['sha256'], 'Exact retained member bytes differ: ' + name)
            binary_count += is_binary
            total_bytes += row['bytes']
    ordinary_count = len(mapped) - binary_count
    require(ordinary_count == intake['ordinaryMemberCount'] and binary_count == intake['binaryMemberCount'],
            'Retained ordinary/binary totals differ')
    result = {'status': 'exact-retained-member-map-verified',
              'verifier': '/root/tail90_verification', 'utc': datetime.now(timezone.utc).isoformat(),
              'sourceCommit': intake['sourceCommit'], 'runId': intake['runId'], 'artifactId': intake['artifactId'],
              'archiveSha256': intake['zipSha256'], 'archiveBytes': intake['zipBytes'],
              'memberCount': len(mapped), 'ordinaryMemberCount': ordinary_count,
              'binaryMemberCount': binary_count, 'totalMemberBytes': total_bytes,
              'intakePath': str(intake_path), 'intakeSha256': hashlib.sha256(intake_raw).hexdigest(),
              'acceptancePath': str(sig_path), 'acceptanceSha256': hashlib.sha256(sig_raw).hexdigest(),
              'scriptSha256': hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
              'kernelRerun': False}
    output_path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    print('Exact retained mapping: %d ordinary + %d binary members' % (ordinary_count, binary_count))


if __name__ == '__main__':
    main()
