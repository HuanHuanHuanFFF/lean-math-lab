"""Fixed-source adoption and representative-before-full ordering; no Lean."""
import ast,hashlib,json,re
from pathlib import Path
REPO=Path.cwd().resolve();HERE=Path(__file__).resolve().parent
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
OLD=REPO/(BASE+'20261002-terminal-gap-twohour/runtime');NEW=BASE+'20261002-terminal-until0030/'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,o):(HERE/n).write_text(json.dumps(o,indent=2,ensure_ascii=False)+'\n')
def main():
    for n in ['cold-stage-v2.py','terminal-stage-v2.py','linux-runner-v2.py','resources.ps1','check-owned-processes.ps1']:
        raw=(OLD/n).read_text(encoding='utf-8-sig').replace('20261002-terminal-gap-twohour/runtime','20261002-terminal-until0030/runtime').replace('2026-10-02T15:45:10Z','2026-10-02T16:30:00Z');(HERE/n).write_text(raw)
    term=json.loads((OLD/'terminal-stage-v2-spec.json').read_text());cold=json.loads((OLD/'cold-stage-v2-spec.json').read_text());manifest=json.loads((OLD/'linux-source-manifest-v2.json').read_text())
    root='.tools/b699-lean-20261001-01a0f779/20261002-terminal-until0030/runtime/full'
    for s in [term,cold,manifest]:s.update(hardDeadline='2026-10-02T16:30:00Z',lastJobStart='2026-10-02T16:00:00Z')
    for s in [term,cold]:s.update(jobMinutes=30,toolRoot=root)
    term.update(proofStartupMiB=5120,proofTreeMiB=4096);cold['runOptionalGapProbe']=False
    reader=REPO/(NEW+'reviews/check_terminal_legacy_directory.py');cold['directoryValidator']={'path':reader.relative_to(REPO).as_posix(),'sha256':sha(reader) if reader.exists() else 'PENDING_S_FIXED_HASH'}
    known={s['path']:s for s in term['sources']};target=next(p for p in known if p.endswith('/tail/ElementaryCount.lean'));result=[];visited=set()
    def visit(path):
        if path in visited:return
        p=REPO/path;s=known[path]
        if sha(p)!=s['sha256'] or p.stat().st_size!=s['bytes']:raise RuntimeError('Fixed source differs')
        for name in re.findall(r'(?m)^\s*(?:(?:public|private|meta)\s+)?import(?:\s+all)?\s+(\S+)',p.read_text(encoding='utf-8-sig')):
            dep=name.replace('«','').replace('»','').replace('.','/')+'.lean'
            if name.startswith(('Mathlib.','Lean.','Std.','Init.')):continue
            if dep not in known:raise RuntimeError('Missing/deferred representative dependency')
            visit(dep)
        visited.add(path);result.append(path)
    visit(target);cold.update(representativeSources=result,representativeTarget=target)
    write('elementary-source-closure.json',{'executedLean':False,'sourceCount':len(result),'orderedSources':[known[p] for p in result],'includesFixed33':False,'sourceBodiesChanged':False})
    write('terminal-stage-v2-spec.json',term);write('cold-stage-v2-spec.json',cold);write('linux-source-manifest-v2.json',manifest)
    p=HERE/'cold-stage-v2.py';text=p.read_text();old='    env=b.lean_env();done=set();start=time.time()\n'
    new='''    env=b.lean_env();done=set();start=time.time()
    for path in SPEC['representativeSources']:
        i=next(i for i,s in enumerate(f.SPEC['sources']) if s['path']==path)
        f.compile(path,f'terminal-{i:03d}-{Path(path).stem}',env);done.add(path)
    preliminary_tc=json.loads((b.EVIDENCE/'toolchain.json').read_text())
    b.launch([preliminary_tc['leanchecker'],'-v',f.mod(SPEC['representativeTarget'])],'representative-elementary-normal-checker',env,max_seconds=300)
    b.write('representative-elementary-closed.json',{'utc':b.utc(),'status':'compiler-axiom-checker-passed','sources':SPEC['representativeSources']})
'''
    if old not in text:raise RuntimeError('Frozen insertion point differs')
    text=text.replace(old,new).replace("for i,path in enumerate(SPEC['bootstrapSupport']):f.compile(path,f'bootstrap-{i:02d}-{Path(path).stem}',env);done.add(path)","for i,path in enumerate(SPEC['bootstrapSupport']):\n        if path in done:continue\n        f.compile(path,f'bootstrap-{i:02d}-{Path(path).stem}',env);done.add(path)")
    failure='''        for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):
            r=json.loads(p.read_text())
            if r.get('status')!='failed':continue
            print('FAILED_CHILD_RECEIPT '+json.dumps(r),flush=True)
            for key in ['stdout','stderr']:
                if r.get(key):
                    with Path(r[key]).open('rb') as raw:print(key+' first2048bytes '+raw.read(2048).decode(errors='replace'),flush=True)
            break
'''
    text=text.replace("        b.write('cold-stage-failure.json'",failure+"        b.write('cold-stage-failure.json'");p.write_text(text)
    for n in ['cold-stage-v2.py','terminal-stage-v2.py','linux-runner-v2.py']:ast.parse((HERE/n).read_text())
    write('execution-ready.json',{'executedLean':False,'representativeSourceCount':len(result),'jobMinutes':30,'latestStart':'2026-10-02T16:00:00Z','hardDeadline':'2026-10-02T16:30:00Z','reader':cold['directoryValidator'],
      'files':[{'file':n,'bytes':(HERE/n).stat().st_size,'sha256':sha(HERE/n)} for n in ['cold-stage-v2.py','cold-stage-v2-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json']]})
    print(json.dumps({'representativeProjectSources':len(result),'sourceUnchanged':True,'full33BeforeRepresentative':False,'AST':True}))
if __name__=='__main__':main()
