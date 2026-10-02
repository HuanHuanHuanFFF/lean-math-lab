"""Safe exact-source recompilation fallback, followed by terminal consumers."""
import datetime,importlib.util,json,os,shutil,sys,time
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'cold-stage-v2-spec.json').read_text())
loader=importlib.util.spec_from_file_location('terminal_helpers',HERE/'terminal-stage-v2.py')
f=importlib.util.module_from_spec(loader);loader.loader.exec_module(f);b=f.b
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
def compile_fixed(s,label,env):
    p=b.REPO/s['path'];source_root=b.REPO/s['sourceRoot']
    if b.sha(p)!=s['sha256'] or p.stat().st_size!=s['bytes']:raise RuntimeError('Fixed accepted source byte binding differs')
    r=b.compile_source(p,label,env,b.OBJECTS,source_root)
    roots=f.declared(p);audit=b.ROOT/(label.replace('-','_')+'_Audit.lean')
    audit.write_text(f.audit_header(p,f.mod(s['modulePath']))+'\n'.join('#print axioms '+x for x in roots)+'\n')
    ar=b.compile_source(audit,label+'-audit',env,b.OBJECTS,b.ROOT);f.audited(ar,roots)
    r.update(originalModulePath=s['modulePath'],acceptedOriginPath=s['originPath'],explicitSourceRoot=str(source_root))
    b.write(label+'/receipt.json',r);return r
def run():
    b.write('cold-stage-spec.json',SPEC);shutil.copyfile(__file__,b.EVIDENCE/'cold-stage.py')
    b.SPEC['mathlibImports']=f.SPEC['cacheRoots']
    old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
    try:b.main()
    finally:sys.argv=old
    env=b.lean_env();done=set();start=time.time()
    for path in SPEC['representativeSources']:
        i=next(i for i,s in enumerate(f.SPEC['sources']) if s['path']==path)
        f.compile(path,f'terminal-{i:03d}-{Path(path).stem}',env);done.add(path)
    preliminary_tc=json.loads((b.EVIDENCE/'toolchain.json').read_text())
    b.launch([preliminary_tc['leanchecker'],'-v',f.mod(SPEC['representativeTarget'])],'representative-elementary-normal-checker',env,max_seconds=300)
    b.write('representative-elementary-closed.json',{'utc':b.utc(),'status':'compiler-axiom-checker-passed','sources':SPEC['representativeSources']})
    for i,path in enumerate(SPEC['bootstrapSupport']):
        if path in done:continue
        f.compile(path,f'bootstrap-{i:02d}-{Path(path).stem}',env);done.add(path)
    for i,s in enumerate(SPEC['fixedAcceptedSources']):compile_fixed(s,f'accepted-full-{i:02d}-{Path(s["path"]).stem}',env)
    tc=json.loads((b.EVIDENCE/'toolchain.json').read_text())
    b.launch([tc['leanchecker'],'-v',f.mod(SPEC['fixedAcceptedSources'][-1]['modulePath'])],'recompiled-fixed-full-normal-checker',env,max_seconds=900)
    b.write('recompiled-fixed-full-closed.json',{'utc':b.utc(),'wallSeconds':time.time()-start,'acceptedOriginCommit':SPEC['acceptedProofCommit'],'generatedOrSearched':False,'scope':'operational source recompilation; adopted independent finite acceptance remains separate'})
    supplier=SPEC['finiteSupplier'];f.compile(supplier,'representative-finite-supplier',env);done.add(supplier)
    p=b.ROOT/'AcceptedFiniteImport.lean';p.write_text('module\npublic import '+f.mod(supplier)+'\n#check B699FiniteFull20261002.finite_supply\n#check B699FiniteFull20261002.finite_common\n')
    b.compile_source(p,'representative-accepted-finite-import',env,b.OBJECTS,b.ROOT)
    for i,s in enumerate(f.SPEC['sources']):
        if s['path'] in done:continue
        f.compile(s['path'],f'terminal-{i:03d}-{Path(s["path"]).stem}',env)
    last=f.SPEC['sources'][-1]
    ax=json.loads((b.EVIDENCE/f'terminal-{len(f.SPEC["sources"])-1:03d}-{Path(last["path"]).stem}'/'axiom-audit.json').read_text())['actualAxioms']
    if set(SPEC['requiredFinalRoots'])-set(ax):raise RuntimeError('Final original-target axiom roots incomplete')
    b.launch([tc['leanchecker'],'-v',SPEC['checkerModule']],'terminal-original-normal-checker',env,max_seconds=900)
    b.write('terminal-closed.json',{'utc':b.utc(),'status':'kernel-audit-checker-passed','adoptedFiniteCommit':SPEC['acceptedProofCommit'],'requiredFinalRoots':SPEC['requiredFinalRoots'],'mathematicalAcceptance':'pending independent semantic review'})
    previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest']
    try:b.main()
    finally:sys.argv=previous
    proof_evidence=b.EVIDENCE;validation=b.ROOT/'validation';validation.mkdir(parents=True,exist_ok=True)
    validator=b.REPO/SPEC['directoryValidator']['path']
    if b.sha(validator)!=SPEC['directoryValidator']['sha256']:raise RuntimeError('Independent reader bytes differ')
    manifest_sha=b.sha(proof_evidence/'byte-manifest.json')
    shutil.copyfile(proof_evidence/'byte-manifest.json',validation/'terminal-sealed-byte-manifest.json')
    b.EVIDENCE=validation
    try:
        vr=b.launch(['python3',str(validator),str(proof_evidence),manifest_sha,os.environ['GITHUB_SHA'],os.environ['GITHUB_RUN_ID'],str(validation/'independent-procedure.json')],'independent-directory-reader',env,max_seconds=300)
        vr.update(source=str(validator),sourceSha256=b.sha(validator))
        b.write('independent-directory-reader/receipt.json',vr)
        print('INDEPENDENT_READER_RECEIPT '+json.dumps(vr),flush=True)
        print(Path(vr['stdout']).read_text(),flush=True)
        print('ACTUAL_TOOLCHAIN_JSON '+(proof_evidence/'toolchain.json').read_text(),flush=True)
        print('ACTUAL_TOOLCHAIN_VERSION '+(proof_evidence/'toolchain-version/stdout.log').read_text(),flush=True)
    finally:b.EVIDENCE=proof_evidence
    probe=SPEC.get('optionalGapProbe') if SPEC.get('runOptionalGapProbe',True) else None
    if probe:
        latest=datetime.datetime.fromisoformat(probe['stopNewHeavyUtc'].replace('Z','+00:00')).timestamp()
        if time.time()>=latest or b.DEADLINE-time.time()<180:
            b.write('gap-probe-skipped.json',{'utc':b.utc(),'reason':'no new heavy route after cutoff or inadequate remaining time'});return
        # The terminal closed package is already sealed before this separate probe.
        try:
            env_cache=os.environ.copy();env_cache['LEAN_NUM_THREADS']='1'
            b.launch(['lake','exe','cache','get']+probe['cacheRoots'],'gap-probe-focused-cache',env_cache,max_seconds=300,startup_mib=5120,tree_mib=3072)
            for i,s in enumerate(probe['sources']):
                f.compile(s['path'],f'gap-probe-{i:02d}-{Path(s["path"]).stem}',env)
                b.launch([tc['leanchecker'],'-v',f.mod(s['path'])],f'gap-probe-{i:02d}-{Path(s["path"]).stem}-normal-checker',env,max_seconds=300)
                b.write(f'gap-probe-module-{i:02d}-closed.json',{'utc':b.utc(),'path':s['path'],'status':'kernel-audit-checker-passed','mathematicalAcceptance':'pending independent semantic review'})
            roots=[]
            for i,s in enumerate(probe['sources']):
                ax=json.loads((b.EVIDENCE/f'gap-probe-{i:02d}-{Path(s["path"]).stem}'/'axiom-audit.json').read_text())['actualAxioms'];roots+=list(ax)
            if set(probe['requiredRoots'])-set(roots):raise RuntimeError('Complete thirteen Gap probe axiom roots missing')
            b.write('gap-probe-closed.json',{'utc':b.utc(),'status':'kernel-audit-checker-passed','scope':probe['status'],'mathematicalAcceptance':'pending independent semantic review'})
        except BaseException as e:
            b.write('gap-probe-failure.json',{'utc':b.utc(),'failure':str(e),'class':type(e).__name__,'terminalPhaseAlreadyClosed':True,'scope':'optional exploratory probe failure, distinct from terminal result'})
            print('Optional Gap probe failed; exact receipt retained and terminal phase remains closed',flush=True)
def main():
    b.EVIDENCE.mkdir(parents=True,exist_ok=True)
    start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())))
    b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
    mode=sys.argv[1] if len(sys.argv)>1 else 'run'
    if mode=='manifest':sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest'];b.main();return
    with f.locked():
        if mode=='preflight':sys.argv=[str(HERE/'linux-runner-v2.py'),'preflight'];b.main()
        elif mode=='run':run()
        else:raise RuntimeError('Unknown fixed cold phase')
if __name__=='__main__':
    try:main()
    except BaseException as e:
        for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
            r=json.loads(p.read_text())
            if r.get('status')!='failed':continue
            print('FAILED_CHILD_RECEIPT '+json.dumps(r),flush=True)
            for key in ['stdout','stderr']:
                if r.get(key):
                    with Path(r[key]).open('rb') as raw:print(key+' first2048bytes '+raw.read(2048).decode(errors='replace'),flush=True)
            break
        b.write('cold-stage-failure.json',{'utc':b.utc(),'failure':str(e),'class':type(e).__name__});print(str(e),file=sys.stderr);sys.exit(1)
