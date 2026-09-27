#!/usr/bin/env python3
"""Mutate one mathematical assertion per test and demand receiving rejection."""
from __future__ import annotations
import copy,json,os,shutil,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
cases=[
('drop_zero_square','01_actual_B_5_25_125.json',lambda c:c['precision'][0]['rows'][0].update(square_roots=[])),
('invent_N_unit','02_same_input_FN5.json',lambda c:c['rows'][13]['H_values'][4].update(N=1)),
('admit_wrong_5_power','04_Q5_FULL3_n_consumers.json',lambda c:c['positive_power_period_mod336'].append(145)),
('change_frontier_count','05_nested_CRT_frontier.json',lambda c:c['Q5_same_M1'].update(remaining=c['Q5_same_M1']['remaining']+1)),
('mislabel_boundary_square','06_finite_5adic_boundary.json',lambda c:c.update(actual_S_mod3125=0))]
receipts=[]
for title,name,mutate in cases:
    with tempfile.TemporaryDirectory(prefix='A144_negative_') as td:
        out=Path(td)/'certificates';shutil.copytree(ROOT/'certificates',out)
        c=json.loads((out/name).read_text());mutate(c);(out/name).write_text(json.dumps(c))
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1',PYTHONHASHSEED='0')
        p=subprocess.run([sys.executable,str(ROOT/'evidence/verify.py'),'--certs',str(out)],cwd=ROOT,env=env,text=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,timeout=40)
        if p.returncode==0:raise RuntimeError('verifier accepted mutated certificate: '+title)
        receipts.append({'case':title,'changed_file':name,'returncode':p.returncode,'rejected':True,'last_error':p.stdout.strip().splitlines()[-1]})
print(json.dumps({'all_rejected':True,'tests':receipts},ensure_ascii=False,sort_keys=True,indent=2))
