#!/usr/bin/env python3
"""Read a certified k6 row. Does not assert prime-power status for weak inputs."""
import argparse,csv,json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
CASES={'small':(-1,3,11),'size-pass':(1,5,19),'square':(1,21,95),
       'complete-3power':(-1,4,19),'Lucas-block-boundary':(-1,461,1451)}

def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--case',choices=list(CASES))
    ap.add_argument('--eps',type=int,choices=[-1,1]);ap.add_argument('--z',type=int);ap.add_argument('--a',type=int)
    ap.add_argument('--output',type=Path)
    args=ap.parse_args()
    if args.case:key=CASES[args.case]
    else:
        if args.eps is None or args.z is None or args.a is None:ap.error('use --case or --eps --z --a')
        key=(args.eps,args.z,args.a)
    def pick(path):
        with path.open(newline='') as f:
            for raw in csv.DictReader(f):
                row={k:int(v) for k,v in raw.items()}
                if tuple(row[x] for x in ['eps','z','a'])==key:yield row
    found=list(pick(ROOT/'certificates'/f'k6-e{key[0]}.csv'))
    if not found:
        obj={'status':'OUTSIDE_THIS_FINITE_LEDGER','key':key,'claim':'No new NC or closure claim.'}
    else:
        row=found[0];audit=next(pick(ROOT/'certificates'/'prime-power-audit.csv'))
        witnesses=list(pick(ROOT/'certificates'/'actual-source-witnesses.csv'))
        obj={'status':'REJECTED_BY_ORIGINAL_SOURCES','key':key,'original':row,'prime_power_audit':audit,
             'original_full_power_witnesses':witnesses,
             'claim':('Whole row Common3, using the adopted CRT/source interface and exact true powers.'
                      if audit['real_distinct_powers'] else
                      'This original number pair is rejected. Whole-row upgrade requires actual distinct prime powers; absent here.')}
    text=json.dumps(obj,indent=2)+'\n'
    if args.output:
        out=args.output.resolve()
        if out.is_relative_to(ROOT):raise SystemExit('Output must be outside the evidence tree')
        out.parent.mkdir(parents=True,exist_ok=True);out.write_text(text)
    print(text,end='')
if __name__=='__main__':main()
