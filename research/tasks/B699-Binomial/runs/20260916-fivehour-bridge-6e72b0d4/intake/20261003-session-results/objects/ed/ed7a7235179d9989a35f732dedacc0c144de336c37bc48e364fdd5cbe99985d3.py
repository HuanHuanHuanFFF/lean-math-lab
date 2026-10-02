#!/usr/bin/env python3
"""Mutation and semantic negative controls; frozen payload remains unchanged."""
from __future__ import annotations
import argparse, datetime, importlib.util, json, os, shutil, subprocess, sys, tempfile
from pathlib import Path
sys.dont_write_bytecode=True

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--receipt',type=Path,required=True)
    a=ap.parse_args();root=a.root.resolve();tests=[];env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
    mutations=[('PAIRCONIC_CLASSIFICATION.json','false_85_affine_patterns',lambda d:d.__setitem__('affine_sum_patterns',85)),
      ('HEIGHT_012.json','drop_actual_terminal_row',lambda d:d.__setitem__('candidate_n_union',[])),
      ('TERMINAL_425.json','replace_common_prime',lambda d:d['witness_records'][0].__setitem__(2,419))]
    with tempfile.TemporaryDirectory(prefix='b699-c-r7-negative-') as td:
        base=Path(td)
        for index,(name,label,mutate) in enumerate(mutations):
            check=base/f'mutated-{index}';shutil.copytree(root/'certificates',check)
            d=json.loads((check/name).read_text());mutate(d)
            (check/name).write_text(json.dumps(d,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
            cp=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),'--output',str(base/f'out-{index}'),'--check',str(check)],capture_output=True,text=True,env=env,timeout=45)
            if cp.returncode==0:raise AssertionError('Mutation wrongly accepted: '+label)
            tests.append({'name':label,'type':'frozen_certificate_mutation','correctly_rejected':True,'exit_code':cp.returncode,'stderr_last_line':cp.stderr.strip().splitlines()[-1]})
        spec=importlib.util.spec_from_file_location('c_r7_verify',root/'scripts/verify.py');mod=importlib.util.module_from_spec(spec);spec.loader.exec_module(mod)
        nonaffine=((0,1),(0,1),(0,2));M=mod.matrix(nonaffine)
        if mod.determinant(M)!=4:raise AssertionError('nonaffine control determinant')
        try:mod.nullvector(M)
        except AssertionError:tests.append({'name':'pretend_nonaffine_six_points_have_a_conic','type':'mathematical_bad_generalization','correctly_rejected':True,'determinant':4})
        else:raise AssertionError('Wrong nonaffine kernel accepted')
        coeff=mod.direct_conic(((0,3),(0,4),(0,5)));value=mod.eval_conic(coeff,52,7)
        if not (value%7==0 and value%49!=0):raise AssertionError('full power control failed')
        tests.append({'name':'replace_complete_49_layer_by_radical_7','type':'mathematical_bad_generalization','correctly_rejected':True,'F':value,'n':52,'j':7,'source':3})
    rec={'status':'PASS','negative_controls':tests,'count':len(tests),'frozen_payload_modified':False,
      'Lean_run':False,'network_used':False,'repository_operations':False,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()}
    text=json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n';a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(text);print(text,end='')
if __name__=='__main__':main()
