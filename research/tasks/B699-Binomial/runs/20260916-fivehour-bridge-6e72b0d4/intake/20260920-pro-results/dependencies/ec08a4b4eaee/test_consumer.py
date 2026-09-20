#!/usr/bin/env python3
"""Exact function regressions plus black-box CLI scope and invalid-input tests."""
import json
import os
from pathlib import Path
import subprocess
import runpy
import sys
ROOT=Path(__file__).resolve().parent


def main():
    if sys.flags.optimize:
        raise RuntimeError("Run exact verification without Python optimization (-O / PYTHONOPTIMIZE).")
    cases=[(1,1,[]),(3,1,[]),(5,1,['VM4']),(9,1,['VM4']),
        (11,1,['VM10']),(17,1,['VM4']),(21,1,['VM4','VM10']),
        (51,1,['VM10']),(65,1,['VM4']), (251,1,['VM10']),
        (15,1,[]),(99,1,[]),(12,1,[]),(17,3,[]),(11,3,[])]
    # Representatives test only the program; infinite coverage is proved on paper.
    cases += [(2**e+1,1,['VM4']) for e in (4,10,100)]
    cases += [(2*5**k+1,1,['VM10']) for k in (1,4,40)]
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    classify=runpy.run_path(str(ROOT/'consumer.py'),run_name='consumer_test_module')['classify']
    for s,c,want in cases:
        got=classify(s,c)
        assert got['rules']==want and 'Only the same-input NC3' in got['scope']
        assert got['status']==('EXCLUDED_CONDITIONAL_ON_CANONICAL_MINIMAL_BRANCH' if want else 'NO_NEW_EXCLUSION')
    cli_cases=[(17,1,['VM4']),(51,1,['VM10']),(17,3,[])]
    for s,c,want in cli_cases:
        run=subprocess.run([sys.executable,str(ROOT/'consumer.py'),'--s',str(s),'--c-alpha',str(c)],capture_output=True,text=True,timeout=10,env=env)
        assert run.returncode==0,run.stderr
        assert json.loads(run.stdout)==classify(s,c)
    for s in (0,-1):
        run=subprocess.run([sys.executable,str(ROOT/'consumer.py'),'--s',str(s)],capture_output=True,text=True,timeout=10,env=env)
        assert run.returncode!=0
    print(json.dumps({'status':'PASS_CONDITIONAL_CONSUMER_TESTS','function_cases':len(cases),'cli_valid_cases':len(cli_cases),'cli_invalid_cases':2},sort_keys=True))

if __name__=='__main__':main()
