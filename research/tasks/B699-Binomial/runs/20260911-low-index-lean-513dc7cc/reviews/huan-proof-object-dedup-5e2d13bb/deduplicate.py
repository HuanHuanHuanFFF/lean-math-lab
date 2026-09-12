from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,os,uuid,shutil
RUN=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
PLAN=RUN/'experiments/huan-proof-storage-audit-5e2d13bb/duplicate-hardlink-plan.json'
OUT=RUN/'reviews/huan-proof-object-dedup-5e2d13bb'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
plan=json.loads(PLAN.read_text())
root=Path(plan['scope']['tools']).resolve()
expected=(Path.cwd()/'.tools/20260911-low-index-lean-513dc7cc').resolve()
assert root==expected and root.is_dir()
state=json.loads((RUN/'verification/huan-b-queue-20260911T230328352100Z/state.json').read_text())
assert state['status']=='queue_finished','Do not replace object links during the active Lean queue.'
cutoff=plan['scope']['v17_object_cutoff_timestamp']
groups=plan['duplicate_content']['groups']
preflight=[];seenpaths=set()
for g in groups:
 canonical=Path(g['canonical_target']).resolve()
 assert canonical.is_relative_to(root) and canonical.suffix=='.olean'
 cstat=canonical.stat();cid=(cstat.st_dev,cstat.st_ino)
 assert cstat.st_size==g['bytes_per_identity'] and sha(canonical)==g['sha256']
 checked={cid:g['sha256']};rows=[]
 for item in g['paths']:
  p=Path(item['path']).resolve();assert p.is_relative_to(root) and p.suffix=='.olean'
  assert p.relative_to(root).parts[0] < cutoff and p not in seenpaths;seenpaths.add(p)
  st=p.stat();fid=(st.st_dev,st.st_ino);oldid=tuple(item['file_id'])
  assert fid==oldid or fid==cid,('identity drift',str(p))
  assert st.st_size==g['bytes_per_identity'] and st.st_dev==cstat.st_dev
  if fid not in checked:checked[fid]=sha(p)
  assert checked[fid]==g['sha256'],('content drift',str(p))
  rows.append((p,fid,st.st_nlink))
 preflight.append((g,canonical,cid,rows))
before=shutil.disk_usage('D:/').free
events=OUT/'actions.jsonl';done=skipped=locked=0;known_freed=0
for g,canonical,cid,rows in preflight:
 assert sha(canonical)==g['sha256']
 identities={}
 for p,fid,nlink in rows:
  if fid!=cid:identities.setdefault(fid,[]).append((p,nlink))
 for oldid,targets in identities.items():
  successful=0
  for p,nlink in targets:
   now=p.stat();assert (now.st_dev,now.st_ino)==oldid or (now.st_dev,now.st_ino)==cid
   if (now.st_dev,now.st_ino)==cid:skipped+=1;successful+=1;continue
   assert now.st_size==g['bytes_per_identity'] and sha(p)==g['sha256']
   temporary=p.with_name(p.name+'.dedup-'+uuid.uuid4().hex+'.tmp')
   assert temporary.resolve().is_relative_to(root) and not temporary.exists()
   created=False
   try:
    os.link(canonical,temporary);created=True
    t=temporary.stat();assert (t.st_dev,t.st_ino)==cid
    os.replace(temporary,p);created=False
    after=p.stat();assert (after.st_dev,after.st_ino)==cid and sha(p)==g['sha256']
    done+=1;successful+=1
    event=dict(path=str(p),canonical=str(canonical),sha256=g['sha256'],bytes=g['bytes_per_identity'],before_id=oldid,after_id=cid,status='atomic_identical_content_hardlink')
   except PermissionError as e:
    locked+=1;event=dict(path=str(p),status='left_unchanged_locked',error=str(e))
   finally:
    if created and temporary.exists():temporary.unlink()
   with events.open('a',encoding='utf-8',newline='\n') as f:f.write(json.dumps(event,ensure_ascii=False)+'\n')
  if successful==len(targets) and targets[0][1]==len(targets):
   known_freed+=g['bytes_per_identity']
# Recheck every planned path's existence and content by current physical identity.
checked={}
for g,canonical,cid,rows in preflight:
 for p,_,_ in rows:
  st=p.stat();fid=(st.st_dev,st.st_ino)
  if fid not in checked:checked[fid]=sha(p)
  assert checked[fid]==g['sha256'] and st.st_size==g['bytes_per_identity']
result=dict(status='completed_all_planned_paths_preserved_hashes_equal',finished_utc=datetime.now(timezone.utc).isoformat(),plan_sha256=sha(PLAN),groups=len(groups),paths_rechecked=len(seenpaths),replaced_links=done,already_linked=skipped,locked_unchanged=locked,accounted_released_identity_bytes=known_freed,drive_free_before=before,drive_free_after=shutil.disk_usage('D:/').free,source_log_evidence_deleted=0,scope=str(root),warning='Drive free delta can include unrelated background writes; byte accounting uses complete in-scope link groups only.')
(OUT/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','groups','paths_rechecked','replaced_links','locked_unchanged','accounted_released_identity_bytes','drive_free_before','drive_free_after']}))
