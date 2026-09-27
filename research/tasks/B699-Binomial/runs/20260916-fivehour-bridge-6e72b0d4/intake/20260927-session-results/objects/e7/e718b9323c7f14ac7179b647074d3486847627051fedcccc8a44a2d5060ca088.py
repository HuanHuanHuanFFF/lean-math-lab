#!/usr/bin/env python3
"""Verify frozen payload and reproduce Round 7 without network access."""
from __future__ import annotations
import argparse,hashlib,importlib.util,json,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def manifest(name):
    p=ROOT/name
    if not p.exists():raise RuntimeError('missing '+name)
    rows=[]
    for line in p.read_text().splitlines():
        digest,rel=line.split('  ',1);path=ROOT/rel
        if path.resolve().is_relative_to(ROOT) is False:raise RuntimeError('unsafe manifest path')
        if not path.is_file() or sha(path)!=digest:raise RuntimeError('hash mismatch '+rel)
        rows.append(rel)
    return rows

def main(receipt):
    receipt=receipt.resolve()
    if receipt.is_relative_to(ROOT):raise ValueError('receipt must be outside frozen payload')
    started=time.time();payload=manifest('PAYLOAD.sha256')
    final=manifest('SHA256SUMS') if (ROOT/'SHA256SUMS').exists() else []
    commands=[]
    with tempfile.TemporaryDirectory(prefix='b699-r7-reproduce-') as td:
        gen=Path(td)/'generated'
        def run(args):
            print('START '+Path(args[0]).name, flush=True)
            p=subprocess.run([sys.executable,*map(str,args)],cwd=ROOT,capture_output=True,text=True,timeout=180)
            commands.append(dict(command=[sys.executable,*map(str,args)],returncode=p.returncode,stdout=p.stdout,stderr=p.stderr))
            if p.returncode:raise RuntimeError('replay subprocess failed: '+p.stderr[-3000:])
            print('DONE '+Path(args[0]).name, flush=True)
        run([ROOT/'scripts/discover.py','--out',gen])
        old=sorted((ROOT/'certificates').glob('*.json'));new=sorted(gen.glob('*.json'))
        if [p.name for p in old]!=[p.name for p in new]:raise RuntimeError('certificate file set differs')
        matches=[]
        for p in old:
            q=gen/p.name
            if p.read_bytes()!=q.read_bytes():raise RuntimeError('regeneration mismatch '+p.name)
            matches.append(dict(name=p.name,sha256=sha(p),byte_identical=True))
        print('START separated receiver module', flush=True)
        ap=ROOT/'scripts/accept.py'
        spec=importlib.util.spec_from_file_location('r7_separated_receiver',ap)
        receiver=importlib.util.module_from_spec(spec);spec.loader.exec_module(receiver)
        accepted=receiver.accept(gen,False)
        commands.append(dict(mode='load separated receiver module and call accept(generated, False)',source=str(ap),returncode=0,stdout=json.dumps(accepted),stderr=''))
        print('DONE separated receiver module', flush=True)
        run([ROOT/'scripts/mutation_test.py','--certs',gen])
    out=dict(status='PASS',extracted_root=str(ROOT),payload_files_verified=len(payload),
             final_manifest_files_verified=len(final),certificates_regenerated=matches,commands=commands,
             elapsed_seconds=round(time.time()-started,3),same_author_receiver=True,
             external_independent_review=False,Lean=False,repository_operations=False,
             historical_net_deleted=0,full_original_model_produced=False)
    receipt.parent.mkdir(parents=True,exist_ok=True);receipt.write_text(json.dumps(out,indent=2,ensure_ascii=False,sort_keys=True)+'\n')
    print(json.dumps(dict(status='PASS',payload_files=len(payload),final_manifest_files=len(final),regenerated=len(matches),receipt=str(receipt)),ensure_ascii=False))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--receipt',type=Path,required=True);a=p.parse_args();main(a.receipt)
