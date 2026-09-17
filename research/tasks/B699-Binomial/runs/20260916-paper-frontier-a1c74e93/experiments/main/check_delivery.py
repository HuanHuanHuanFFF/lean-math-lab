"""Final file, provenance, isolation and small follow-up checks."""
from datetime import datetime, timezone
from hashlib import sha256
from pathlib import Path
from urllib.parse import unquote
from math import comb, gcd
import json
import re
import subprocess

RUN=Path(__file__).resolve().parents[2]
REPO=RUN.parents[4]
ORIGINAL=Path('D:/CodingProject/Math')
def git(repo,*args):
    return subprocess.check_output(['git','-c',f'safe.directory={repo.as_posix()}',*args],cwd=repo,text=True).strip()
def digest(p):return sha256(p.read_bytes()).hexdigest()

missing=[]
for p in RUN.rglob('*.md'):
    for raw in re.findall(r'\]\(([^\n)]+)\)',p.read_text(encoding='utf-8-sig')):
        target=raw.strip('<>').split('#',1)[0]
        if not target or '://' in target or target.startswith('mailto:'):continue
        # Ignore a Markdown link title only if the preceding file itself exists.
        destination=(p.parent/unquote(target)).resolve()
        if not destination.exists():missing.append({'document':p.relative_to(RUN).as_posix(),'target':raw})
assert not missing,missing
adopt=json.loads((RUN/'SOURCE_ADOPTION.json').read_text())
assert all(digest(REPO/x['path'])==x['sha256'] for x in adopt['files'])
assert digest(RUN/'experiments/h023/certificate_selected.json')=='f5f52a935cab94bd03e491f81f2e716475c4dcc348a1c7b6af3ccbb9e592ee20'
assert git(ORIGINAL,'rev-parse','HEAD')=='bef7eabf144f066d5853ea4d81b0b0ceed92bb1a'
assert git(ORIGINAL,'status','--porcelain=v1')==''
assert git(REPO,'branch','--show-current')=='huan/b699-paper-20260916-a1c74e93'
assert git(REPO,'diff','--name-only')==''
assert not list(RUN.rglob('*.lean')) and not list(RUN.rglob('*.zip'))

# Independently evaluate the added quartic's entire small integer domain.
def Q(n,u):return 3*n**4-9*n*n*u-10*u*u-24*n**3+79*n*u+39*n*n-70*u-18*n
rows=[(n,j,Q(n,j*(n-j))) for n in range(16,29) for j in range(8,n//2+1)]
assert len(rows)==49
zeros=[(n,j) for n,j,v in rows if v==0]
assert zeros==[(27,13)]
assert comb(27,7)%23==comb(27,13)%23==0
assert all(23%d for d in (2,3))

files=[p for p in RUN.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.name!='DELIVERY_CHECK.json']
manifest=[{'path':p.relative_to(RUN).as_posix(),'bytes':p.stat().st_size,'sha256':digest(p)} for p in sorted(files)]
result={'time_utc':datetime.now(timezone.utc).isoformat(),'status':'passed','original_worktree_unchanged':True,'original_head':git(ORIGINAL,'rev-parse','HEAD'),'research_branch':git(REPO,'branch','--show-current'),'head_at_check':git(REPO,'rev-parse','HEAD'),'baseline_sha':'1fccc6454c67d2122bc5bcdc7a31561d8f04c164','source_bindings_checked':len(adopt['files']),'markdown_link_errors':missing,'lean_files_created_in_run':0,'zip_files_in_run':0,'quartic_small_pairs':49,'quartic_zero_points':zeros,'quartic_witness':23,'artifact_files':len(files),'artifact_bytes':sum(p.stat().st_size for p in files),'manifest':manifest,'scope':'Artifact integrity, preserved original checkout, exact bounded quartic check; infinite mathematics remains bound to PROOFS and named reviews.'}
(RUN/'DELIVERY_CHECK.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
print(json.dumps({k:result[k] for k in ('status','time_utc','original_worktree_unchanged','source_bindings_checked','markdown_link_errors','quartic_small_pairs','quartic_zero_points','artifact_files','artifact_bytes')}))
