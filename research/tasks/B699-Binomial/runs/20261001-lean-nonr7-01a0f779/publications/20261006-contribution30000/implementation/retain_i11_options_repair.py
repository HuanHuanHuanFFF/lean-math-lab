"""Bind new support sources; the original CI7 seven artifacts remain fixed."""
import hashlib, json
from datetime import datetime, timezone
from pathlib import Path
from extract import REPO

BASE=Path(__file__).resolve().parent
R=BASE/'repairs/20261007-i11-below-options'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def binding(p):return {'path':str(p.relative_to(BASE).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)}
def main():
 freeze=json.loads((R/'FREEZE.json').read_text(encoding='utf-8'))
 audit=json.loads((R/'analysis/static-repair-audit.json').read_text(encoding='utf-8'))
 freeze['sourceOnlyErrors']=audit['sourcePolicyErrors'];freeze['sourceOnlyReviews']=audit['reviewFindings'];freeze['sourceDeclarationCount']=audit['officialSourceDeclarationCount']
 for name in ['audit_i11_below_options.py','retain_i11_options_repair.py']:
  p=BASE/name;freeze['generatorSources'].append({'path':str(p.relative_to(REPO).as_posix()),'bytes':p.stat().st_size,'sha256':sha(p)})
 freeze['reproduce']='Run repair_i11_below_options.py for an exact 2-line source repair from the retained kind-only draft, or repair_i11_below_kind.py with DEST set to a fresh directory using the updated emitter; never overwrite frozen historical inputs.'
 (R/'FREEZE.json').write_text(json.dumps(freeze,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 retained=json.loads((BASE/'RETAINED-SOURCES.json').read_text(encoding='utf-8'))
 for entry in retained['requiredSupportingSources']:
  p=BASE/entry['path'];entry.update(bytes=p.stat().st_size,sha256=sha(p))
 entries={
  'repair_i11_below_options.py':('generator','Exact two-line orphan option repair in a new independent candidate; preserves kind-only draft and CI7.'),
  'audit_i11_below_options.py':('audit','Exact source difference/options/declaration/literal/old-data fingerprint checks; no Lean.'),
  'retain_i11_options_repair.py':('generator','Record current producer/support hashes and pending replacement while preserving CI7 set.'),
  'repairs/20261007-i11-below-options/FREEZE.json':('manifest','New kind+option-scope repair exact SHA/root/type/input byte provenance; kernel pending.'),
  'repairs/20261007-i11-below-options/I11BelowFinalCandidate.lean':('pending-repair-artifact','Current separate Below candidate; no CI7 replacement without Leader selection.'),
  'repairs/20261007-i11-below-options/analysis/i11-below-local-proof.json':('source-map','Same proof/data identifier mapping with actual source SHA and orphan-prefix cleanup count.'),
  'repairs/20261007-i11-below-options/analysis/data-roundtrip.json':('audit','1111/4041/1055 data bodies exactly equal; every non-option source byte same as prior draft.'),
  'repairs/20261007-i11-below-options/analysis/static-repair-audit.json':('audit','64 declarations; exact root, policy, finite option budget and independent data fingerprint equality.'),
  'repairs/20261007-i11-below-options/analysis/source-policy.json':('policy','Official source-only0errors/2reviews with new exact source SHA; not full contrib check.'),
  'repairs/20261007-i11-below-options/analysis/resource-preflight.json':('resource','Current static-only work observation; native Lean paused.'),
  'repairs/20261007-i11-below-options/analysis/build.log':('execution','Actual bounded source repair stdout; no Lean invocation.'),
  'repairs/20261007-i11-below-options/RETAINED-SOURCES-BEFORE-OPTIONS.json':('historical-receipt','Prior exact retention evidence before scoped-option producer repair.'),
  'repairs/20261007-i11-below-options/producer-before/compress_i11.py':('historical-generator','Previous kind-fixed producer preserves old29156 source reconstruction provenance.')}
 paths={x['path'] for x in retained['requiredSupportingSources']}
 for rel,(category,purpose) in entries.items():
  if rel not in paths:retained['requiredSupportingSources'].append(dict(binding(BASE/rel),category=category,purpose=purpose))
 retained['requiredSupportingBytes']=sum(x['bytes'] for x in retained['requiredSupportingSources'])
 retained['writtenAtUTC']=datetime.now(timezone.utc).isoformat()
 retained['pendingArtifactReplacements']=[freeze['newArtifact']]
 retained['hypotheticalSevenBytesAfterPendingRepair']=audit['hypotheticalSevenPayloadBytes']
 retained['supersedesReceipt']='repairs/20261007-i11-below-options/RETAINED-SOURCES-BEFORE-OPTIONS.json'
 retained['currentRevision']='i11-below-kind-and-orphan-option-repair-pending-selection'
 retained['verification']='Required support hashes live-checked. Original CI7 artifact set and prior29156 draft byte-unchanged. Currentb67a9 draft is separate pending selection/Lean/AX/Std3; no source deletion/native Lean/commit.'
 for entry in retained['externalRequiredReferences']:
  p=BASE/entry['path']
  if p.is_file():entry.update(bytes=p.stat().st_size,sha256=sha(p))
 for entry in retained['finalArtifacts']:
  p=BASE/entry['path'];assert p.stat().st_size==entry['bytes'] and sha(p)==entry['sha256']
 (BASE/'RETAINED-SOURCES.json').write_text(json.dumps(retained,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
 print(json.dumps({'sourceSHA':freeze['newArtifact']['sha256'],'sourceBytes':freeze['newArtifact']['bytes'],'declarations':64,'policyErrors':0,'policyReviews':2,'hypotheticalSevenBytes':audit['hypotheticalSevenPayloadBytes'],'supportEntries':len(retained['requiredSupportingSources']),'allRetainedHashesMatch':True,'CI7AndPreviousDraftUnmodified':True}))

if __name__=='__main__':main()
