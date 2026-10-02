"""Narrow repair candidate; never reconstructs finite or terminal objects."""
import importlib.util,json,os,sys,time
from pathlib import Path
HERE=Path(__file__).resolve().parent
SPEC=json.loads((HERE/'pilot64-stage-spec.json').read_text())
loader=importlib.util.spec_from_file_location('terminal_helpers',HERE/'terminal-stage-v2.py')
f=importlib.util.module_from_spec(loader);loader.loader.exec_module(f);b=f.b
f.SPEC['proofTreeMiB']=3072;f.SPEC['proofStartupMiB']=3072
b.ROOT=b.REPO/SPEC['toolRoot'];b.EVIDENCE=b.ROOT/'evidence';b.OBJECTS=b.EVIDENCE/'objects'
b.SPEC={**b.SPEC,'hardDeadline':SPEC['hardDeadline'],'lastJobStart':SPEC['lastJobStart'],'taskSources':SPEC['sources'],'mathlibImports':SPEC['cacheRoots']}
def main():
    b.EVIDENCE.mkdir(parents=True,exist_ok=True)
    start=float(os.environ.get('B699_JOB_START_EPOCH',str(time.time())))
    b.DEADLINE=min(b.DEADLINE,start+(SPEC['jobMinutes']-1)*60)
    mode=sys.argv[1] if len(sys.argv)>1 else 'run'
    if mode=='manifest':sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest'];b.main();return
    with f.locked():
        if mode=='preflight':sys.argv=[str(HERE/'linux-runner-v2.py'),'preflight'];b.main();return
        if mode!='run':raise RuntimeError('Unknown narrow probe mode')
        b.write('pilot64-spec.json',SPEC)
        print('PILOT64_CURRENT_RESOURCES '+json.dumps(b.resources()),flush=True)
        old=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'cache']
        try:b.main()
        finally:sys.argv=old
        env=b.lean_env();tc=json.loads((b.EVIDENCE/'toolchain.json').read_text())
        for i,s in enumerate(SPEC['sources']):
            r=f.compile(s['path'],f'pilot64-{i:02d}-{Path(s["path"]).stem}',env)
            print('PILOT64_SOURCE_RECEIPT '+json.dumps(r),flush=True)
            with Path(r['stdout']).open('rb') as raw:print(raw.read(2048).decode(errors='replace'),flush=True)
            if i==0:continue
            cr=b.launch([tc['leanchecker'],'-v',f.mod(s['path'])],f'pilot64-{i:02d}-normal-checker',env,max_seconds=300)
            print('PILOT64_CHECKER_RECEIPT '+json.dumps(cr),flush=True)
            for ar in sorted(b.EVIDENCE.glob(f'pilot64-{i:02d}-*/axiom-audit.json')):
                print('PILOT64_AXIOM_AUDIT '+ar.read_text(),flush=True)
                parent=ar.parent
                if (parent/'receipt.json').exists():print('PILOT64_AUDIT_RECEIPT '+(parent/'receipt.json').read_text(),flush=True)
            b.write(f'pilot64-{i:02d}-closed.json',{'utc':b.utc(),'path':s['path'],'status':'kernel-audit-checker-passed','mathematicalAcceptance':'pending independent semantic review'})
if __name__=='__main__':
    try:main()
    except BaseException as e:
        for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
            r=json.loads(p.read_text())
            if r.get('status')!='failed':continue
            print('PILOT64_FAILED_RECEIPT '+json.dumps(r),flush=True)
            for key in ['stdout','stderr']:
                if r.get(key):
                    with Path(r[key]).open('rb') as raw:print(key+' first2048bytes '+raw.read(2048).decode(errors='replace'),flush=True)
            break
        b.write('pilot64-failure.json',{'utc':b.utc(),'failure':str(e),'class':type(e).__name__});print(str(e),file=sys.stderr);sys.exit(1)
