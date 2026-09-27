#!/usr/bin/env python3
"""Ensure the receiving implementation rejects controlled corruptions."""
from __future__ import annotations
import argparse,json,shutil,subprocess,sys,tempfile
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,default=Path(__file__).resolve().parents[1]/'certificates')
    args=ap.parse_args();results=[]
    tests=[('digit_coefficient_corruption','lacunary_family.json'),
           ('source_exponent_inflation','canonical_contact_models.json'),
           ('false_common_461_claim','lacunary_examples.json')]
    for label,filename in tests:
        with tempfile.TemporaryDirectory(prefix='b699_r3_mut_') as td:
            dst=Path(td)/'certificates';shutil.copytree(args.certificates,dst)
            p=dst/filename;o=json.loads(p.read_text())
            if label=='digit_coefficient_corruption':o['rows'][1]['j_digits_low_first'][0]+=1
            elif label=='source_exponent_inflation':o[-1]['first_contact']['e']+=1
            else:o[0]['contact']['original_bin_v']=1
            p.write_text(json.dumps(o,sort_keys=True,indent=2)+'\n')
            proc=subprocess.run([sys.executable,str(Path(__file__).with_name('accept.py')),'--certificates',str(dst)],capture_output=True,text=True)
            if proc.returncode==0:raise RuntimeError('receiver accepted mutation '+label)
            results.append({'test':label,'rejected':True,'returncode':proc.returncode,
                            'last_error_line':proc.stderr.strip().splitlines()[-1]})
    print(json.dumps({'status':'PASS','mutations_rejected':len(results),'tests':results},ensure_ascii=False,indent=2))
if __name__=='__main__':main()
