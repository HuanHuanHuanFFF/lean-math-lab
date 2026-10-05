"""Low-buffer exact native artifact transport and complete ordinary member intake."""
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
EXTERNAL = Path('D:/ResearchArtifacts/b699-gap-bridge-halfhour')
BUFFER = 256 * 1024
def sha(p):
    h = hashlib.sha256()
    with p.open('rb') as s:
        while part := s.read(BUFFER):
            h.update(part)
    return h.hexdigest()

def capability(artifact):
    class NoRedirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self, req, fp, code, msg, headers, newurl):
            return None
    c = subprocess.run(['git','credential','fill'], input='protocol=https\nhost=github.com\n\n',
        capture_output=True,text=True,check=True)
    token = dict(x.split('=',1) for x in c.stdout.splitlines() if '=' in x).pop('password',None)
    c = None
    req = urllib.request.Request('https://api.github.com/repos/HuanHuanHuanFFF/lean-math-lab/actions/artifacts/'+str(artifact)+'/zip',
        headers={'Authorization':'Bearer '+token,'Accept':'application/vnd.github+json','User-Agent':'B699ExactTransport/1'})
    try:
        urllib.request.build_opener(NoRedirect).open(req,timeout=30)
    except urllib.error.HTTPError as e:
        if e.code not in (301,302,303,307,308):
            raise RuntimeError('Artifact capability request refused') from None
        url = e.headers.get('Location')
    else:
        raise RuntimeError('Artifact API did not provide expected redirect')
    token = req = None
    if not url or not url.startswith('https://'):
        raise RuntimeError('Artifact capability unavailable')
    return url

p = argparse.ArgumentParser()
for n in ['artifact','run','bytes']:
    p.add_argument('--'+n,type=int,required=True)
for n in ['source','stage','sha256']:
    p.add_argument('--'+n,required=True)
a = p.parse_args()
EXTERNAL.mkdir(parents=True,exist_ok=True)
if shutil.disk_usage(EXTERNAL).free < 10*1024**3 + 2*a.bytes:
    raise SystemExit('Disk reserve rejected')
archive = EXTERNAL/(str(a.run)+'-'+a.stage+'.zip')
if archive.exists():
    if archive.stat().st_size != a.bytes or sha(archive) != a.sha256:
        raise SystemExit('Existing archive differs; preserve it')
else:
    partial = archive.with_suffix('.partial')
    if partial.exists():
        raise SystemExit('Partial already exists; preserve and diagnose')
    url = capability(a.artifact)
    with urllib.request.urlopen(url,timeout=30) as src, partial.open('xb') as out:
        while chunk := src.read(BUFFER):
            out.write(chunk)
            if out.tell() > a.bytes:
                raise RuntimeError('Artifact transfer exceeds fixed byte count')
    url = None
    if partial.stat().st_size != a.bytes or sha(partial) != a.sha256:
        raise RuntimeError('Full artifact size/SHA differs; partial retained')
    partial.rename(archive)
dst = HERE/'ci'/(str(a.run)+'-'+a.stage)
obj = EXTERNAL/'objects'/(str(a.run)+'-'+a.stage)
if dst.exists():
    raise SystemExit('Refuse overwriting prior intake')
dst.mkdir(parents=True)
reusable = {}
old = HERE.parents[1]
for base in [old/'20261005-lean-halfhour/runtime/ci',old/'20261005-lean-formal-seventyfive/runtime/ci',HERE/'ci']:
    for f in base.glob('*/RAW_INTAKE.json'):
        for r in json.loads(f.read_text()).get('members',[]):
            reusable.setdefault((r['bytes'],r['sha256']),r)
rows = []
with zipfile.ZipFile(archive) as z:
    manifest = json.loads(z.read('delivery-manifest.json'))
    if manifest['head'] != a.source or str(manifest['runId']) != str(a.run):
        raise RuntimeError('Native source/run binding differs')
    plan = {r['path']:r for r in manifest['members']}
    names = {x.filename for x in z.infolist() if not x.is_dir()}
    if names != set(plan)|{'delivery-manifest.json'}:
        raise RuntimeError('Native member completeness differs')
    for item in z.infolist():
        if item.is_dir():
            continue
        name = item.filename
        expected = plan.get(name)
        binary = name.startswith('objects/')
        prior = reusable.get((expected['bytes'],expected['sha256'])) if expected else None
        if prior:
            retained = Path(prior['storedPath'])
            if retained.is_file() and retained.stat().st_size == expected['bytes'] and sha(retained) == expected['sha256']:
                h = hashlib.sha256()
                with z.open(item) as s:
                    while part := s.read(BUFFER):h.update(part)
                if h.hexdigest() != expected['sha256']:
                    raise RuntimeError('Mapped native member differs')
                rows.append({'member':name,**expected,'storedPath':str(retained.resolve()),
                    'binaryOutsideGit':binary,'reusedExactBytesFrom':prior['member']})
                continue
        root = obj if binary else dst
        target = root/name
        if not target.resolve().is_relative_to(root.resolve()):
            raise RuntimeError('Native member escapes fixed root')
        target.parent.mkdir(parents=True,exist_ok=True)
        with z.open(item) as src,target.open('xb') as out:
            shutil.copyfileobj(src,out,BUFFER)
        digest = sha(target)
        if expected and (target.stat().st_size != expected['bytes'] or digest != expected['sha256']):
            raise RuntimeError('Native member size/SHA differs')
        rows.append({'member':name,'bytes':target.stat().st_size,'sha256':digest,
            'storedPath':str(target.resolve()),'binaryOutsideGit':binary})
r = {'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'sourceCommit':a.source,'runId':a.run,
    'artifactId':a.artifact,'archivePath':str(archive.resolve()),'zipBytes':a.bytes,'zipSha256':a.sha256,
    'members':rows,'ordinaryMemberCount':sum(not x['binaryOutsideGit'] for x in rows),
    'binaryMemberCount':sum(x['binaryOutsideGit'] for x in rows),
    'reusedExactMemberCount':sum('reusedExactBytesFrom' in x for x in rows),
    'bufferBytesUpperBound':BUFFER,'scope':'complete native bytes; S independently binds mathematics'}
(dst/'RAW_INTAKE.json').write_text(json.dumps(r,indent=2)+'\n',newline='\n')
print(json.dumps({k:v for k,v in r.items() if k!='members'}))
