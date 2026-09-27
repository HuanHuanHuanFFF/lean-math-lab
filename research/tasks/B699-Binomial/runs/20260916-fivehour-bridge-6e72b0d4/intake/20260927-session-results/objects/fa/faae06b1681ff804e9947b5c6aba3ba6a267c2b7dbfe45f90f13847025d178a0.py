#!/usr/bin/env python3
"""Reject deliberately damaged certificates using the separated acceptor."""
from __future__ import annotations
import argparse,json,os,shutil,subprocess,sys,tempfile
from pathlib import Path

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);args=ap.parse_args();root=args.root.resolve()
    cases=[
      ('historical_gain','claims.json',lambda d:d.update(certified_history_net_deletion=1)),
      ('polynomial_scope','claims.json',lambda d:d.update(global_polynomial_obstruction_is_pointwise_deletion=True)),
      ('source2_independence','claims.json',lambda d:d.update(source2_gate_is_reformulation=False)),
      ('ordinary_factor','canonical_factor_pairs.json',lambda d:d[0].update(X=d[0]['X']+1)),
      ('false_minimum','square_core_obstructions.json',lambda d:d['minimum_even_g'].update(a_even=20)),
      ('inflated_source_power','source3_tail_consumer.json',lambda d:d['rows'][0].update(source_e=d['rows'][0]['source_e']+1)),
      ('rational_promoted_to_menu','polynomial_and_rational_boundary.json',lambda d:d['rows'][0].update(current_menu=True)),
      ('wrong_inverse_relation','claims.json',lambda d:d.update(notation='r0<2Ac<s')),
    ]
    results=[]
    with tempfile.TemporaryDirectory(prefix='b699-r8-mutations-') as tmp:
      for name,fn,mutate in cases:
        target=Path(tmp)/name;shutil.copytree(root/'certificates',target)
        f=target/fn;data=json.loads(f.read_text());mutate(data);f.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
        p=subprocess.run([sys.executable,'-B',str(root/'scripts/accept.py'),'--cert-dir',str(target)],capture_output=True,text=True,timeout=60,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
        if p.returncode==0:raise RuntimeError('damaged certificate accepted: '+name)
        results.append({'mutation':name,'rejected':True,'exit_code':p.returncode,'last_error':p.stderr.strip().splitlines()[-1] if p.stderr else p.stdout.strip()})
    print(json.dumps({'status':'PASS','mutations_rejected':len(results),'results':results},ensure_ascii=False,sort_keys=True))
if __name__=='__main__':main()
