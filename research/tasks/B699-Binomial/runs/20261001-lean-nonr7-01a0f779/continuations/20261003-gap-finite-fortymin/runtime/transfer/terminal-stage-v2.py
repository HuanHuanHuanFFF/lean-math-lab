"""Exact accepted-proof reuse and controlled serial terminal verification."""
import contextlib, fcntl, importlib.util, json, os, re, shutil, signal, sys, time, urllib.parse, urllib.request, zipfile
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'terminal-stage-v2-spec.json').read_text(encoding='utf-8-sig'))
loader=importlib.util.spec_from_file_location('controlled_runtime',HERE/'linux-runner-v2.py')
b=importlib.util.module_from_spec(loader);loader.loader.exec_module(b)
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
CAPABILITY=None
_launch=b.launch
def terminal_launch(*args,**kwargs):
    label=str(args[1] if len(args)>1 else kwargs.get('label',''))
    ec=any(x in label for x in ['ElementaryCount','elementary','ICConsumer','RowsNumeric','UniformCountTail','Consumers','FiniteConsumerLegacy','FinalConsumersTypedLegacy','terminal-original-normal-checker','LocalizedConsumerLegacy','CompositeTransfer','CompositeExact','CompositeActualTypes','composite','OriginalPrefix','localized-original','localized-final-types'])
    if ec:kwargs['startup_mib']=6144;kwargs['tree_mib']=5120
    kwargs.setdefault('startup_mib',SPEC['proofStartupMiB'])
    kwargs.setdefault('tree_mib',SPEC['proofTreeMiB'])
    return _launch(*args,**kwargs)
b.launch=terminal_launch
@contextlib.contextmanager
def locked():
    p=b.REPO/'.tools/b699-lean-20261001-01a0f779/runtime/compile.lock';p.parent.mkdir(parents=True,exist_ok=True)
    with p.open('a+b') as f:
        fcntl.flock(f,fcntl.LOCK_EX|fcntl.LOCK_NB)
        b.write('lock-receipt.json',{'utc':b.utc(),'controllerPid':os.getpid(),'path':str(p),'scope':'advisory global controlled stage lock; GitHub concurrency serializes remote jobs'})
        try:yield
        finally:fcntl.flock(f,fcntl.LOCK_UN)
def check_deadline():
    if time.time()>=b.DEADLINE:raise RuntimeError('Original absolute deadline reached')
def mod(path):return '.'.join('«'+x+'»' if '-' in x or x[:1].isdigit() else x for x in path[:-5].split('/'))
def declared(path):
    stack=[];result=[]
    for line in Path(path).read_text(encoding='utf-8-sig').splitlines():
        m=re.match(r'^namespace\s+(\S+)',line)
        if m:stack.append(m[1]);continue
        if re.match(r'^section(?:\s|$)',line):stack.append('');continue
        if re.match(r'^end(?:\s|$)',line):
            if stack:stack.pop()
            continue
        m=re.match(r'^(?:(?:public|protected)\s+)?theorem\s+(\S+)',line)
        if m:result.append('.'.join([x for x in stack if x]+[m[1]]))
    return result
def audited(r,roots):
    actual={};raw=Path(r['stdout']).read_text()
    for m in re.finditer(r"'([^']+)' (?:depends on axioms:\s*\[([^\]]*)\]|does not depend on any axioms)",raw,re.S):
        ax=[x.strip() for x in (m[2] or '').split(',') if x.strip()]
        if m[1] in actual or len(set(ax))!=len(ax) or set(ax)-b.ALLOWED:raise RuntimeError('Forbidden or duplicate axioms')
        actual[m[1]]=ax
    if set(roots)-set(actual):raise RuntimeError('Missing complete declared-root audit')
    b.write(Path(r['stdout']).parent.name+'/axiom-audit.json',{'utc':b.utc(),'status':'accepted-standard-axioms','roots':roots,'actualAxioms':actual,'sourceSha256':r['sourceSha256'],'stdoutSha256':r['stdoutSha256']})
    return actual
def has_module_header(raw):
    i = 0
    n = len(raw)
    while i < n:
        if raw[i].isspace():
            i += 1
            continue
        if raw.startswith('--', i):
            i = raw.find('\n', i)
            i = n if i < 0 else i + 1
            continue
        if raw.startswith('/-', i):
            depth = 1
            i += 2
            while depth and i < n:
                if raw.startswith('/-', i):
                    depth += 1
                    i += 2
                elif raw.startswith('-/', i):
                    depth -= 1
                    i += 2
                else:
                    i += 1
            continue
        return raw.startswith('module', i) and (i + 6 == n or raw[i + 6].isspace())
    return False
def audit_header(source,module_name):
    raw=Path(source).read_text(encoding='utf-8-sig')
    # Mode is part of Lean's import ABI; legacy modules cannot enter module mode.
    modern=has_module_header(raw)
    text=('module\nimport all ' if modern else 'import ')+module_name+'\n'
    for key in ['maxRecDepth','maxHeartbeats']:
        values=re.findall(r'(?m)^set_option\s+'+key+r'\s+(\d+)\s*$',raw)
        if values:text+='set_option '+key+' '+values[-1]+'\n'
    return text
def compile(path,label,env):
    r=b.compile_source(b.REPO/path,label,env,b.OBJECTS,b.REPO);roots=declared(b.REPO/path)
    emitted=set(re.findall(r"'([^']+)' (?:depends on axioms:|does not depend on any axioms)",Path(r['stdout']).read_text()))
    if set(roots)-emitted:
        p=b.ROOT/(label.replace('-','_')+'_Audit.lean')
        p.write_text(audit_header(b.REPO/path,mod(path))+'\n'.join('#print axioms '+x for x in roots)+'\n')
        ar=b.compile_source(p,label+'-audit',env,b.OBJECTS,b.ROOT);audited(ar,roots)
    else:audited(r,roots)
    return r
def transport():
    global CAPABILITY
    check_deadline();t=SPEC['transport']
    event=json.loads(Path(os.environ['GITHUB_EVENT_PATH']).read_text())
    CAPABILITY=event.get('inputs',{}).get('proof_download_url','')
    if not CAPABILITY.startswith('https://'):raise RuntimeError('One-time proof transfer input is unavailable')
    print('::add-mask::'+CAPABILITY,flush=True)
    expiry=urllib.parse.parse_qs(urllib.parse.urlsplit(CAPABILITY).query).get('se',[None])[0]
    archive=b.ROOT/'accepted-full.zip';archive.parent.mkdir(parents=True,exist_ok=True)
    before=b.resources()
    if before['diskFreeBytes']<20*1024**3 or before['effectiveAvailableBytes']<900*b.MIB:raise RuntimeError('Transport resource reserve rejected')
    started=time.time()
    with urllib.request.urlopen(CAPABILITY,timeout=30) as src,archive.open('wb') as out:
        while True:
            check_deadline()
            if time.time()-started>300:raise RuntimeError('Fixed ZIP transfer exceeded five minute limit')
            part=src.read(1024*1024)
            if not part:break
            out.write(part)
    if archive.stat().st_size!=t['zipBytes'] or b.sha(archive)!=t['zipSha256']:raise RuntimeError('Fixed proof ZIP size or digest differs')
    package=b.EVIDENCE/'accepted-proof';package.mkdir(parents=True,exist_ok=True);mapped=[]
    with zipfile.ZipFile(archive) as z:
        byteplan=json.loads(z.read('byte-manifest.json'))
        if byteplan['head']!=t['sourceCommit']:raise RuntimeError('Artifact source commit differs')
        plan={m['path']:m for m in byteplan['members']}
        names={x.filename for x in z.infolist() if not x.is_dir()}
        if names!=set(plan)|{'byte-manifest.json'}:raise RuntimeError('Incomplete or extra archive members')
        for item in z.infolist():
            if item.is_dir():continue
            check_deadline();name=item.filename
            if name.startswith('objects/'):target=b.OBJECTS/name[len('objects/'):]
            else:target=package/name
            if not target.resolve().is_relative_to((b.OBJECTS if name.startswith('objects/') else package).resolve()):raise RuntimeError('Archive member path escapes fixed root')
            if target.exists():raise RuntimeError('Refuse overwriting any existing proof member')
            target.parent.mkdir(parents=True,exist_ok=True)
            with z.open(item) as src,target.open('wb') as out:shutil.copyfileobj(src,out)
            if name in plan and (target.stat().st_size!=plan[name]['bytes'] or b.sha(target)!=plan[name]['sha256']):raise RuntimeError('Original member byte binding differs')
            mapped.append({'member':name,'storedPath':str(target),'bytes':target.stat().st_size,'sha256':b.sha(target)})
        for item in mapped:
            if not item['member'].startswith('generated-sources/'):continue
            p=Path(item['storedPath']);target=b.REPO/item['member'][len('generated-sources/'):]
            if target.exists() and b.sha(target)!=item['sha256']:raise RuntimeError('Refuse replacing different generated source')
            target.parent.mkdir(parents=True,exist_ok=True)
            if not target.exists():shutil.copyfile(p,target)
    if any((b.OBJECTS/'Mathlib').rglob('*')):raise RuntimeError('Private prefix must not shadow Mathlib')
    b.write('accepted-proof-transfer.json',{'utc':b.utc(),'sourceCommit':t['sourceCommit'],'run':t['run'],'artifact':t['artifact'],'zipSha256':t['zipSha256'],'members':mapped,'formerReadCapabilityExpiresUtc':expiry,'inputChannel':'one-time workflow dispatch event, never tracked or included in artifact','scope':'exact byte transportation, not new mathematical acceptance'})
    CAPABILITY=None
def index_reuse():
    package=b.EVIDENCE/'accepted-proof';index={}
    for p in package.rglob('receipt.json'):
        r=json.loads(p.read_text())
        if r.get('mode')!='Lean' or r.get('status')!='success' or r.get('exitCode')!=0 or not r.get('sourceUnchanged'):continue
        rel=Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
        if '/evidence/objects/' not in r.get('object',''):continue
        obj=b.OBJECTS/r['object'].split('/evidence/objects/',1)[1]
        snapshot=package/r['sourceSnapshot'].split('/evidence/',1)[1]
        if b.sha(snapshot)!=r['sourceSha256'] or b.sha(obj)!=r['objectSha256']:raise RuntimeError('Accepted source/object bytes differ')
        for part in r['objectParts']:
            dst=b.OBJECTS/part['path'].split('/evidence/objects/',1)[1]
            if b.sha(dst)!=part['sha256'] or dst.stat().st_size!=part['bytes']:raise RuntimeError('Accepted object part differs')
        if (b.REPO/rel).is_file() and b.sha(b.REPO/rel)==r['sourceSha256']:index[rel]=r
    return index
def run():
    check_deadline();package=b.EVIDENCE/'accepted-proof'
    if not (package/'finite-original-closed.json').is_file():raise RuntimeError('Fixed finite proof phase missing')
    index=index_reuse();b.SPEC['mathlibImports']=SPEC['cacheRoots']
    previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
    try:b.main()
    finally:sys.argv=previous
    old=json.loads((package/'toolchain.json').read_text());new=json.loads((b.EVIDENCE/'toolchain.json').read_text())
    for key in ['leanSha256','leancheckerSha256']:
        if old[key]!=new[key]:raise RuntimeError('Reused exact kernel toolchain digest differs')
    env=b.lean_env();probe=b.ROOT/'AcceptedFiniteImport.lean'
    probe.write_text('module\npublic import '+mod(SPEC['sources'][0]['path'])+'\npublic import '+mod('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/finite/FiniteSupplyOnly.lean')+'\n#check B699FiniteFull20261002.finite_supply\n#check B699FiniteFull20261002.finite_common\n')
    b.compile_source(probe,'representative-accepted-finite-import',env,b.OBJECTS,b.ROOT)
    reuse=[]
    for i,s in enumerate(SPEC['sources']):
        check_deadline();p=b.REPO/s['path']
        if p.stat().st_size!=s['bytes'] or b.sha(p)!=s['sha256']:raise RuntimeError('Fixed terminal source bytes differ')
        if s['path'] in index:
            reuse.append({'path':s['path'],'sourceSha256':s['sha256'],'objectSha256':index[s['path']]['objectSha256']});continue
        compile(s['path'],f'terminal-{i:03d}-{p.stem}',env)
    b.write('terminal-object-reuse.json',{'utc':b.utc(),'reusedNotRecompiled':reuse})
    # Final literal source emits all four required original-target axiom roots.
    final=b.EVIDENCE/f'terminal-{len(SPEC["sources"])-1:03d}-{Path(SPEC["sources"][-1]["path"]).stem}'/'axiom-audit.json'
    final_ax=json.loads(final.read_text())['actualAxioms']
    if set(SPEC['requiredFinalRoots'])-set(final_ax):raise RuntimeError('Final original-target root coverage missing')
    b.launch([new['leanchecker'],'-v',SPEC['checkerModule']],'terminal-original-normal-checker',env,max_seconds=900)
    b.write('terminal-closed.json',{'utc':b.utc(),'status':'kernel-audit-checker-passed','acceptedFiniteSourceCommit':SPEC['transport']['sourceCommit'],'requiredFinalRoots':SPEC['requiredFinalRoots'],'mathematicalAcceptance':'pending independent semantic review'})
def main():
    b.EVIDENCE.mkdir(parents=True,exist_ok=True)
    start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())))
    b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
    mode=sys.argv[1] if len(sys.argv)>1 else 'run'
    if mode=='manifest':sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest'];b.main();return
    with locked():
        if mode=='transport':transport()
        elif mode=='preflight':sys.argv=[str(HERE/'linux-runner-v2.py'),'preflight'];b.main()
        elif mode=='run':run()
        else:raise RuntimeError('Unknown fixed mode')
if __name__=='__main__':
    try:main()
    except BaseException as e:
        msg=str(e)
        if CAPABILITY:msg=msg.replace(CAPABILITY,'[redacted-proof-transport-url]')
        b.write('terminal-failure.json',{'utc':b.utc(),'failure':msg,'class':type(e).__name__});print(msg,file=sys.stderr);sys.exit(1)
