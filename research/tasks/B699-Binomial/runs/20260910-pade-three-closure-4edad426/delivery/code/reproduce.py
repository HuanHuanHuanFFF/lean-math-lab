#!/usr/bin/env python3
"""Verify the shipped certificates, or regenerate all new mathematics in a clean copy.
Usage: python code/reproduce.py [--regenerate] [--output-dir PATH]
No original archive is modified. No network, Git, Lean, or third-party package is used.
"""
from pathlib import Path
import argparse,hashlib,json,os,shutil,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]
IGNORE={'seconds','elapsed_seconds','check_seconds','peak_rss_kib','block_generation_seconds','block_certificate_bytes'}
def mathematical(x):
    if isinstance(x,dict):return {k:mathematical(v) for k,v in x.items() if k not in IGNORE}
    if isinstance(x,list):return [mathematical(v) for v in x]
    return x

def main():
    if sys.flags.optimize:raise RuntimeError('Run without -O: arithmetic assertions must stay enabled.')
    ap=argparse.ArgumentParser();ap.add_argument('--regenerate',action='store_true')
    ap.add_argument('--output-dir',type=Path,default=ROOT/'replay')
    args=ap.parse_args();dest=args.output_dir.resolve();dest.mkdir(parents=True,exist_ok=True)
    start=time.monotonic();runs=[];compared=[]
    with tempfile.TemporaryDirectory(prefix='b699-three-reproduction-') as tmp:
        work=Path(tmp)
        for directory in ['code','vendor','originals']:shutil.copytree(ROOT/directory,work/directory)
        if args.regenerate:
            (work/'results').mkdir()
            shutil.copy2(ROOT/'results/vendor_source_map.json',work/'results/vendor_source_map.json')
        else:shutil.copytree(ROOT/'results',work/'results')
        steps=['check_sources.py','check_upstream.py']
        if args.regenerate:steps+=['block_targets.py','crt_descent.py','terminal_targets.py']
        steps+=['check_targets.py','cost_and_diagnostics.py','regression_tests.py']
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
        for name in steps:
            t=time.monotonic();log=dest/(name[:-3]+'.log')
            with log.open('w') as out:
                run=subprocess.run([sys.executable,'code/'+name],cwd=work,env=env,
                     stdout=out,stderr=subprocess.STDOUT,timeout=300)
            runs.append(dict(script=name,returncode=run.returncode,seconds=time.monotonic()-t,
                     log_sha256=hashlib.sha256(log.read_bytes()).hexdigest()))
            print(name, 'PASS' if run.returncode==0 else 'FAIL',flush=True)
            if run.returncode:raise RuntimeError('Reproduction failed; inspect '+str(log))
        names=['source_check.json','upstream_replay.json','independent_check.json','regression_tests.json','cost_and_diagnostics.json']
        if args.regenerate:
            names += [p.name for p in sorted((ROOT/'results').glob('block_*_*_*.json'))]
            names += [f'{kind}_{i}.json' for i in [11,16,21] for kind in ['block_summary','crt_stages','terminal_cost','terminal_certificate']]
        for name in names:
            old=mathematical(json.loads((ROOT/'results'/name).read_text()))
            new=mathematical(json.loads((work/'results'/name).read_text()))
            if old!=new:raise RuntimeError('Mathematical payload mismatch: '+name)
            raw=json.dumps(new,sort_keys=True,separators=(',',':')).encode()
            compared.append(dict(file=name,canonical_mathematics_sha256=hashlib.sha256(raw).hexdigest()))
        totals=json.loads((work/'results/independent_check.json').read_text())
    record=dict(status='PASS',mode='clean_full_regeneration' if args.regenerate else 'clean_verification',
       python=sys.version.split()[0],steps=runs,compared_payloads=compared,
       excluded_nonmathematical_fields=sorted(IGNORE),total_candidates=totals['total_candidates'],
       blocks=totals['total_blocks'],residue_inequalities=totals['total_residue_inequalities'],
       CRT_pairs=totals['total_CRT_pairs'],seconds=time.monotonic()-start,
       scope='Fresh temporary workspace; no cached generated block certificates in regeneration mode. All original ZIP bytes only copied/read. No Lean or human review.')
    (dest/'reproduction.json').write_text(json.dumps(record,indent=2))
    print(json.dumps({k:v for k,v in record.items() if k not in ['steps','compared_payloads']}))
if __name__=='__main__':main()
