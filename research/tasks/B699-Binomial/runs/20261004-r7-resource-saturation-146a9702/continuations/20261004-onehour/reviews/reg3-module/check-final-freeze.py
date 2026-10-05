from pathlib import Path
import hashlib,json
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261004-onehour';out=cont/'reviews/reg3-module';p=cont/'experiments/b/FROZEN_MANIFEST.json'
b=p.read_bytes();assert hashlib.sha256(b).hexdigest()=='956405d5bd692b39a6d90ad8962cbaa558d579a4cc99760da3d691cf7456aa73';d=json.loads(b)
for z in d['files']:
 q=root/z['path'];assert q.stat().st_size==z['bytes'];assert hashlib.sha256(q.read_bytes()).hexdigest()==z['sha256']
assert len(d['files'])==23 and sum(z['bytes'] for z in d['files'])==134464
(out/'final-author-freeze-check.json').write_text(json.dumps({'author_manifest_sha256':hashlib.sha256(b).hexdigest(),'checked_member_count':23,'checked_member_bytes':134464,'all_exact_bytes':True,'author_manifest':str(p.relative_to(root)).replace('\\','/'),'files':d['files']},indent=2)+'\n',encoding='utf-8')
old=json.loads((out/'fixed-inputs.json').read_text(encoding='utf-8'));changed=[]
for rel,z in old['files'].items():
 q=root/rel;newsha=hashlib.sha256(q.read_bytes()).hexdigest()
 if newsha!=z['sha256']:changed.append({'path':rel,'old_sha256':z['sha256'],'new_sha256':newsha})
assert {Path(x['path']).name for x in changed}=={'02-h2-bounded-space.md','generate_membership_input.py'}
(out/'source-transition.json').write_text(json.dumps({'changed_after_initial_checks':changed,'semantic_assessment':{'02-h2-bounded-space.md':'Adds explicit 2451-order minor certificate; independently rerun det 29924. Original multiplier space and rank assertions unchanged.','generate_membership_input.py':'Explicit newline=CRLF; independently reconstructed complete input already identical at SHA d29549...'},'other_initial_fixed_files_unchanged':True,'new_minor_independently_checked':{'order':2451,'prime':32003,'determinant':29924,'log':'minor-independent-run.log'},'final_manifest':'final-author-freeze-check.json'},indent=2)+'\n',encoding='utf-8')
print(json.dumps({'final_author_members_checked':len(d['files']),'total_bytes':sum(z['bytes'] for z in d['files']),'transition_files':len(changed),'explicit_minor_verified':True}))
