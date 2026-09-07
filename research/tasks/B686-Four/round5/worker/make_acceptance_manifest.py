"""Package validated final-build evidence; never infer success from absent logs."""
from pathlib import Path
from datetime import datetime,timezone
import hashlib,json,re
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[4]
build=json.loads((HERE/'final-build-manifest.json').read_text())
assert all(r['exit_code']==0 and r['sha256_before']==r['sha256_after'] for r in build['results'])
by_source={r['source']:r for r in build['results']}
correction=json.loads((HERE/'namespace-fix-manifest.json').read_text())
for r in correction['results']:
 assert r['exit_code']==0 and r['sha256_before']==r['sha256_after']
 by_source[r['source']]=r
allowed={'propext','Classical.choice','Quot.sound'}
files=[]
for p in sorted(HERE.glob('*.lean')):
 rel=str(p.relative_to(ROOT));r=by_source[rel];data=p.read_bytes();s=data.decode()
 digest=hashlib.sha256(data).hexdigest();assert digest==r['sha256_after'],rel
 assert not re.search(r'\b(?:sorry|admit|sorryAx|native_decide)\b',s),rel
 assert not re.search(r'^\s*axiom\s',s,re.M),rel
 guards=[]
 for m in re.finditer(r"/-- info: '([^']+)' depends on axioms: \[([^\]]*)\] -/\s*#guard_msgs in\s*#print axioms ([^\n]+)",s):
  axioms=[x.strip() for x in m.group(2).split(',') if x.strip()]
  assert set(axioms)<=allowed,(rel,axioms)
  guards.append({'declaration':m.group(1),'printed_name':m.group(3).strip(),'axioms':axioms,'verification':'executable #guard_msgs compared actual #print axioms output; compile exit0'})
 assert guards and len(guards)==s.count('#guard_msgs')==s.count('#print axioms'),rel
 files.append(dict(r,sha256=digest,axiom_checks=guards))
artifacts=[]
for p in sorted(HERE.iterdir()):
 if p.suffix in ('.py','.json','.md') and p.name not in ('acceptance-manifest.json','final-handoff.md','exploration.md','to-main.md'):
  artifacts.append({'path':str(p.relative_to(ROOT)),'sha256':hashlib.sha256(p.read_bytes()).hexdigest()})
out={
 'generated_utc':datetime.now(timezone.utc).isoformat(),
 'scope':'Round5 worker accepted Lean sources; full B686 and full k5 remain unsolved',
 'source_frozen':True,'novelty':'unconfirmed','publication':'none; no commit/push/external contact',
 'lean_version':(HERE/'lean-version.log').read_text().strip(),
 'worker_modules':len(files),'worker_axiom_guards':sum(len(f['axiom_checks']) for f in files),
 'dependency_modules_compiled':len(build['results']),
 'verification_entrypoint':'python3 research/tasks/B686-Four/round5/worker/verify_worker.py final-build research/tasks/B686-Four/round5/worker/NoncentralSupport.lean research/tasks/B686-Four/round5/worker/ResidualPositionBound.lean research/tasks/B686-Four/round5/worker/LocalContact.lean',
 'build_evidence':['research/tasks/B686-Four/round5/worker/final-build-manifest.json','research/tasks/B686-Four/round5/worker/namespace-fix-manifest.json'],
 'integration_status':'Pre-rename dependency build passed; namespace correction single-file compile passed. Main owns the sole final joint-import/full verification; not claimed completed here.',
 'independent_review':'Main reviewed124 source statement and independently computed rational height bounds; final main integration audit is separate and not claimed here.',
 'accepted_files':files,'supporting_artifacts':artifacts,
 'exclusions':['Pre-rename final-build snapshot alone is not acceptance of the renamed joint environment','Old160000*s5 residual norm not formalized this round','Finite certificates alone are not a global k5 proof','Worker NoncentralSupport duplicates main integration result and is not a separate breakthrough']}
(HERE/'acceptance-manifest.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({'utc':out['generated_utc'],'worker_modules':out['worker_modules'],'guards':out['worker_axiom_guards'],'dependency_modules':out['dependency_modules_compiled']},indent=2))
