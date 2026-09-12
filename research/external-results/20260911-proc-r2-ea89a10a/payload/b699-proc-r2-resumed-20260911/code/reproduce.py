"""Standard-library acceptance chain; excludes optional floating-point discovery."""
from pathlib import Path
import subprocess,sys,json,time
ROOT=Path(__file__).resolve().parents[1]
STEPS=['verify_structures.py','generate_thresholds.py','verify_thresholds.py',
       'verify_pade_divisor_interface.py','verify_consumers.py']

def main():
    if not __debug__:raise RuntimeError('Do not run Python with -O')
    (ROOT/'evidence').mkdir(exist_ok=True)
    results=[]
    for script in STEPS:
        start=time.monotonic()
        p=subprocess.run([sys.executable,str(ROOT/'code'/script)],cwd=ROOT,
                         stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
        log=ROOT/'evidence'/('reproduce_'+script.removesuffix('.py')+'.log')
        log.write_text(p.stdout)
        result={'script':script,'returncode':p.returncode,'seconds':round(time.monotonic()-start,3)}
        results.append(result)
        print(json.dumps(result),flush=True)
        if p.returncode:
            print(p.stdout[-3000:],flush=True)
            raise SystemExit(p.returncode)
    (ROOT/'evidence/reproduce_check.json').write_text(json.dumps({'status':'PASS_LOCAL_REPLAY','steps':results},indent=2)+'\n')
if __name__=='__main__':main()
