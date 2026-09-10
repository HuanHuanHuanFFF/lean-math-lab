from pathlib import Path
import argparse,json,hashlib,datetime,re
ap=argparse.ArgumentParser();ap.add_argument('--project-root',default='.');ap.add_argument('--package-root',required=True);ap.add_argument('--lean-root',required=True);ap.add_argument('--object-root',required=True);ap.add_argument('--module-log',required=True);ap.add_argument('--output',required=True);args=ap.parse_args()
repo=Path(args.project_root).resolve();run=repo/'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17';pkg=Path(args.package_root);core=Path(args.lean_root);objects=repo/args.object_root
output_path=repo/args.output
if output_path.exists(): raise FileExistsError('Refusing to overwrite prior closure evidence: '+str(output_path))
log=repo/args.module_log
mods=[line.removeprefix('B699_DEPENDENCY ').replace('«','').replace('»','') for line in log.read_text(encoding='utf-8-sig').splitlines() if line.startswith('B699_DEPENDENCY ')]
assert mods and len(set(mods))==len(mods)
assert 'B699TailAcceptance.correction_analysis' in log.read_text(encoding='utf-8-sig')
assert 'sorryAx' not in log.read_text(encoding='utf-8-sig')
pins={p['name']:p['rev'] for p in json.loads((repo/'lake-manifest.json').read_text())['packages']}
roots=[('project',objects,repo)]+[(p.name,p/'.lake/build/lib/lean',p) for p in sorted(pkg.iterdir(),key=lambda x:x.name.lower()) if p.is_dir()]+[('lean-core',core/'lib/lean',core/'src/lean')]
def sha(p):
 h=hashlib.sha256()
 with p.open('rb') as f:
  for block in iter(lambda:f.read(1024*1024),b''):h.update(block)
 return h.hexdigest()
records=[];totals={};totalbytes=0
for name in mods:
 rel=Path(*name.split('.'));found=None
 for role,root,srcroot in roots:
  base=root/rel
  if base.with_suffix('.olean').is_file():found=(role,base,srcroot/rel.with_suffix('.lean'));break
 if found is None:raise RuntimeError('Unresolved imported module '+name)
 role,base,src=found
 if role not in {'project','lean-core'} and role not in pins:raise RuntimeError('Unpinned package '+role)
 artifacts=[]
 for ext in ['.olean','.olean.private','.olean.server','.ir']:
  p=base.with_suffix(ext)
  if p.is_file():
   sz=p.stat().st_size;totalbytes+=sz;artifacts.append({'extension':ext,'bytes':sz,'sha256':sha(p)})
 record={'module':name,'resolved_root':role,'source_sha256':sha(src) if src.is_file() else None,'artifacts':artifacts}
 if role in pins:record['package_pin']=pins[role]
 records.append(record);totals[role]=totals.get(role,0)+1
out={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'scope':'All modules reported by the actual Lean environment loading Acceptance and the Lean audit API; superset of proof imports. Not a second kernel.','module_count':len(records),'roots':totals,'artifact_bytes_hashed':totalbytes,'log_sha256':sha(log),'audit_source_sha256':sha(run/'verification/runner/PackageClosure.lean'),'all_objects_resolved':True,'all_package_roots_pinned':True,'modules':records}
output_path.parent.mkdir(parents=True,exist_ok=True)
output_path.write_text(json.dumps(out,ensure_ascii=False,indent=2),encoding='utf-8')
print(json.dumps({k:v for k,v in out.items() if k!='modules'},ensure_ascii=False))
