"""Administrative exact-byte intake only; never runs Lean or accepts mathematics."""
import argparse,datetime,hashlib,json,shutil,zipfile
from pathlib import Path
REPO=Path.cwd().resolve();HERE=Path(__file__).resolve().parent
parser=argparse.ArgumentParser();parser.add_argument('--archive',required=True);parser.add_argument('--run',type=int,required=True);parser.add_argument('--head',required=True);parser.add_argument('--sha256',required=True);parser.add_argument('--channel',required=True);args=parser.parse_args()
ARCHIVE=Path(args.archive)
ORDINARY=HERE/'ci'/(str(args.run)+'-'+args.channel)
BINARY=REPO/'.tools/b699-lean-20261001-01a0f779/20261003-gap-finite-fortymin/runtime/artifacts'/(str(args.run)+'-'+args.channel)
def main():
    with ARCHIVE.open('rb') as f:actual_sha=hashlib.file_digest(f,'sha256').hexdigest()
    if actual_sha!=args.sha256:raise RuntimeError('Archive digest differs')
    rows=[];binary_rows=[]
    with zipfile.ZipFile(ARCHIVE) as z:
        plan=json.loads(z.read('byte-manifest.json'))
        if str(plan.get('runId'))!=str(args.run) or plan.get('head')!=args.head:raise RuntimeError('Archive source/run differs')
        expected={m['path']:m for m in plan['members']}
        files=[i for i in z.infolist() if not i.is_dir()]
        actual={i.filename for i in files}
        extra=actual-set(expected)-{'byte-manifest.json'};missing=set(expected)-actual
        if missing or extra-{'accepted-proof/byte-manifest.json'}:raise RuntimeError('Unexpected member set differs')
        nested_origin=None
        if extra:
            with zipfile.ZipFile('D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip') as original:
                oldmeta=original.read('byte-manifest.json')
            currentmeta=z.read('accepted-proof/byte-manifest.json')
            if oldmeta!=currentmeta:raise RuntimeError('Unlisted nested old manifest bytes differ')
            nested_origin={'member':'accepted-proof/byte-manifest.json','sourceArchive':'D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip','sourceArchiveSha256':'29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13','originMember':'byte-manifest.json','bytes':len(currentmeta),'sha256':hashlib.sha256(currentmeta).hexdigest(),'scope':'administrative byte equality; original outer manifest remains unchanged'}
        if shutil.disk_usage('D:/').free-sum(i.file_size for i in files)<20*1024**3:raise RuntimeError('D reserve after intake insufficient')
        for i in files:
            name=i.filename;binary=name.endswith(('.olean','.olean.private','.olean.server','.ir','.sig'))
            root=BINARY if binary else ORDINARY;target=(root/name).resolve()
            if not target.is_relative_to(root.resolve()):raise RuntimeError('Member escapes exact owned target')
            if target.exists():raise RuntimeError('Refuse overwriting member')
            target.parent.mkdir(parents=True,exist_ok=True);h=hashlib.sha256();size=0
            with z.open(i) as source,target.open('xb') as out:
                while True:
                    data=source.read(1024*1024)
                    if not data:break
                    out.write(data);h.update(data);size+=len(data)
            digest=h.hexdigest()
            if name in expected and (size!=expected[name]['bytes'] or digest!=expected[name]['sha256']):raise RuntimeError('Original member bytes differ')
            r={'member':name,'storedPath':str(target),'bytes':size,'sha256':digest,'binaryOutsideResearch':binary};rows.append(r)
            if binary:binary_rows.append(r)
    record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'archive':str(ARCHIVE),'archiveBytes':ARCHIVE.stat().st_size,'archiveSha256':actual_sha,'sourceCommit':args.head,'run':args.run,'channel':args.channel,'outerManifestMissing':sorted(missing),'unlistedMetadataSource':nested_origin,'scope':'administrative exact-byte intake only; no math acceptance','members':rows}
    (HERE/'ci'/f'{args.run}-{args.channel}-intake.json').write_text(json.dumps(record,indent=2)+'\n')
    (HERE/'ci'/f'{args.run}-{args.channel}-object-location-map.json').write_text(json.dumps({'scope':'exact original object byte navigation, no receipt rewrite','members':binary_rows},indent=2)+'\n')
    print(json.dumps({'members':len(rows),'ordinary':len(rows)-len(binary_rows),'ignoredBinary':len(binary_rows),'originalManifestBytesAllEqual':True}))
if __name__=='__main__':main()
