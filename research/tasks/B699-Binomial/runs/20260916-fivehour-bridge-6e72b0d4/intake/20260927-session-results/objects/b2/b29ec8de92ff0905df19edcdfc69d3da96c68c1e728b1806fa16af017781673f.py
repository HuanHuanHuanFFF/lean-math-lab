#!/usr/bin/env python3
"""Reject corrupted finite certificates with the separate acceptor."""
import argparse,hashlib,json,shutil,subprocess,sys,tempfile
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificates',type=Path,required=True);args=ap.parse_args()
    accept=Path(__file__).resolve().with_name('accept.py')
    cases=[
      ('wrong_survivor_count','carry_masks.json',lambda d:d['rows'][0].update(survivors=d['rows'][0]['survivors']+1)),
      ('wrong_nonlinear_digit','nonlinear_boundary.json',lambda d:d.update(nonlinear_b=d['nonlinear_b']+1)),
      ('wrong_W_character','primitive_R5.json',lambda d:d['character_rows'][0].update(chi10_W=-d['character_rows'][0]['chi10_W'])),
      ('unit_q5_forged_as_31','original_family.json',lambda d:d.update(q5=31)),
      ('inflated_actual_F_exponent','original_family.json',lambda d:d.update(f=3)),
      ('projection_forged_as_full_model','nonlinear_boundary.json',lambda d:d.update(full_current_model=True)),
      ('false_net_coverage','summary.json',lambda d:d.update(certified_historical_net_reduction=1))]
    out=[]
    for name,file,change in cases:
      with tempfile.TemporaryDirectory(prefix='b699-r5-mut-') as td:
        root=Path(td)/'certificates';shutil.copytree(args.certificates,root)
        p=root/file;d=json.loads(p.read_text());change(d)
        p.write_text(json.dumps(d,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
        c=subprocess.run([sys.executable,str(accept),'--certificates',str(root)],capture_output=True,text=True,timeout=30)
        if c.returncode==0:raise AssertionError('corruption was accepted: '+name)
        out.append({'case':name,'rejected':True,'returncode':c.returncode,
          'stderr_sha256':hashlib.sha256(c.stderr.encode()).hexdigest()})
    print(json.dumps({'status':'PASS','mutations_rejected':len(out),'cases':out},ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
