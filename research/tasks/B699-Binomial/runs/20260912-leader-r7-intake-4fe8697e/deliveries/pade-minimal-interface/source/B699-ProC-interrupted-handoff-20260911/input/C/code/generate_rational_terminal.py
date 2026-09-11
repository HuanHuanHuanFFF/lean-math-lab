#!/usr/bin/env python3
from pathlib import Path
from math import gcd,comb,factorial
import json,time
from rational_height import data

ROOT=Path(__file__).resolve().parents[1]
def sieve(N):
    sp=list(range(N+1))
    for p in range(2,int(N**0.5)+1):
        if sp[p]==p:
            for t in range(p*p,N+1,p):
                if sp[t]==t:sp[t]=p
    return sp

def choose_factors(n,i,sp):
    fs={}
    for x,sign in [(n-a,1) for a in range(i)]+[(a,-1) for a in range(2,i+1)]:
        while x>1:
            p=sp[x];fs[p]=fs.get(p,0)+sign;x//=p
    assert all(e>=0 for e in fs.values())
    return fs

def carry(n,j,p):
    q=p;h=1
    while q<=n:
        if j%q>n%q:return h
        h+=1;q*=p
    return None

def main():
    ts=time.monotonic();rows=[]
    for B in range(3,9):
        for A in range(1,B//2+1):
            if gcd(A,B)!=1:continue
            for i in range(2,15):
                x=data(i,A,B);assert x['status']=='FINITE';rows.append(x)
    maxn=max(r['n_bound'] for r in rows);sp=sieve(maxn);w=[]
    for r in rows:
        i,A,B=r['i'],r['A'],r['B'];start=len(w)
        for t in range(r['t_min'],r['t_cut']):
            n=B*t;j=A*t;fs=choose_factors(n,i,sp)
            found=None
            for p,e in sorted(fs.items()):
                if p<i or e<=0:continue
                h=carry(n,j,p)
                if h is not None:found=[i,A,B,t,p,h];break
            assert found is not None,('unresolved original input',n,i,j)
            assert comb(n,i)%found[4]==0
            w.append(found)
        r['witness_start']=start;r['witness_count']=len(w)-start
    out={'status':'PASS_FINITE_REMAINDERS_OF_PROVED_RATIO_HEIGHT','rows':rows,'witnesses':w}
    (ROOT/'evidence/rational-terminal-certificate.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
    summary={'status':out['status'],'ratio_index_cells':len(rows),'pairs':len(w),'max_n_bound':maxn,'seconds':time.monotonic()-ts}
    (ROOT/'evidence/rational-terminal-summary.json').write_text(json.dumps(summary,indent=2)+'\n');print(summary)
if __name__=='__main__':main()
