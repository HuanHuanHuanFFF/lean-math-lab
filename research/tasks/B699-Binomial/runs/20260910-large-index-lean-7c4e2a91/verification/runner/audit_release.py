"""Read-only source/working-tree binding and actual build-cost summary."""
from pathlib import Path
from datetime import datetime,timezone
import argparse,hashlib,json,os,subprocess
p=argparse.ArgumentParser();p.add_argument('--evidence',type=Path,required=True);p.add_argument('--source-commit',required=True);p.add_argument('--original-root',type=Path,required=True);p.add_argument('--original-snapshot',type=Path,required=True);p.add_argument('--package-root',type=Path,required=True);a=p.parse_args()
repo=Path.cwd();run=repo/'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
e=json.loads(a.evidence.read_text(encoding='utf-8'));fail=[]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def git(args,cwd=repo):return subprocess.check_output(['git',*args],cwd=cwd).decode('utf-8').strip()
paths=[r['source'] for r in e['compile_records']]
requests=''.join(a.source_commit+':'+path+'\n' for path in paths).encode()
proc=subprocess.run(['git','cat-file','--batch'],input=requests,cwd=repo,stdout=subprocess.PIPE,stderr=subprocess.PIPE,check=True)
raw=proc.stdout;offset=0;bindings=[]
for row in e['compile_records']:
    end=raw.index(b'\n',offset);head=raw[offset:end].decode();parts=head.split();offset=end+1
    if len(parts)!=3 or parts[1]!='blob':raise RuntimeError('missing source blob '+row['source'])
    length=int(parts[2]);blob=raw[offset:offset+length];offset+=length+1
    digest=hashlib.sha256(blob).hexdigest();current=sha(repo/row['source'])
    ok=digest==current==row['source_sha256_after']
    if not ok:fail.append('source binding '+row['source'])
    bindings.append({'source':row['source'],'git_blob':parts[0],'sha256':digest,'matches_runtime_and_current':ok})
initial=json.loads(a.original_snapshot.read_text(encoding='utf-8-sig'))
original=[]
for item in initial['untracked']:
    path=a.original_root/item['path'];ok=path.is_file() and sha(path)==item['sha256'].lower()
    if not ok:fail.append('original untracked changed '+item['path'])
    original.append({'path':item['path'],'unchanged':ok})
head=git(['rev-parse','HEAD'],a.original_root);branch=git(['branch','--show-current'],a.original_root)
tracked=git(['status','--porcelain','--untracked-files=no'],a.original_root)
if head!=initial['head'] or branch!=initial['branch'] or tracked:fail.append('original tracked state changed')
all_roots=[]
for f in sorted((run/'verification').glob('20*/evidence.json')):
    data=json.loads(f.read_text(encoding='utf-8'))
    all_roots.append({'evidence':f.relative_to(repo).as_posix(),'success':data.get('success'),'start':data.get('started_utc'),'finish':data.get('finished_utc'),'new_modules':sum(r.get('compiled_in_this_invocation',False) for r in data.get('compile_records',[])),'new_compile_seconds':sum(r.get('seconds') or 0 for r in data.get('compile_records',[]) if r.get('compiled_in_this_invocation',False))})
new_accepted=set()
for f in (run/'verification').glob('20*/evidence.json'):
    data=json.loads(f.read_text(encoding='utf-8'))
    for r in data.get('compile_records',[]):
        if r.get('compiled_in_this_invocation') and r.get('exit_code')==0 and not r.get('failure') and r['source'].startswith(run.relative_to(repo).as_posix()+'/lean/'):
            new_accepted.add((r['source'],r['source_sha256_after']))
measurements=[c.get('memory_measurement') or {} for c in e['commands']]
size_cache=a.package_root/'mathlib/.lake/build/lib/lean/Mathlib/Data/Nat/Size.olean'
# The public record keeps only a package-relative location.
size_sha=sha(Path(size_cache))
if size_sha!='3255799d78424e47ddfee6811b6b5cce1c3db3826e11a1ebe2067db778967663':fail.append('additional pinned cache mismatch')
result={'checked_utc':datetime.now(timezone.utc).isoformat(),'success':not fail,'source_commit':a.source_commit,'current_head':git(['rev-parse','HEAD']),'runtime_evidence':a.evidence.as_posix(),'source_bindings':bindings,'original_workspace':{'head':head,'branch':branch,'tracked_clean':not tracked,'untracked_count':len(original),'files':original},'new_run_source_versions_compiled_successfully':len(new_accepted),'per_invocation':all_roots,'final_invocation_peak_working_set_bytes':max((m.get('peak_working_set_bytes',0) for m in measurements),default=0),'additional_pinned_cache':{'module':'Mathlib.Data.Nat.Size','current_olean_sha256':size_sha},'failures':fail}
(run/'verification/final-source-binding.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'success':result['success'],'bound_sources':len(bindings),'original_untracked_checked':len(original),'new_run_source_versions_compiled_successfully':len(new_accepted),'failures':fail}))
raise SystemExit(bool(fail))
