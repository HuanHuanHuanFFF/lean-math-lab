#!/usr/bin/env python3
"""Replay in a NEW output directory. Does not overwrite frozen outputs."""
from __future__ import annotations
import argparse,json,subprocess,sys,hashlib
from pathlib import Path

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument('--output-dir',required=True,type=Path)
    ap.add_argument('--regenerate',action='store_true',help='also regenerate with SymPy and compare exact bytes')
    args=ap.parse_args();root=Path(__file__).resolve().parents[1]
    target=args.output_dir.resolve();target.mkdir(parents=True,exist_ok=False)
    cert=root/'certificates/near_square_barriers.json'
    assert hashlib.sha256((root/'inputs/previous-evidence.zip').read_bytes()).hexdigest()=='7fa35e341853912470116c6b10dbfb0ccfed0345287ddd2f0fe822b45e2edd1f'
    jobs=[('check_A',['check_A.py',str(cert)]),('check_B',['check_B.py',str(cert)]),
          ('tamper_tests',['tamper_tests.py',str(cert)]),('weak_model',['weak_model.py'])]
    records=[]
    for name,argv in jobs:
        cmd=[sys.executable,'-B',str(root/'src'/argv[0]),*argv[1:]]
        p=subprocess.run(cmd,text=True,capture_output=True)
        (target/(name+'.json')).write_text(p.stdout,encoding='utf-8')
        (target/(name+'.stderr.txt')).write_text(p.stderr,encoding='utf-8')
        records.append({'name':name,'exit_code':p.returncode})
        if p.returncode:raise SystemExit(f'REPLAY FAILED: {name}: '+p.stderr)
        got=json.loads(p.stdout);expected=json.loads((root/'outputs'/(name+'.json')).read_text())
        assert got==expected,name+' differs from frozen result'
    if args.regenerate:
        fresh=target/'near_square_barriers.json'
        p=subprocess.run([sys.executable,'-B',str(root/'src/generate_certificates.py'),'--output',str(fresh)],capture_output=True,text=True)
        (target/'regenerate.stdout.txt').write_text(p.stdout)
        (target/'regenerate.stderr.txt').write_text(p.stderr)
        assert p.returncode==0,p.stderr
        assert fresh.read_bytes()==cert.read_bytes(),'regeneration byte mismatch'
        records.append({'name':'regenerate','exit_code':0,'exact_byte_match':True})
    result={'status':'PASS','jobs':records,'original_problem_scan':False,'lean':False,'repository_write':False}
    (target/'SUMMARY.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
    print(json.dumps(result,sort_keys=True))
if __name__=='__main__':main()
