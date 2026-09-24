#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from collections import Counter
from concurrent.futures import ThreadPoolExecutor,as_completed
import argparse,hashlib,json,os,shutil,subprocess,sys
ROOT=Path(__file__).resolve().parents[1]
CERT=ROOT/'certificates'

def run(cmd,**kw):return subprocess.run(cmd,check=True,text=True,capture_output=True,**kw)
def norm_output(line):
    a=line.split();return ' '.join(a[1:])
def split_lines(lines,n):
    return [lines[i::n] for i in range(n) if lines[i::n]]
def reference_pairs(label):
    d=CERT/'geometry'/label;rec=json.loads((d/'receipt.json').read_text());out=[]
    for ch in rec['chunks']:
        il=(d/f"chunk_{ch['index']:03d}.in").read_text().splitlines()
        ol=(d/f"chunk_{ch['index']:03d}.out").read_text().splitlines()
        out.extend((a,norm_output(b)) for a,b in zip(il,ol))
    return Counter(out)
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);ap.add_argument('--jobs',type=int,default=max(1,min(16,os.cpu_count() or 1)))
    a=ap.parse_args();O=Path(a.out)
    if O.exists():raise SystemExit('output directory already exists')
    (O/'build').mkdir(parents=True);(O/'gates').mkdir();(O/'jets').mkdir();(O/'logs').mkdir()
    cxx=['g++','-O3','-std=c++17']
    bins={}
    for src in ['satgates_zero_range.cpp','satgates_kappa1_fast.cpp','jets_zero_p257_fast.cpp','jets_kappa1_p257_fast.cpp']:
        dst=O/'build'/src.removesuffix('.cpp');run(cxx+[str(ROOT/'code'/src),'-o',str(dst)]);bins[src]=dst
    # Generate seven complete root gates concurrently.
    tasks=[]
    with ThreadPoolExecutor(max_workers=min(a.jobs,7)) as ex:
        tasks.append(('KSAT2_q31',31,ex.submit(run,[str(bins['satgates_kappa1_fast.cpp']),'31',str(O/'gates'/'KSAT2_q31.txt')])))
        for q in range(37,43):
            label=f'KSAT_q{q}'
            tasks.append((label,q,ex.submit(run,[str(bins['satgates_zero_range.cpp']),str(q),str(O/'gates'/f'{label}.txt'),'0',str(q+1)])))
        for label,q,f in tasks:
            r=f.result();(O/'logs'/f'{label}.gate.stdout').write_text(r.stdout);(O/'logs'/f'{label}.gate.stderr').write_text(r.stderr)
    summary=json.loads((CERT/'geometry_summary.json').read_text())
    jet_jobs=[]
    with ThreadPoolExecutor(max_workers=a.jobs) as ex:
        for brief in summary['receipts']:
            label=brief['label'];q=brief['q'];lines=(O/'gates'/f'{label}.txt').read_text().splitlines()
            ref_full=(CERT/'geometry'/label/'gates_full.txt').read_text().splitlines()
            assert Counter(lines)==Counter(ref_full)
            parts=split_lines(lines,max(1,min(a.jobs,len(lines))))
            for i,part in enumerate(parts):
                ip=O/'jets'/f'{label}.{i:03d}.in';op=O/'jets'/f'{label}.{i:03d}.out'
                ip.write_text('\n'.join(part)+'\n')
                exe=bins['jets_kappa1_p257_fast.cpp'] if label=='KSAT2_q31' else bins['jets_zero_p257_fast.cpp']
                fut=ex.submit(run,[str(exe),str(ip),str(op),str(q)])
                jet_jobs.append((label,i,ip,op,fut))
        logs=[]
        for label,i,ip,op,f in jet_jobs:
            r=f.result();(O/'logs'/f'{label}.{i:03d}.stdout').write_text(r.stdout);(O/'logs'/f'{label}.{i:03d}.stderr').write_text(r.stderr);logs.append((label,ip,op))
    by={x['label']:[] for x in summary['receipts']}
    for label,ip,op in logs:
        il=ip.read_text().splitlines();ol=op.read_text().splitlines();assert len(il)==len(ol)
        by[label].extend((x,norm_output(y)) for x,y in zip(il,ol))
    for label,pairs in by.items():assert Counter(pairs)==reference_pairs(label)
    # Rebuild ledgers and compare exact JSON objects.
    for script,name in [('ledger_cover8.py','ledger_cover8.json'),('check_ledger_independent.py','ledger_independent.json'),('make_stagewise.py','stagewise_payoff.json')]:
        run([sys.executable,str(ROOT/'code'/script),str(O/name)])
        assert json.loads((O/name).read_text())==json.loads((CERT/name).read_text())
    result={'status':'PASS_FULL_CLEAN_REPLAY','jobs':a.jobs,'geometry_systems':sum(x['gate_count'] for x in summary['receipts']),
            'all_gate_multisets_match':True,'all_gate_output_pairs_match':True,
            'all_ledgers_match':True,'same_G_cover_upper_bound':8,
            'Lean':False,'repository_writes':False}
    (O/'replay_result.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps(result,indent=2))
if __name__=='__main__':main()
