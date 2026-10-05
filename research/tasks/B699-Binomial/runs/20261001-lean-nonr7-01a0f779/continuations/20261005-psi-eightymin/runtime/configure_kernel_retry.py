"""Eta literal retry and kernel, then cached Legacy; preserves earlier fixed execution."""
import ast,hashlib,json,re
from pathlib import Path
ROOT=Path.cwd();HERE=Path(__file__).resolve().parent
def row(p):
    return {'path':p.relative_to(ROOT).as_posix(),'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),
        'roots':[l.split('#print axioms ',1)[1] for l in p.read_text().splitlines() if l.startswith('#print axioms ')],'largeConsumer':True}
spec=json.loads((HERE/'legacy-stage-spec.json').read_text())
oldstage=next(s for s in spec['stages'] if s['name']=='originallegacy')
literal=[row(HERE.parent/'reviews/EtaSeriesLiteral.lean')]
kernel=[row(HERE.parent/'supply/EtaKernel.lean'),row(HERE.parent/'reviews/EtaKernelLiteral.lean')]
spec.update(schema='b699-psi80-kernel-legacy-retry-v1',toolRoot='.tools/b699-lean-20261001-01a0f779/20261005-psi-eightymin/kernel-runtime',pureMathlibStages=['etaliteral','etakernel'])
spec['stages']=[{'name':'etaliteral','enabled':True,'sources':literal,'prerequisites':[],'predictedCompleteSeconds':20,'packagingReserveSeconds':15,'predictionBasis':'one rawliteral using alreadycompiledproducer;eachchild120s'},
    {'name':'etakernel','enabled':True,'sources':kernel,'prerequisites':['etaliteral'],'predictedCompleteSeconds':45,'packagingReserveSeconds':15,'predictionBasis':'new9rootpair45s+15spackage;eachchild120s'},oldstage]
tasks={r['path']:r for r in spec['taskSources']}
for r in literal+kernel:tasks[r['path']]=r
spec['taskSources']=list(tasks.values())
spec['cacheRoots']=sorted(set(re.findall(r'^(?:public )?import (Mathlib\.[A-Za-z0-9_.]+)',
    '\n'.join((ROOT/r['path']).read_text() for r in spec['taskSources']),re.M)))
origins=[]
for run,stage,name,count in [(37296215678,'psismoothing','accepted-pure-psi',2),(37297415710,'etaseries','accepted-eta-producer-tech',1)]:
    m=json.loads((HERE/'ci'/f'{run}-{stage}'/'RAW_INTAKE.json').read_text());rs=[];objs=[]
    for r in m['members']:
        if r['member'].endswith('/receipt.json'):
            d=json.loads(Path(r['storedPath']).read_text())
            if d.get('mode')=='Lean' and d['status']=='success':
                rs.append(r['member']);objs.extend('objects/'+x['path'].split('/objects/',1)[1] for x in d['objectParts'])
    if len(rs)!=count:raise RuntimeError('Selected pure success count differs')
    origins.append({'artifact':m['artifactId'],'run':run,'sourceCommit':m['sourceCommit'],'zipBytes':m['zipBytes'],'zipSha256':m['zipSha256'],'packageName':name,
        'sourceCount':count,'selectedReceipts':rs,'selectedObjectMembers':objs,'skipLegacyBaseBinding':True})
spec['pureArtifactOrigins']=origins
source=(HERE/'legacy-stage.py').read_text().replace("HERE / 'legacy-stage-spec.json'", "HERE / 'kernel-stage-spec.json'")
a=source.index('def prepare_common():');z=source.index('\ndef run_stage(',a)
source=source[:a]+'''def prepare_common():
    cache()
    token=os.environ.get('B699_ARTIFACT_TOKEN','')
    if not token:raise RuntimeError('Existing artifact token unavailable')
    tc=json.loads((b.EVIDENCE/'toolchain.json').read_text());index={}
    for origin in SPEC['pureArtifactOrigins']:
        download_supplement(origin,token,origin['packageName']);package=b.EVIDENCE/origin['packageName']
        prior=json.loads((package/'toolchain.json').read_text())
        if any(tc[k]!=prior[k] for k in ['leanSha256','leancheckerSha256']):raise RuntimeError('Pure reused executable hash differs')
        for rel in origin['selectedReceipts']:
            p=package/rel;r=json.loads(p.read_text());path=Path(r['source']).relative_to(Path(r['cwd'])).as_posix()
            if r['status']!='success' or r['exitCode']!=0 or not r['sourceUnchanged']:raise RuntimeError('Pure reused compile failed')
            if b.sha(REPO/path)!=r['sourceSha256'] or b.sha(p.parent/'source.lean')!=r['sourceSha256']:raise RuntimeError('Pure source binding differs')
            for part in r['objectParts']:
                dst=b.OBJECTS/part['path'].split('/objects/',1)[1]
                if dst.stat().st_size!=part['bytes'] or b.sha(dst)!=part['sha256']:raise RuntimeError('Pure object binding differs')
            index[path]=r
    token=None
    b.write('adopted-source-object-index.json',{'utc':b.utc(),'sourceObjects':index,'oldSourceCount':len(index),'supplementSourceCount':0,'oldExecutionIncrement':0,
        'scope':'psi named accepted; eta producer compile/AX/normal only, complete pair pending new rawliteral'})
    probe=b.EVIDENCE/'pure-reused-import.lean'
    probe.write_text('import research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-psi-eightymin».supply.EtaSeries\\nimport research.tasks.«B699-Binomial».runs.«20261001-lean-nonr7-01a0f779».continuations.«20261005-gap-bridge-halfhour».supply.PsiSmoothing\\n')
    b.launch([tc['lean'],'-j1','-M6144','-DElab.async=false','-R',str(REPO),str(probe)],'composite-pure-reused-import',b.lean_env(),max_seconds=120,startup_mib=6144,tree_mib=5120)
    b.write('common-prepared.json',{'utc':b.utc(),'actualRepresentativeImportExit':0,'selectedPureSources':len(index)})

''' + source[z:]
a=source.index('def package(name):');z=source.index('\ndef main():',a)
part=source[a:z].replace("SPEC.get('reusedPrerequisiteArtifacts', [])", "SPEC.get('reusedPrerequisiteArtifacts', []) + SPEC.get('pureArtifactOrigins', [])")
source=source[:a]+part+source[z:]
driver=HERE/'kernel-stage.py';driver.write_text(source,newline='\n');ast.parse(source)
spec['fixedRuntimeSources']=[r for r in spec['fixedRuntimeSources'] if r['path']!=(HERE/'legacy-stage.py').relative_to(ROOT).as_posix()]+[row(driver)]
for r in spec['taskSources']+spec['fixedRuntimeSources']:
    p=ROOT/r['path']
    if p.stat().st_size!=r['bytes'] or hashlib.sha256(p.read_bytes()).hexdigest()!=r['sha256']:raise RuntimeError('Frozen bytes differ:'+r['path'])
(HERE/'kernel-stage-spec.json').write_text(json.dumps(spec,indent=2)+'\n',newline='\n')
w=(HERE/'legacy-workflow-draft.yml').read_text().split('      - name: Actual eta series producer')[0].replace('legacy-stage.py','kernel-stage.py')
w=w.replace('        run: python3 "$B699_RUNTIME/kernel-stage.py" prepare-common','        env:\n          B699_ARTIFACT_TOKEN: ${{ github.token }}\n        run: python3 "$B699_RUNTIME/kernel-stage.py" prepare-common')
def block(name,condition):
    return f'''      - name: Actual {name} and independent raw proof
        if: always() && {condition}
        run: python3 "$B699_RUNTIME/kernel-stage.py" {name}
      - name: Preserve {name} complete or failed checkpoint
        if: always()
        run: python3 "$B699_RUNTIME/kernel-stage.py" package-{name}
      - uses: actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02
        if: always()
        with:
          name: b699-psi80-{name}-${{{{ github.sha }}}}-${{{{ github.run_id }}}}
          path: {spec['toolRoot']}/{name}-delivery/
          if-no-files-found: warn
          retention-days: 30
'''
w+=block('etaliteral',"steps.common.outcome == 'success'")+block('etakernel',"steps.common.outcome == 'success'")
w+='''      - name: Restore old345 plus current18 without rebuilding
        id: legacy
        if: always() && steps.common.outcome == 'success'
        env:
          B699_ARTIFACT_TOKEN: ${{ github.token }}
        run: python3 "$B699_RUNTIME/kernel-stage.py" prepare
'''+block('originallegacy',"steps.legacy.outcome == 'success'")
(HERE/'kernel-workflow-draft.yml').write_text(w,newline='\n');(ROOT/'.github/workflows/b699-finite-onehour.yml').write_text(w,newline='\n')
print(json.dumps({'status':'READY-FROZEN','freshSources':5,'freshAX':31,'pureReusedSources':3,'legacyReusedSources':363,'MathlibCacheRoots':len(spec['cacheRoots']),
    'LogMonotonePresent':'Mathlib.Analysis.SpecialFunctions.Log.Monotone' in spec['cacheRoots'],'AST_sourceSHA':'pass'}))
