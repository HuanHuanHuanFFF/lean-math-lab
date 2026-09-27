#!/usr/bin/env python3
from pathlib import Path
import argparse,subprocess,shutil,hashlib,json,os
ROOT=Path(__file__).resolve().parents[1]
def run(cmd,cwd=None,stdout=None):
    r=subprocess.run(cmd,cwd=cwd,text=True,capture_output=stdout is None,check=True)
    if stdout is not None: Path(stdout).write_text(r.stdout)
    return r.stdout if stdout is None else ''
def sha(p):
    h=hashlib.sha256();
    with open(p,'rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);a=ap.parse_args();dst=Path(a.out).resolve()
    if dst.exists():shutil.rmtree(dst)
    (dst/'code').mkdir(parents=True);(dst/'inputs').mkdir();(dst/'certificates/geometry').mkdir(parents=True);(dst/'certificates/fees').mkdir();(dst/'verification').mkdir()
    for p in (ROOT/'code').iterdir():
        if p.is_file():shutil.copy2(p,dst/'code'/p.name)
    for p in (ROOT/'inputs').iterdir():
        if p.is_file():shutil.copy2(p,dst/'inputs'/p.name)
    B=dst/'bin';B.mkdir()
    cxx=['g++','-O3','-std=c++17']
    run(cxx+[str(dst/'code/early_near_gates.cpp'),'-o',str(B/'eg')]);run(cxx+['-DANCHOR_ROW=7',str(dst/'code/early_near_gates.cpp'),'-o',str(B/'ega')])
    run(cxx+[str(dst/'code/early_near_jets.cpp'),'-o',str(B/'ej49')]);run(cxx+['-DMODULUS=32719',str(dst/'code/early_near_jets.cpp'),'-o',str(B/'ej19')]);run(cxx+[str(dst/'code/verify_early_minors.cpp'),'-o',str(B/'ev')])
    run(cxx+[str(dst/'code/q8_2delta7_gates.cpp'),'-o',str(B/'qg')]);run(cxx+[str(dst/'code/q8_2delta7_gates_alt.cpp'),'-o',str(B/'qga')]);run(cxx+[str(dst/'code/q8_2delta7_jets.cpp'),'-o',str(B/'qj49')]);run(cxx+['-DMODULUS=32719',str(dst/'code/q8_2delta7_jets.cpp'),'-o',str(B/'qj19')]);run(cxx+[str(dst/'code/verify_q8_2d7_minors.cpp'),'-o',str(B/'qv')]);run(cxx+[str(dst/'code/fee_dp.cpp'),'-o',str(B/'fee')]);run(cxx+['-DPRIME=257',str(dst/'code/quotient_module.cpp'),'-o',str(B/'qm257')]);run(cxx+['-DPRIME=263',str(dst/'code/quotient_module.cpp'),'-o',str(B/'qm263')])
    G=dst/'certificates/geometry'
    for q in (19,20):
      for rr in (4,5):
        stem=f'q{q}r{rr}';run([str(B/'eg'),str(q),str(rr),str(G/f'{stem}.gates')]);run([str(B/'ega'),str(q),str(rr),str(G/f'{stem}.alt')])
        run([str(B/'ej49'),str(G/f'{stem}.gates'),str(G/f'{stem}.32749.ranks'),str(q)])
        run([str(B/'ej19'),str(G/f'{stem}.gates'),str(G/f'{stem}.32719.ranks'),str(q)])
        out=run([str(B/'ev'),str(G/f'{stem}.gates'),str(G/f'{stem}.32719.ranks'),str(q),str(rr)]);(G/f'{stem}.independent.log').write_text(out)
    run([str(B/'qg'),str(G/'q8_2d7.gates')]);run([str(B/'qga'),str(G/'q8_2d7.alt')]);run([str(B/'qj49'),str(G/'q8_2d7.gates'),str(G/'q8_2d7.32749.ranks')]);run([str(B/'qj19'),str(G/'q8_2d7.gates'),str(G/'q8_2d7.32719.ranks')]);out=run([str(B/'qv'),str(G/'q8_2d7.gates'),str(G/'q8_2d7.32719.ranks')]);(G/'q8_2d7.independent.log').write_text(out)
    run(['python3',str(dst/'code/prepare_fees.py')],cwd=dst)
    F=dst/'certificates/fees'
    for prime in (257,263):
      for rev in (0,1): run([str(B/f'qm{prime}'),str(F/'1646_s5_case.txt'),str(F/f'1646_s5_p{prime}_r{rev}.txt'),str(rev)])
    run([str(B/'fee'),str(F/'signatures508.txt'),str(F/'queries123.txt'),str(F/'fees_pareto.txt'),'0']);run([str(B/'fee'),str(F/'signatures508.txt'),str(F/'queries123.txt'),str(F/'fees_raw_reverse.txt'),'1'])
    certout=run(['python3',str(dst/'code/certify.py')],cwd=dst);(dst/'verification/certify.log').write_text(certout)
    rel=[]
    for folder in ('certificates/geometry','certificates/fees'):
      for p in sorted((ROOT/folder).glob('*')):
        if p.is_file():rel.append(str(p.relative_to(ROOT)))
    for name in ('certificates/final_E0_frontier.tsv','certificates/removed_states.json','certificates/summary.json'):
      rel.append(name)
    rel=sorted(set(rel));bad=[]
    for x in rel:
      a=ROOT/x;b=dst/x
      if not b.exists() or sha(a)!=sha(b):bad.append(x)
    rec={'status':'PASS_CLEAN_REPLAY_EARLY19_20_Q8_2D7_FRONTIER110' if not bad else 'FAIL','files_compared':len(rel),'mismatches':bad,'all_byte_identical':not bad}
    (dst/'verification/clean_replay_receipt.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
    if bad:raise SystemExit(1)
if __name__=='__main__':main()
