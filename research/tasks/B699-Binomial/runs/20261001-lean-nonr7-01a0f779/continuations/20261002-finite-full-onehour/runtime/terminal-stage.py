"""Fixed artifact byte reuse plus serial terminal-height source verification."""
import importlib.util,json,os,shutil,sys,time,urllib.request,zipfile
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'terminal-stage-spec.json').read_text(encoding='utf-8-sig'))
loader=importlib.util.spec_from_file_location('fixed_full_runtime',HERE/'full-stage-v3.py')
f=importlib.util.module_from_spec(loader);loader.loader.exec_module(f);b=f.b
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
_launch=b.launch
def calibrated_terminal_launch(*args,**kwargs):
    kwargs['startup_mib']=5120;kwargs['tree_mib']=3072
    return _launch(*args,**kwargs)
b.launch=calibrated_terminal_launch
def run():
    b.EVIDENCE.mkdir(parents=True,exist_ok=True)
    start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())))
    b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
    safe=json.loads(json.dumps(SPEC));safe['transport'].pop('downloadUrl',None)
    b.write('terminal-spec-redacted.json',safe);shutil.copyfile(__file__,b.EVIDENCE/'terminal-stage.py')
    transport=SPEC['transport'];archive=b.ROOT/'accepted-full.zip'
    # Download the proof-only read capability first; never print its URL or put it in argv.
    with urllib.request.urlopen(transport['downloadUrl'],timeout=60) as src,archive.open('wb') as out:
        shutil.copyfileobj(src,out)
    if b.sha(archive)!=transport['zipSha256']:raise RuntimeError('Transferred fixed proof ZIP digest differs')
    unpack=b.ROOT/'accepted-full';unpack.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(archive) as z:
        for entry in z.infolist():
            if entry.is_dir():continue
            p=(unpack/entry.filename).resolve()
            if not p.is_relative_to(unpack.resolve()):raise RuntimeError('Artifact member path outside fixed root')
            p.parent.mkdir(parents=True,exist_ok=True)
            with z.open(entry) as src,p.open('wb') as out:shutil.copyfileobj(src,out)
    manifest=json.loads((unpack/'byte-manifest.json').read_text())
    for member in manifest['members']:
        p=unpack/member['path']
        if p.stat().st_size!=member['bytes'] or b.sha(p)!=member['sha256']:raise RuntimeError('Transferred member byte binding differs')
    if manifest['head']!=transport['sourceCommit']:raise RuntimeError('Artifact source commit differs')
    if not (unpack/'finite-original-closed.json').is_file():raise RuntimeError('Source artifact lacks accepted finite phase closure')
    copied=[]
    for root in [unpack/'objects',unpack/'generated-sources']:
        for p in root.rglob('*'):
            if not p.is_file():continue
            target=b.OBJECTS/p.relative_to(root) if root.name=='objects' else b.REPO/p.relative_to(root)
            target.parent.mkdir(parents=True,exist_ok=True)
            if target.exists() and b.sha(target)!=b.sha(p):raise RuntimeError('Refuse replacing different source/object byte')
            if not target.exists():shutil.copyfile(p,target)
            copied.append({'origin':str(p),'target':str(target),'bytes':p.stat().st_size,'sha256':b.sha(p)})
    b.write('accepted-full-transfer.json',{'utc':b.utc(),'sourceCommit':transport['sourceCommit'],'zipSha256':transport['zipSha256'],'members':copied})
    index={}
    for p in unpack.rglob('receipt.json'):
        r=json.loads(p.read_text())
        if r.get('mode')!='Lean' or r.get('status')!='success' or r.get('exitCode')!=0 or not r.get('sourceUnchanged'):continue
        try:rel=Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
        except ValueError:continue
        if '/evidence/objects/' not in r.get('object',''):continue
        obj=b.OBJECTS/r['object'].split('/evidence/objects/',1)[1]
        if not obj.is_file() or b.sha(obj)!=r['objectSha256']:raise RuntimeError('Reused successful object differs')
        for part in r.get('objectParts',[]):
            dst=b.OBJECTS/part['path'].split('/evidence/objects/',1)[1]
            if not dst.is_file() or b.sha(dst)!=part['sha256'] or dst.stat().st_size!=part['bytes']:raise RuntimeError('Reused object part differs')
        if (b.REPO/rel).is_file() and b.sha(b.REPO/rel)==r['sourceSha256']:index[rel]=r
    b.SPEC['mathlibImports']=SPEC['cacheRoots']
    previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner.py'),'cache']
    try:b.main()
    finally:sys.argv=previous
    old_tool=json.loads((unpack/'toolchain.json').read_text());new_tool=json.loads((b.EVIDENCE/'toolchain.json').read_text())
    for key in ['leanSha256','leancheckerSha256']:
        if old_tool[key]!=new_tool[key]:raise RuntimeError('Exact reused object toolchain byte binding differs')
    env=b.lean_env();reuse=[]
    for i,source in enumerate(SPEC['sources']):
        path=source['path'];p=b.REPO/path
        if p.stat().st_size!=source['bytes'] or b.sha(p)!=source['sha256']:raise RuntimeError('Fixed terminal source bytes differ')
        if path in index:reuse.append({'path':path,'sourceSha256':source['sha256'],'objectSha256':index[path]['objectSha256']});continue
        f.compile(path,f'terminal-{i:03d}-{p.stem}',env)
    b.write('terminal-object-reuse.json',{'utc':b.utc(),'reusedNotRecompiled':reuse})
    f.check(SPEC['checkerModule'],'terminal-original-normal-checker',env)
    b.write('terminal-closed.json',{'utc':b.utc(),'status':'kernel-audit-checker-passed','sourceCommit':transport['sourceCommit'],'mathematicalAcceptance':'pending independent semantic review'})
if __name__=='__main__':
    try:
        if len(sys.argv)>1 and sys.argv[1]=='manifest':sys.argv=[str(HERE/'linux-runner.py'),'manifest'];b.main()
        else:run()
    except BaseException as e:
        text=str(e).replace(SPEC.get('transport',{}).get('downloadUrl','[no-url]'),'[redacted-proof-transport-url]')
        b.write('terminal-failure.json',{'utc':b.utc(),'failure':text,'class':type(e).__name__});print(text,file=sys.stderr);sys.exit(1)
