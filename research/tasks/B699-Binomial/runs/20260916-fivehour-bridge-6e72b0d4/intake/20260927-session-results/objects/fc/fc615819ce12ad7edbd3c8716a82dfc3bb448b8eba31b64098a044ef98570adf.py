#!/usr/bin/env python3
"""Actually run the separate acceptor against damaged certificates."""
import argparse,copy,json,shutil,subprocess,sys,tempfile
from pathlib import Path
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
TESTS=[
 ('core15_label','central_core_certificate.json',['sign_cases',0,'status_15'],'allowed'),
 ('conditional_character','central_core_certificate.json',['conditional_effective_10_excluded_when_chi2_C'],1),
 ('central_source_coefficient','source_polynomial_certificate.json',['source_rows',6,'numerator_X'],12),
 ('inflate_actual_source_power','source_polynomial_certificate.json',['target_even_exponent_examples',0,'original_source_exponent'],2),
 ('inflate_source_e','original_source_witnesses.json',[0,'e'],2),
 ('change_original_input','original_source_witnesses.json',[2,'j'],70),
 ('fabricate_net_gain','scope_and_boundary.json',['historical_certified_net_deletion'],1),
 ('fabricate_k4_terminal','scope_and_boundary.json',['k4_terminal_completed'],True),
 ('family_as_current_model','unbounded_power_family_checks.json',[0,'current_model'],True),
]
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path);args=ap.parse_args();result=[]
    for name,file,path,value in TESTS:
        with tempfile.TemporaryDirectory(prefix='b699-r9-mut-') as td:
            dest=Path(td)/'certs';shutil.copytree(ROOT/'certificates',dest)
            d=json.loads((dest/file).read_text());obj=d
            for key in path[:-1]:obj=obj[key]
            assert obj[path[-1]]!=value
            obj[path[-1]]=value;(dest/file).write_text(json.dumps(d))
            p=subprocess.run([sys.executable,str(ROOT/'scripts/accept.py'),'--cert-dir',str(dest)],text=True,capture_output=True,timeout=40)
            if p.returncode==0:raise RuntimeError('bad certificate accepted: '+name)
            result.append({'test':name,'returncode':p.returncode,'rejected':True,'message':p.stderr.strip()})
    data={'tests':len(result),'all_rejected':True,'results':result}
    text=json.dumps(data,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
    if args.out:args.out.write_text(text)
    print(text,end='')
if __name__=='__main__':main()
