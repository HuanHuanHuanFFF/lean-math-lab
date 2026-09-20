#!/usr/bin/env python3
"""Conditional next-route diagnostics, NOT adopted geometric theorems."""
import json,argparse
from pathlib import Path
from accept_ledger import source_states,run_ledger
from ledger import ledger
from accept_core import need,save

def run(out):
    _,_,ss=source_states();records=[]
    for m in range(13,18):
        for f in (21,22,23,24,25,26,153):
            a=run_ledger(ss,m,f);b=ledger(m,f)
            need(a['maximum']==b['max'],'conditional dual ledger mismatch')
            records.append({'middle':m,'free':f,'maximum':a['maximum'],'maximum_records':a['maximum_records'],'positive_maximum_records':a['positive_excess_maximum_records'],'example':a['records'][0]})
    save(out,{'status':'CONDITIONAL_ONLY_GEOMETRY_UNPROVED','records':records})
    for r in records:print(r['middle'],r['free'],r['maximum'],r['maximum_records'],flush=True)
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True,type=Path);a=p.parse_args();run(a.out)
