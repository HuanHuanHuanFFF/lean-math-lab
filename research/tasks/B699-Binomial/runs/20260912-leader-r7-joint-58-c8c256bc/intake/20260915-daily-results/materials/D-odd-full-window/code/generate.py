#!/usr/bin/env python3
"""NEW proof-domain generator; standard library only, no historic replays."""
from pathlib import Path
from itertools import combinations,permutations
from math import prod,isqrt
import json,hashlib,argparse,time
ROOT=Path(__file__).resolve().parents[1]

def power(x,p):
    q=1
    while x%p==0:x//=p;q*=p
    return q

def small(x,m):
    s=1
    for p in (2,3,5,7):
        if p>=m:continue
        q=power(x,p);s*=q;x//=q
    if m in (5,7) and x%m==0 and x%(m*m)!=0:s*=m
    return s

def gap(n,m):
    ss=[small(n-r,m) for r in range(m)]
    T=prod(ss[:4]);num=T**6*(3*n*n-12*n+8);den=2**20*(n-1)**6*(n-3)**3
    if num<den:return 'QIG'
    if m>=6:
        T=prod(ss[:6]);num=T**4*(3*n*n-20*n+24);den=2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
        if num<den:return 'SIXG'
    if m>=8:
        T=prod(ss[:8]);R=6*n**4-89*n**3+462*n*n-1072*n+960
        if T**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3:return 'EIGHTG'
    return None

def primes_for(m):return [p for p in (2,3,5,7) if p<m]

def mask_for(c):
    m,d,H=c['target'],c['d'],c.get('H',[]);ps=primes_for(m);moduli=[];parts=[]
    for p in ps:
        modulus=p
        while modulus<d:modulus*=p
        moduli.append(modulus);part=[]
        for r in range(modulus):
            vv=[modulus if (r-h)%modulus==0 else power((r-h)%modulus,p) for h in range(d)]
            if c['kind']=='positions':part.append(max(vv)==max(vv[h] for h in H))
            else:part.append(max(vv)<=c['B'])
        parts.append(part)
    L=prod(moduli)
    if c['kind']=='positions':return bytes(all(t[n%q] for t,q in zip(parts,moduli)) for n in range(L))
    return bytes(any(t[n%q] for t,q in zip(parts,moduli)) for n in range(L))

def cases():
    dat=json.loads((ROOT/'evidence/height_certificates.json').read_text())
    out=[dict(c,kind='positions') for c in dat['cases']]
    for m,B in [(5,4),(7,6)]:
        r=dat['relative'][str(m)];N=(1<<(r['Kmax']+1))*B**r['Lmax']
        out.append({'id':f'm{m}_min{B}','kind':'bounded_min','target':m,'d':m,'H':list(range(m)), 'B':B,'N':str(N),'T':{5:11125,7:262144}[m]})
    return out

def high(c,mask):
    m,d,T,N=c['target'],c['d'],c['T'],int(c['N']);H=c['H'];ps=primes_for(m)
    powers={}
    for p in ps:
        powers[p]=[];q=p
        while q<N:powers[p].append(q);q*=p
    candidates=set();seen=set();stats={'power_pairs':0,'position_templates':0,'exact_pairs':0}
    if T>=N:return [],stats
    for p,q in combinations(ps,2):
        for P in powers[p]:
            for Q in powers[q]:
                stats['power_pairs']+=1
                if P*Q<=T:continue
                if c['kind']=='bounded_min' and m==7 and min(P,Q)<=c['B']:continue
                inv=pow(P,-1,Q)
                for r,s in permutations(H,2):
                    stats['position_templates']+=1;n=r+P*((s-r)*inv%Q)
                    if not (T<=n<N and n<P*Q) or n in seen or not mask[n%len(mask)]:continue
                    if c['kind']=='bounded_min' and m==7 and (P*Q*c['B'])**2<=n**3:continue
                    if (n-r)%(P*p)==0 or (n-s)%(Q*q)==0:continue
                    vals=[max(power(n-h,t) for h in range(d)) for t in ps]
                    if vals[ps.index(p)]!=P or vals[ps.index(q)]!=Q:continue
                    seen.add(n);stats['exact_pairs']+=1
                    if c['kind']=='bounded_min' and min(vals)>c['B']:continue
                    M=prod(vals)
                    if M>n if m==5 else M*M>n**3 if m==7 else M>n*n:candidates.add(n)
    return sorted(candidates),stats

def digest(values):
    h=hashlib.sha256()
    for n in values:h.update((str(n)+'\n').encode())
    return h.hexdigest()

def spf_table(N):
    a=list(range(N+1));a[0:2]=[0,1]
    for p in range(2,isqrt(N)+1):
        if a[p]==p:
            for k in range(p*p,N+1,p):
                if a[k]==k:a[k]=p
    return a

def choose_val(n,k,p):
    e=0;Q=p
    while Q<=n:e+=n//Q-k//Q-(n-k)//Q;Q*=p
    return e

def row_cover(n,m,spf):
    primes=set()
    for r in range(m):
        x=n-r
        while x>1:
            p=spf[x]
            if p>=m:primes.add(p)
            while x%p==0:x//=p
    layers=[]
    for p in sorted(primes):
        if choose_val(n,m,p)>0:
            Q=p
            while Q<=n:layers.append((p,Q,n%Q));Q*=p
    j=m+1;last=n//2;cover=[]
    while j<=last:
        candidates=[]
        for p,Q,r in layers:
            a=j%Q
            if a>r:candidates.append((min(last,j+Q-1-a),-p,-Q))
        if not candidates:raise ValueError(('uncovered',m,n,j))
        hi,mp,mQ=max(candidates);cover.append([j,hi,-mp,-mQ]);j=hi+1
    return [m,n,cover]

def main(out):
    start=time.monotonic();out=Path(out);out.mkdir(parents=True,exist_ok=True)
    domains=[];terminals=set()
    for c in cases():
        mask=mask_for(c);low=[n for n in range(2*(c['target']+1),min(c['T'],int(c['N']))) if mask[n%len(mask)]]
        hh,stats=high(c,mask);allrows=low+hh
        gc={'QIG':0,'SIXG':0,'EIGHTG':0};terminal=[]
        for n in allrows:
            label=gap(n,c['target'])
            if label:gc[label]+=1
            else:terminal.append(n);terminals.add((c['target'],n))
        domains.append({'id':c['id'],'period':len(mask),'residues':sum(mask),'low_count':len(low),'low_sha256':digest(low),'high':hh,'high_stats':stats,'gap_counts':gc,'terminal_rows':terminal})
        print(c['id'],'low',len(low),'high',len(hh),'terminal',len(terminal),'max',max(terminal,default=0),flush=True)
    max_n=max(n for m,n in terminals)
    if max_n>10000000:raise ValueError(('large residual requires a separate certificate',max_n))
    spf=spf_table(max_n);covers=[row_cover(n,m,spf) for m,n in sorted(terminals)]
    stats={'cases':len(domains),'terminal_rows':len(covers),'terminal_rows_by_target':{str(m):sum(a==m for a,b,c in covers) for m in (5,7,8)},'max_terminal_n':max_n,'intervals':sum(len(c) for m,n,c in covers),'covered_target_inputs':sum(n//2-m for m,n,c in covers),'distinct_witness_primes':len({p for m,n,c in covers for a,b,p,Q in c}),'max_witness_prime':max(p for m,n,c in covers for a,b,p,Q in c),'high_templates':sum(c['high_stats']['position_templates'] for c in domains),'high_pairs':sum(c['high_stats']['power_pairs'] for c in domains)}
    for fn,ob in [('domains.json',domains),('rows.json',covers),('generation_counts.json',stats)]:
        (out/fn).write_text(json.dumps(ob,separators=(',',':'),ensure_ascii=False)+'\n')
    print(json.dumps(stats),'seconds',time.monotonic()-start,flush=True)
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--out',default=str(ROOT/'evidence'));a=ap.parse_args();main(a.out)
