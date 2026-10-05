"""Two pure Init sources and four bounded audit variants; no full reconstruction."""
import importlib.util,json,os,shutil,sys,time
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'audit-repro-spec.json').read_text())
loader=importlib.util.spec_from_file_location('terminal_helpers',HERE/'terminal-stage.py')
f=importlib.util.module_from_spec(loader);loader.loader.exec_module(f);b=f.b
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
b.SPEC={**b.SPEC,'taskSources':SPEC['sources'],'hardDeadline':SPEC['hardDeadline'],'lastJobStart':SPEC['lastJobStart']}
def run():
    b.fixed_sources();b.write('audit-repro-spec.json',SPEC)
    prefix_record=b.launch(['lean','--print-prefix'],'toolchain-prefix',max_seconds=30)
    prefix=Path(Path(prefix_record['stdout']).read_text().strip());lean=prefix/'bin/lean';checker=prefix/'bin/leanchecker'
    version=b.launch([str(lean),'--version'],'toolchain-version',max_seconds=30)
    if '4.33.1' not in Path(version['stdout']).read_text():raise RuntimeError('Wrong pinned Lean')
    b.write('toolchain.json',{'lean':str(lean),'leanchecker':str(checker),'leanSha256':b.sha(lean),'leancheckerSha256':b.sha(checker),'scope':'pure Init; configured nine pins fixed but no Mathlib objects loaded'})
    env=os.environ.copy();env['LEAN_PATH']=str(b.OBJECTS)+':'+str(prefix/'lib/lean');env['LEAN_NUM_THREADS']='1'
    b.write('environment.json',{'leanPath':env['LEAN_PATH'],'sourceSpecSha256':b.sha(HERE/'audit-repro-spec.json')})
    for i,s in enumerate(SPEC['sources']):b.compile_source(b.REPO/s['path'],f'producer-{i:02d}',env,b.OBJECTS,b.REPO)
    roots=f.declared(b.REPO/SPEC['sources'][-1]['path']);results=[]
    for variant in SPEC['variants']:
        name=variant['name'];source=b.ROOT/(name.replace('-','_')+'_Audit.lean')
        body='module\npublic import '+('all ' if variant['importAll'] else '')+f.mod(SPEC['sources'][-1]['path'])+'\n'
        if variant['inheritOptions']:body+='set_option maxRecDepth 20000\nset_option maxHeartbeats 2000000\n'
        body+='\n'.join('#print axioms '+r for r in roots)+'\n';source.write_text(body)
        ax_ok=False;failure=None
        try:r=b.compile_source(source,name,env,b.OBJECTS,b.ROOT);f.audited(r,roots);ax_ok=True
        except RuntimeError as e:
            failure=str(e)
            r=json.loads((b.EVIDENCE/name/'receipt.json').read_text())
            r.update(mode='Lean',source=str(source),sourceSha256=b.sha(source),sourceSnapshot=str(b.EVIDENCE/name/'source.lean'),sourceUnchanged=True)
            b.write(name+'/receipt.json',r)
        item={'variant':name,'sourceSha256':b.sha(source),'exitCode':r.get('exitCode'),'axiomAuditAccepted':ax_ok,'failure':failure,'arguments':r.get('arguments'),'stdoutSha256':r.get('stdoutSha256'),'stderrSha256':r.get('stderrSha256')};results.append(item)
        print(json.dumps(item),flush=True)
        for stream in ['stdout','stderr']:
            with Path(r[stream]).open('rb') as raw:text=raw.read(2048).decode(errors='replace')
            print(name+' '+stream+' first 2048 bytes:\n'+text,flush=True)
    b.write('audit-repro-results.json',{'utc':b.utc(),'roots':roots,'variants':results,'scope':'diagnostic only; independent verifier decides repair'})
def main():
    b.EVIDENCE.mkdir(parents=True,exist_ok=True)
    start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())))
    b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
    mode=sys.argv[1] if len(sys.argv)>1 else 'run'
    if mode=='manifest':sys.argv=[str(HERE/'linux-runner.py'),'manifest'];b.main();return
    with f.locked():
        if mode=='preflight':sys.argv=[str(HERE/'linux-runner.py'),'preflight'];b.main()
        else:run()
if __name__=='__main__':
    try:main()
    except BaseException as e:
        b.write('audit-repro-failure.json',{'failure':str(e),'utc':b.utc()});print(str(e),file=sys.stderr);sys.exit(1)
