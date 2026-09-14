"""Run the complete NEW receiving path; no historical searches or heavy proofs."""
from pathlib import Path
import subprocess,sys,time,json
R=Path(__file__).resolve().parents[1]
start=time.monotonic();steps=[]
for name in ['verify.py','diagnostics.py']:
    t=time.monotonic()
    run=subprocess.run([sys.executable,str(R/'code'/name)],cwd=R,capture_output=True,text=True)
    (R/'logs'/('replay_'+name+'.txt')).write_text(run.stdout+run.stderr)
    steps.append({'script':name,'returncode':run.returncode,'seconds':time.monotonic()-t})
    if run.returncode:
        print(run.stdout);print(run.stderr);raise SystemExit(run.returncode)
    print(run.stdout,end='')
result={'status':'PASS_COMPLETE_NEW_OUTER_EXPONENT_RECEIVING','steps':steps,'seconds':time.monotonic()-start,
        'old_heavy_replay':False,'lean':False,'source_member_hashes_checked':True}
(R/'logs/FULL_NEW_REPLAY.json').write_text(json.dumps(result,indent=2)+'\n')
print(result['status'])
