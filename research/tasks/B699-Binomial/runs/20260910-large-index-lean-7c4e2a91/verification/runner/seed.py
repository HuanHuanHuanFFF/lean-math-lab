from pathlib import Path
import hashlib,json,shutil,sys
repo=Path.cwd()
old=Path(sys.argv[1])
run=repo/'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
evidence=Path('research/tasks/B699-Binomial/runs/20260909-middle-index-cert-1a78f8cd/verification/20260909T145049Z/evidence.json')
data=json.loads((repo/evidence).read_text(encoding='utf-8'))
def sha(p): return hashlib.sha256(p.read_bytes()).hexdigest()
results=[]
for rec in data['compile_records']:
    issues=[]
    for key,hkey in [('source','source_sha256_after'),('log','log_sha256')]:
        p=repo/rec[key]
        if not p.is_file() or sha(p)!=rec[hkey]: issues.append(key+' mismatch')
    obj=old/rec['output']
    if not obj.is_file() or sha(obj)!=rec['output_sha256']: issues.append('object mismatch')
    if rec['exit_code']!=0 or rec.get('failure'): issues.append('unsuccessful source record')
    dst=repo/rec['output']
    if not issues:
        dst.parent.mkdir(parents=True,exist_ok=True)
        if dst.exists(): raise RuntimeError('refuse overwrite '+str(dst))
        shutil.copyfile(obj,dst)
        if sha(dst)!=rec['output_sha256']: raise RuntimeError('copied object mismatch')
    results.append({'source':rec['source'],'source_sha256':rec['source_sha256_after'],'object':rec['output'],'object_sha256':rec['output_sha256'],'issues':issues})
out={'fixed_commit':'12c31b8b5729b0017cf8e1423cd98ed5230aaaae','base_evidence':evidence.as_posix(),'base_evidence_sha256':sha(repo/evidence),'copied':sum(not r['issues'] for r in results),'failed':sum(bool(r['issues']) for r in results),'note':'Object copies are reuse candidates, not a fresh kernel run; the closure verifier must independently audit recursive dependencies and actual axiom logs.','records':results}
(run/'verification/reuse-seed.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8')
print(json.dumps({k:v for k,v in out.items() if k!='records'}))
if out['failed']: print(json.dumps([r for r in results if r['issues']],indent=2))
