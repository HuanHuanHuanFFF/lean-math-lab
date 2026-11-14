"""Select V2 scratch artifacts without altering the historical V1 freeze.
Embeds the exact literal type check and transitive axiom print in each file.
"""
import hashlib, json, shutil
from pathlib import Path
from extract import REPO
from freeze import renamed

BASE=Path(__file__).resolve().parent
SCRATCH=REPO/'.tools/b699-contribution-implementation-20261006/v2'
DEST=BASE/'v2'

def main():
 v1=json.loads((BASE/'FIRST-COMPILE-SNAPSHOT.json').read_text(encoding='utf-8'))
 expectations={Path(r['path']).name:r for r in v1['artifacts']}
 above=json.loads((SCRATCH/'analysis/i11-above-local-proof.json').read_text(encoding='utf-8'))
 below=json.loads((SCRATCH/'analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 a=json.loads((SCRATCH/'analysis/a151-compression.json').read_text(encoding='utf-8'))['packedCandidates'][0]
 reports={Path(r['path']).name:r for r in [above,below,a]}
 records=[]
 for filename in ['I11AboveFinalCandidate.lean','I11BelowFinalCandidate.lean','A151Packed.lean','SmallIndices.lean']:
  source=(BASE/'candidates'/filename) if filename=='SmallIndices.lean' else SCRATCH/'candidates'/filename
  report=reports.get(filename)
  name=renamed(report,report['target']) if report else expectations[filename]['root']
  expected=expectations[filename]['literalExpectedType']
  commands=f'\n#check ({name} : {expected})\n#print axioms {name}\n'
  content=source.read_text(encoding='utf-8').rstrip()+'\n'+commands
  out=DEST/'candidates'/filename;out.parent.mkdir(parents=True,exist_ok=True)
  out.write_text(content,encoding='utf-8',newline='\n')
  record={'path':str(out.relative_to(REPO).as_posix()),'bytes':out.stat().st_size,'sha256':hashlib.sha256(out.read_bytes()).hexdigest(),'root':name,'literalExpectedType':expected,'auditsEmbedded':True,'compilerStatus':'pending','transitiveAxiomStatus':'pending','independentVerifierStatus':'pending'}
  if report:record.update(selectedDeclarations=report['selectedDeclarations'],localProofSteps=report.get('localProofSteps'))
  records.append(record)
 for filename in ['i11-above-local-proof.json','i11-below-local-proof.json','i11-growth-packing.json','a151-compression.json','i11-slice.json','a151-slice.json']:
  source=SCRATCH/'analysis'/filename
  if source.exists():shutil.copyfile(source,DEST/'analysis'/filename)
 result={'role':'V2 first-compile snapshot; V1 remains historical static preflight','sourceBaseline':v1['sourceBaseline'],'officialProductionCommit':v1['officialProductionCommit'],'officialPolicyCommit':v1['officialPolicyCommit'],'fullContract':v1['fullContract'],'thisWorkerScope':v1['thisWorkerScope'],'i11Split':v1['i11Split'],'v1Snapshot':'../FIRST-COMPILE-SNAPSHOT.json','v2Corrections':['parse @[simp] theorem declarations on the same line','retain and fully qualify implicitly used simp declarations','discard project open directives whose namespace was eliminated by localization','keep the already fixed explicit IntervalCases import in A151','embed exact complete-double-choose literal checks and axiom prints'],'artifacts':records,'selectedBytes':sum(r['bytes'] for r in records),'sourceOnlyPolicy':'analysis/frozen-four-policy.json','fullContribCheck':False}
 (DEST/'FIRST-COMPILE-SNAPSHOT.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'files':len(records),'bytes':result['selectedBytes'],'artifacts':[{k:v for k,v in r.items() if k in ('path','bytes','sha256','root')} for r in records]},ensure_ascii=False))

if __name__=='__main__':main()
