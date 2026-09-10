from pathlib import Path
import argparse,json,hashlib,subprocess,datetime,re,importlib.util
ap=argparse.ArgumentParser();ap.add_argument('--commit',required=True);args=ap.parse_args()
repo=Path.cwd();run=repo/'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17';evidence=run/'verification/20260910T075554Z/evidence.json'
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
def git(*a): return subprocess.check_output(['git','-c','core.longpaths=true',*a],cwd=repo)
d=json.loads(evidence.read_text());assert d['success'] and d['exit_code']==0
assert sha(repo/'lake-manifest.json')==d['manifest_sha256']
spec=importlib.util.spec_from_file_location('auditverify',run/'verification/runner/verify.py');v=importlib.util.module_from_spec(spec)
import sys
sys.modules[spec.name]=v;spec.loader.exec_module(v)
records=[];allowed={'propext','Classical.choice','Quot.sound'};modules={r['module'] for r in d['compile_records']};printed=set()
assert len(modules)==2
for r in d['compile_records']:
 assert r['exit_code']==0 and not r['failure']
 source=repo/r['source'];log=repo/r['log'];obj=repo/r['output']
 assert sha(source)==r['source_sha256_before']==r['source_sha256_after']
 assert sha(log)==r['log_sha256'] and sha(obj)==r['output_sha256']
 frozen=git('show',args.commit+':'+r['source']);assert frozen==source.read_bytes()
 blob=hashlib.sha1(b'blob '+str(len(frozen)).encode()+b'\0'+frozen).hexdigest()
 assert git('rev-parse',args.commit+':'+r['source']).decode().strip()==blob
 assert v.imports_in(source)==r['imports']
 for imp in r['imports']:
  if imp.startswith('research.') or imp.startswith('Math.'):assert imp in modules
 audit=v.audit_axioms(source,log.read_text());assert not audit.get('error') and not audit.get('unexpected_axioms')
 assert audit['actual_printed']==audit['declared_print_axioms']
 for row in audit['printed']:
  assert set(row['axioms'])<=allowed;printed.add(row['declared_name'])
 records.append({'source':r['source'],'source_sha256':sha(source),'git_blob_sha':blob,'object_sha256':sha(obj),'actual_log_sha256':sha(log),'actual_axiom_output_count':audit['actual_printed']})
assert {'B699TailAcceptance.correction_analysis','B699TailAcceptance.correction_base'}<=printed
closure=run/'delivery/package-closure.json';c=json.loads(closure.read_text())
assert c['all_objects_resolved'] and c['all_package_roots_pinned'] and c['module_count']==len(c['modules'])
assert sha(run/'verification/startup/package-closure.log')==c['log_sha256']
assert sha(run/'verification/runner/PackageClosure.lean')==c['audit_source_sha256']
for p in d['pins']: assert p['head_matches'] and p['clean']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'source_commit':args.commit,'evidence':str(evidence.relative_to(repo)).replace('\\','/'),'evidence_sha256':sha(evidence),'source_binding':records,'project_closure_count':len(modules),'loaded_module_superset_count':c['module_count'],'package_closure_sha256':sha(closure),'allowed_axioms':sorted(allowed),'actual_audited_declarations':sorted(printed),'original_B699_target_accepted':False,'new_B699_coverage':0,'analytic_acceptance_verified':True,'source_binding_verified':True,'second_kernel_used':False}
(run/'delivery/source-binding.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps({k:v for k,v in result.items() if k!='source_binding'}))
