import subprocess,pathlib,json,hashlib,datetime
repo=pathlib.Path.cwd(); packages=pathlib.Path(r'D:\CodingProject\Math\.lake\packages')
m=json.loads((repo/'lake-manifest.json').read_text(encoding='utf8'))
records=[]
for p in m['packages']:
 path=packages/p['name']
 head=subprocess.check_output(['git','-c','safe.directory='+str(path),'rev-parse','HEAD'],cwd=path,text=True).strip()
 dirty=subprocess.check_output(['git','-c','safe.directory='+str(path),'status','--porcelain','--untracked-files=no'],cwd=path,text=True)
 records.append(dict(name=p['name'],expected=p['rev'],actual=head,pin_matches=head==p['rev'],tracked_status=dirty))
assert all(r['pin_matches'] and not r['tracked_status'] for r in records),records
out=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),lean_toolchain=(repo/'lean-toolchain').read_text().strip(),manifest_sha256=hashlib.sha256((repo/'lake-manifest.json').read_bytes()).hexdigest(),packages=records)
(repo/'research/tasks/B699-Binomial/runs/20260910-unbounded-tail-9f6c2a17/verification/startup/pins.json').write_text(json.dumps(out,indent=2),encoding='utf8')
print(json.dumps(dict(utc=out['utc'],packages=len(records),all_pins_match=True,all_tracked_sources_clean=True)))
