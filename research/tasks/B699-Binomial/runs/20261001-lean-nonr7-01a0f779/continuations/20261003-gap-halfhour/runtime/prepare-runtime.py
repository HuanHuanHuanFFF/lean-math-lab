from pathlib import Path
import json, hashlib, ast
base=Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations')
old=base/'20261002-terminal-gap-twohour/runtime'; new=base/'20261003-gap-halfhour/runtime'
hard='2026-10-02T18:38:36Z'; latest='2026-10-02T18:19:00Z'; tool='.tools/b699-lean-20261001-01a0f779/20261003-gap-halfhour/runtime/gap-only'
load=lambda p:json.loads(p.read_text(encoding='utf-8-sig'))
def save(p,v):p.write_text(json.dumps(v,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
s=load(old/'gap-probe-stage-spec.json'); s.update(hardDeadline=hard,lastJobStart=latest,stopNewHeavyUtc='2026-10-02T18:33:36Z',jobMinutes=18,toolRoot=tool,stage='four-source Theta/Psi prerequisite probe only; no new unconditional Gap claim')
save(new/'gap-probe-stage-spec.json',s)
t=load(old/'terminal-stage-v2-spec.json'); t.update(hardDeadline=hard,lastJobStart=latest,jobMinutes=18,toolRoot=tool,cacheRoots=s['cacheRoots'],sources=s['sources'],supportSources=s['sources'],finalSources=[],requiredFinalRoots=[],checkerModule=None,proofTreeMiB=3072,proofStartupMiB=3072)
t.pop('transport',None); save(new/'terminal-stage-v2-spec.json',t)
m=load(old/'linux-source-manifest-v2.json'); m.update(hardDeadline=hard,lastJobStart=latest,taskSources=s['sources'],mathlibImports=s['cacheRoots'],roots=[],requiredFinalRoots=[],checkerModule=None,note='Only fixed four-source Gap prerequisites. No old terminal, finite,32,128,33 stage invoked.')
save(new/'linux-source-manifest-v2.json',m)
for name in ['terminal-stage-v2.py','linux-runner-v2.py','gap-probe-stage.py']:
 text=(old/name).read_text(encoding='utf-8-sig').replace('20261002-terminal-gap-twohour/runtime','20261003-gap-halfhour/runtime')
 if name=='gap-probe-stage.py':
  text=text.replace("b.launch([tc['leanchecker'],'-v',f.mod(s['path'])],f'gap-only-{i:02d}-normal-checker',env,max_seconds=300)","cr=b.launch([tc['leanchecker'],'-v',f.mod(s['path'])],f'gap-only-{i:02d}-normal-checker',env,max_seconds=300)\n            print('GAP_CHECKER_RECEIPT '+json.dumps(cr),flush=True)\n            for ar in sorted(b.EVIDENCE.glob(f'gap-only-{i:02d}-*/axiom-audit.json')):\n                print('GAP_AXIOM_AUDIT '+ar.read_text(),flush=True)\n                parent=ar.parent\n                if (parent/'receipt.json').exists():print('GAP_AUDIT_RECEIPT '+(parent/'receipt.json').read_text(),flush=True)")
  text=text.replace("b.write('gap-probe-spec.json',SPEC)","b.write('gap-probe-spec.json',SPEC)\n        print('GAP_CURRENT_RESOURCES '+json.dumps(b.resources()),flush=True)")
 (new/name).write_text(text,encoding='utf-8'); ast.parse(text)
for x in s['sources']:
 p=Path(x['path']); assert p.stat().st_size==x['bytes'] and hashlib.sha256(p.read_bytes()).hexdigest()==x['sha256']
 seen={y['path'] for y in s['sources'][:s['sources'].index(x)]}
 for imp in x['imports']:
  if imp['supplier'].endswith('.lean'):assert imp['supplier'] in seen
rt=new.as_posix(); triggers=[rt+'/'+n for n in ['gap-probe-stage.py','gap-probe-stage-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json']]+['.github/workflows/b699-finite-onehour.yml']
workflow='''name: B699 Gap half-hour prerequisite probe

on:
  workflow_dispatch:
  push:
    branches: [huan/b699-lean-next-20261002-01a0f779]
    paths:
'''+''.join('      - '+x+'\n' for x in triggers)+'''
permissions:
  contents: read
concurrency:
  group: b699-controlled-proof
  cancel-in-progress: false
jobs:
  scoped:
    runs-on: ubuntu-latest
    timeout-minutes: 18
    env:
      B699_RUNTIME: '''+rt+'''
    steps:
      - name: Reject late start before checkout or installation
        shell: bash
        run: |
          echo "B699_JOB_START_EPOCH=$(date -u +%s)" >> "$GITHUB_ENV"
          test "$(date -u +%s)" -le "$(date -u -d '2026-10-02 18:19:00 UTC' +%s)" || { echo 'Late start rejected'; exit 124; }
      - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1
      - name: Record current cgroup resources and exact source bytes
        run: python3 "$B699_RUNTIME/gap-probe-stage.py" preflight
      - uses: leanprover/lean-action@50fcf42d2e460296f1a34b402e990d1b24f8b596
        with:
          auto-config: 'false'
          build: 'false'
          test: 'false'
          lint: 'false'
          use-mathlib-cache: 'false'
          use-github-cache: 'false'
      - name: Verify fixed Gap prerequisite sources, axioms, and normal checkers
        run: python3 "$B699_RUNTIME/gap-probe-stage.py"
      - name: Freeze proof member manifest
        if: always()
        run: python3 "$B699_RUNTIME/gap-probe-stage.py" manifest
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-gap-${{ github.sha }}-${{ github.run_id }}
          path: '''+tool+'''/evidence/
          if-no-files-found: warn
          retention-days: 30
'''
Path('.github/workflows/b699-finite-onehour.yml').write_text(workflow,encoding='utf-8')
files=['gap-probe-stage.py','gap-probe-stage-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json']
rows=[]
for p in [new/n for n in files]+[Path('.github/workflows/b699-finite-onehour.yml')]:rows.append({'path':p.as_posix(),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
save(new/'execution-ready.json',{'status':'static-ready-not-run','hardDeadline':hard,'lastJobStart':latest,'jobMinutes':18,'sources':4,'candidateRoots':13,'resources':'M3132/tree3072/start3072/2CPU/j1/nice19/reserve900/disk20GiB','files':rows,'staticChecks':{'ast':True,'sourceBytes':True,'projectTopologicalSuppliers':True},'scope':'No finite/terminal reconstruction or unconditional Gap accepted'})
print(json.dumps(rows,indent=2))
