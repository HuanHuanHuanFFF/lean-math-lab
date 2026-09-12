"""Rebind only the 256 explicitly authorized physical cache objects.
No object contents, paths, or attributes are modified by this preparation."""
from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,os,re,difflib
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
review=run/'reviews/huan-successful-objects-compression-v31-5e2d13bb'
oldfile=review/'fixed-plan.json'
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for b in iter(lambda:f.read(1048576),b''):h.update(b)
 return h.hexdigest()
original_sha='d38587420eeac24c7fd78f48e2a93d263dfa82a1e27a37b544fa50d37f09b3b4'
assert sha(oldfile)==original_sha
old=json.loads(oldfile.read_text());plan=json.loads(oldfile.read_text())
qp=run/'verification/huan-b-queue-20260912T053140513347Z/state.json';q=json.loads(qp.read_text())
assert q['status']=='queue_finished' and all(j['status'] in ['accepted_prerequisite','existing_complete_receipt_validated'] for j in q['jobs'])
root=(repo/'.tools/20260911-low-index-lean-513dc7cc').resolve()
assert root.is_relative_to(repo.resolve()) and not (root.stat().st_file_attributes & 0x400)
norm=lambda p:os.path.normcase(str(p.resolve()))
groups={}
for p in root.rglob('*.olean'):
 st=p.stat();assert p.resolve().is_relative_to(root) and not(st.st_file_attributes&0x400)
 groups.setdefault((st.st_dev,st.st_ino),[]).append(p)
original_identities={tuple(x['identity']) for x in old['selected_objects']}
assert len(original_identities)==256
for item in plan['selected_objects']:
 ident=tuple(item['identity']);paths=sorted(groups[ident])
 previous={norm(Path(x['path'])):x for x in item['links']}
 assert set(previous).issubset({norm(p) for p in paths})
 assert sha(paths[0])==item['sha256']
 links=[]
 for p in paths:
  st=p.stat()
  assert (st.st_dev,st.st_ino)==ident and st.st_size==item['bytes_per_identity']
  assert st.st_nlink==len(paths) and not(st.st_file_attributes&0x800)
  rec=dict(previous.get(norm(p),{}))
  rec.update(path=str(p),relative_to_tools=str(p.relative_to(root)),bytes=st.st_size,
    sha256=item['sha256'],file_id=list(ident),nlink=len(paths))
  rec.setdefault('success_evidence_refs',[])
  links.append(rec)
 item['links']=links;item['link_count']=item['nlink']=len(paths)
 item['logical_bytes']=item['bytes_per_identity']*len(paths)
 # Keep the already success-bound original representative and its refs.
 assert norm(Path(item['representative'])) in {norm(p) for p in paths}
assert {tuple(x['identity']) for x in plan['selected_objects']}==original_identities
cutoff=datetime.fromisoformat(q['finished_utc']).astimezone(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
plan['scope']['object_cutoff_timestamp']=cutoff
plan['scope']['source_closed_queue']=qp.relative_to(run).as_posix()
plan['scope']['source_closed_queue_sha256']=sha(qp)
plan['allowlist']=sorted(l['relative_to_tools'] for x in plan['selected_objects'] for l in x['links'])
plan['selection']['selected_logical_bytes']=sum(x['logical_bytes'] for x in plan['selected_objects'])
plan['authorization']={'user_reply':'允许压缩这批缓存','authorized_original_plan_sha256':original_sha,
 'same_256_physical_identities':True,'same_object_bytes_and_hashes':True,
 'only_change':'include additional owned hardlink aliases created by the now-finished proof queue',
 'original_aliases':len(old['allowlist']),'current_aliases':len(plan['allowlist'])}
plan['created_utc']=datetime.now(timezone.utc).isoformat()
p=review/'authorized-plan-current.json';p.write_text(json.dumps(plan,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
before=(review/'execute_primary_checked.py').read_text()
text=before.replace('PLAN = OUT / "fixed-plan.json"','PLAN = OUT / "authorized-plan-current.json"')
text,n=re.subn(r'PLAN_SHA256 = "[0-9a-f]{64}"','PLAN_SHA256 = "'+sha(p)+'"',text);assert n==1
assert text.count('plan["scope"]["v31_object_cutoff_timestamp"]')==2
text=text.replace('plan["scope"]["v31_object_cutoff_timestamp"]','plan["scope"]["object_cutoff_timestamp"]')
dst=review/'execute_authorized.py';dst.write_text(text,encoding='utf-8',newline='\n');compile(text,str(dst),'exec')
(review/'authorized-executor.diff').write_text(''.join(difflib.unified_diff(before.splitlines(True),text.splitlines(True),fromfile='previous-fixed-binding',tofile='authorized-current-binding')),encoding='utf-8',newline='\n')
record={'utc':plan['created_utc'],'status':'same_authorized_objects_rebound_for_current_owned_aliases',
 'original_plan_sha256':original_sha,'current_plan_sha256':sha(p),'executor_sha256':sha(dst),
 'identities':256,'original_aliases':len(old['allowlist']),'current_aliases':len(plan['allowlist']),
 'same_object_bytes':324742632,'object_mutations':0,'queue_finished':True,
 'approval':'explicit user reply above; no new physical objects added'}
(review/'authorization-binding.json').write_text(json.dumps(record,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(record,ensure_ascii=False))

