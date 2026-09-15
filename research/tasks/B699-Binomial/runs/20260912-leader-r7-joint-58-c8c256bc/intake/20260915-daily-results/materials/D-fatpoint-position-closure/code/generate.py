#!/usr/bin/env python3
"""Generate only the three NEW fat-point bounded domains.
Adapted from the frozen D critical-quotient two-power generator; not a historical replay.
"""
from pathlib import Path
from itertools import combinations, permutations
from math import prod, isqrt
import json, hashlib, argparse
ROOT=Path(__file__).resolve().parents[1]
M=7; LOWER=262144

def pp(x,p):
    q=1
    while x%p==0: x//=p; q*=p
    return q

def s(x,m):
    a=prod(pp(x,p) for p in (2,3,5,7) if p<m)
    if m in (5,7) and x%m==0 and x%(m*m)!=0: a*=m
    return a

def gaps(n,m=7):
    T=prod(s(n-r,m) for r in range(4))
    if T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:return 'QIG'
    T*=s(n-4,m)*s(n-5,m)
    if T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
    return None

def mask(H):
    qs=(8,9,25);ps=(2,3,5);tables=[]
    for p,q in zip(ps,qs):
        tt=[]
        for a in range(q):
            vals=[q if (a-r)%q==0 else pp((a-r)%q,p) for r in range(7)]
            tt.append(max(vals)==max(vals[r] for r in H))
        tables.append(tt)
    return bytes(all(t[a%q] for t,q in zip(tables,qs)) for a in range(1800))

def sha_rows(ns):
    return hashlib.sha256(''.join(str(n)+'\n' for n in ns).encode()).hexdigest()

def recover(mm,H,EXPONENT):
    N=2**EXPONENT;powers={}
    for p in (2,3,5):
        qs=[];v=p
        while v<N:qs.append(v);v*=p
        powers[p]=qs
    seen=set();out=set();counts={'power_pairs':0,'position_templates':0,'exact_pairs':0}
    for p,q in combinations((2,3,5),2):
        for P in powers[p]:
            for Q in powers[q]:
                counts['power_pairs']+=1
                if P*Q<=LOWER:continue
                inv=pow(P,-1,Q)
                for r,t in permutations(H,2):
                    counts['position_templates']+=1
                    n=r+P*((t-r)*inv%Q)
                    if not (LOWER<=n<N and n<P*Q) or n in seen or not mm[n%len(mm)]:continue
                    if (n-r)%(P*p)==0 or (n-t)%(Q*q)==0:continue
                    qs=[max(pp(n-h,x) for h in range(7)) for x in (2,3,5)]
                    if qs[(2,3,5).index(p)]!=P or qs[(2,3,5).index(q)]!=Q:continue
                    seen.add(n);counts['exact_pairs']+=1
                    if prod(qs)**2>n**3:out.add(n)
    return sorted(out),counts

def spf(N):
    a=list(range(N+1))
    for p in range(2,isqrt(N)+1):
        if a[p]==p:
            for x in range(p*p,N+1,p):
                if a[x]==x:a[x]=p
    return a

def val(n,j,p):
    out=0;q=p
    while q<=n:out+=n//q-j//q-(n-j)//q;q*=p
    return out

def cover(n,small_primes):
    # Factor only seven short-window integers. Never allocate a sieve up to n.
    primes=set()
    for r in range(7):
        x=n-r
        for p in small_primes:
            if p*p>x:break
            if x%p==0:
                if p>=7:primes.add(p)
                while x%p==0:x//=p
        if x>=7:primes.add(x)
    layers=[]
    for p in sorted(primes):
        if val(n,7,p):
            q=p
            while q<=n:layers.append((p,q,n%q));q*=p
    j=8;hi=n//2;ans=[]
    while j<=hi:
        options=[(min(hi,j+q-1-j%q),-p,-q) for p,q,r in layers if j%q>r]
        if not options:raise ValueError(('uncovered actual input',n,j))
        end,p,q=max(options);ans.append([j,end,-p,-q]);j=end+1
    return [7,n,ans]

def families():
    src=json.loads((ROOT/'sources/previous-families.json').read_text());out=json.loads(json.dumps(src));closed={(0,2,4),(0,2,5),(0,2,6)}
    rr=[r for r in src['7']['roles'] if tuple(sorted(r['positions'].values())) not in closed]
    cs={str(p):sorted({c for r in rr if r['zero_prime']==p for c in r['allowed_coefficients']}) for p in (2,3,5)}
    out['7']={'removed_this_round':[list(H)for H in sorted(closed)],'remaining_H':[H for H in src['7']['remaining_H'] if tuple(H) not in closed],'roles':rr,'coefficients':cs,'family_count':sum(map(len,cs.values()))}
    return out

def main(out):
    out=Path(out);out.mkdir(exist_ok=True,parents=True);cases=[];rowsets=[]
    certs=json.loads((ROOT/'evidence/height_certificates.json').read_text())
    for cert in certs:
        H=tuple(cert['H']);E=cert['height_exponent'];mm=mask(H);high,counts=recover(mm,H,E)
        low=[n for n in range(16,LOWER) if mm[n%1800]];term=[];gc={'QIG':0,'SIXG':0}
        for n in low+high:
            gg=gaps(n)
            if gg:gc[gg]+=1
            else:term.append(n)
        limit=isqrt(max(term,default=2)); table=spf(limit); small_primes=[p for p in range(2,limit+1) if table[p]==p]; rows=[cover(n,small_primes) for n in term]
        dom={'m':7,'H':list(H),'height_exponent':E,'mass_threshold':LOWER,'period':1800,'residue_count':sum(mm),'mask_sha256':hashlib.sha256(mm).hexdigest(),'low_count':len(low),'low_sha256':sha_rows(low),'high':high,'generation_stats':counts,'gap_counts':gc,'terminal_rows':term,'interval_count':sum(len(z) for _,_,z in rows),'covered_configurations':sum(n//2-7 for n in term)}
        cases.append(dom);rowsets.append({'H':list(H),'rows':rows})
        print(json.dumps({k:dom[k] for k in ('H','height_exponent','low_count','high','terminal_rows','interval_count','covered_configurations')},ensure_ascii=False),flush=True)
    for name,data in [('domains.json',cases),('rows.json',rowsets),('families.json',families())]:
        (out/name).write_text(json.dumps(data,separators=(',',':'),ensure_ascii=False)+'\n')
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));main(ap.parse_args().out)
