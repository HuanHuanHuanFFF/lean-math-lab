"""Repair exact CI prefix front-end findings in a separate full Above candidate.

No Lean or numerical certificate recomputation. Global namespace headers and
rw-required definitions preserve original mathematical expressions. Only the
three diagnosed redundant rfl continuations receive all-goals sequencing.
"""
import hashlib, json, pickle, re, os
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO
from compress_i11 import SCRATCH, override
from pack_consumer import pack
from freeze import renamed

BASE=Path(__file__).resolve().parent
R=Path(os.getenv('B699_ABOVE_REPAIR_DEST',str(BASE/'repairs/20261007-above-prefix-errors')))
CACHE=SCRATCH/'i11-growth-packed.pickle'
TARGET='Math.B699.I11OriginalFinal.common_i11_above'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 oldmanifest=json.loads((BASE/'v2/FIRST-COMPILE-SNAPSHOT.json').read_text(encoding='utf-8'))
 old=next(x for x in oldmanifest['artifacts'] if Path(x['path']).name=='I11AboveFinalCandidate.lean')
 oldp=REPO/old['path'];assert sha(oldp)==old['sha256']
 with CACHE.open('rb') as f:tree,_,_=pickle.load(f)
 proofChanges=[]
 for name in ['child_windows_scaled_upper','mother_windows_scaled_upper','three_window_scaled_upper']:
  full='B699LowIndex.'+name;k=tree.byname[full][0];d=tree.decls[k];before=d['text']
  if name.startswith('three_'):
   after,n=re.subn(r'rw \[← pow_add\]\n\s*rfl','rw [← pow_add] <;> rfl',before)
  else:
   after,n=re.subn(r'rw \[Finset.prod_pow_eq_pow_sum\]; rfl','rw [Finset.prod_pow_eq_pow_sum] <;> rfl',before)
  assert n==1,(full,n)
  proofChanges.append({'original':full,'source':d['module'],'line':d['line'],'beforeTextSHA256':hashlib.sha256(before.encode()).hexdigest(),'afterTextSHA256':hashlib.sha256(after.encode()).hexdigest(),'reason':'rw can close the definitionally equal goal after localization; run rfl only on remaining goals, as diagnosed in actual CI at641/658/709'})
  override(tree,full,after)
 report=pack(tree,TARGET,R/'I11AboveFinalCandidate.lean',global_prefix=int(os.getenv('B699_PACK_GLOBAL_PREFIX','0')))
 root=renamed(report,TARGET);p=REPO/report['path'];body=p.read_text(encoding='utf-8')
 text=body.rstrip()+f"\n\n#check ({root} : {old['literalExpectedType']})\n#print axioms {root}\n"
 p.write_text(text,encoding='utf-8',newline='\n');report.update(source(p))
 assert p.stat().st_size<=1048576,p.stat().st_size
 # Product is now a true named definition, so rw receives its declaration name.
 assert 'B686Round8.product' in report['rewriteDefinitionsKeptGlobal']
 assert 'Math.B699.GrowthGap' in report['predeclaredProjectNamespaces'] or any('Growth' in n for n in report['predeclaredProjectNamespaces'])
 (R/'analysis/i11-above-local-proof.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 freeze={'status':'separate full Above source repair; actual Lean/AX/900s/Std3 pending','timeUTC':datetime.now(timezone.utc).isoformat(),'fixedOldSource':old,'newArtifact':dict(source(p),root=root,literalExpectedType=old['literalExpectedType'],auditsEmbedded=True,compilerStatus='pending',transitiveAxiomStatus='pending',independentVerifierStatus='pending'),'changes':{'namespaceHeaders':'Declare selected project namespaces before opens; no new mathematical declaration or input. Existing Polynomial and BernsteinCone open contexts no longer fail because another namespace appears later.','namedDefinitions':report['rewriteDefinitionsKeptGlobal'],'proofSequencing':proofChanges,'additionalTypedPrefixHoistedGlobal':report['additionalTypedPrefixHoistedGlobal']},'diagnosisLimits':'Prefix diagnostics changed only final endpoint toTrue and tighter400k, while these failures occur in byte-copied fully typed inner proof/global declarations. Prefix256 budget error does not prove final10M budget failure.','unchangedScope':oldmanifest['fullContract'],'unchangedI11Partition':oldmanifest['i11Split'],'completeAboveInputClaim':'all legalNat n/j with2^15360<=n, actualsamePrime>=11 divides both fullchoose; no new mathematical assumption','sourcePolicy':'analysis/source-policy.json','dataRoundtrip':'analysis/data-roundtrip.json','actualDiagnosis':'../../profiling/20261007-ci7-timeouts/results37506010389/ACTUAL-DIAGNOSIS.json','nativeLeanExecuted':False,'oldArtifactsUnmodified':True,'producerSources':[source(BASE/n) for n in ['extract.py','compress_i11.py','pack_consumer.py','repair_above_profile_errors.py']],'cacheInput':dict(source(CACHE),role='existing parsed/growth-packed source metadata only, not a proofobject; no CRT/Bernstein arithmetic regeneration')}
 (R/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 assert sha(oldp)==old['sha256']
 print(json.dumps({'sha256':sha(p),'bytes':p.stat().st_size,'root':root,'selectedGlobalDeclarations':report['selectedDeclarations'],'localProofSteps':report['localProofSteps'],'rwDefinitions':len(report['rewriteDefinitionsKeptGlobal']),'namespaceHeaders':len(report['predeclaredProjectNamespaces']),'confirmedRflFixes':3,'compile':'pending'},ensure_ascii=False))

if __name__=='__main__':main()
