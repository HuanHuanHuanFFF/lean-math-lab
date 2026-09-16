#!/usr/bin/env python3
"""Generate the NEW finite candidate domain and carry-interval certificates.
Python standard library only. Historical acceptance chains are not executed.
"""
from pathlib import Path
from itertools import combinations, permutations
from math import prod,isqrt
import json,time,hashlib,argparse
ROOT=Path(__file__).resolve().parents[1]


def power(x,p):
    q=1
    while x%p==0:
        x//=p;q*=p
    return q

def maxima(n,d,primes):
    return [max(power(n-r,p) for r in range(d)) for p in primes]

def residues(d,H):
    ps=[2,3,5] if d==6 else [2,3,5,7]
    periods=[8,9,25] if d==6 else [8,9,25,49]
    L=prod(periods); mask=bytearray(L)
    # A unique multiple of a prime power > d-1 decides the maximum location;
    # otherwise all exponents are exactly visible in the truncated residues.
    masks=[]
    for p,q in zip(ps,periods):
        arr=[]
        for a in range(q):
            vals=[q if (a-r)%q==0 else power((a-r)%q,p) for r in range(d)]
            arr.append(max(vals)==max(vals[h] for h in H))
        masks.append(arr)
    for n in range(L):mask[n]=all(a[n%q] for a,q in zip(masks,periods))
    return mask

def high_domain(c,mask):
    d=c['d'];H=c['H'];N=int(c['N']);T=c['T'];ps=[2,3,5] if d==6 else [2,3,5,7]
    table={}
    for p in ps:
        a=[];q=p
        while q<N:
            if p!=2 or q>=(4 if d==6 else 8):a.append(q)
            q*=p
        table[p]=a
    s={'power_pairs':0,'position_cases':0,'in_range':0,'position_cover':0,'exact_pair':0,'mass_survivor_templates':0}
    result=set(); digest=hashlib.sha256()
    for p,q in combinations(ps,2):
        for P in table[p]:
            for Q in table[q]:
                s['power_pairs']+=1;inv=pow(P,-1,Q)
                for r,z in permutations(H,2):
                    s['position_cases']+=1
                    n=r+P*((z-r)*inv%Q)
                    if not (T<=n<N and n<P*Q):continue
                    s['in_range']+=1
                    if not mask[n%len(mask)]:continue
                    s['position_cover']+=1
                    if (n-r)%(P*p)==0 or (n-z)%(Q*q)==0:continue
                    if P<=d-1 and max(power(n-h,p) for h in range(d))!=P:continue
                    if Q<=d-1 and max(power(n-h,q) for h in range(d))!=Q:continue
                    s['exact_pair']+=1
                    M=prod(maxima(n,d,ps))
                    if not (M*M>n**3 if d==6 else M>n*n):continue
                    s['mass_survivor_templates']+=1;result.add(n)
    for n in sorted(result):digest.update((str(n)+'\n').encode())
    return {'stats':s,'candidates':sorted(result),'candidate_sha256':digest.hexdigest()}

def spf_table(n):
    spf=list(range(n+1));spf[0:2]=[0,1]
    for p in range(2,isqrt(n)+1):
        if spf[p]==p:
            for x in range(p*p,n+1,p):
                if spf[x]==x:spf[x]=p
    return spf

def valuation_choose(n,j,p):
    v=0;q=p
    while q<=n:
        v+=n//q-j//q-(n-j)//q;q*=p
    return v

def row_certificate(m,n,spf):
    pp=set()
    for r in range(m):
        x=n-r
        while x>1:
            p=spf[x]
            if p>=m:pp.add(p)
            while x%p==0:x//=p
    sources=[]
    for p in sorted(pp):
        if valuation_choose(n,m,p):
            q=p
            while q<=n:
                sources.append((p,q,n%q));q*=p
    lo=m+1;last=n//2;intervals=[]
    while lo<=last:
        best=None
        for p,q,a in sources:
            b=lo%q
            if b>a:
                hi=min(last,lo+(q-1-b))
                option=(hi,-p,-q)
                if best is None or option>best[0]:best=(option,p,q)
        if best is None:raise RuntimeError(f'No carry cover at target={m},n={n},j={lo}')
        hi=best[0][0];intervals.append([lo,hi,best[1],best[2]]);lo=hi+1
    return [m,n,intervals]

def main(out=None):
    start=time.perf_counter();dest=Path(out) if out else ROOT/'evidence';dest.mkdir(parents=True,exist_ok=True)
    cases=json.loads((ROOT/'evidence/height_certificates.json').read_text())['cases']
    domains=[];rows=set()
    for c in cases:
        mask=residues(c['d'],c['H']);hi=high_domain(c,mask)
        low=[n for n in range(2*(c['target']+1),min(c['T'],int(c['N']))) if mask[n%len(mask)]]
        domains.append({'id':c['id'],'period':len(mask),'residue_classes':sum(mask),'low_rows':low,'high':hi})
        rows.update((c['target'],n) for n in low+hi['candidates'])
        print(c['id'],'low',len(low),'high',len(hi['candidates']),hi['stats'],flush=True)
    max_n=max(n for _,n in rows);spf=spf_table(max_n)
    covers=[row_certificate(m,n,spf) for m,n in sorted(rows)]
    for name,obj in [('candidate_domains.json',{'format':1,'domains':domains}),('row_covers.json',{'format':1,'rows':covers})]:
        (dest/name).write_text(json.dumps(obj,separators=(',',':'))+'\n')
    stats={'target_cases':len(cases),'unique_rows':len(covers),'intervals':sum(len(x[2]) for x in covers),'covered_target_configurations':sum(n//2-m for m,n,_ in covers),
        'max_n':max_n,'max_witness_prime':max(z[2] for _,_,iv in covers for z in iv),'distinct_witness_primes':len({z[2] for _,_,iv in covers for z in iv}),
        'rows_by_target':{str(m):sum(a==m for a,_,_ in covers) for m in [6,7,8]}}
    (dest/'generation_counts.json').write_text(json.dumps(stats,indent=2)+'\n')
    print(json.dumps(stats), 'elapsed',round(time.perf_counter()-start,3),flush=True)
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out');args=ap.parse_args();main(args.out)
