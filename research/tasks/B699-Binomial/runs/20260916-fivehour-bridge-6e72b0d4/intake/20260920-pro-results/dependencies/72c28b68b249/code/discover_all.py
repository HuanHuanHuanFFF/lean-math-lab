#!/usr/bin/env python3
"""Serial discovery driver for this round, separate from final receiving code.
Requires NumPy and SymPy. Refuses an existing output directory.
The archived certificates/logs were obtained in staged runs of these same modules;
this convenience driver was assembled afterwards, not retroactively claimed run.
"""
from __future__ import annotations
import argparse,json,subprocess,sys,time
from pathlib import Path
from ledger import ledger

def main():
    pa=argparse.ArgumentParser();pa.add_argument('--out',required=True,type=Path);a=pa.parse_args()
    if not a.out.is_absolute() or a.out.exists():raise ValueError('use an absolute nonexistent output directory')
    a.out.mkdir(parents=True);ev=a.out/'evidence';ev.mkdir();logs=a.out/'logs';logs.mkdir();code=Path(__file__).resolve().parent
    def run(script,*args,label=None):
        cmd=[sys.executable,'-B',str(code/script),*map(str,args)]
        lab=label or script.removesuffix('.py')
        with (logs/(lab+'.log')).open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
        print('DISCOVERY_STEP',lab,flush=True)
    for q in (11,12):
        for h in range(3,9):
            n=f'nf{q}_h{h}';run('gates.py','nf',q,'--h',h,'--out',ev/(n+'_gates.json'),label=n+'_gates')
            run('jets.py',ev/(n+'_gates.json'),ev/(n+'_minors.json'),label=n+'_jets')
            x=json.loads((ev/(n+'_minors.json')).read_text())
            if h!=3 and x['exceptions']:raise RuntimeError('new tail exception requires investigation, not blind exclusion')
        run('recover.py',ev/f'nf{q}_h3_minors.json',ev/f'nf{q}_h3_solutions.json',label=f'nf{q}_recover')
        x=json.loads((ev/f'nf{q}_h3_solutions.json').read_text());x['solutions']=[s for s in x['solutions'] if not s['common_source_lines']]
        (ev/f'nf{q}_candidate_families.json').write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
        tag=f'nf{6*q-1}'
        run('signatures.py',ev/f'nf{q}_candidate_families.json',ev/(tag+'_signatures.json'),label=tag+'_signatures')
        run('peel_strata.py',ev/f'nf{q}_candidate_families.json',ev/(tag+'_signatures.json'),ev/(tag+'_stratum_peeling.json'),label=tag+'_peeling')
        if q==12:run('nv_probe.py',ev/f'nf{q}_candidate_families.json',ev/(tag+'_signatures.json'),ev/(tag+'_nv.json'),label=tag+'_NV')
    for q in (18,19,20):
        n=f'sat{q}';run('gates.py','sat',q,'--out',ev/(n+'_gates.json'),label=n+'_gates')
        run('jets.py',ev/(n+'_gates.json'),ev/(n+'_minors.json'),label=n+'_jets')
        if q>=19:run('modular_kernel.py',ev/(n+'_minors.json'),ev/(n+'_rank_certificates.json'),label=n+'_rank')
        if q==20:run('sat_product.py',ev/(n+'_minors.json'),ev/(n+'_product_certificate.json'),label=n+'_product')
    for tag,m,f in [('baseline_cover12',11,18),('nf65_only',12,18),('nf65_nf71_sat18',13,19),('nf65_nf71_sat19',13,20),('target_cover11',13,21)]:
        x=ledger(m,f);(ev/(tag+'_ledger.json')).write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
    print('DISCOVERY_FINISHED_NOT_INDEPENDENT_ACCEPTANCE',flush=True)
if __name__=='__main__':main()
