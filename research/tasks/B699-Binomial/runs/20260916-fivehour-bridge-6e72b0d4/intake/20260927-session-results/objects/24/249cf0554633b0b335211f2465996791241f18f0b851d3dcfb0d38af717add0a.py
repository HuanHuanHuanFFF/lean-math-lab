#!/usr/bin/env python3
"""Read-only deterministic regeneration and certificate comparison."""
from pathlib import Path
import argparse,hashlib,json,platform,time,sys
from core import canonical
from experiments import all_results

def check_manifest(root,name):
    path=root/name
    if not path.exists():return {'present':False,'checked':0}
    count=0
    for line in path.read_text().splitlines():
        digest,rel=line.split('  ',1)
        target=root/rel
        assert target.is_file(),f'Missing {rel}'
        assert hashlib.sha256(target.read_bytes()).hexdigest()==digest,f'Hash mismatch: {rel}'
        count+=1
    return dict(present=True,checked=count,status='PASS')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path);args=ap.parse_args()
    root=Path(__file__).resolve().parents[1];start=time.monotonic()
    hashes={name:check_manifest(root,name) for name in ['PAYLOAD_SHA256SUMS.txt','SHA256SUMS.txt']}
    result=all_results();checked=[]
    for name,data in result.items():
        actual=(root/'certificates'/name).read_bytes();expected=canonical(data)
        assert actual==expected,f'Certificate mismatch: {name}'
        checked.append(dict(name=name,sha256=hashlib.sha256(actual).hexdigest()))
    receipt=dict(status='PASS',python=platform.python_version(),standard_library_only=True,
                 network_required=False,repository_modified=False,
                 elapsed_seconds=round(time.monotonic()-start,3),manifest_checks=hashes,
                 certificates=checked,exterior_counts=result['exterior_P1000.json']['counts'],
                 near_counts=result['near_P5000.json']['counts'],
                 direct_full_row_pairs=result['direct_full_rows.json']['total_pairs'],
                 limitation='Same-author deterministic replay, not Lean or independent mathematical review.')
    data=canonical(receipt)
    if args.output:args.output.write_bytes(data)
    sys.stdout.write(data.decode())

if __name__=='__main__':main()
