#!/usr/bin/env python3
"""Deliberately corrupt mathematical certificate fields; require receiver rejection."""
from __future__ import annotations
import json,os,shutil,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def main():
    cases=[]
    tests=[
      ('wrong_actual_B','01_actual_13_quotient.json',lambda o:o['precision'][0]['complete_mod13_rows'][1].__setitem__('B',5)),
      ('delete_valid_zero_square','01_actual_13_quotient.json',lambda o:o['precision'][0]['complete_mod13_rows'][5].__setitem__('roots',[])),
      ('allow_false_n_residue','03_same_input_FN31.json',lambda o:o['allowed_original_n_mod31'].append(15)),
      ('wrong_closure_n','04_A208_all_rows_closed.json',lambda o:o['F_roots'][0].__setitem__('n_mod31',1)),
      ('omit_positive_power_one','05_original_Q31_consumer.json',lambda o:o['positive_power_cycle_mod336'].pop()),
      ('wrong_net_delta','06_same_M2_frontier.json',lambda o:o.__setitem__('total_newly_excluded',o['total_newly_excluded']+1)),
      ('fake_local_n','07_finite_13adic_failure_boundary.json',lambda o:o['local_exact_data'].__setitem__('n',1)),
      ('wrong_valuation_base','02_SPLIT13_full_exponents.json',lambda o:o['beta_minus_one_div13_coefficients'].__setitem__(1,-61)),
    ]
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    for name,file,mutate in tests:
        with tempfile.TemporaryDirectory(prefix='a208-negative-') as td:
            dest=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',dest)
            p=dest/file;obj=json.loads(p.read_text());mutate(obj);p.write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n')
            proc=subprocess.run([sys.executable,str(ROOT/'evidence/verify.py'),'--cert-dir',str(dest)],capture_output=True,text=True,env=env,timeout=60)
            if proc.returncode==0:raise RuntimeError('receiver wrongly accepted '+name)
            cases.append({'test':name,'mutated_certificate':file,'rejected':True,'return_code':proc.returncode,'last_error':proc.stderr.strip().splitlines()[-1]})
    print(json.dumps({'all_rejected':True,'count':len(cases),'cases':cases,'scope':'robustness against these deliberate mutations only; not a proof of checker infallibility'},ensure_ascii=False,sort_keys=True,indent=2))
if __name__=='__main__':main()
