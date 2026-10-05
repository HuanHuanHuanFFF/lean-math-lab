"""Reuse the measured old345 recovery, with independent pure-Mathlib PSI preparation."""
import argparse,ast,hashlib,json,re
from pathlib import Path
ROOT=Path.cwd();HERE=Path(__file__).resolve().parent
BASE=HERE.parents[1];OLD=BASE/'20261005-lean-halfhour/runtime';LP=BASE/'20261005-local-power-ninetymin'
p=argparse.ArgumentParser();p.add_argument('--thin-origin',type=Path,required=True);a=p.parse_args()
def row(p):
    return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
        'roots':[s.split('#print axioms ',1)[1] for s in p.read_text().splitlines() if s.startswith('#print axioms ')], 'largeConsumer':True}
spec=json.loads((OLD/'paper-stage-spec-engineering-candidate.json').read_text())
spec.update(schema='b699-gap-bridge-halfhour-legacy-psi-v1',owner='C local_power_runtime gpt-6.1-sol/xhigh',
    sourceBaseline='b18b9db2752d08d039f8e26906260b4b92160685',roundStartUtc='2026-10-05T09:44:48Z',finalDeadlineUtc='2026-10-05T10:14:48Z',
    proofStopUtc='2026-10-05T10:09:30Z',lastJobStart='2026-10-05T10:03:00Z',
    toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-gap-bridge-halfhour/legacy-runtime',minimumPostCheckoutProofBudgetSeconds=300)
new=[o for o in json.loads((LP/'runtime/mono-reuse-origins.json').read_text())['origins'] if o['packageName']!='accepted-old-theta-defs']
m=json.loads((LP/'runtime/ci/37288340935-round2/RAW_INTAKE.json').read_text())
def origin(m,name,stages,count):
    receipts=[]
    for r in m['members']:
        if r['member'].endswith('/receipt.json'):
            d=json.loads(Path(r['storedPath']).read_text())
            if d.get('mode')=='Lean' and d['status']=='success':receipts.append(r['member'])
    if len(receipts)!=count:raise RuntimeError('Fresh reuse count differs')
    return {'artifact':m['artifactId'],'run':m['runId'],'sourceCommit':m['sourceCommit'],'zipBytes':m['zipBytes'],'zipSha256':m['zipSha256'],
        'packageName':name,'stageName':stages[0],'stageNames':stages,'sourceCount':count,'freshOnly':True,'selectedReceipts':receipts,
        'selectedObjectMembers':[r['member'] for r in m['members'] if r['binaryOutsideGit']],'skipLegacyBaseBinding':True}
new.append(origin(m,'accepted-current-rd2',['monotonic','endpoint','round2'],6))
new.append(json.loads(a.thin_origin.read_text()))
for o in new:o['skipLegacyBaseBinding']=True
spec['reusedPrerequisiteArtifacts']+=new
legacy=[row(LP/'supply/LocalPowerOriginalLegacy.lean'),row(LP/'reviews/LocalPowerOriginalLegacyLiteral.lean')]
psi=[row(HERE.parent/'supply/PsiSmoothing.lean'),row(HERE.parent/'reviews/PsiSmoothingLiteral.lean')]
spec['stages']=[{'name':'originallegacy','enabled':True,'sources':legacy,'prerequisites':['finitebridge','upperinitial','tail30000'],
    'predictedCompleteSeconds':30,'packagingReserveSeconds':15,'predictionBasis':'priorlarge2source pair~15s;30s+15spackage; oldprepare155s',
    'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False},
    {'name':'psismoothing','enabled':True,'sources':psi,'prerequisites':[], 'predictedCompleteSeconds':45,'packagingReserveSeconds':15,
    'predictionBasis':'newpureMathlib4rootpair;45s+15spackage prediction,eachchild120s',
    'unconditionalCompleteOriginalIndexIncrement':0,'genuineUnboundedSupplierProved':False}]
current=json.loads((HERE/'stage-spec.json').read_text())['taskSources']
tasks={r['path']:r for r in spec['taskSources']}
for r in current+legacy+psi:tasks[r['path']]=r
spec['taskSources']=list(tasks.values())
spec['cacheRoots']=sorted(set(spec['cacheRoots'])|set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in legacy+psi),re.M)))
source=(OLD/'paper-stage-engineering-candidate.py').read_text().replace("HERE / 'paper-stage-spec-engineering-candidate.json'", "HERE / 'legacy-stage-spec.json'")
source=source.replace("['powerdecomp', 'powercore', 'localpower', 'weakupper']", "['originallegacy','psismoothing']")
source=source.replace("available = {row['stageName'] for row in SPEC['reusedPrerequisiteArtifacts']}",
    "available = {name for row in SPEC['reusedPrerequisiteArtifacts'] for name in row.get('stageNames',[row['stageName']])}")
source=source.replace("if 'external-member-bindings.json' in names:", "if 'external-member-bindings.json' in names and not t.get('skipLegacyBaseBinding', False):")
source=source.replace("elif not t.get('fixedStandaloneThetaOrigin', False):", "elif not t.get('fixedStandaloneThetaOrigin', False) and not t.get('skipLegacyBaseBinding', False):")
source=source.replace('def prepare():\n    cache()','def prepare():')
source=source.replace("closure = b.EVIDENCE / artifact['packageName'] / (artifact['stageName'] + '-closed.json')", "closure = b.EVIDENCE / artifact['packageName'] / (artifact['stageName'] + '-closed.json')")
needle="    b.write('prepared.json', {'utc': b.utc(), 'actualFirstSearchPrefix': str(b.OBJECTS),"
extra="""    for artifact in SPEC.get('reusedPrerequisiteArtifacts', []):
        for name in artifact.get('stageNames', []):
            closure = b.EVIDENCE / artifact['packageName'] / (name + '-closed.json')
            if not closure.is_file():raise RuntimeError('Adopted stage closure absent:' + name)
            b.write(name + '-adopted.json', {'utc': b.utc(), 'origin': artifact, 'closureSha256': b.sha(closure), 'actualNewCompile': False})
"""
source=source.replace(needle,extra+needle)
source=source.replace("if not (b.EVIDENCE / 'prepared.json').is_file():", "if not (b.EVIDENCE / ('common-prepared.json' if name == 'psismoothing' else 'prepared.json')).is_file():")
pos=source.index('\ndef run_stage(')
common="""
def prepare_common():
    cache()
    probe = b.EVIDENCE / 'psi-common-import.lean'
    probe.write_text('import Mathlib.NumberTheory.Chebyshev\\nimport Mathlib.MeasureTheory.Constructions.BorelSpace.Order\\nimport Mathlib.MeasureTheory.Integral.Bochner.Basic\\n')
    tc = json.loads((b.EVIDENCE / 'toolchain.json').read_text())
    b.launch([tc['lean'], '-j1', '-M6144', '-DElab.async=false', '-R', str(REPO), str(probe)], 'composite-psi-common-import', b.lean_env(), max_seconds=120, startup_mib=6144, tree_mib=5120)
    b.write('common-prepared.json', {'utc': b.utc(), 'actualMathlibRepresentativeImportExit': 0})
"""
source=source[:pos]+common+source[pos:]
source=source.replace("b.write('resources-start.json', b.resources())", "b.write('resources-start.json', b.resources())\n            if b.DEADLINE - time.time() < 300:raise RuntimeError('Insufficient actual post-checkout legacy/proof budget')")
source=source.replace("elif mode == 'prepare':", "elif mode == 'prepare-common':\n            prepare_common()\n        elif mode == 'prepare':")
source=source.replace("b.write('failure.json',", "b.write(sys.argv[1] + '-failure.json',")
driver=HERE/'legacy-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
remove={(OLD/'paper-stage-engineering-candidate.py').relative_to(ROOT).as_posix(),(OLD/'validate_job_admission.py').relative_to(ROOT).as_posix()}
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path'] not in remove]+[row(driver),row(HERE/'validate_job_admission.py')]
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:raise RuntimeError('Frozen source differs:'+r['path'])
available={n for o in spec['reusedPrerequisiteArtifacts'] for n in o.get('stageNames',[o['stageName']])}
for s in spec['stages']:
    if not set(s['prerequisites'])<=available:raise RuntimeError('Actual prerequisite alias differs')
    available.add(s['name'])
(HERE/'legacy-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
workflow=(HERE/'thin-workflow-draft.yml').read_text().split('      - name: Focused Mathlib cache')[0].replace('thin-stage.py','legacy-stage.py').replace('thin finite-middle bridge new30min','conditional original Legacy and real PSI smoothing').replace('2026-10-05 10:06:00 UTC','2026-10-05 10:03:00 UTC')
workflow+='''      - name: Common Mathlib preparation and pure PSI import
        id: common
        run: python3 "$B699_RUNTIME/legacy-stage.py" prepare-common
      - name: Restore accepted old345 plus current18 objects without recompile
        id: legacy
        if: always() && steps.common.outcome == 'success'
        env:
          B699_ARTIFACT_TOKEN: ${{ github.token }}
        run: python3 "$B699_RUNTIME/legacy-stage.py" prepare
'''
for name,condition in [('originallegacy',"steps.legacy.outcome == 'success'"),('psismoothing',"steps.common.outcome == 'success'")]:
    workflow+=f'''      - name: Fresh {name} producer and independent raw literal
        if: always() && {condition}
        run: python3 "$B699_RUNTIME/legacy-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/legacy-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-gapbridge-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
a=workflow.index('      - name: Restore accepted old345'); b=workflow.index('      - name: Fresh originallegacy producer'); c=workflow.index('      - name: Fresh psismoothing producer'); workflow=workflow[:a]+workflow[c:]+workflow[a:b]+workflow[b:c]
(HERE/'legacy-workflow-draft.yml').write_text(workflow,newline='\n');(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(workflow,newline='\n')
ready={'status':'READY-FROZEN','freshSources':4,'freshAX':16,'oldAcceptedSources':345,'currentAcceptedSources':18,'reusedTotal':363,
    'sizeShaASTAliases':'pass','runtimeSpecPath':(HERE/'legacy-stage-spec.json').relative_to(ROOT).as_posix(),'driverPath':driver.relative_to(ROOT).as_posix(),
    'minimumPostCheckoutSeconds':300,'latestJobStart':spec['lastJobStart'],'proofStopUtc':spec['proofStopUtc'],'hardDeadlineUtc':spec['finalDeadlineUtc']}
(HERE/'LEGACY-READY.json').write_text(json.dumps(ready,indent=2)+'\n',newline='\n');print(json.dumps(ready))
