import subprocess,json,hashlib,pathlib,datetime
repo=pathlib.Path(r'D:\CodingProject\Math')
def git(*args):
 p=subprocess.run(['git','-c','core.longpaths=true',*args],cwd=repo,capture_output=True)
 if p.returncode: raise RuntimeError(p.stderr.decode(errors='replace'))
 return p.stdout
base='be57961409919d4675741bbaece9f462153a2a66'
head=git('rev-parse','origin/main').decode().strip()
root='research/tasks/B699-Binomial/runs/'
runs=[('980e9da58f8a825479b734a95ccaba7ecd6db303','20260910-large-index-lean-7c4e2a91'),('5ffe9f9b047e8c2129d6b2dbbec8105243a0c052','20260910-elementary-count-bbbfe15e')]
checked=[]
for source,name in runs:
 path=root+name
 a=git('ls-tree','-r',source,'--',path); b=git('ls-tree','-r',head,'--',path)
 assert a and a==b,(source,path)
 assert git('ls-tree','-r',base,'--',path)==b
 checked.append(dict(source=source,path=path,files=len(a.splitlines()),tree_listing_sha256=hashlib.sha256(a).hexdigest()))
manifest=json.loads(git('show',head+':research/external-results/20260910-web-results-c1bf7a69/MANIFEST.json'))
files=[]; attachment=[]
for original in manifest['originals']:
 for m in original['members']:
  if m.get('storage')=='attachment': attachment.append(m['path']); continue
  content=git('show',head+':'+m['path'])
  assert len(content)==m['bytes'] and hashlib.sha256(content).hexdigest()==m['sha256'],m['path']
  assert git('rev-parse',base+':'+m['path'])==git('rev-parse',head+':'+m['path']),m['path']
  files.append(m['path'])
report=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),base=base,main=head,work_runs=checked,text_members_checked=len(files),attachment_members_deferred=attachment,all_checks_passed=True)
(repo/'.tools/b699-tail-start-9f6c2a17/gate.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding='utf8')
print(json.dumps(report,ensure_ascii=False))
