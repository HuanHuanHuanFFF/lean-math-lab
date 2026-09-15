#!/usr/bin/env python3
"""New bounded H034 domain only. Adapts frozen two-power recovery; no old replay."""
from pathlib import Path
from itertools import combinations, permutations
from math import prod, isqrt
import json, hashlib, argparse
ROOT=Path(__file__).resolve().parents[1]
M=7; H=(0,3,4); LOWER=262144; EXPONENT=311

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

def mask():
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

def recover(mm):
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

def cover(n,table):
    primes=set()
    for r in range(7):
        x=n-r
        while x>1:
            p=table[x]
            if p>=7:primes.add(p)
            while x%p==0:x//=p
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
    src=json.loads((ROOT/'sources/previous-residual_families.json').read_text());out={}
    for m,closed in [(5,{0,3}),(7,{0,3,4})]:
        rr=[r for r in src[str(m)]['roles'] if set(r['positions'].values())!=closed]
        cs={str(p):sorted({c for r in rr if r['zero_prime']==p for c in r['allowed_coefficients']}) for p in ((2,3) if m==5 else (2,3,5))}
        out[str(m)]={'removed_H':sorted(closed),'remaining_H':[H for H in src[str(m)]['remaining_H'] if set(H)!=closed],'roles':rr,'coefficients':cs,'family_count':sum(map(len,cs.values()))}
    return out

def main(out):
    out=Path(out);out.mkdir(exist_ok=True,parents=True);mm=mask();high,counts=recover(mm)
    low=[n for n in range(16,LOWER) if mm[n%1800]];term=[];gc={'QIG':0,'SIXG':0}
    for n in low+high:
        gg=gaps(n)
        if gg:gc[gg]+=1
        else:term.append(n)
    table=spf(max(term));rows=[cover(n,table) for n in term]
    dom={'m':7,'H':list(H),'height_exponent':EXPONENT,'mass_threshold':LOWER,'period':1800,'residue_count':sum(mm),'mask_sha256':hashlib.sha256(mm).hexdigest(),'low_count':len(low),'low_sha256':sha_rows(low),'high':high,'generation_stats':counts,'gap_counts':gc,'terminal_rows':term,'interval_count':sum(len(z) for _,_,z in rows),'covered_configurations':sum(n//2-7 for n in term)}
    for name,data in [('domains.json',dom),('rows.json',rows),('families.json',families())]:
        (out/name).write_text(json.dumps(data,separators=(',',':'),ensure_ascii=False)+'\n')
    print(json.dumps({k:dom[k] for k in ('low_count','high','terminal_rows','interval_count','covered_configurations')},ensure_ascii=False))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));main(ap.parse_args().out)
