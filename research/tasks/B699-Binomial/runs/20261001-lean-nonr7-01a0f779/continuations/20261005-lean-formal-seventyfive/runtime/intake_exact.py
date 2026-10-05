"""Full original member intake, retaining exact prior ordinary and binary bytes."""
import argparse
import datetime as dt
import hashlib
import json
from pathlib import Path
import shutil
import zipfile

HERE=Path(__file__).resolve().parent
OLD=HERE.parent.parent/'20261004-tail-twohour-finish/runtime'
def sha(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        while x:=f.read(1024*1024): h.update(x)
    return h.hexdigest()

def main():
    p=argparse.ArgumentParser()
    p.add_argument('--archive',type=Path,required=True)
    for n in ['artifact','run','bytes']:p.add_argument('--'+n,type=int,required=True)
    for n in ['source','stage','sha256']:p.add_argument('--'+n,required=True)
    a=p.parse_args()
    if a.archive.stat().st_size!=a.bytes or sha(a.archive)!=a.sha256:raise RuntimeError('Full archive size/SHA gate failed')
    dst=HERE/'ci'/(str(a.run)+'-'+a.stage)
    obj=Path('D:/ResearchArtifacts/b699-formal75/objects')/(str(a.run)+'-'+a.stage)
    if dst.exists() or obj.exists():raise RuntimeError('Refuse overwriting prior intake')
    reusable={}
    for base in [OLD/'ci',HERE/'ci']:
        for f in base.glob('*/RAW_INTAKE.json'):
            for x in json.loads(f.read_text()).get('members',[]):
                reusable.setdefault((x['bytes'],x['sha256']),x)
    dst.mkdir(parents=True)
    rows=[]
    with zipfile.ZipFile(a.archive) as z:
        raw=z.read('delivery-manifest.json'); m=json.loads(raw)
        if m['head']!=a.source or str(m['runId'])!=str(a.run):raise RuntimeError('Fixed source/run differs')
        plan={x['path']:x for x in m['members']}
        names={x.filename for x in z.infolist() if not x.is_dir()}
        if names!=set(plan)|{'delivery-manifest.json'}:raise RuntimeError('Native member completeness differs')
        for item in z.infolist():
            if item.is_dir():continue
            name=item.filename; binary=name.startswith('objects/')
            expected=plan.get(name)
            prior=reusable.get((expected['bytes'],expected['sha256'])) if expected else None
            if prior:
                source=Path(prior['storedPath'])
                if source.is_file() and source.stat().st_size==expected['bytes'] and sha(source)==expected['sha256']:
                    h=hashlib.sha256()
                    with z.open(item) as stream:
                        while b:=stream.read(1024*1024):h.update(b)
                    if h.hexdigest()!=expected['sha256']:raise RuntimeError('Reused original native member differs')
                    rows.append({'member':name,'bytes':expected['bytes'],'sha256':expected['sha256'],
                         'storedPath':str(source.resolve()),'binaryOutsideGit':binary,'reusedExactBytesFrom':prior['member']})
                    continue
            root=obj if binary else dst; target=root/name
            if not target.resolve().is_relative_to(root.resolve()):raise RuntimeError('Member escapes intake root')
            target.parent.mkdir(parents=True,exist_ok=True)
            with z.open(item) as src,target.open('xb') as out:shutil.copyfileobj(src,out)
            digest=sha(target)
            if expected and (target.stat().st_size!=expected['bytes'] or digest!=expected['sha256']):raise RuntimeError('Native original bytes differ')
            rows.append({'member':name,'bytes':target.stat().st_size,'sha256':digest,'storedPath':str(target.resolve()),'binaryOutsideGit':binary})
    result={'utc':dt.datetime.now(dt.timezone.utc).isoformat(),'sourceCommit':a.source,'runId':a.run,'artifactId':a.artifact,
       'archivePath':str(a.archive.resolve()),'zipBytes':a.bytes,'zipSha256':a.sha256,'members':rows,
       'ordinaryMemberCount':sum(not x['binaryOutsideGit'] for x in rows),'binaryMemberCount':sum(x['binaryOutsideGit'] for x in rows),
       'reusedExactMemberCount':sum('reusedExactBytesFrom' in x for x in rows),'reusedExactBytes':sum(x['bytes'] for x in rows if 'reusedExactBytesFrom' in x),
       'scope':'complete original byte intake; named S mathematical binding separate'}
    (dst/'RAW_INTAKE.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='members'}))

if __name__=='__main__':main()
