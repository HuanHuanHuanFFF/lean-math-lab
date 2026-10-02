from pathlib import Path
import json,ast,hashlib,re
base=Path('research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations');old=base/'20261003-gap-halfhour/runtime';new=base/'20261003-gap-finite-fortymin/runtime';new.mkdir(exist_ok=True)
hard='2026-10-02T19:20:45Z';latest='2026-10-02T19:07:45Z';tool='.tools/b699-lean-20261001-01a0f779/20261003-gap-finite-fortymin/runtime/pilot64'
load=lambda p:json.loads(p.read_text(encoding='utf-8-sig'))
def save(p,v):p.write_text(json.dumps(v,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
paths=[base/'20261002-finite-onehour/finite/ChainCore.lean',base/'20261003-gap-halfhour/supply/Pilot64.lean',base/'20261003-gap-finite-fortymin/reviews/Pilot64Exact.lean']
rows=[]
for p in paths:
 raw=p.read_bytes();imp=re.findall(r'(?m)^(?:(?:public|private|meta)\s+)?import\s+(?:all\s+)?([^\n]+)',raw.decode('utf-8-sig'));rows.append({'path':p.as_posix(),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest(),'imports':[x.strip() for x in imp]})
assert rows[0]['sha256'].startswith('2a604d') # Full fixed hash additionally carried in source manifest
assert rows[1]['sha256']=='d8df5d3bc6063fe4f7b847917b503fe038dda904ab9cd44706ec47bf8794e048'
assert rows[2]['sha256']=='49129904be72e644f4efcbde9451f9d46b9cd0a9c05271474572267c53ac1ae8'
s={'hardDeadline':hard,'lastJobStart':latest,'stopNewHeavyUtc':'2026-10-02T19:15:45Z','jobMinutes':12,'toolRoot':tool,'sources':rows,'cacheRoots':['Mathlib.Data.Nat.Prime.Defs','Mathlib.Tactic.NormNum.Prime'],'scope':'actual prime-gap initial slice 10000000<=y<10146761; no unconditional infinite Gap claim','candidateRoots':66,'independentLiteralRoots':2,'bootstrapRoots':2,'noPrimeSearchOrGenerator':True}
save(new/'pilot64-stage-spec.json',s)
t=load(old/'terminal-stage-v2-spec.json');t.update(hardDeadline=hard,lastJobStart=latest,jobMinutes=12,toolRoot=tool,cacheRoots=s['cacheRoots'],sources=rows,supportSources=rows,finalSources=[],requiredFinalRoots=[],checkerModule=None,proofStartupMiB=3072,proofTreeMiB=3072);save(new/'terminal-stage-v2-spec.json',t)
m=load(old/'linux-source-manifest-v2.json');m.update(hardDeadline=hard,lastJobStart=latest,taskSources=rows,mathlibImports=s['cacheRoots'],roots=[],requiredFinalRoots=[],checkerModule=None,note='Fixed Pilot64 strict actualPrime initial-y gap slice plus independent literal; no old13/129/33 route');save(new/'linux-source-manifest-v2.json',m)
for name in ['terminal-stage-v2.py','linux-runner-v2.py']:
 text=(old/name).read_text(encoding='utf-8-sig').replace('20261003-gap-halfhour/runtime','20261003-gap-finite-fortymin/runtime');(new/name).write_text(text,encoding='utf-8');ast.parse(text)
text=(old/'gap-probe-stage.py').read_text(encoding='utf-8-sig').replace('gap-probe-stage-spec.json','pilot64-stage-spec.json').replace('gap-probe-spec.json','pilot64-spec.json').replace('gap-only-','pilot64-').replace('GAP_','PILOT64_').replace('gap-only-failure.json','pilot64-failure.json')
(new/'pilot64-stage.py').write_text(text,encoding='utf-8');ast.parse(text)
files=['pilot64-stage.py','pilot64-stage-spec.json','terminal-stage-v2.py','terminal-stage-v2-spec.json','linux-runner-v2.py','linux-source-manifest-v2.json'];rt=new.as_posix();trigger=[rt+'/'+n for n in files]+[paths[2].as_posix(),'.github/workflows/b699-finite-onehour.yml']
yml='''name: B699 finite prime-gap Pilot64 verification

on:
  workflow_dispatch:
  push:
    branches: [huan/b699-lean-next-20261002-01a0f779]
    paths:
'''+''.join('      - '+p+'\n' for p in trigger)+'''
permissions:
  contents: read
concurrency:
  group: b699-controlled-proof
  cancel-in-progress: false
jobs:
  scoped:
    runs-on: ubuntu-latest
    timeout-minutes: 12
    env:
      B699_RUNTIME: '''+rt+'''
    steps:
      - name: Reject late start before checkout or installation
        shell: bash
        run: |
          echo "B699_JOB_START_EPOCH=$(date -u +%s)" >> "$GITHUB_ENV"
          test "$(date -u +%s)" -le "$(date -u -d '2026-10-02 19:07:45 UTC' +%s)" || { echo 'Late start rejected'; exit 124; }
      - uses: actions/checkout@3d3c42e5aac5ba805825da76410c181273ba90b1
      - name: Record current cgroup resources and exact source bytes
        run: python3 "$B699_RUNTIME/pilot64-stage.py" preflight
      - uses: leanprover/lean-action@50fcf42d2e460296f1a34b402e990d1b24f8b596
        with:
          auto-config: 'false'
          build: 'false'
          test: 'false'
          lint: 'false'
          use-mathlib-cache: 'false'
          use-github-cache: 'false'
      - name: Verify Pilot64 and exact literal, axioms, normal checkers
        run: python3 "$B699_RUNTIME/pilot64-stage.py"
      - name: Freeze proof member manifest
        if: always()
        run: python3 "$B699_RUNTIME/pilot64-stage.py" manifest
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-gap-pilot64-${{ github.sha }}-${{ github.run_id }}
          path: '''+tool+'''/evidence/
          if-no-files-found: warn
          retention-days: 30
'''
Path('.github/workflows/b699-finite-onehour.yml').write_text(yml,encoding='utf-8')
fixed=[]
for p in [new/n for n in files]+[Path('.github/workflows/b699-finite-onehour.yml')]:fixed.append({'path':p.as_posix(),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
save(new/'execution-ready.json',{'utc':'2026-10-02','status':'fixed-three-source-static-ready-not-run','hardDeadline':hard,'lastJobStart':latest,'jobMinutes':12,'files':fixed,'sourceManifest':rows,'checks':{'allPythonAST':True,'sourcesHashExact':True,'dependencyOrder':'Core -> Pilot64 -> SExact','singleGlobalLock':True,'correctModuleABI':True},'resourceProfile':'M3132/tree3072/start3072/900reserve/CPU2/j1/asyncfalse/nice19/D20GiB','scope':'No old13/129/33/32/128 mathematical recovery; Core necessary physical import supplier only'})
print(json.dumps(fixed,indent=2))
