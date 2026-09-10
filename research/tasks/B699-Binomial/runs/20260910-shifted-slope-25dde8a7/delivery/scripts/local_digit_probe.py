#!/usr/bin/env python3
"""Exact diagnostic of bottom prime-power constraints, not a universal proof."""
import argparse, json, math, time
from pathlib import Path

def spf_sieve(N):
    spf=list(range(N+1))
    for p in range(2,math.isqrt(N)+1):
        if spf[p]==p:
            for k in range(p*p,N+1,p):
                if spf[k]==k: spf[k]=p
    return spf

def factor(x,spf):
    f=[]
    while x>1:
        p=spf[x]; a=0; q=1
        while x%p==0: x//=p; a+=1; q*=p
        f.append((p,a,q))
    return f

def blocks(n,i,spf):
    ans=[]
    for r in range(i):
        for p,a,q in factor(n-r,spf):
            if p>=i and a-(p==i)>0:
                ans.append((p,a,q,r,a-int(p==i)))
    return ans

def bottom_candidates(n,i,B):
    h=n//2
    if not B: return list(range(i+1,h+1))
    seed=min(B,key=lambda z:(h//z[2]+1)*(z[3]+1))
    q,r=seed[2:4]
    candidates=[]
    for t in range(h//q+1):
        lo=max(i+1,t*q); hi=min(h,t*q+r)
        for j in range(lo,hi+1):
            if all(j%z[2]<=z[3] for z in B): candidates.append(j)
    return candidates

def carries(n,j,p):
    q=p; e=0
    while q<=n:
        e+=n//q-j//q-(n-j)//q
        q*=p
    return e

def run(N,imin,imax):
    start=time.time(); spf=spf_sieve(N); out={'N':N,'indices':[imin,imax],'kind':'targeted bottom-block diagnostic','results':[]}
    for i in range(imin,imax+1):
        count=0; rows=0; sample=[]; real=[]
        for n in range(2*i+2,N+1):
            B=blocks(n,i,spf); js=bottom_candidates(n,i,B)
            rows+=bool(js)
            for j in js:
                count+=1
                witness=[{'p':p,'exponent_in_choose_n_j':carries(n,j,p)} for p,a,q,r,e in B if carries(n,j,p)]
                rec={'n':n,'i':i,'j':j,'blocks':B,'higher_carry_witnesses':witness}
                if len(sample)<20: sample.append(rec)
                if not witness: real.append(rec)
        out['results'].append({'i':i,'bottom_survivor_rows':rows,'bottom_survivor_triples':count,'first_survivors':sample,'true_counterexamples':real})
    out['elapsed_seconds']=time.time()-start
    return out
if __name__=='__main__':
    ap=argparse.ArgumentParser(); ap.add_argument('--N',type=int,default=10000); ap.add_argument('--imin',type=int,default=3); ap.add_argument('--imax',type=int,default=10); ap.add_argument('--output',type=Path,required=True)
    a=ap.parse_args(); out=run(a.N,a.imin,a.imax); a.output.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({**{k:v for k,v in out.items() if k!='results'},'results':[{k:v for k,v in x.items() if k!='first_survivors'} for x in out['results']]},indent=2))
