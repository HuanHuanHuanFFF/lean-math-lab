from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
p=Path(__file__).resolve().parent
r=json.loads((p/'record.json').read_text(encoding='utf-8'))
manifest={'status':'candidate_handoff_no_Lean_invocations','owner':'/root/zero_log_separation','created_utc':datetime.now(timezone.utc).isoformat(),'target_namespace':'Math.B699.ZeroBoundaryLogSeparation','suggested_target_directory':'lean/ZeroBoundaryLogSeparation','compile_order':['Basic.lean','Quotient.lean','PilotData.lean','BoxData.lean','Pilots.lean'],'root_audit':r['static_root_audit'],'sources':r['source_candidates'],'external_box_sources':r['external_box_candidate_sources'],'source_provenance':r['inputs'],'lean_acceptance':None,'original_index_acceptance_delta':0,'expected_axiom_allowlist':['propext','Classical.choice','Quot.sound'],'verification_to_run_by_primary':'Compile all five candidates in the listed order with the pinned toolchain, then read all 28 typed checks and fail on any printed transitive axiom outside the allowlist. Include the external box candidate closure before BoxData/Pilots.','record_sha256':hashlib.sha256((p/'record.json').read_bytes()).hexdigest().upper(),'report_sha256':hashlib.sha256((p/'REPORT.md').read_bytes()).hexdigest().upper()}
for rel,info in manifest['sources'].items():
    assert hashlib.sha256((p/rel).read_bytes()).hexdigest().upper()==info['sha256']
(p/'manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':manifest['status'],'source_count':len(manifest['sources']),'root_count':len(manifest['root_audit']['all_roots']),'source_hashes_verified':True,'original_index_acceptance_delta':0,'timestamp':manifest['created_utc']},ensure_ascii=False))