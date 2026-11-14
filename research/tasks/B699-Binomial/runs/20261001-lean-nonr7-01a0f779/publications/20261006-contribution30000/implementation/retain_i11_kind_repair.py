"""Refresh support hashes while keeping the active CI7 seven-source set fixed."""
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-i11-below-kind'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def binding(p):return {'path':str(p.relative_to(BASE).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}

def main():
 audit=json.loads((R/'analysis/static-repair-audit.json').read_text(encoding='utf-8'))
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 freeze['sourceOnlyErrors']=audit['sourcePolicyErrors'];freeze['sourceOnlyReviews']=audit['reviewFindings']
 freeze['sourceDeclarationCount']=audit['officialSourceDeclarationCount']
 freeze['staticAudit']='analysis/static-repair-audit.json'
 freeze['producerRepair']='actual synthetic declaration kind inferred with DECL, with fail-fast pack guard against local datatype/instance commands'
 freeze['independentOldDataFingerprint']='../../../reviews/I11BELOW-CI7-SYNTHETIC-DATA-FINGERPRINT.json'
 for n in ['audit_i11_below_kind.py','retain_i11_kind_repair.py']:
  p=BASE/n;item={'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
  freeze['generatorSources']=[x for x in freeze['generatorSources'] if x['path']!=item['path']]+[item]
 (R/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 retained=json.loads((BASE/'RETAINED-SOURCES.json').read_text(encoding='utf-8'))
 # Refresh only currently named ordinary sources. History remains at the exact
 # before-repair receipt and producer snapshots; no artifact bytes are edited.
 for entry in retained['requiredSupportingSources']:
  p=BASE/entry['path'];assert p.is_file(),entry['path']
  entry.update(bytes=p.stat().st_size,sha256=sha(p))
 additions={
  'precheck_i11_dependencies.py':('generator','Bounded frozen-source dependency/metadata precheck; no CRT rerun or Lean.'),
  'annotate_i11_precheck.py':('audit','Classify observed relative opens and actual synthetic command-placement defect.'),
  'repair_i11_below_kind.py':('generator','Repackage existing parser metadata after correcting actual CoverBundle structure kind; no numerical recomputation.'),
  'audit_i11_below_kind.py':('audit','Bind literal/root/source policy/count and exact independent old/new initializer fingerprint.'),
  'retain_i11_kind_repair.py':('generator','Record actual new ordinary support hashes and historical version while CI7 artifact set stays fixed.'),
  'repairs/I11-STATIC-DEPENDENCY-PRECHECK.json':('audit','Static Above/Below source lines, concrete defect and uncertainties; no proof acceptance.'),
  'repairs/20261007-i11-below-kind/FREEZE.json':('manifest','Pending separate Below repair source/root/type/provenance; not yet the CI7 input.'),
  'repairs/20261007-i11-below-kind/I11BelowFinalCandidate.lean':('pending-repair-artifact','Exact independent candidate, to replace old Below only after Leader selection and required verification.'),
  'repairs/20261007-i11-below-kind/analysis/i11-below-local-proof.json':('source-map','New full namespace/declaration/local proof mapping after global type retention.'),
  'repairs/20261007-i11-below-kind/analysis/data-roundtrip.json':('audit','Exact 1111/4041/1055 initializer source equality and unchanged checker bodies.'),
  'repairs/20261007-i11-below-kind/analysis/static-repair-audit.json':('audit','Fixed new SHA, official 64 declarations, policy0/2 and verifier fingerprint equality; Lean pending.'),
  'repairs/20261007-i11-below-kind/analysis/source-policy.json':('policy','Unmodified official C019/C020/C021 and bytes/text source-only results.'),
  'repairs/20261007-i11-below-kind/analysis/resource-preflight.json':('resource','Fresh resource observation for bounded static repair; native Lean still paused.'),
  'repairs/20261007-i11-below-kind/analysis/build.log':('execution','Actual static repair command output; no Lean was invoked.'),
  'repairs/20261007-i11-below-kind/RETAINED-SOURCES-BEFORE-I11.json':('historical-receipt','Exact retained-source receipt before current producer kind repair.'),
  'repairs/20261007-i11-below-kind/producer-before/compress_i11.py':('historical-generator','Preserved prior producer hash with known theorem-fallback classification defect.'),
  'repairs/20261007-i11-below-kind/producer-before/pack_consumer.py':('historical-generator','Preserved prior packing source corresponding to historical receipt/frozen Below.')}
 paths={x['path'] for x in retained['requiredSupportingSources']}
 for rel,(category,purpose) in additions.items():
  if rel not in paths:retained['requiredSupportingSources'].append(dict(binding(BASE/rel),category=category,purpose=purpose))
 retained['requiredSupportingBytes']=sum(x['bytes'] for x in retained['requiredSupportingSources'])
 retained['writtenAtUTC']=datetime.now(timezone.utc).isoformat()
 retained['supersedesReceipt']='repairs/20261007-i11-below-kind/RETAINED-SOURCES-BEFORE-I11.json'
 retained['currentRevision']='i11-below-static-synthetic-kind-repair-pending-selection'
 retained['pendingArtifactReplacements']=[freeze['newArtifact']]
 retained['hypotheticalSevenBytesAfterPendingRepair']=audit['hypotheticalSevenPayloadBytes']
 retained['verification']='All required support hashes refreshed live. Active seven artifact byte set remains CI7 unchanged; Below repair kept separate pending selection/Lean/Std3. No source deletion, native Lean, commit or CI7 mutation.'
 for entry in retained['externalRequiredReferences']:
  p=BASE/entry['path']
  if p.is_file():entry.update(bytes=p.stat().st_size,sha256=sha(p))
 for entry in retained['finalArtifacts']:
  p=BASE/entry['path'];assert p.stat().st_size==entry['bytes'] and sha(p)==entry['sha256']
 (BASE/'RETAINED-SOURCES.json').write_text(json.dumps(retained,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'activeArtifactBytesUnchanged':retained['finalArtifactBytes'],'pendingRepairBytes':freeze['newArtifact']['bytes'],'hypotheticalSevenBytes':audit['hypotheticalSevenPayloadBytes'],'supportEntries':len(retained['requiredSupportingSources']),'allRetainedHashesMatch':True,'nativeLeanExecuted':False}))

if __name__=='__main__':main()
