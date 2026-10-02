#!/usr/bin/env python3
"""Optional SymPy discovery regeneration into a NEW directory. Not needed for replay."""
import argparse,subprocess,os,sys
from pathlib import Path

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output',required=True,help='New output directory, outside this frozen evidence package.')
    p.add_argument('--light',action='store_true',help='Only coverage, B9-H and boundary-RUR certificates; skip large resultants.')
    a=p.parse_args();out=Path(a.output).resolve();root=Path(__file__).resolve().parents[1]
    if root==out or root in out.parents:raise ValueError('Output must be outside the frozen evidence package.')
    if out.exists() and any(out.iterdir()):raise ValueError('Output must be empty.')
    out.mkdir(parents=True,exist_ok=True);env=dict(os.environ,REG3_REGEN_DIR=str(out));here=Path(__file__).parent/'generation'
    jobs=[['build_coverage.py'],['B9_probe.py'],['build_boundary.py']]
    if not a.light:
        jobs += [[n,b]for b in ['J','A5']for n in ['parameterize.py']]
        jobs += [['param_resultants.py',b,'G4','G0']for b in ['J','A5']]
        jobs += [['build_branch_certificates.py']]
    for job in jobs:
        with (out/(job[0]+('_'+job[1]if len(job)>1 else '')+'.log')).open('w')as log:
            subprocess.run([sys.executable,'-B',str(here/job[0]),*job[1:]],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
    print('Generated discovery outputs:',out)
if __name__=='__main__':main()
