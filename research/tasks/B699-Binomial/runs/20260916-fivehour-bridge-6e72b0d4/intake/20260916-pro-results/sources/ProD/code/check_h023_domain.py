#!/usr/bin/env python3
"""Independent full-seven-window recovery; reverse CRT, then least residue.
Does not import generators. Parameters partition outer powers; completeness is
checked by assemble_checks.py. No finite prefix is extrapolated.
"""
from pathlib import Path
from itertools import permutations
from math import prod
import argparse,json,time,hashlib
ROOT=Path(__file__).resolve().parents[1]

def val(x,p):
 e=0
 while x%p==0:e+=1;x//=p
 return e

def allowed():
 local=[]
 for p,mod in((2,8),(3,9),(5,25)):
  a=[]
  for x in range(mod):
   values=[(val(mod,p)if (x-r)%mod==0 else val((x-r)%mod,p))for r in range(7)]
   a.append(max(values)==max(values[r]for r in(0,2,3)))
  local.append((mod,a))
 return [all(a[n%mod]for mod,a in local)for n in range(1800)]

def powers(p,N):
 a=[];q=p
 while q<N:
  if p!=2 or q>=4:a.append(q)
  q*=p
 return a

def check(p,q,start,end):
 assert(p,q)in((2,3),(2,5),(3,5));N=1<<886;T=1<<18;tab=powers(p,N);other=powers(q,N);mask=allowed()
 end=min(end,len(tab));assert 0<=start<end<=len(tab)
 counts={'pairs':0,'positions':0,'range':0,'full_H023':0,'exact_pair':0,'mass_survivors':0};survive=set()
 for P in tab[start:end]:
  for Q in other:
   counts['pairs']+=1;inv=pow(Q,-1,P)
   for r,s in permutations((0,2,3),2):
    counts['positions']+=1
    n=(s+Q*((r-s)*inv%P))%(P*Q)
    if not T<=n<N:continue
    counts['range']+=1
    if not mask[n%1800]:continue
    counts['full_H023']+=1
    if (n-r)%(P*p)==0 or(n-s)%(Q*q)==0:continue
    if P<=6 and max(p**val(n-h,p)for h in range(7))!=P:continue
    if Q<=6 and max(q**val(n-h,q)for h in range(7))!=Q:continue
    counts['exact_pair']+=1
    M=prod(t**max(val(n-h,t)for h in range(7))for t in(2,3,5))
    if M*M>n**3:counts['mass_survivors']+=1;survive.add(n)
 assert not survive
 return {'status':'PASS_H023_DOMAIN_CHUNK','primes':[p,q],'outer_indices':[start,end],'outer_length':len(tab),'inner_length':len(other),'N_exponent':886,'cutoff_exponent':18,'counts':counts,'candidates':sorted(survive)}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('p',type=int);ap.add_argument('q',type=int);ap.add_argument('start',type=int);ap.add_argument('end',type=int);ap.add_argument('--outdir',type=Path,default=ROOT/'evidence/high_check');args=ap.parse_args();st=time.time()
 obj=check(args.p,args.q,args.start,args.end);args.outdir.mkdir(parents=True,exist_ok=True);path=args.outdir/f'{args.p}-{args.q}-{args.start}-{args.end}.json';path.write_text(json.dumps(obj,indent=2)+'\n');print(obj,'seconds',time.time()-st,flush=True)
