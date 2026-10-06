"""Remove exactly the two known orphan scoped depth commands in a new draft.

The old V2/CI7 source and kind-only draft stay byte-frozen. The emitter applies
the same narrowly defined cleanup on rebuild. No Lean or CRT recomputation.
"""
import copy, hashlib, json, re
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO
from repair_i11_below_kind import data_block

BASE=Path(__file__).resolve().parent
PREVIOUS=BASE/'repairs/20261007-i11-below-kind'
DEST=BASE/'repairs/20261007-i11-below-options'

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def source(p):return {'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 oldfreeze=json.loads((PREVIOUS/'FREEZE.json').read_text(encoding='utf-8'))
 oldp=REPO/oldfreeze['newArtifact']['path'];old=oldp.read_text(encoding='utf-8')
 assert sha(oldp)==oldfreeze['newArtifact']['sha256']=='29156e9c165f4970d62136d8a68083c2ad9c830d10bda27254ac757e6ee5ae7a'
 orphan='set_option maxRecDepth 100000 in\n'
 assert old.count(orphan)==2
 assert orphan*2+'end Math.B699.N10\n' in old
 text=old.replace(orphan*2+'end Math.B699.N10\n','end Math.B699.N10\n',1)
 assert text==old.replace(orphan,'')
 assert 'set_option maxRecDepth 100000\n' in text
 assert 'set_option maxHeartbeats 10000000\n' in text
 assert not re.search(r'(?m)^set_option .* in\n(?=end )',text)
 assert not re.search(r'^\s+(?:structure|inductive|class|namespace)\b',text,re.M)
 p=DEST/'I11BelowFinalCandidate.lean';p.write_text(text,encoding='utf-8',newline='\n')
 report=json.loads((PREVIOUS/'analysis/i11-below-local-proof.json').read_text(encoding='utf-8'))
 report.update(source(p));report['removedOrphanDepthPrefixGroups']=1
 (DEST/'analysis/i11-below-local-proof.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 comparison=json.loads((PREVIOUS/'analysis/data-roundtrip.json').read_text(encoding='utf-8'))
 for r in comparison['comparisons']:
  assert data_block(old,r['newLocal'])==data_block(text,r['newLocal'])
 comparison['newArtifact']=source(p)
 comparison['sameDataAsKindOnlyDraft']=True
 comparison['exactFullSourceDifference']='only two known orphan top-level set_option maxRecDepth 100000 in lines removed; every other UTF8 source byte unchanged'
 comparison['previousDraft']=source(oldp)
 (DEST/'analysis/data-roundtrip.json').write_text(json.dumps(comparison,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 freeze=copy.deepcopy(oldfreeze)
 freeze.update(status='separate kind+orphan-command-scope repair; not selected into CI7; Lean/Std3 pending',timeUTC=datetime.now(timezone.utc).isoformat(),previousKindOnlyDraft=source(oldp))
 freeze['previousKindOnlyDraft']['status']='known orphan scoped-option front-end risk; retained unchanged, not CI-ready'
 freeze['newArtifact'].update(source(p))
 freeze['structureAtTopLevelBeforeConsumer']['rootLine']=next(i for i,line in enumerate(text.splitlines(),1) if line.startswith('theorem d15 '))
 freeze['scopeOptionRepair']={'sourceEvidence':'independent verifier fixed Lean BuiltinCommand.lean scoped command expansion/elabEnd review; actual compilation pending','previousDraftLines':[316,317,318],'removedLines':2,'removedCommand':'set_option maxRecDepth 100000 in','nextCommandWas':'end Math.B699.N10','consumerDepth':'existing global maxRecDepth 100000 header preserved','consumerHeartbeatBudget':'existing finite global maxHeartbeats 10000000 header preserved','sameNamespaceAndRoot':True,'sameEveryOtherSourceByte':True}
 freeze['oldSourceAndCI7InputsUntouched']=True
 freeze['generatorSources']=[source(BASE/n) for n in ['extract.py','compress_i11.py','pack_consumer.py','repair_i11_below_kind.py','audit_i11_below_kind.py','repair_i11_below_options.py']]
 freeze['sourcePolicy']='analysis/source-policy.json';freeze['staticAudit']='analysis/static-repair-audit.json'
 (DEST/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 assert sha(oldp)==oldfreeze['newArtifact']['sha256']
 print(json.dumps({'bytes':p.stat().st_size,'sha256':sha(p),'root':freeze['newArtifact']['root'],'removedLines':2,'sameAllOtherSourceBytes':True,'oldDraftAndCI7Unmodified':True,'compile':'pending'},ensure_ascii=False))

if __name__=='__main__':main()
