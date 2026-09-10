"""Preserve byte-identical object provenance for reuse. No Lean execution."""
from pathlib import Path
import argparse,hashlib,json,shutil
p=argparse.ArgumentParser();p.add_argument('--old-project',type=Path,required=True);a=p.parse_args()
repo=Path.cwd();old=a.old_project
run=repo/'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
base='research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/20260909T145049Z/evidence.json'
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
cache={};seen=set();records=[];failures=[]
def evidence(path):
    if path not in cache:cache[path]=json.loads((repo/path).read_text(encoding='utf-8'))
    return cache[path]
def walk(row):
    reuse=row.get('reused_from')
    if not reuse:return
    e=reuse['evidence'];key=(e['path'],row['module'])
    if key in seen:return
    seen.add(key)
    if sha(repo/e['path'])!=e['sha256']:raise RuntimeError('ancestral evidence SHA mismatch')
    matches=[r for r in evidence(e['path'])['compile_records'] if r['module']==row['module']]
    if len(matches)!=1:raise RuntimeError('ambiguous provenance')
    prev=matches[0]
    for field in ['source_sha256_after','output_sha256','log_sha256','imports']:
        if prev[field]!=row[field]:raise RuntimeError('provenance field mismatch '+field)
    if sha(repo/prev['source'])!=prev['source_sha256_after'] or sha(repo/prev['log'])!=prev['log_sha256']:
        raise RuntimeError('ancestral source or log mismatch')
    dest=repo/prev['output'];original=old/prev['output'];action='already_present'
    if dest.is_file():
        if sha(dest)!=prev['output_sha256']:raise RuntimeError('existing destination mismatch')
    elif original.is_file() and sha(original)==prev['output_sha256']:
        dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(original,dest);action='copied_original_retained_object'
    else:
        alias=repo/row['output']
        if not alias.is_file() or sha(alias)!=prev['output_sha256']:
            failures.append(prev['output']);return
        dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(alias,dest);action='materialized_equal_hash_alias_from_verified_descendant'
    records.append({'evidence':e['path'],'module':row['module'],'object':prev['output'],'object_sha256':prev['output_sha256'],'action':action,'historical_object_present':original.is_file()})
    walk(prev)
for row in evidence(base)['compile_records']:walk(row)
result={'status':'retained artifacts for recursive source/object/log integrity audit, not a new kernel run','base':base,'records':records,'failures':failures}
(run/'verification/provenance-materialization.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({'provenance_edges':len(records),'actions':{s:sum(r['action']==s for r in records) for s in {r['action'] for r in records}},'failures':failures}))
