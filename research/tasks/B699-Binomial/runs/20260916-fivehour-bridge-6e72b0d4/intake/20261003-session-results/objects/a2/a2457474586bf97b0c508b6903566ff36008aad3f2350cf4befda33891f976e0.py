#!/usr/bin/env python3
"""Actually execute corruption/rejection controls outside the frozen payload."""
from __future__ import annotations
import argparse,json,os,shutil,subprocess,sys,tempfile
from pathlib import Path

def main():
    p=argparse.ArgumentParser();p.add_argument('--root',type=Path,default=Path(__file__).resolve().parent.parent)
    p.add_argument('--receipt',type=Path,required=True);a=p.parse_args();root=a.root.resolve()
    tests=[('kernel_order','DOUBLE_ORIGIN_CUBICS.json',lambda x:x['records'][0].update(origin_order=1)),
           ('false_common_zero_exit','RESULTANT_CERTIFICATES.json',lambda x:x['records'][0].update(legal_common_zero_possible=True)),
           ('false_g_bound','GCD_AND_HEIGHT.json',lambda x:x.update(g_uniform_max=233)),
           ('missing_full_power_recovery','SOURCE2_FORWARD.json',lambda x:x['records'].pop()),
           ('wrong_original_witness','TERMINAL_ROW352.json',lambda x:x.update(witness_prime=347))]
    result=[]
    with tempfile.TemporaryDirectory(prefix='b699-r9-neg-') as td:
        tmp=Path(td)
        for i,(label,name,mutate) in enumerate(tests):
            dest=tmp/str(i);shutil.copytree(root/'certificates',dest)
            obj=json.loads((dest/name).read_text());mutate(obj)
            (dest/name).write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
            cp=subprocess.run([sys.executable,str(root/'code/verify.py'),'--root',str(root),'--output',str(tmp/('out'+str(i))),
                '--check',str(dest)],capture_output=True,text=True,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'},timeout=45)
            if cp.returncode==0:raise RuntimeError('corruption was not rejected: '+label)
            result.append({'name':label,'file':name,'exit_code':cp.returncode,'rejected':True,'stderr':cp.stderr})
    obj={'status':'PASS','negative_controls_actually_executed':len(result),'tests':result,
         'temporary_directory_removed':True,'frozen_payload_not_modified':True,
         'meaning':'rejection tests, not additional mathematical coverage'}
    a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','controls':len(result)}))
if __name__=='__main__':main()
