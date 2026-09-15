#!/usr/bin/env python3
"""Reproduce only this delivery's changed proof obligations."""
from pathlib import Path
import subprocess,sys,json,hashlib,tempfile,time,argparse
R=Path(__file__).resolve().parent

def run(script,*args):
    subprocess.run([sys.executable,str(R/'code'/script),*map(str,args)],cwd=R,check=True)

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--regenerate',action='store_true');parser.add_argument('--receipt',type=Path);a=parser.parse_args();start=time.perf_counter()
    with tempfile.TemporaryDirectory(prefix='b699-two-power-') as tmp:
        T=Path(tmp);checked=T/'checked'
        run('verify.py','--out',checked);run('regression.py','--out',checked)
        compared=[]
        for name in ['checked_heights.json','verification.json','regression.json']:
            assert (checked/name).read_bytes()==(R/'evidence'/name).read_bytes(),name
            compared.append(name)
        if a.regenerate:
            generated=T/'generated';run('generate.py','--out',generated)
            for name in ['candidate_domains.json','row_covers.json','generation_counts.json']:
                assert (generated/name).read_bytes()==(R/'evidence'/name).read_bytes(),name
                compared.append(name)
        hashes={x:hashlib.sha256((R/'evidence'/x).read_bytes()).hexdigest() for x in compared}
        receipt={'status':'PASS_NEW_TWO_POWER_RELEASE','python':sys.version.split()[0],'compared_files':hashes,'elapsed_seconds':time.perf_counter()-start,
            'historical_full_replays':False,'lean':False,'external_independent_acceptance':False}
        if a.receipt:a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(json.dumps(receipt,indent=2)+'\n')
        print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
