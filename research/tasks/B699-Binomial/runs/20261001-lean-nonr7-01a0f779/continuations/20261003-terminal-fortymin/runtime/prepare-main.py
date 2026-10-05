"""Fixed main-route recovery; no representative rerun or math source edits."""
import ast,hashlib,json
from pathlib import Path
REPO=Path.cwd().resolve();HERE=Path(__file__).resolve().parent
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
OLD=REPO/(BASE+'20261002-terminal-until0030/runtime');NEW=BASE+'20261003-terminal-fortymin/'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,o):(HERE/n).write_text(json.dumps(o,indent=2,ensure_ascii=False)+'\n')
def main():
    for n in ['cold-stage-v2.py','terminal-stage-v2.py','linux-runner-v2.py','resources.ps1','check-owned-processes.ps1']:
        raw=(OLD/n).read_text(encoding='utf-8-sig').replace('20261002-terminal-until0030/runtime','20261003-terminal-fortymin/runtime').replace('2026-10-02T16:30:00Z','2026-10-02T17:28:54Z');(HERE/n).write_text(raw)
    root='.tools/b699-lean-20261001-01a0f779/20261003-terminal-fortymin/runtime/main'
    reader=REPO/(NEW+'reviews/check_terminal_legacy_directory.py')
    for name in ['cold-stage-v2-spec.json','terminal-stage-v2-spec.json','linux-source-manifest-v2.json']:
        s=json.loads((OLD/name).read_text());s.update(hardDeadline='2026-10-02T17:28:54Z',lastJobStart='2026-10-02T17:06:00Z')
        if 'jobMinutes' in s:s.update(jobMinutes=25,toolRoot=root)
        if name=='cold-stage-v2-spec.json':
            s['directoryValidator']={'path':reader.relative_to(REPO).as_posix(),'sha256':sha(reader) if reader.exists() else 'PENDING_S_HASH'}
            s['runOptionalGapProbe']=False
            s['recoveryScope']='Main-route object recovery only; old EC3 and finite math already executed; no prime search/generation/32/128'
        write(name,s)
    p=HERE/'cold-stage-v2.py';text=p.read_text();begin=text.index("    for path in SPEC['representativeSources']:");end=text.index("    for i,path in enumerate(SPEC['bootstrapSupport']):",begin)
    gate='''    remaining=b.DEADLINE-time.time();cost=SPEC['estimatedRepeatedFullSourceCostSeconds']
    b.write('initial-budget-gate.json',{'remainingSeconds':remaining,'acceptedFullRecoveryCostSeconds':cost})
    if remaining<cost:
        b.write('partial-budget-rejected.json',{'status':'no hopeless cold full reconstruction','remainingSeconds':remaining,'fullCostSeconds':cost});return
'''
    text=text[:begin]+gate+text[end:]
    text=text.replace("for p in sorted(b.EVIDENCE.glob('*/receipt.json'),key=lambda p:p.stat().st_mtime,reverse=True):","for p in sorted(list(b.EVIDENCE.glob('*/receipt.json'))+list((b.ROOT/'validation').glob('*/receipt.json')),key=lambda p:p.stat().st_mtime,reverse=True):")
    marker="    previous=sys.argv[:];sys.argv=[str(HERE/'linux-runner-v2.py'),'manifest']"
    disclosure='''    print('MAIN_ACTUAL_TYPE_RAW '+(b.EVIDENCE/f'terminal-{len(f.SPEC["sources"])-1:03d}-{Path(last["path"]).stem}'/'stdout.log').read_text(),flush=True)
    print('MAIN_FINAL_AX_JSON '+json.dumps(ax),flush=True)
    print('MAIN_CHECKER_JSON '+(b.EVIDENCE/'terminal-original-normal-checker/receipt.json').read_text(),flush=True)
'''
    text=text.replace(marker,disclosure+marker);p.write_text(text)
    files=['cold-stage-v2.py','cold-stage-v2-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json']
    for name in files:
        if name.endswith('.py'):ast.parse((HERE/name).read_text())
    write('execution-ready.json',{'executedLean':False,'mainRoute':True,'representativeRerun':False,'objectSupplyReason':'No safe cross-run object transport; current runner must restore exact old imports and 34 fixed generated sources',
          'jobMinutes':25,'latestStart':'2026-10-02T17:06:00Z','hardDeadline':'2026-10-02T17:28:54Z','reader':json.loads((HERE/'cold-stage-v2-spec.json').read_text())['directoryValidator'],
          'files':[{'file':n,'bytes':(HERE/n).stat().st_size,'sha256':sha(HERE/n)} for n in files]})
    print(json.dumps({'AST':True,'mainRoute':True,'noRepresentativeFlagOrCheckerRerun':True,'mathBodiesUnchanged':True}))
if __name__=='__main__':main()
