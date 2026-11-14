"""Bind the CI6-diagnosed A151 repair without overwriting historical evidence.
No Lean execution; every new candidate remains pending kernel compilation.
"""
import hashlib, json, re, shutil
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO
from freeze import renamed

BASE=Path(__file__).resolve().parent
SCRATCH=REPO/'.tools/b699-contribution-implementation-20261006/a151-ci6-repair'
DEST=BASE/'repairs/20261006-ci6-a151'
INTAKE=Path('D:/ResearchArtifacts/b699-contribution-validation-20261006/37481761068')

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()

def main():
 DEST.mkdir(parents=True,exist_ok=True);(DEST/'analysis').mkdir(exist_ok=True)
 oldmanifest=json.loads((BASE/'v2/FIRST-COMPILE-SNAPSHOT.json').read_text(encoding='utf-8'))
 old=next(r for r in oldmanifest['artifacts'] if Path(r['path']).name=='A151Packed.lean')
 oldfile=REPO/old['path'];assert digest(oldfile)==old['sha256']
 dataset=json.loads((SCRATCH/'analysis/a151-compression.json').read_text(encoding='utf-8'))
 previous=json.loads((BASE/'v2/analysis/a151-compression.json').read_text(encoding='utf-8'))
 assert dataset['rows']==previous['rows'],'original row provenance/data comparison changed'
 report=dataset['packedCandidates'][0];root=renamed(report,report['target'])
 source=SCRATCH/'candidates/A151Packed.lean';body=source.read_text(encoding='utf-8')
 expected=old['literalExpectedType']
 new=body.rstrip()+f'\n\n#check ({root} : {expected})\n#print axioms {root}\n'
 strings=lambda s:re.findall(r'"(?:[^"\\]|\\.)*"',s)
 assert strings(new)==strings(oldfile.read_text(encoding='utf-8')),'encoded original goods/layers changed'
 out=DEST/'A151Packed.lean';out.write_text(new,encoding='utf-8',newline='\n')
 shutil.copyfile(SCRATCH/'analysis/a151-compression.json',DEST/'analysis/a151-compression.json')
 evidence=[]
 for name in ['raw-A151Packed.log','resource-raw-A151Packed.json','sandbox-object-Frozen.a151.sh','sandbox-object-Frozen.a151.sh.diff']:
  p=INTAKE/name
  if not p.is_file():raise RuntimeError('missing actual CI6 evidence '+str(p))
  evidence.append({'path':str(p),'bytes':p.stat().st_size,'sha256':digest(p)})
 original_rows=dataset['rows']
 receipt={'status':'source repair and exact input representation comparison; not Lean acceptance','timeUTC':datetime.now(timezone.utc).isoformat(),'fixedOldSource':old,'newArtifact':{'path':str(out.relative_to(REPO).as_posix()),'bytes':out.stat().st_size,'sha256':digest(out),'root':root,'literalExpectedType':expected,'auditsEmbedded':True,'compilerStatus':'pending','transitiveAxiomStatus':'pending','independentVerifierStatus':'pending'},'diagnosis':{'getter':'HeightCertificateDatum.n0 is a computed extension method; lexical slice did not infer it from row.n0 and omitted the actual definition. Restored original definition 10^datum.n0Power10 as a real dependency.','order':'TrialPrimeCheck was added to the generated checker module imports after initial module order creation; definitions appeared after their uses. Emit now uses the current import DAG.','line802':'HeightRowValid/Decidable/heightRowValidBool were invalid after missing n0; reduction-stuck is downstream of that elaboration error, not a false numeric certificate.','performance':'CI6 exit137 at about917s remains a real timeout; the repaired decision workload has not been timed and may need further proof engineering.'},'changes':['retain visible computed dot methods as dependencies','recompute module topological order after generated imports','preserve original getter/proofs and all data/domain conditions'],'exactInputComparison':{'indices':len(original_rows),'goods':sum(r['goodsCount'] for r in original_rows),'layers':sum(r['layerCount'] for r in original_rows),'allRowsAndProvenanceEqualToV2':True,'encodedDataStringsEqualToV2':True,'thresholdAndScopeUnchanged':'{29} union [35,184], every legal Nat n/j, actual same Prime p>=i dividing both complete choose'},'oldEvidenceUntouched':True,'actualCI6Inputs':evidence,'policy':'analysis/source-policy.json','fullContract':'S={1,2,11,29} union [35,30000] unchanged; replace only A151 artifact after this fixed source passes'}
 assert receipt['exactInputComparison']['indices']==151 and receipt['exactInputComparison']['goods']==37313 and receipt['exactInputComparison']['layers']==3919
 (DEST/'FREEZE.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'bytes':out.stat().st_size,'sha256':digest(out),'root':root,'indices':151,'goods':37313,'layers':3919,'dataUnchanged':True,'oldEvidenceUntouched':True,'compile':'pending'},ensure_ascii=False))

if __name__=='__main__':main()
