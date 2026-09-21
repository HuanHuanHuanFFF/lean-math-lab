#!/usr/bin/env python3
"""Actually submit each corrupted certificate to both independent checkers."""
from __future__ import annotations
import copy,json,os,subprocess,sys,tempfile
from pathlib import Path
ROOT=Path(__file__).parent

def run():
    original=json.loads((ROOT/'certificates/certificate.json').read_text())
    def variants(d):
        a=copy.deepcopy(d);a['polynomials']['C'][1]*=-1;yield 'wrong_integer_split',a
        a=copy.deepcopy(d);a['polynomials']['f_shift2'][0]+=1;yield 'false_positive_polynomial',a
        a=copy.deepcopy(d);a['endpoints'].pop();yield 'missing_small_endpoint',a
        a=copy.deepcopy(d);a['collision5']['complete_5_power']=5;yield 'truncated_full_5_power',a
        a=copy.deepcopy(d);del a['polynomials']['Phi_20_4'];yield 'missing_cyclotomic_factor',a
        a=copy.deepcopy(d);a['contract']['joint_gap_min']=13;yield 'unproved_joint_threshold',a
        a=copy.deepcopy(d);a['residual_coefficients']['two_exceptions_l5_k7'][0]='0';yield 'wrong_joint_residual',a
        a=copy.deepcopy(d);a['consumer_cases'][7]['expected']=['J14'];yield 'false_exclusion_s17',a
        a=copy.deepcopy(d);a['failure_at_s17']['is_original_counterexample']=True;yield 'weak_model_mislabeled',a
    records=[]
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    with tempfile.TemporaryDirectory(prefix='b699-joint-bad-') as tmp:
        for label,data in variants(original):
            p=Path(tmp)/(label+'.json');p.write_text(json.dumps(data))
            codes={}
            for checker in('check_exact.py','check_independent.py'):
                r=subprocess.run([sys.executable,str(ROOT/checker),str(p)],capture_output=True,text=True,env=env)
                if r.returncode==0:raise RuntimeError(checker+' accepted '+label)
                if 'REJECT:' not in r.stderr:raise RuntimeError('unexpected tool failure, not rejection: '+r.stderr)
                codes[checker]=r.returncode
            records.append({'mutation':label,'rejected_by':codes})
    return {'status':'PASS_BAD_JOINT_CERTIFICATE_REJECTION','mutations':records}
if __name__=='__main__':print(json.dumps(run(),ensure_ascii=False,indent=2))
