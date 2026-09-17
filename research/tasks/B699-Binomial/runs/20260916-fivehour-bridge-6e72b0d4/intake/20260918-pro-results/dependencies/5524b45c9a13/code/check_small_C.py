#!/usr/bin/env python3
"""Recheck only the frozen C<=3 dependency using all 1406 original witnesses."""
import argparse,json,math
from pathlib import Path

def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def vf(n,p):
    r=0
    while n:n//=p;r+=n
    return r

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--source',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);a=ap.parse_args()
    old=json.loads(a.source.read_text());rows=old['witnesses']
    expected=[(n,j) for n in range(8,82) for j in range(4,n//2+1)]
    assert [(n,j) for n,j,p in rows]==expected and len(rows)==1406
    for n,j,p in rows:
        assert p>=3 and prime(p)
        assert vf(n,p)-vf(3,p)-vf(n-3,p)>0
        assert vf(n,p)-vf(j,p)-vf(n-j,p)>0
        assert math.comb(n,3)%p==math.comb(n,j)%p==0
    out={'status':'PASS_FROZEN_SMALL_C_WITNESSES','pairs':len(rows),'range':[8,81],
         'scope':'Rechecks only C<=3 bottom, not previous GAP31 222811-state chain or external research.'}
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
