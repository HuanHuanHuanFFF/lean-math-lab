#!/usr/bin/env python3
"""Generate a finite 2-adic-stratum certificate. SymPy is generation-only."""
from __future__ import annotations
import argparse, json, math, time
from pathlib import Path
from sympy import factorint

def icbrt(n: int) -> int:
    lo, hi = 0, 1
    while hi**3 <= n:
        hi *= 2
    while hi-lo > 1:
        m = (lo+hi)//2
        if m**3 <= n: lo=m
        else: hi=m
    return lo

def deleted3(x: int) -> int:
    return 3 if x % 3 == 0 and x % 9 != 0 else 1

def row_params(n: int):
    lam, mu, delta = deleted3(n-1), deleted3((n-2)//2), deleted3(n)
    return lam, mu, delta, (n-1)//lam, (n-2)//(2*mu)

def roots01(factors):
    roots, m = [0], 1
    for p,e in factors:
        q=p**e
        inverse=pow(m,-1,q)
        roots=[r+m*((s-r)*inverse % q) for r in roots for s in (0,1)]
        m*=q
    return sorted(roots)

def alpha_shape(n: int, j: int):
    g=math.gcd(n,j); alpha=n//g
    s=(alpha & -alpha).bit_length()-1
    c=alpha >> s
    return s>=1 and c in (1,3) and (c!=3 or (n%3==0 and n%9!=0))

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--vmax',type=int,default=36);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();args.output.mkdir(parents=True,exist_ok=True)
    t0=time.monotonic(); rows=[]; primes=set(); candidates=[]; counts={'uniform_rows':0,'analytic_exclusions':0,'certified_rows':0,'crt_roots':0,'legal_first_projection':0,'alpha_shape':0,'both_projections_and_alpha':0}
    for v in range(2,args.vmax+1):
        bound=icbrt((27*((1<<v)+4)-1)//128)
        for m in range(1,bound+1,2):
            n=m*(1<<v)
            if n<8: continue
            counts['uniform_rows']+=1
            lam,mu,delta,N,K=row_params(n)
            if 128*m**4*(n-1)**3 >= delta**3*lam**3*mu**2*n**4:
                counts['analytic_exclusions']+=1;continue
            factors=sorted((int(p),int(e)) for p,e in factorint(N).items())
            if math.prod(p**e for p,e in factors)!=N: raise RuntimeError('incomplete factorization')
            rows.append([v,m,factors]);primes.update(p for p,e in factors);counts['certified_rows']+=1
            roots=roots01(factors);counts['crt_roots']+=len(roots)
            for r in roots:
                for lift in range(1+lam//2):
                    j=r+lift*N
                    if not 4<=j<=n//2:continue
                    counts['legal_first_projection']+=1
                    if not alpha_shape(n,j):continue
                    counts['alpha_shape']+=1
                    rem=j*(j-1)*(j-2)%K
                    candidates.append([n,j,rem])
                    if rem==0:counts['both_projections_and_alpha']+=1
        (args.output/'progress.json').write_text(json.dumps({'completed_v':v,'counts':counts,'elapsed':time.monotonic()-t0},indent=2))
    if counts['both_projections_and_alpha']:
        (args.output/'survivors.json').write_text(json.dumps([x for x in candidates if x[2]==0],indent=2))
        raise RuntimeError('necessary-condition survivors require additional proof')
    certs={}
    def pratt(p):
        if p in certs:return
        if p==2:certs[p]={'a':1,'factors':[]};return
        fs=sorted((int(q),int(e)) for q,e in factorint(p-1).items())
        if math.prod(q**e for q,e in fs)!=p-1: raise RuntimeError('incomplete p-1')
        for q,e in fs:pratt(q)
        a=2
        while not (pow(a,p-1,p)==1 and all(math.gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,e in fs)):
            a+=1
            if a>=p: raise RuntimeError('no order witness')
        certs[p]={'a':a,'factors':fs}
    for p in sorted(primes):pratt(p)
    certificate={'version':1,'vmax':args.vmax,'rows':rows,'primes':{str(p):certs[p] for p in sorted(certs)}}
    (args.output/'finite-certificate.json').write_text(json.dumps(certificate,separators=(',',':'))+'\n')
    (args.output/'projection-candidates.json').write_text(json.dumps(candidates,separators=(',',':'))+'\n')
    summary={**counts,'prime_certificates':len(certs),'max_n':max(m*(1<<v) for v,m,fs in rows),'generation_seconds':time.monotonic()-t0}
    (args.output/'generation.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary))
if __name__=='__main__': main()
