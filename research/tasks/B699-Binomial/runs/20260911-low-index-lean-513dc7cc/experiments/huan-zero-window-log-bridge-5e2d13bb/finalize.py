from pathlib import Path
from datetime import datetime,timezone
import hashlib,json
p=Path(__file__).resolve().parent
r=json.loads((p/'record.json').read_text(encoding='utf-8'))
for name,info in r['source_candidates'].items():
 assert hashlib.sha256((p/name).read_bytes()).hexdigest().upper()==info['sha256']
for name,info in r['inputs'].items():
 assert hashlib.sha256(Path(name).read_bytes()).hexdigest().upper()==info['sha256'],name
manifest={'status':'candidate_frozen_no_Lean_acceptance','owner':r['owner'],'frozen_utc':datetime.now(timezone.utc).isoformat(),'started_utc':r['started_utc'],'checkpoint_utc':r['checkpoint_utc'],'compile_order':['Elementary.lean','Window.lean','Actual.lean'],'target_namespace':'Math.B699.ZeroBoundaryWindowLog','suggested_target_directory':'lean/ZeroBoundaryWindowLog','sources':r['source_candidates'],'root_count':r['static_audit']['root_count'],'roots':r['static_audit']['roots'],'source_inputs':r['inputs'],'required_compiler_exit_code':0,'required_axiom_allowlist':['propext','Classical.choice','Quot.sound'],'require_nonempty_axiom_output':True,'actual_Lean_acceptance':None,'original_index_acceptance_delta':0,'audit_parser_self_test':json.loads((p/'audit-parser-self-test.json').read_text(encoding='utf-8'))}
manifest['artifact_sha256']={name:hashlib.sha256((p/name).read_bytes()).hexdigest().upper() for name in ['record.json','REPORT.md','diagnose.py','audit_axioms.py','audit-parser-self-test.json']}
(p/'manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':manifest['status'],'frozen_utc':manifest['frozen_utc'],'source_count':len(manifest['sources']),'root_count':manifest['root_count'],'source_hashes_verified':True,'input_hashes_verified':True,'Lean_invocations':0},ensure_ascii=False))