"""Sufficient row consumers, NOT an NC3/prime-pair construction algorithm."""
from __future__ import annotations
import argparse,json
from core import original_row,sources,witness

def consume(P,Q):
    r=original_row(P,Q)
    out=dict(row=r,covered_current=False,status='outside_this_round_consumer')
    if len(r['Q_blocks'])!=2 or not r['band'] or r['n']%4:
        return out
    if not all(s['R'] for s in r['slots']):
        out['status']='old_zero_branch_NOT_replayed';return out
    d,k=r['Q_blocks'];z=r['z'];h=r['carries'][1]
    edge_r=(d+1)//3
    edge=(d==3*edge_r-1 and k==3 and edge_r>=3 and edge_r%8==3
          and P==6*edge_r*edge_r-5*edge_r+4)
    if z<=2:
        out.update(covered_current=True,theorem='M1-LOWZ-NZ-BAND2',status='entire_original_row_covered')
    elif edge:
        out.update(covered_current=True,theorem='EDGE3-T0',status='entire_original_row_covered')
    elif h==-1:
        out.update(covered_current=True,theorem='M1-POSITIVE-CARRY',status='entire_original_row_covered')
    if out['covered_current']:
        out['sources']=sources(r)
        if not all(r['two_full_Lucas']):
            p=r['power_P'][0] if not r['two_full_Lucas'][0] else r['power_Q'][0]
            out['witness']=witness(r['n'],r['j'],p)
        out['meaning']='Sufficient Common3 row consumer, never a declaration of surviving NC3.'
    return out

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--P',type=int,required=True);ap.add_argument('--Q',type=int,required=True)
    a=ap.parse_args()
    try:result=consume(a.P,a.Q)
    except (ValueError,AssertionError) as e:ap.error(str(e))
    print(json.dumps(result,ensure_ascii=False,indent=2))
