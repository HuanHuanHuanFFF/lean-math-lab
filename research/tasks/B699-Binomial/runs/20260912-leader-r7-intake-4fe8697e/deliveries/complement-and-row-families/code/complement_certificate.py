#!/usr/bin/env python3
"""Exact complete candidate enumeration for complementary d/e consumers.

No large binomial C(n,j), no factorization, no probabilistic primality test.
Coverage is justified by the accompanying paper proof, not by this program alone.
"""
from __future__ import annotations
import argparse,hashlib,json,math,time
from pathlib import Path

def c3(x:int)->int:return x*(x-1)*(x-2)//6

def content_quotient(n:int,j:int)->tuple[int,int]:
    k=n-j
    coeff=[c3(j), j*k*(k-1)//2, j*(j-1)*k//2,c3(k)]
    H=math.gcd(*coeff);A=c3(n)
    assert H>0 and A%H==0
    return H,A//H

def oddpart(x:int)->int:
    assert x>0
    return x//(x&-x)

def powers(c:int,g:int,N:int):
    s=2;n=4*c*g
    while n<=N:
        yield s,n,n//g
        s+=1;n*=2

def accept_row(n:int,g:int,alpha:int,c:int,s:int,beta:int,d:int,e:int,h:int):
    gamma=alpha-beta;j=g*beta
    if not (4<=j and 2*j<n):return None
    if math.gcd(alpha,beta)!=1:return None
    if math.gcd(gamma,n-1)!=d or gamma!=d*e:return None
    H,L=content_quotient(n,j)
    return dict(n=n,j=j,g=g,c=c,s=s,alpha=alpha,beta=beta,gamma=gamma,dplus=d,eplus=e,h=h,H=H,L=L,odd_L=oddpart(L))

def generate_e(e:int):
    rows=[];stats=dict(power_states=0,h_tests=0,divisor_hits=0)
    # g^2 < 41*e^3 and n < 123*e^6+2.
    G=math.isqrt(41*e**3-1);N=123*e**6+1
    for c in (1,3):
      for g in range(1,G+1):
        if c==3 and g%3==0:continue
        # Stronger exact bound retained, but not relied on for the outer range.
        for s,n,alpha in powers(c,g,N):
          stats['power_states']+=1
          if c*(n-2)>=3*g*g*e**3:continue
          if 2*c**5*g**4>=81*g*g*e**3+54*c:continue
          tau=g*e
          for h in range(tau+1,2*tau):
            stats['h_tests']+=1
            if h%2==0 or (n-1)%h:continue
            stats['divisor_hits']+=1
            d=(n-1)//h;gamma=d*e;beta=alpha-gamma
            row=accept_row(n,g,alpha,c,s,beta,d,e,h)
            if row is not None:rows.append(row)
    rows.sort(key=lambda r:(r['n'],r['j']))
    assert len({(r['n'],r['j']) for r in rows})==len(rows)
    return dict(parameter=e,G=G,N=N,stats=stats,rows=rows,
                rejected_by_odd_L=sum(r['odd_L']>1 for r in rows),
                unresolved=[r for r in rows if r['odd_L']==1])

def generate_d(d:int):
    rows=[];stats=dict(power_states=0,beta_tests=0)
    N=27*d**3+1;G=2*d-1
    for c in (1,3):
      for g in range(1,G+1):
        if c==3 and g%3==0:continue
        for s,n,alpha in powers(c,g,N):
          stats['power_states']+=1
          if n<8 or (n-1)%d:continue
          h=(n-1)//d
          # h | 3 beta, with h positive.
          step=h//math.gcd(h,3)
          for beta in range(step,alpha//2,step):
            stats['beta_tests']+=1
            gamma=alpha-beta
            if gamma%d:continue
            e=gamma//d
            row=accept_row(n,g,alpha,c,s,beta,d,e,h)
            if row is not None:rows.append(row)
    rows.sort(key=lambda r:(r['n'],r['j']))
    assert len({(r['n'],r['j']) for r in rows})==len(rows)
    return dict(parameter=d,G=G,N=N,stats=stats,rows=rows,
                rejected_by_odd_L=sum(r['odd_L']>1 for r in rows),
                unresolved=[r for r in rows if r['odd_L']==1])

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--max-cofactor',type=int,choices=(1,3,5,7),default=7);ap.add_argument('--output-dir',type=Path,required=True)
    args=ap.parse_args();assert args.max_cofactor in (1,3,5,7)
    args.output_dir.mkdir(parents=True,exist_ok=True);start=time.monotonic();summary=[];terminal=[]
    for kind,fun in [('dplus',generate_d),('eplus',generate_e)]:
      for a in range(1,args.max_cofactor+1,2):
        t=time.monotonic();res=fun(a);elapsed=time.monotonic()-t
        text=json.dumps(res,sort_keys=True,indent=2)+'\n'
        path=args.output_dir/f'{kind}_{a}.json';path.write_text(text)
        s={k:v for k,v in res.items() if k not in ('rows','unresolved')}
        s.update(kind=kind,candidates=len(res['rows']),unresolved_count=len(res['unresolved']),seconds=elapsed,file=path.name,sha256=hashlib.sha256(text.encode()).hexdigest())
        summary.append(s);print(json.dumps(s,sort_keys=True),flush=True)
        for row in res['rows']:
            nn,jj=row['n'],row['j']
            r1=3*jj*(jj-1)%(nn-1);r2=6*jj*(jj-1)*(jj-2)%(nn-2)
            if r1==0:
                terminal.append(dict(group=f'{kind}_{a}',**row,P1_remainder=r1,P2_remainder=r2))
    out=dict(status='PASS' if all(r['unresolved_count']==0 for r in summary) else 'UNRESOLVED',method='complete canonical candidates + Vandermonde content quotient',max_cofactor=args.max_cofactor,total_seconds=time.monotonic()-start,groups=summary)
    (args.output_dir/'TERMINAL.json').write_text(json.dumps(dict(status='PASS' if all(r['P2_remainder'] for r in terminal) else 'FAIL',records=terminal),sort_keys=True,indent=2)+'\n')
    (args.output_dir/'SUMMARY.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='groups'},indent=2))
if __name__=='__main__':main()
