"""Read-only existing-credential GitHub download and complete member intake."""
import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import urllib.error
import urllib.request
import zipfile

HERE = Path(__file__).resolve().parent


def sha(path):
    h = hashlib.sha256()
    with Path(path).open('rb') as f:
        while block := f.read(1024 * 1024):
            h.update(block)
    return h.hexdigest()


def download(artifact, target):
    # Existing credential read only. Never print, save, or forward the password.
    result = subprocess.run(['git', 'credential', 'fill'],
        input='protocol=https\nhost=github.com\n\n', capture_output=True, text=True, check=True)
    fields = dict(x.split('=', 1) for x in result.stdout.splitlines() if '=' in x)
    token = fields.pop('password', None)
    result = fields = None
    if not token:
        raise RuntimeError('Existing Git credential unavailable')
    class NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self, req, fp, code, msg, headers, newurl):
            return None
    api = 'https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/actions/artifacts/' + str(artifact) + '/zip'
    request = urllib.request.Request(api, headers={'Authorization': 'Bearer ' + token,
        'Accept': 'application/vnd.github+json', 'User-Agent': 'B699ReadonlyIntake/1'})
    capability = None
    try:
        response = urllib.request.build_opener(NoRedirect).open(request, timeout=20)
    except urllib.error.HTTPError as exc:
        if exc.code in (301, 302, 303, 307, 308):
            capability = exc.headers.get('Location')
        else:
            raise RuntimeError('Same-repository read refused: HTTP' + str(exc.code)) from None
    token = request = None
    if not capability or not capability.startswith('https://'):
        raise RuntimeError('No HTTPS artifact redirect')
    target.parent.mkdir(parents=True, exist_ok=True)
    with urllib.request.urlopen(capability, timeout=30) as source, target.open('xb') as out:
        shutil.copyfileobj(source, out)
    capability = None


def intake(args, archive):
    target = HERE / 'ci' / (str(args.run) + '-' + args.stage)
    objects = args.archive_root / 'objects' / (str(args.run) + '-' + args.stage)
    if target.exists() or objects.exists():
        raise RuntimeError('Refuse overwriting an existing intake')
    target.mkdir(parents=True)
    mappings = []
    reusable = {}
    if args.reuse_object_intake:
        old = json.loads((args.reuse_object_intake / 'RAW_INTAKE.json').read_text())
        reusable = {x['member']: x for x in old['members'] if x['binaryOutsideGit']}
    with zipfile.ZipFile(archive) as z:
        manifest = json.loads(z.read('delivery-manifest.json'))
        if manifest['head'] != args.source or str(manifest['runId']) != str(args.run):
            raise RuntimeError('New artifact source or run differs')
        plan = {x['path']: x for x in manifest['members']}
        members = {x.filename for x in z.infolist() if not x.is_dir()}
        if members != set(plan) | {'delivery-manifest.json'}:
            raise RuntimeError('Incomplete or extra delivery members')
        for item in z.infolist():
            if item.is_dir():
                continue
            binary = item.filename.startswith('objects/')
            previous = reusable.get(item.filename) if binary else None
            if previous and item.filename in plan and previous['bytes'] == plan[item.filename]['bytes'] and previous['sha256'] == plan[item.filename]['sha256']:
                h = hashlib.sha256()
                with z.open(item) as src:
                    while block := src.read(1024 * 1024):
                        h.update(block)
                canonical = Path(previous['storedPath'])
                if h.hexdigest() != previous['sha256'] or canonical.stat().st_size != previous['bytes'] or sha(canonical) != previous['sha256']:
                    raise RuntimeError('Reusable exact binary member differs')
                mappings.append({**previous, 'reusedExactBinaryFrom': str(args.reuse_object_intake.resolve())})
                continue
            root = objects if binary else target
            path = root / item.filename
            if not path.resolve().is_relative_to(root.resolve()):
                raise RuntimeError('Member path escapes intake')
            path.parent.mkdir(parents=True, exist_ok=True)
            with z.open(item) as src, path.open('xb') as out:
                shutil.copyfileobj(src, out)
            digest = sha(path)
            if item.filename in plan:
                row = plan[item.filename]
                if path.stat().st_size != row['bytes'] or digest != row['sha256']:
                    raise RuntimeError('Delivery member bytes differ')
            mappings.append({'member': item.filename, 'bytes': path.stat().st_size,
                'sha256': digest, 'storedPath': str(path.resolve()), 'binaryOutsideGit': binary})
    record = {'utc': dt.datetime.now(dt.timezone.utc).isoformat(), 'sourceCommit': args.source,
        'runId': args.run, 'artifactId': args.artifact, 'archivePath': str(archive.resolve()),
        'zipBytes': archive.stat().st_size, 'zipSha256': sha(archive), 'members': mappings,
        'ordinaryMemberCount': sum(not x['binaryOutsideGit'] for x in mappings),
        'binaryMemberCount': sum(x['binaryOutsideGit'] for x in mappings),
        'reusedExactBinaryMemberCount': sum('reusedExactBinaryFrom' in x for x in mappings),
        'reusedExactBinaryBytes': sum(x['bytes'] for x in mappings if 'reusedExactBinaryFrom' in x),
        'scope': 'complete raw-byte intake; mathematical acceptance pending named S'}
    (target / 'RAW_INTAKE.json').write_text(json.dumps(record, indent=2) + '\n', newline='\n')
    stages = []
    for p in target.glob('*/receipt.json'):
        r = json.loads(p.read_text())
        stages.append({'member': p.relative_to(target).as_posix(), **{key: r.get(key) for key in
            ['startUtc', 'endUtc', 'wallSeconds', 'exitCode', 'childStarted', 'peakTreeWorkingSetBytes', 'stopReason']}})
    (target / 'STAGE_COSTS.json').write_text(json.dumps({'head': args.source, 'stages': stages}, indent=2) + '\n', newline='\n')
    print(json.dumps({'run': args.run, 'stage': args.stage, 'zipBytes': record['zipBytes'],
        'zipSha256': record['zipSha256'], 'ordinaryMembers': record['ordinaryMemberCount'],
        'binaryMembers': record['binaryMemberCount'], 'rawPath': str(target.resolve()),
        'reusedExactBinaryMembers': record['reusedExactBinaryMemberCount'],
        'reusedExactBinaryBytes': record['reusedExactBinaryBytes'],
        'maxPeakBytes': max([r['peakTreeWorkingSetBytes'] or 0 for r in stages] or [0])}))


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--artifact', type=int, required=True)
    p.add_argument('--run', type=int, required=True)
    p.add_argument('--stage', required=True)
    p.add_argument('--source', required=True)
    p.add_argument('--archive-root', type=Path, default=Path('D:/ResearchArtifacts/b699-tail-twohour-finish'))
    p.add_argument('--archive', type=Path)
    p.add_argument('--reuse-object-intake', type=Path)
    args = p.parse_args()
    archive = args.archive or args.archive_root / ('b699-tail2h-' + args.stage + '-' + str(args.run) + '.zip')
    if not archive.exists():
        download(args.artifact, archive)
    intake(args, archive)


if __name__ == '__main__':
    try:
        main()
    except BaseException as exc:
        # External URL values are never included in errors or stored records.
        print(type(exc).__name__ + ': ' + (str(exc) if 'http' not in str(exc) else 'Transport failed; URL omitted'))
        raise SystemExit(1)
