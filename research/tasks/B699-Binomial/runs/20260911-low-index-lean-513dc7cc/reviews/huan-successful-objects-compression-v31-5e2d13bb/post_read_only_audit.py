"""Read-only verification of a fixed compiler-object plan.
This program has no object mutation, process-launch, or compression capability.
It writes only its own JSON report after all input checks.
"""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,os
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
review=run/'reviews/huan-successful-objects-compression-v31-5e2d13bb'
planfile=review/'authorized-plan-current.json'
expected='9a568f09c07ab5625779993ac917eb9498bb07db8f0c161fa516e0ac6b757125'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
assert sha(planfile)==expected
plan=json.loads(planfile.read_text());root=(repo/'.tools/20260911-low-index-lean-513dc7cc').resolve()
assert root.is_relative_to(repo.resolve()) and not (root.stat().st_file_attributes & 0x400)
def norm(p):return os.path.normcase(str(p.resolve()))
groups={}
for p in root.rglob('*.olean'):
 st=p.stat();assert p.resolve().is_relative_to(root)
 assert not (st.st_file_attributes & 0x400)
 groups.setdefault((st.st_dev,st.st_ino),set()).add(norm(p))
evidence_cache={};source_cache={};checks=[];checked_refs=0
for item in plan['selected_objects']:
 paths=[Path(x['path']) for x in item['links']]
 identity=tuple(item['identity']);expected_paths={norm(p) for p in paths}
 assert groups.get(identity)==expected_paths
 for p in paths:
  st=p.stat()
  assert (st.st_dev,st.st_ino)==identity and st.st_nlink==len(paths)
  assert st.st_size==item['bytes_per_identity']
  assert st.st_file_attributes & 0x800
  assert sha(p)==item['sha256']
 refs=[x for l in item['links'] for x in l['success_evidence_refs']]
 assert refs
 for ref in refs:
  ep=Path(ref['evidence'])
  if not ep.is_absolute():ep=repo/ep
  if str(ep) not in evidence_cache:
   evidence_cache[str(ep)]=(sha(ep),json.loads(ep.read_text()))
  es,e=evidence_cache[str(ep)]
  assert es==ref['evidence_sha256'] and e['success'] and e['exit_code']==0
  assert ref['output_sha256']==item['sha256']
  candidates=[c for c in e[ref['field']] if c['source']==ref['source'] and c['output_sha256']==item['sha256']]
  assert candidates
  matched=False
  for c in candidates:
   cp=Path(c['output'])
   if not cp.is_absolute():cp=repo/cp
   if norm(cp) not in expected_paths:continue
   sp=repo/c['source']
   if str(sp) not in source_cache:source_cache[str(sp)]=sha(sp)
   assert source_cache[str(sp)]==c['source_sha256_before']==c['source_sha256_after']==ref['source_sha256']
   assert not c.get('axiom_audit',{}).get('unexpected_axioms')
   assert c.get('exit_code',0)==0 and not c.get('failure')
   matched=True;break
  assert matched
  checked_refs+=1
 checks.append({'identity':list(identity),'sha256':item['sha256'],'bytes':item['bytes_per_identity'],'aliases':len(paths),'success_bound':True})
assert len(checks)==256
out={'utc':datetime.now(timezone.utc).isoformat(),'status':'PASS_POST_COMPRESSION_INDEPENDENT_READ_ONLY_AUDIT','fixed_plan_sha256':expected,'identity_objects':len(checks),'aliases':sum(x['aliases'] for x in checks),'logical_bytes_of_selected_objects':sum(x['bytes'] for x in checks),'checked_evidence_files':len(evidence_cache),'checked_source_files':len(source_cache),'checked_success_refs':checked_refs,'all_paths_preserved':True,'object_mutations':0,'checks':checks}
(review/'independent-post-compression-audit.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:v for k,v in out.items() if k!='checks'}))

