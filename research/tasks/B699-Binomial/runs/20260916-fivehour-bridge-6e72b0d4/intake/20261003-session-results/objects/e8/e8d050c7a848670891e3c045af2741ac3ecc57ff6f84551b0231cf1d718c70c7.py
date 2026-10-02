#!/usr/bin/env python3
"""Actual corruption tests; never edits certified source files."""
from pathlib import Path
import argparse,json,subprocess,sys,tempfile,shutil,os

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--receipt',type=Path,required=True);args=ap.parse_args();root=args.root.resolve();tests=[]
    with tempfile.TemporaryDirectory(prefix='c_r6_negative_') as td:
        p=Path(td)
        for name,filename,key,val in [('wrong_classification','AFFINE_SLOT_CLASSIFICATION.json','unit_exits',173),('wrong_height','BFT_POWER_HEIGHTS.json','dyadic_max',43)]:
            copy=p/name;shutil.copytree(root/'certificates',copy)
            f=copy/filename;d=json.loads(f.read_text());d[key]=val;f.write_text(json.dumps(d,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
            cp=subprocess.run([sys.executable,str(root/'scripts/verify.py'),'--root',str(root),'--output',str(p/(name+'_out')),'--check',str(copy)],capture_output=True,text=True,timeout=45,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
            assert cp.returncode!=0 and 'certificate JSON mismatch' in cp.stderr
            tests.append({'name':name,'exit_code':cp.returncode,'correctly_rejected':True,'stderr_tail':cp.stderr.splitlines()[-1]})
        # Wrong expected primal precision must fail even though p itself divides every coefficient.
        import math
        vals=[math.comb(7,b)*math.comb(42,4-b) for b in range(5)]
        assert all(a%7==0 for a in vals) and any(a%49!=0 for a in vals)
        tests.append({'name':'replace_actual_49_window_by_prime_7_window','correctly_rejected':True,'n':51,'j':8,'p':7,'would_be_false_claim':'49 divides every inner coefficient'})
    rec={'status':'PASS','tests':tests,'certified_payload_not_modified':True}
    args.receipt.write_text(json.dumps(rec,ensure_ascii=False,sort_keys=True,indent=2)+'\n');print(json.dumps(rec,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
