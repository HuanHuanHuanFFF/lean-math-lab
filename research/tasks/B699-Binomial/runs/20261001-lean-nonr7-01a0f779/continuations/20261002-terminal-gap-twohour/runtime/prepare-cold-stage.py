"""Administrative exact accepted-source materialization; no Lean or generation."""
import ast, hashlib, json, re, shutil
from pathlib import Path
REPO=Path.cwd().resolve();HERE=Path(__file__).resolve().parent
BASE='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/'
OLD=REPO/(BASE+'20261002-finite-full-onehour/runtime')
NEW=BASE+'20261002-terminal-gap-twohour/'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(name,o):(HERE/name).write_text(json.dumps(o,indent=2,ensure_ascii=False)+'\n',encoding='utf-8')
def main():
    terminal=json.loads((HERE/'terminal-stage-spec.json').read_text())
    accepted=OLD/'ci/37007287888/generated-source-maps/normnum-full-4043-source-map.json'
    plan=json.loads(accepted.read_text());bundle=REPO/(NEW+'terminal/source-bundle');rows=[]
    for s in plan['outputs']:
        source=OLD/'ci/37007287888/generated-sources'/s['path'];target=bundle/s['path']
        if sha(source)!=s['sha256'] or source.stat().st_size!=s['bytes']:raise RuntimeError('Accepted generated source differs')
        target.parent.mkdir(parents=True,exist_ok=True)
        if target.exists() and target.read_bytes()!=source.read_bytes():raise RuntimeError('Refuse changing different staged source')
        if not target.exists():shutil.copyfile(source,target)
        rows.append({'path':target.relative_to(REPO).as_posix(),'modulePath':s['path'],'sourceRoot':bundle.relative_to(REPO).as_posix(),
                     'bytes':s['bytes'],'sha256':s['sha256'],'originPath':source.relative_to(REPO).as_posix()})
    if len(rows)!=34 or any('Batch' in s['modulePath'] for s in rows):raise RuntimeError('Exact full source set must exclude 32/128 probes')
    prior=json.loads((OLD/'full-stage-v3-spec.json').read_text())
    support=prior['supportSources'];project={s['path'] for s in terminal['sources']}
    if not set(support).issubset(project):raise RuntimeError('Bootstrap support not present in exact terminal source closure')
    root='research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/continuations/20261002-finite-full-onehour/finite/FiniteSupplyOnly.lean'
    spec={'hardDeadline':terminal['hardDeadline'],'jobMinutes':70,'lastJobStart':terminal['lastJobStart'],
          'toolRoot':'.tools/b699-lean-20261001-01a0f779/20261002-terminal-gap-twohour/runtime/cold-terminal',
          'bootstrapSupport':support,'fixedAcceptedSources':rows,'finiteSupplier':root,
          'checkerModule':terminal['checkerModule'],'requiredFinalRoots':terminal['requiredFinalRoots'],
          'acceptedProofRun':37007287888,'acceptedProofCommit':'fd7f7ec9d5c466596f7173f91b9cc34a3e1a9d83',
          'acceptedProofZipSha256':'65a3c64ff7d8ae45c7177ba8bd336a6f0e2993895e526e3663944df64b59eb6e',
          'reason':'No existing browser/CLI dispatch login and main workflow missing; signed capability is not written to Git',
          'mathematicalMethodChanged':False,'primeSearchOrGeneratorExecuted':False,'no32Or128Probe':True,
          'estimatedRepeatedFullSourceCostSeconds':600,'coldTerminalCost':'unknown, requires actual controlled measurement'}
    gap_names=['ThetaInterval','ThetaTail','PsiTheta']
    gap_sha=['22af1bd91d6252dcdf093726c408ae4d1449e372e1dbe2936aa2661692f783a7','a56752ab3dde8be228178fa8803b72ec9dd4e9d607d34b0f500f3513ac0d2a0d','1dcca6cb1871f0886cedf8cc87d81e9630cc9c60d2e2c0664092fc9df8ee64cd']
    gap=[]
    for name,fixed in zip(gap_names,gap_sha):
        path=NEW+'gap/'+name+'.lean';p=REPO/path
        if sha(p)!=fixed:raise RuntimeError('Fixed Gap probe source differs')
        gap.append({'path':path,'bytes':p.stat().st_size,'sha256':fixed})
    spec['optionalGapProbe']={'sources':gap,'stopNewHeavyUtc':'2026-10-02T15:35:10Z',
          'cacheRoots':['Mathlib.NumberTheory.Chebyshev','Mathlib.Tactic.Linarith','Mathlib.Tactic.NormNum','Mathlib.Tactic.Ring','Mathlib.Tactic.FieldSimp'],
          'checkerModule':'research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261002-terminal-gap-twohour».gap.ThetaTail',
          'status':'exploratory conditional theta interfaces; not unconditional Gap',
          'requiredRoots':['B699ThetaSupply.'+n for n in ['exists_prime_of_theta_lt','exists_prime_of_theta_bounds','prime_of_theta_relative_bounds','coefficient_4095_asymmetric','coefficient_4095_symmetric','log_gt_eighteen','theta_lower_of_log_error','gap_4095_above_theta_threshold','gap_4095_of_theta_estimates_and_initial_segment','psi_sub_theta_le_twentyone_sqrt','psi_sub_theta_le_div_40000','prime_of_psi_relative_error','gap_4095_of_psi_error']]}
    manifest=json.loads((HERE/'linux-source-manifest.json').read_text())
    manifest['taskSources']=terminal['sources']+rows+gap
    if len(manifest['taskSources'])!=132 or len({s['path'] for s in manifest['taskSources']})!=132:raise RuntimeError('Non-unique fixed cold source set')
    write('cold-stage-spec.json',spec);write('linux-source-manifest.json',manifest)
    ordered=[{'path':p,'modulePath':p} for p in support]+rows+[{'path':root,'modulePath':root}]
    done=set(support)|{root}
    ordered += [{'path':s['path'],'modulePath':s['path']} for s in terminal['sources'] if s['path'] not in done]
    ordered += [{'path':s['path'],'modulePath':s['path']} for s in gap]
    available=set();dependencies=[]
    for s in ordered:
        names=re.findall(r'(?m)^\s*(?:(?:public|private|meta)\s+)?import(?:\s+all)?\s+(\S+)',(REPO/s['path']).read_text(encoding='utf-8-sig'))
        imports=[]
        for name in names:
            p=name.replace('«','').replace('»','').replace('.','/')+'.lean'
            if name.startswith(('Mathlib.','Lean.','Std.','Init.')) or name in ['Mathlib','Lean','Std','Init']:
                imports.append({'module':name,'supplier':'pinned-package-or-toolchain'})
            else:
                if p not in available:raise RuntimeError('Cold stage unavailable project import: '+s['path']+' -> '+p)
                imports.append({'module':name,'supplier':p})
        dependencies.append({'physicalSource':s['path'],'canonicalModuleSource':s['modulePath'],'imports':imports});available.add(s['modulePath'])
    write('cold-source-supplier-map.json',{'scope':'exact source materialization and actual import DAG only; no proof execution',
          'sourceMapOrigin':accepted.relative_to(REPO).as_posix(),'sourceMapSha256':sha(accepted),
          'acceptedGeneratedCount':34,'bootstrapSupport':support,'materializedSources':rows,
          'sourceRootProvidesOriginalModulePaths':True,'actualImportTopologyChecked':True,'orderedCanonicalSourceCount':len(ordered),'importRows':dependencies,
          'orderedStages':['bootstrap7','fixed33blocks+CompleteChain','finiteSupplier','representativeImport','remainingTerminalSources','allFinalRootsAndNormalChecker','separateOptionalGapProbe']})
    for n in ['terminal-stage.py','linux-runner.py','cold-stage.py']:ast.parse((HERE/n).read_text())
    write('cold-execution-ready.json',{'executedLean':False,'transport':'not needed; no URI or authentication change',
          'jobMinutes':70,'latestStart':terminal['lastJobStart'],'absoluteDeadline':terminal['hardDeadline'],
          'files':[{'path':NEW+'runtime/'+n,'bytes':(HERE/n).stat().st_size,'sha256':sha(HERE/n)}
                   for n in ['cold-stage.py','cold-stage-spec.json','terminal-stage.py','terminal-stage-spec.json','linux-runner.py','linux-source-manifest.json','cold-source-supplier-map.json']]})
    print(json.dumps({'materializedFixedFullSources':34,'bootstrapSupport':7,'terminalSources':95,'no32Or128':True,'LeanExecuted':False}))
if __name__=='__main__':main()
