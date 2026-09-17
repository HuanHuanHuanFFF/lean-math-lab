#!/usr/bin/env python3
"""Generate NEW H02/H023 low tails and H02 high tail. Sympy only discovers factors.
The independent standard-library checker proves all primalities and domain coverage.
No historical verification chain is run.
"""
from pathlib import Path
from itertools import product
from math import gcd,prod,isqrt
import json,time,argparse
from sympy import factorint
ROOT=Path(__file__).resolve().parents[1]
N5=(1<<132)*60**7

def pp(x,p):
 q=1
 while x%p==0:x//=p;q*=p
 return q

def small(x,m):
 z=1
 for p in ((2,3) if m==5 else (2,3,5)):
  q=pp(x,p);z*=q;x//=q
 if x%m==0 and x%(m*m):z*=m
 return z

def scalar(n,m):
 t=prod(small(n-r,m)for r in range(4))
 if t**6*(3*n*n-12*n+8)<(1<<20)*(n-1)**6*(n-3)**3:return 'QIG'
 if m==7:
  t=prod(small(n-r,7)for r in range(6))
  if t**4*(3*n*n-20*n+24)<(1<<18)*27*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
 return None

def in_position(n,m):
 if m==5:return n%72 in (18,56)
 return all(max(pp(n-r,p)for r in range(7))==max(pp(n-r,p)for r in (0,2,3))for p in (2,3,5))

def vpbin(n,j,p):
 v=0;q=p
 while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
 return v

def carry(n,m):
 ps=set()
 for r in range(m):
  ps.update(int(p)for p in factorint(n-r)if p>=m)
 options=[]
 for p in sorted(ps):
  if vpbin(n,m,p)==0:continue
  q=p
  while q<=n:options.append((p,q,n%q));q*=p
 low=m+1;iv=[]
 while low<=n//2:
  hits=[]
  for p,q,a in options:
   b=low%q
   if b>a:hits.append((min(n//2,low+q-1-b),-p,-q))
  if not hits:raise ValueError(('uncovered',m,n,low))
  hi,negp,negq=max(hits);iv.append([low,hi,-negp,-negq]);low=hi+1
 return {'m':m,'n':n,'intervals':iv}

def h02_high():
 powers=[]
 for p,start in ((2,8),(3,9)):
  a=[];q=start
  while q<N5:a.append(q);q*=p
  powers.append(a)
 counts=dict(pairs=0,positions=0,in_range=0,position=0,exact=0);ns=set()
 for P,Q in product(*powers):
  counts['pairs']+=1;inv=pow(P,-1,Q)
  for r,s in ((0,2),(2,0)):
   counts['positions']+=1;n=r+P*((s-r)*inv%Q)
   if not 11125<=n<N5:continue
   counts['in_range']+=1
   if n%72 not in (18,56):continue
   counts['position']+=1
   if (n-r)%(2*P)==0 or(n-s)%(3*Q)==0:continue
   counts['exact']+=1
   if scalar(n,5) is None:ns.add(n)
 return counts,sorted(ns)

def alpha_templates(n):
 p=2 if n%72==56 else 3
 cs=(1,5)if p==2 else(1,2,5,10);q=1;out=[];all_count=0
 while n%q==0:
  for c in cs:
   al=c*q
   if al<2 or n%al or (c%5==0 and pp(n,5)!=5):continue
   all_count+=1;g=n//al
   if not(g**7<(1<<22)*n and 8*g**5<625*n):continue
   if 4*(n-1)>small(n-1,5)*al*al:continue
   out.append((al,g))
  q*=p
 return all_count,sorted(out)

def crt_roots(al,fs):
 vs=[0];mod=1
 for p,e in fs:
  q=p**e;inv=pow(mod,-1,q)
  vs=[v+mod*((a-v)*inv%q)for v in vs for a in (0,al)];mod*=q
 return mod,sorted(vs)

def norm_check(rows):
 stats=dict(rows=len(rows),alpha_templates=0,bound_pass=0,crt_roots=0,legal_betas=0,norm_pass=0);details=[]
 for n in rows:
  num,als=alpha_templates(n);stats['alpha_templates']+=num;stats['bound_pass']+=len(als)
  d={'n':n,'templates':[]}
  if als:
   q1=(n-1)//small(n-1,5);fs=sorted((int(p),int(e))for p,e in factorint(q1).items());d.update(q1=q1,factors=fs)
   for al,g in als:
    mod,rs=crt_roots(al,fs);stats['crt_roots']+=len(rs);bs=[]
    for z in rs:
     lo=max(1,(6+g-1)//g);start=z+max(0,(lo-z+mod-1)//mod)*mod
     for b in range(start,al//2+1,mod):
      if gcd(al,b)!=1:continue
      stats['legal_betas']+=1;bad=[]
      for r in range(1,5):
       q=(n-r)//small(n-r,5);a=prod(r*b-h*al for h in range(r+1))
       if a%q:bad.append(r)
      if not bad:stats['norm_pass']+=1
      bs.append({'beta':b,'failed_rows':bad})
    d['templates'].append({'alpha':al,'g':g,'betas':sorted(bs,key=lambda z:z['beta'])})
  details.append(d)
 assert stats['norm_pass']==0
 return {'stats':stats,'rows':details}

def prime_certs(seeds):
 cert={}
 def visit(p):
  if str(p)in cert:return
  if p==2:cert['2']={'p':2,'factors':[],'witness':1};return
  fs=sorted((int(q),int(e))for q,e in factorint(p-1).items())
  for q,_ in fs:visit(q)
  a=2
  while not(pow(a,p-1,p)==1 and all(gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,_ in fs)):a+=1
  cert[str(p)]={'p':p,'factors':fs,'witness':a}
 for p in sorted(seeds):visit(p)
 return cert

def main(dest):
 st=time.time();dest.mkdir(parents=True,exist_ok=True);low={};seeds=set()
 for m,cut in ((5,11125),(7,1<<18)):
  counts=dict(position_rows=0,QIG=0,SIXG=0,carry_rows=0);rows=[]
  for n in range(2*(m+1),cut):
   if not in_position(n,m):continue
   counts['position_rows']+=1;s=scalar(n,m)
   if s:counts[s]+=1
   else:rows.append(carry(n,m))
  counts.update(carry_rows=len(rows),intervals=sum(len(z['intervals'])for z in rows),covered=sum(z['n']//2-m for z in rows))
  for z in rows:seeds.update(q[2]for q in z['intervals'])
  low[str(m)]={'cutoff':cut,'counts':counts,'rows':rows}
 highstats,highrows=h02_high();norm=norm_check(highrows)
 for z in norm['rows']:
  seeds.update(p for p,e in z.get('factors',[]))
 data={'format':1,'H02_height':str(N5),'H023_height_exponent':886,'low':low,'H02_high':{'counts':highstats,'post_QIG':highrows,'norm':norm},'primes':prime_certs(seeds)}
 (dest/'finite_certificate.json').write_text(json.dumps(data,indent=2)+'\n')
 counts={'low':{m:d['counts']for m,d in low.items()},'H02_high':highstats,'H02_NORM':norm['stats'],'prime_nodes':len(data['primes']),'max_prime':max(int(p)for p in data['primes'])}
 (dest/'finite_generation_counts.json').write_text(json.dumps(counts,indent=2)+'\n');print(json.dumps(counts), 'seconds',time.time()-st)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,default=ROOT/'evidence');args=ap.parse_args();main(args.out)
