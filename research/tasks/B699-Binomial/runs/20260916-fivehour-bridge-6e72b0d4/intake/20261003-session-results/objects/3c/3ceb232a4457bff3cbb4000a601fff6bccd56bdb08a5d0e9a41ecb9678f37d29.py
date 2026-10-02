from pathlib import Path
import subprocess,json,sys,datetime
R=Path(__file__).resolve().parents[1]
label=sys.argv[1]
cmd=[sys.executable,str(R/'code/run_kernels.py'),*sys.argv[2:]]
with (R/f'logs/{label}.log').open('w') as f:
 r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT)
(R/f'logs/{label}.status.json').write_text(json.dumps({'exit_code':r.returncode,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'args':sys.argv[2:]},indent=2)+'\n')
sys.exit(r.returncode)
