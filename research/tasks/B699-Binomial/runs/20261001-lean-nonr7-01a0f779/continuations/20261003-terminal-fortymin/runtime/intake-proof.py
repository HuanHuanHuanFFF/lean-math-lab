"""Administrative exact-byte intake only; never runs Lean or accepts mathematics."""
import datetime,hashlib,json,shutil,zipfile
from pathlib import Path
REPO=Path.cwd().resolve();HERE=Path(__file__).resolve().parent
ARCHIVE=Path('D:/ResearchArtifacts/b699-terminal-fortymin/b699-main-37037647747.zip')
ORDINARY=HERE/'ci/37037647747'
BINARY=REPO/'.tools/b699-lean-20261001-01a0f779/20261003-terminal-fortymin/runtime/artifacts/37037647747'
def main():
    rows=[];binary_rows=[]
    with zipfile.ZipFile(ARCHIVE) as z:
        plan=json.loads(z.read('byte-manifest.json'));expected={m['path']:m for m in plan['members']}
        files=[i for i in z.infolist() if not i.is_dir()]
        if {i.filename for i in files}!=set(expected)|{'byte-manifest.json'}:raise RuntimeError('Member set differs')
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
    record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'archive':str(ARCHIVE),'archiveBytes':320392657,'archiveSha256':'29a3d9f21851cfa9c7b61ee05f601e81303d71732f202fae3d69a1b65e78da13','sourceCommit':'be6b2df9b58b4f732564dc882945ec5415c81f1a','run':37037647747,'scope':'administrative exact-byte intake only; no math acceptance','members':rows}
    (HERE/'ci/37037647747-intake.json').write_text(json.dumps(record,indent=2)+'\n')
    (HERE/'ci/37037647747-object-location-map.json').write_text(json.dumps({'scope':'exact original object byte navigation, no receipt rewrite','members':binary_rows},indent=2)+'\n')
    print(json.dumps({'members':len(rows),'ordinary':len(rows)-len(binary_rows),'ignoredBinary':len(binary_rows),'originalManifestBytesAllEqual':True}))
if __name__=='__main__':main()
