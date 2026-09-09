"""Compile the single missing pinned mathlib cache module; never overwrite a cache."""
from pathlib import Path
import hashlib,json,os,subprocess,sys,time
from datetime import datetime,timezone
from monitor import measured_run
repo=Path.cwd();lean=Path(sys.argv[1]);packages=Path(sys.argv[2]);mathlib=packages/'mathlib'
run=repo/'research/tasks/B699-Binomial/runs/20260910-large-index-lean-7c4e2a91'
stamp=datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')
raw=repo/'.tools/fixed-cache'/stamp;raw.mkdir(parents=True)
public=run/'verification'/('fixed-cache-'+stamp);public.mkdir()
source=mathlib/'Mathlib/Data/Nat/Size.lean';out=raw/'Size.olean'
cache=mathlib/'.lake/build/lib/lean/Mathlib/Data/Nat'
if (cache/'Size.olean').exists(): raise RuntimeError('cache already exists; refuse overwrite')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
env=dict(os.environ);env['TEMP']=str(raw);env['TMP']=str(raw)
env['LEAN_PATH']=os.pathsep.join(str(p/'.lake/build/lib/lean') for p in packages.iterdir() if p.is_dir() and (p/'.lake/build/lib/lean').is_dir())
cmd=[str(lean),'-j1','-M1280','-DElab.async=false','--root='+str(mathlib),'-o',str(out),str(source)]
before=sha(source);t=time.monotonic()
p=measured_run(cmd,cwd=mathlib,env=env,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,encoding='utf-8',errors='replace',timeout=180,check=False)
log=p.stdout.replace(str(repo),'PROJECT_ROOT').replace(str(packages),'PACKAGE_ROOT').replace(str(lean),'LEAN')
(public/'compile.log').write_text(log,encoding='utf-8',newline='\n')
files=[]
if p.returncode==0 and sha(source)==before:
    for f in raw.glob('Size.olean*'):
        dest=cache/f.name
        if dest.exists(): raise RuntimeError('refuse overwrite '+f.name)
        dest.write_bytes(f.read_bytes());files.append({'cache_file':'Mathlib/Data/Nat/'+f.name,'sha256':sha(f),'size':f.stat().st_size})
result={'module':'Mathlib.Data.Nat.Size','mathlib_commit':'0df444a360eaa60ab8c11dca51a86af692955474','source_sha256_before':before,'source_sha256_after':sha(source),'exit_code':p.returncode,'seconds':time.monotonic()-t,'cache_files':files,'memory_measurement':p.memory_measurement,'command':['LEAN','-j1','-M1280','-DElab.async=false','--root=PACKAGE_ROOT/mathlib','-o','ISOLATED_CACHE/Size.olean','PACKAGE_ROOT/mathlib/Mathlib/Data/Nat/Size.lean'],'direct_import_cache_sha256':sha(cache/'Bits.olean')}
(public/'evidence.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps(result,indent=2));print(log)
raise SystemExit(p.returncode)
