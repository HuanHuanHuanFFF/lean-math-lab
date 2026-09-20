#!/usr/bin/env python3
"""Run both finite-certificate checkers against deliberately damaged inputs."""
import copy,json,os,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).resolve().parent
original=json.loads((ROOT/'certificates/endpoint.json').read_text())
cases=[]
def add(name,change):
    c=copy.deepcopy(original);change(c);cases.append((name,c))
add('drop_g2_row',lambda c:c['families'][1]['rows'].pop())
add('forge_B_numerator',lambda c:c['families'][0]['rows'][0].__setitem__('numerator',24200))
add('forge_B_denominator',lambda c:c['families'][1]['rows'][0].__setitem__('denominator',1))
add('wrong_g2_core_constant',lambda c:c['families'][1].__setitem__('core_c',4))
add('wrong_g2_parity',lambda c:c['families'][1].__setitem__('A_odd_required',False))
add('shrink_P_endpoint',lambda c:c['families'][1].__setitem__('P_max',1017))
add('miss_negative_direction',lambda c:c['families'][0].__setitem__('directions',[1]))
add('corrupt_tail_coefficient',lambda c:c['tail_coefficients_ascending'].__setitem__(0,78))
add('fake_small_factorization',lambda c:c['small_X_M'][1].__setitem__(1,17))
add('unauthorized_g4_extension',lambda c:c.__setitem__('scope_g',[1,2,4]))
add('corrupt_remainder',lambda c:c['families'][1]['rows'][0].__setitem__('remainder',0))
env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
receipts=[]
with tempfile.TemporaryDirectory(prefix='b699_uxs_bad_') as td:
    for name,data in cases:
        f=Path(td)/(name+'.json');f.write_text(json.dumps(data))
        codes=[]
        for script in ('check_primary.py','check_independent.py'):
            proc=subprocess.run([sys.executable,str(ROOT/script),str(f)],capture_output=True,text=True,env=env,timeout=30)
            if proc.returncode==0:raise RuntimeError(f'{script} accepted {name}')
            codes.append(proc.returncode)
        receipts.append({'case':name,'exit_codes':codes})
print(json.dumps({'status':'PASS_BAD_CERTIFICATE_REJECTION','case_count':len(cases),'receipts':receipts},sort_keys=True))
