#!/usr/bin/env python3
"""Serial, offline reproduction. Results are recorded; no detached processes."""
from pathlib import Path
import argparse,subprocess,sys,json
ROOT=Path(__file__).resolve().parents[1]

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--regenerate',action='store_true');a=ap.parse_args()
    jobs=[]
    if a.regenerate:
        jobs += [(['check_structural.py','--N','100','--out',str(ROOT/'evidence/structural-tests.json')]),
                 (['check_central_kernel.py','--N','100','--D','8','--out',str(ROOT/'evidence')]),
                 (['rational_height.py']),(['generate_rational_terminal.py']),
                 (['generate_central_divisors.py']),(['generate_rational_kernel.py'])]
    jobs += [(['verify_certificates.py']),(['verify_central_divisors.py']),(['verify_rational_kernel.py']),
             (['check_ratio_structure.py']),(['check_universal_support.py']),(['check_master_kernel.py'])]
    logs=ROOT/'logs/reproduction';logs.mkdir(parents=True,exist_ok=True)
    results=[]
    for job in jobs:
        name=job[0];log=logs/(Path(name).stem+'.log')
        with log.open('w') as out:
            p=subprocess.run([sys.executable,str(ROOT/'code'/name),*job[1:]],cwd=ROOT,stdout=out,stderr=subprocess.STDOUT)
        results.append({'script':name,'returncode':p.returncode,'log':str(log.relative_to(ROOT))})
        print(name, 'PASS' if p.returncode==0 else 'FAIL',flush=True)
        if p.returncode:raise SystemExit(p.returncode)
    (ROOT/'evidence/reproduction-summary.json').write_text(json.dumps({'status':'PASS_SERIAL_OFFLINE_REPRODUCTION','jobs':results},indent=2)+'\n')
if __name__=='__main__':main()
