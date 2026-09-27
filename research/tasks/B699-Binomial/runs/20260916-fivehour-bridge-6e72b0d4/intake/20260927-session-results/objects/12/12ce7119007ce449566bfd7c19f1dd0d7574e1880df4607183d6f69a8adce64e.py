#!/usr/bin/env python3
"""Check that four deliberately false arithmetic certificates are rejected."""
from __future__ import annotations
import json, os, shutil, subprocess, sys, tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main():
    tests=[('wrong_actual_B','01_exact_quotient5.json'),
           ('wrong_S_mod29','02_A100_all_rows_mod29.json'),
           ('illicit_zero_A_division','03_general_25_mod29.json'),
           ('inflated_net_count','05_frontier_CRT_product.json')]
    results=[]
    for label,filename in tests:
        with tempfile.TemporaryDirectory(prefix='b699_A100_negative_') as td:
            cdir=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',cdir)
            path=cdir/filename;obj=json.loads(path.read_text())
            if label=='wrong_actual_B':obj['r_mod5'][0]['B']=0
            elif label=='wrong_S_mod29':obj['at_q_0_mod15']['S_mod29']=16
            elif label=='illicit_zero_A_division':obj['bad_A_mod29'].insert(0,0)
            else:obj['newly_excluded_classes']+=1
            path.write_text(json.dumps(obj))
            proc=subprocess.run([sys.executable,str(ROOT/'evidence/verify.py'),'--cert-dir',str(cdir)],cwd=ROOT,
                                env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1'),text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT)
            if proc.returncode==0:raise AssertionError(f'tampering was accepted: {label}')
            results.append({'test':label,'file':filename,'returncode':proc.returncode,
                            'last_output_line':proc.stdout.splitlines()[-1], 'rejected':True})
    print(json.dumps({'status':'PASS','negative_cases':results,'scope':'arithmetic rejection tests, not external mathematical review'},indent=2,sort_keys=True))
if __name__=='__main__':main()
