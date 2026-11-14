"""Classify bounded frozen-source findings; no Lean or numeric recomputation."""
import hashlib, json
from pathlib import Path
from datetime import datetime, timezone

BASE=Path(__file__).resolve().parent
REPORT=BASE/'repairs/I11-STATIC-DEPENDENCY-PRECHECK.json'

def main():
 result=json.loads(REPORT.read_text(encoding='utf-8'))
 explanations={
  'I11AboveFinalCandidate.lean':[
   {'references':'d0 at 149/150','definitionLine':131,'namespace':'Math.B699.N10','openLine':145},
   {'references':'d47 at 295..298','definitionLine':256,'namespace':'Math.B699.N12','openLine':260}],
  'I11BelowFinalCandidate.lean':[
   {'references':'d43 at 106/111','definitionLine':97,'namespace':'Math.B699.N5','openLines':[104,109]},
   {'references':'d1 at 137','definitionLine':128,'namespace':'Math.B699.N3','openLine':134},
   {'references':'d11 at 280','definitionLine':263,'namespace':'Math.B699.N5','openLine':269},
   {'references':'d0 at 286..291','definitionLine':270,'namespace':'Math.B699.N4','openLine':284},
   {'references':'d51 at 305','definitionLine':295,'namespace':'N1','openLine':301},
   {'references':'d58 at 306','definitionLine':92,'namespace':'N1.N11','openLine':301}]}
 for record in result['artifacts']:
  name=Path(record['artifact']['path']).name
  record['manualRelativeOpenResolution']=explanations[name]
  record['manualRelativeOpenResolutionStatus']='earlier definitions and explicit relative opens observed; parser misses enclosing Contribution prefix; Lean name resolution remains pending'
  record['sameA151GetterOrModuleOrderDefectObserved']=False
  record['concreteDefects']=[]
  if name.startswith('I11Below'):
   record['concreteDefects'].append({
    'classification':'synthetic structure incorrectly localized as a theorem',
    'sourceLines':[5719,5720,5721,5722],
    'frozenExcerpt':['  structure u484 where','    interval:N1.d3','    witnesses:List N1.N11.Witness','  let u487:List u484:= ['],
    'producer':'compress_i11.py:add at line 121; theorem fallback for every non-def body',
    'packer':'pack_consumer.py:pack keeps structures globally only when their metadata kind is structure',
    'actualType':'Math.B699.I11TerminalCandidateCoverage.CoverBundle',
    'status':'source command appears inside tactic proof; concrete front-end risk, not a mathematical or numeric certificate failure',
    'proposedRepair':'infer actual declaration kind; retain CoverBundle and real type dependencies globally; no data/threshold/statement change',
    'repairStatus':'separate repair authorized, not yet accepted or bound into CI7'})
 result['boundedOutcome']={'above':'No same A151 getter/order issue or unsupported local datatype command observed; static check does not establish compilation.',
  'below':'One concrete synthesized CoverBundle command-placement defect; every other unresolved dN has an earlier explicit relative-open definition.',
  'declKindFailureDoesNotChangeData':True,'noFrozenSourceMutation':True,'nativeLeanExecuted':False,'CRTOrWideInventoryRecomputed':False}
 result['annotatedAtUTC']=datetime.now(timezone.utc).isoformat()
 REPORT.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'report':str(REPORT),'bytes':REPORT.stat().st_size,'sha256':hashlib.sha256(REPORT.read_bytes()).hexdigest(),'concreteDefects':1,'frozenInputsUnmodified':True}))

if __name__=='__main__':main()
