"""Prepare a four-source repair probe only; no Lean and no job dispatch."""
import ast,hashlib,json,re
from pathlib import Path
HERE=Path(__file__).resolve().parent;REPO=Path.cwd().resolve()
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def imports(p):return re.findall(r'(?m)^\s*(?:(?:public|private|meta)\s+)?import(?:\s+all)?\s+(\S+)',p.read_text(encoding='utf-8-sig'))
def write(n,o):(HERE/n).write_text(json.dumps(o,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
def main():
    ordered=[BASE+'20261002-tail-twohour/gap/GapDefinitions.lean']+[BASE+'20261002-terminal-gap-twohour/gap/'+n+'.lean' for n in ['ThetaInterval','ThetaTail','PsiTheta']]
    available=set();rows=[];package=set()
    for path in ordered:
        p=REPO/path;deps=[]
        for name in imports(p):
            supplier=name.replace('«','').replace('»','').replace('.','/')+'.lean'
            if name.startswith('Mathlib.'):package.add(name);deps.append({'module':name,'supplier':'pinned-mathlib-cache'})
            elif name.startswith(('Lean.','Std.','Init.')):deps.append({'module':name,'supplier':'pinned-lean-toolchain'})
            else:
                if supplier not in available:raise RuntimeError('Late or unknown Gap project dependency')
                deps.append({'module':name,'supplier':supplier})
        rows.append({'path':path,'bytes':p.stat().st_size,'sha256':sha(p),'imports':deps});available.add(path)
    spec={'hardDeadline':'2026-10-02T15:45:10Z','lastJobStart':'2026-10-02T15:24:10Z','stopNewHeavyUtc':'2026-10-02T15:35:10Z','jobMinutes':20,
          'toolRoot':'.tools/b699-lean-20261001-01a0f779/20261002-terminal-gap-twohour/runtime/gap-only',
          'sources':rows,'cacheRoots':sorted(package),'stage':'candidate only; publish only after actual needed API repair and independent review',
          'scope':'three Theta/Psi prerequisite modules; no full finite reconstruction or terminal recompilation',
          'unconditionalGapClaim':False,'noPrimeSearchOrGenerator':True}
    write('gap-probe-stage-spec.json',spec)
    write('gap-probe-source-closure.json',{'executedLean':False,'projectSources':rows,'projectCount':len(rows),'directFocusedCacheRoots':sorted(package),'transitiveCacheCost':'not estimated from direct root count','topological':True})
    ast.parse((HERE/'gap-probe-stage.py').read_text())
    print(json.dumps({'projectSources':len(rows),'directFocusedRoots':len(package),'LeanExecuted':False,'jobDispatched':False}))
if __name__=='__main__':main()
