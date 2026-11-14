"""Bind the four first-compile artifacts and exact independent audit commands.
Does not modify any Lean source. Candidate compiler status stays pending.
"""
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO, OUT

def renamed(report,target):
 return report['ownNamespace']+'.'+'.'.join(report['declarationNameMap'].get(x,report['namespaceSegmentMap'].get(x,x)) for x in target.split('.'))

def main():
 root=OUT/'analysis'
 above=json.loads((root/'i11-above-local-proof.json').read_text(encoding='utf-8'))
 below=json.loads((root/'i11-below-local-proof.json').read_text(encoding='utf-8'))
 a=json.loads((root/'a151-compression.json').read_text(encoding='utf-8'))['packedCandidates'][0]
 expected={
  'I11AboveFinalCandidate.lean':'∀ {n j : Nat}, (2 : Nat) ^ 15360 ≤ n → 11 < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j',
  'I11BelowFinalCandidate.lean':'∀ {n j : Nat}, n < (2 : Nat) ^ 15360 → 11 < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j',
  'A151Packed.lean':'∀ {n i j : Nat}, (i = 29 ∨ (35 ≤ i ∧ i ≤ 184)) → i < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j',
  'SmallIndices.lean':'∀ {n i j : Nat}, 1 ≤ i → i ≤ 2 → i < j → j ≤ n / 2 → ∃ p : Nat, Nat.Prime p ∧ i ≤ p ∧ p ∣ Nat.choose n i ∧ p ∣ Nat.choose n j',
 }
 binding={Path(r['path']).name:(r,renamed(r,r['target'])) for r in [above,below,a]}
 binding['SmallIndices.lean']=(None,'Contribution.B699Small.original')
 policy=json.loads((root/'frozen-four-policy.json').read_text(encoding='utf-8'))
 checks={Path(s['path']).name:s for s in policy['sourceFiles']}
 records=[]
 for filename,(report,name) in binding.items():
  p=OUT/'candidates'/filename;b=p.read_bytes();sha=hashlib.sha256(b).hexdigest()
  assert sha==checks[filename]['sha256'],filename
  commands=f'#check ({name} : {expected[filename]})\n#print axioms {name}\n'
  records.append({'path':str(p.relative_to(REPO).as_posix()),'bytes':len(b),'sha256':sha,'root':name,'literalExpectedType':expected[filename],'auditAppendCommands':commands,'sourceRuleFindings':checks[filename]['findings'],'compilerStatus':'pending','transitiveAxiomStatus':'pending','independentVerifierStatus':'pending'})
 generator_files=['extract.py','compress_i11.py','compress_a151.py','pack_i11_growth.py','pack_consumer.py','freeze.py']
 code_dir=Path(__file__).resolve().parent
 generators=[{'path':str((code_dir/f).relative_to(REPO).as_posix()),'sha256':hashlib.sha256((code_dir/f).read_bytes()).hexdigest()} for f in generator_files]
 result={'snapshotAtUTC':datetime.now(timezone.utc).isoformat(),'sourceBaseline':'a5f7afff0766bf5fee2d72aa9e8ee6a5eb7bda99','role':'first independent compilation snapshot; source bytes frozen until compiler feedback','fullContract':'S={1,2,11,29} union [35,30000], all legal Nat n/i/j; actual same Prime p>=i dividing both full choose','thisWorkerScope':'i=1,2,11,29 and 35..184; i11 is the exact exhaustive n split at 2^15360','i11Split':'n<2^15360 or 2^15360<=n, no n/j bound remains after union','originalConsumers':'../SOURCE-ENTRIES.json','selectedBytes':sum(x['bytes'] for x in records),'sourceOnlyPolicy':'analysis/frozen-four-policy.json','sourceOnlyErrors':policy['errors'],'sourceOnlyReviews':policy['reviewFindings'],'fullContribCheck':False,'officialProductionCommit':'6a786f997e18e8f095762a2830d191b7e25e505e','officialPolicyCommit':'be220ff2519ecfd61b28ba9e477321e4287ef6b4','artifacts':records,'generators':generators,'runtimePrivateScratchRepoPath':'.tools/b699-contribution-implementation-20261006','lastNativeResourceObservation':{'availablePhysicalBytes':544370688,'freeDiskBytesD':27415273472,'leanOrLakeRunning':False,'nativeCompileLaunched':False,'reason':'available physical RAM below observed 810.5MB baseline peak; no app was killed'},'limits':'each artifact<=1048576B, <=200 declarations; entire eventual contribution<=4194304B, <=32 artifacts; 900s/16GiB compiler budget still unmeasured'}
 (OUT/'FIRST-COMPILE-SNAPSHOT.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'files':len(records),'bytes':result['selectedBytes'],'errors':policy['errors'],'reviews':policy['reviewFindings'],'roots':[x['root'] for x in records]},ensure_ascii=False))

if __name__=='__main__':main()
