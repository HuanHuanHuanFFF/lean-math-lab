#!/usr/bin/env python3
"""Independent integer acceptance: reconstruct the entire finite divisor domain.
No import of generate.py, old packages, external number theory software, or network.
"""
from __future__ import annotations
import argparse,json,math,time
from collections import Counter
from functools import lru_cache
from pathlib import Path

def require(ok:bool,reason:str)->None:
    if not ok: raise ValueError(reason)

def integer(x:object)->bool: return type(x) is int

@lru_cache(None)
def prime(p:int)->bool:
    if p<2: return False
    if p%2==0: return p==2
    return all(p%d for d in range(3,math.isqrt(p)+1,2))

def valuation(x:int,p:int)->int:
    require(x>0 and p>=2,'valuation domain')
    e=0
    while x%p==0: x//=p;e+=1
    return e

def lcm_bound(m:int)->int:
    z=1
    for p in range(2,m+1):
        if prime(p):
            power=p
            while power*p<=m: power*=p
            z*=power
    return z

def sm(m:int,x:int)->int:
    require(x>0,'positive full window')
    y=math.prod(p**valuation(x,p) for p in range(2,m) if prime(p))
    if prime(m) and valuation(x,m)==1: y*=m
    return y

@lru_cache(None)
def norm(m:int,a:int,b:int,r:int)->int:
    require(a>=2 and 1<=b<=a//2 and math.gcd(a,b)==1,'reduced fraction')
    require(1<=r<m and r%a!=0,'nonzero-norm row')
    B=1
    for h in range(r+1):
        v=abs(r*b-a*h)
        require(v>0,'a zero product cannot bound a divisor')
        B*=v
    for p in range(2,m):
        if prime(p):
            while B%p==0: B//=p
    return B

def free_domain(m:int,a:int)->tuple[list[int],int]:
    ps=[p for p in range(2,m) if prime(p) and math.gcd(a,p)==1]
    rs=[1]+ps;R=rs[-1];D=1
    for p in ps:
        power=p
        while power<=R: D*=p;power*=p
    if prime(m) and a%m!=0: D*=m
    return rs,D

def positive_divisors(fs:list[list[int]]):
    # Reversed recursive traversal, rather than the generator's growing arrays.
    def rec(k:int,z:int):
        if k<0:
            yield z;return
        p,e=fs[k];q=p**e
        for _ in range(e+1):
            yield from rec(k-1,z*q);q//=p
    yield from rec(len(fs)-1,1)

def check_factors(fs:object,W:int,limit:int)->None:
    require(isinstance(fs,list),'factor list')
    prev=1;product=1
    for item in fs:
        require(isinstance(item,list) and len(item)==2,'factor pair')
        p,e=item
        require(integer(p) and integer(e) and prev<p<=limit and 1<=e<=128,'canonical bounded factors')
        require(prime(p),'all factor bases must be proved prime')
        product*=p**e;prev=p
    require(product==W,'complete prime-power factorization')

def check_target(target:dict)->dict:
    require(isinstance(target,dict),'target record')
    m=target.get('m');require(integer(m) and 4<=m<=8,'target m range')
    L=lcm_bound(m);require(target.get('L')==L,'natural LCM, not an arbitrary scan limit')
    entries=target.get('templates');require(isinstance(entries,list),'templates list')
    table={}
    for item in entries:
        require(isinstance(item,list) and len(item)==5,'template shape')
        a,b,r,D,fs=item
        require(all(integer(z) for z in(a,b,r,D)),'template integers')
        key=(a,b,r);require(key not in table,'duplicate template')
        table[key]=(D,fs)
    expected=set();candidates=set();stat=Counter();upper=0;largest=0
    for a in range(2,L+1):
        if L%a!=0: continue
        stat['denominators']+=1;rs,D=free_domain(m,a)
        for b in range(1,a//2+1):
            if math.gcd(a,b)!=1: continue
            stat['reduced_fractions']+=1
            for r in rs:
                key=(a,b,r);expected.add(key)
                require(key in table,'missing free-position template')
                d,fs=table[key];require(d==D,'free-position small-part allowance')
                W=D*norm(m,a,b,r)
                check_factors(fs,W,L)
                upper=max(upper,W+r);largest=max(largest,max((p for p,e in fs),default=1))
                stat['free_templates']+=1
                for divisor in positive_divisors(fs):
                    stat['positive_divisors']+=1;n=divisor+r
                    if n%a: continue
                    j=(n//a)*b
                    if j<=m or 2*j>n: continue
                    if prime(m) and a%m==0 and n%(m*m)==0: continue
                    if D%sm(m,n-r): continue
                    stat['eligible_occurrences']+=1;candidates.add((n,a,b))
    require(set(table)==expected,'no missing or extra mathematical branches')
    supplied=target.get('rejections');require(isinstance(supplied,list),'rejection records')
    reject={}
    for x in supplied:
        require(isinstance(x,list) and len(x)==4 and all(integer(y) for y in x),'rejection row format')
        n,a,b,r=x;key=(n,a,b);require(key not in reject,'duplicate rejected candidate');reject[key]=r
    require(set(reject)==candidates,'complete candidate set, no samples or omissions')
    hist=Counter()
    for n,a,b in sorted(candidates):
        excluded=None
        for r in range(1,m):
            if r%a==0: continue
            q=(n-r)//sm(m,n-r);B=norm(m,a,b,r)
            stat['norm_divisions']+=1
            if B%q:
                excluded=r;break
        require(excluded is not None,'remaining complete necessary-system candidate')
        require(reject[n,a,b]==excluded,'first exact incompatible norm, with its full powers')
        hist[str(excluded)]+=1
    stat['unique_candidates']=len(candidates)
    stat['max_candidate_n']=max((n for n,a,b in candidates),default=0)
    stat['absolute_divisor_height']=upper
    stat['largest_factor_prime']=largest;stat['remaining']=0
    require(target.get('statistics')==dict(stat),'all arithmetic statistics must be reconstructed')
    require(target.get('rejection_row_histogram')==dict(hist),'rejection incidence')
    return {'m':m,'L':L,**dict(stat),'rejection_row_histogram':dict(hist)}

def check_certificate(data:dict)->dict:
    require(isinstance(data,dict) and integer(data.get('schema')) and data.get('schema')==1,'schema')
    require(data.get('theorem')=='LCM_DENOMINATOR_CLOSURE_I4_I8','theorem scope')
    require(data.get('small_part')=='remove all p<m powers; remove a single m only when m is prime','endpoint convention')
    targets=data.get('targets');require(isinstance(targets,list) and [x.get('m') for x in targets]==list(range(4,9)),'complete target domain')
    rows=[check_target(x) for x in targets]
    return {'status':'PASS_LCM_DENOMINATOR_CLOSURE','targets':rows,
            'totals':{key:sum(x[key] for x in rows) for key in
                      ('denominators','reduced_fractions','free_templates','positive_divisors','eligible_occurrences','unique_candidates','norm_divisions','remaining')},
            'evidence_level':'paper reduction plus exact finite domain; not Lean or external human review'}

def main(cert:Path,out:Path)->None:
    t=time.perf_counter();result=check_certificate(json.loads(cert.read_text(encoding='utf-8')))
    out.mkdir(parents=True,exist_ok=True)
    (out/'acceptance.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':result['status'],'totals':result['totals'],'seconds':time.perf_counter()-t},sort_keys=True))
if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--out',type=Path,required=True)
    a=ap.parse_args();main(a.certificate,a.out)
