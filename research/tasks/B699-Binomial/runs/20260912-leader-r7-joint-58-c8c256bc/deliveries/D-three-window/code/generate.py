#!/usr/bin/env python3
"""Generate a bounded regression certificate, NOT a proof of unbounded coverage."""
from __future__ import annotations
import argparse, json
from pathlib import Path
from core import row_data

def build(limit: int=2048) -> dict:
    rows=[]
    for n in range(8,limit+1):
        rows.append({'n':n,'targets':[{
            'm':m, 'parts':(d:=row_data(n,m))['parts'],
            'eta':d['eta'],'accepted':d['accepted']
        } for m in range(3,10)]})
    return {'schema':'B699-D-three-window-v1','range':[8,limit],
            'prime_boundary':'p>=m; retain full p^e for p=m only when e>=2',
            'strict_acceptance':True,'coefficient':64,'rows':rows}

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);p.add_argument('--limit',type=int,default=2048)
    a=p.parse_args();out=Path(a.out);out.parent.mkdir(parents=True,exist_ok=True)
    c=build(a.limit);out.write_text(json.dumps(c,ensure_ascii=False,separators=(',',':'))+'\n')
    print(json.dumps({'status':'PASS_GENERATION','rows':len(c['rows']),'target_profiles':7*len(c['rows'])}))
