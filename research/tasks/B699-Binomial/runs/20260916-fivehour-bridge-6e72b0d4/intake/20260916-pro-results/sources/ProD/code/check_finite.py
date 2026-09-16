#!/usr/bin/env python3
"""Independent integer checker: reversed CRT and idempotent beta roots.
Standard library only. Does not import generation or exploration code.
"""
from pathlib import Path
from math import gcd,prod
from itertools import product
import json,argparse,time
ROOT=Path(__file__).resolve().parents[1]

def exponent(x,p):
 e=0
 while x%p==0:e+=1;x//=p
 return e

def small(n,m):
 z=prod(p**exponent(n,p)for p in ((2,3)if m==5 else(2,3,5)))
 return z*(m if exponent(n,m)==1 else 1)

def scalar(n,m):
 t=prod(small(n-r,m)for r in range(4))
 if t**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3:return 'QIG'
 if m==7:
  t=prod(small(n-r,m)for r in range(6))
  if t**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2:return 'SIXG'
 return None

def position(n,m):
 if m==5:
  A=[exponent(n-r,2)for r in range(5)];B=[exponent(n-r,3)for r in range(5)]
  return max(A)>=3 and max(B)>=2 and ((A[0]==max(A)and B[2]==max(B))or(A[2]==max(A)and B[0]==max(B)))
 return all(max(exponent(n-r,p)for r in range(7))==max(exponent(n-r,p)for r in(0,2,3))for p in(2,3,5))

class Primes:
 def __init__(self,cert):self.cert=cert;self.done=set();self.visiting=set()
 def prove(self,p):
  if p in self.done:return
  assert isinstance(p,int)and p>=2 and p not in self.visiting
  self.visiting.add(p);d=self.cert[str(p)];assert d['p']==p
  if p==2:assert d=={'p':2,'factors':[],'witness':1}
  else:
   fs=d['factors'];assert fs==sorted(fs) and len({q for q,e in fs})==len(fs)
   assert all(2<=q<p and isinstance(e,int)and e>=1 for q,e in fs)
   for q,_ in fs:self.prove(q)
   assert prod(q**e for q,e in fs)==p-1
   a=d['witness'];assert 1<a<p and pow(a,p-1,p)==1
   assert all(gcd(pow(a,(p-1)//q,p)-1,p)==1 for q,e in fs)
  self.visiting.remove(p);self.done.add(p)

def binval(n,j,p):
 a,b,c=n,j,n-j;v=0
 while a:
  a//=p;b//=p;c//=p;v+=a-b-c
 return v

def check_cover(row,m,n,prime):
 assert row['m']==m and row['n']==n
 lo=m+1
 for a,b,p,q in row['intervals']:
  assert a==lo and a<=b<=n//2 and p>=m
  prime.prove(p);assert q>1
  t=q
  while t%p==0:t//=p
  assert t==1 and binval(n,m,p)>0
  assert a%q>n%q and b-a<=q-1-a%q
  lo=b+1
 assert lo==n//2+1

def high_rows():
 N=2**132*60**7
 p2=[2**a for a in range(3,N.bit_length())if 2**a<N]
 p3=[];q=9
 while q<N:p3.append(q);q*=3
 rows=set()
 for P,Q in product(p2,p3):
  inv=pow(Q,-1,P)
  for r,s in ((0,2),(2,0)):
   n=(s+Q*((r-s)*inv%P))%(P*Q)
   if not 11125<=n<N:continue
   if n%72 not in(18,56):continue
   if exponent(n-r,2)!=exponent(P,2)or exponent(n-s,3)!=exponent(Q,3):continue
   if scalar(n,5)is None:rows.add(n)
 return sorted(rows)

def templates(n):
 # Enumerate all allowed small prime factors of alpha, rather than role lists.
 out=[];count=0
 for a in range(exponent(n,2)+1):
  for b in range(exponent(n,3)+1):
   for c in range(2 if exponent(n,5)==1 else 1):
    al=2**a*3**b*5**c
    if al<2:continue
    assert n%al==0;count+=1;g=n//al
    if 8*g**5>=625*n or g**7>=2**22*n:continue
    if 4*(n-1)>small(n-1,5)*al*al:continue
    out.append((al,g))
 return count,sorted(out)

def norm_rows(data,rows,prime):
 assert [d['n']for d in data['rows']]==rows
 stats=dict(rows=len(rows),alpha_templates=0,bound_pass=0,crt_roots=0,legal_betas=0,norm_pass=0)
 for n,d in zip(rows,data['rows']):
  num,ts=templates(n);stats['alpha_templates']+=num;stats['bound_pass']+=len(ts)
  assert [(t['alpha'],t['g'])for t in d['templates']]==ts
  if not ts:continue
  fs=d['factors'];assert fs==sorted(fs)and len(fs)==len({p for p,e in fs})
  for p,e in fs:prime.prove(p);assert e>=1
  mod=(n-1)//small(n-1,5);assert d['q1']==mod and prod(p**e for p,e in fs)==mod
  ids=[(mod//(p**e))*pow(mod//(p**e),-1,p**e)for p,e in fs]
  for (al,g),t in zip(ts,d['templates']):
   assert gcd(al,mod)==1
   roots=sorted({(al*sum(z*e for z,e in zip(bits,ids)))%mod for bits in product((0,1),repeat=len(ids))})
   assert len(roots)==2**len(ids);stats['crt_roots']+=len(roots);actual=[]
   low=max(1,(6+g-1)//g);high=al//2
   for z in roots:
    f=(low-z+mod-1)//mod;l=(high-z)//mod
    for k in range(f,l+1):
     beta=z+k*mod
     if gcd(beta,al)!=1:continue
     assert 6<=g*beta<=n//2;stats['legal_betas']+=1
     bad=[]
     for r in range(1,5):
      q=(n-r)//small(n-r,5);v=prod(r*beta-b*al for b in range(r+1))
      if v%q:bad.append(r)
     assert bad
     actual.append({'beta':beta,'failed_rows':bad})
   assert sorted(actual,key=lambda z:z['beta'])==t['betas']
 assert stats==data['stats']
 return stats

def verify(data):
 assert data['format']==1 and data['H02_height']==str(2**132*60**7)and data['H023_height_exponent']==886
 assert 60**7<2**42 and 420**7<2**61
 # Precise inherited scalar-to-two-power constants.
 assert 11124*2**16>30**6
 assert 2**18*27*((1<<18)-45)>3*840**4
 prime=Primes(data['primes'])
 for p in data['primes']:prime.prove(int(p))
 lowstats={}
 for m,cut in((5,11125),(7,2**18)):
  d=data['low'][str(m)];assert d['cutoff']==cut
  counts=dict(position_rows=0,QIG=0,SIXG=0,carry_rows=0);expected=[]
  for n in range(2*(m+1),cut):
   if not position(n,m):continue
   counts['position_rows']+=1;s=scalar(n,m)
   if s:counts[s]+=1
   else:expected.append(n)
  assert [r['n']for r in d['rows']]==expected
  for n,row in zip(expected,d['rows']):check_cover(row,m,n,prime)
  counts.update(carry_rows=len(expected),intervals=sum(len(x['intervals'])for x in d['rows']),covered=sum(n//2-m for n in expected))
  assert counts==d['counts'];lowstats[str(m)]=counts
 rows=high_rows();assert rows==data['H02_high']['post_QIG']
 ns=norm_rows(data['H02_high']['norm'],rows,prime)
 return {'status':'PASS_FINITE_TAILS','low':lowstats,'high_norm':ns,'prime_nodes':len(prime.done),'all_primes_deterministic':True,'historical_g_bounds_replayed':False}
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,default=ROOT/'evidence/finite_certificate.json');ap.add_argument('--out',type=Path,default=ROOT/'evidence/finite_check.json');args=ap.parse_args();st=time.time()
 ans=verify(json.loads(args.certificate.read_text()));args.out.parent.mkdir(parents=True,exist_ok=True);args.out.write_text(json.dumps(ans,indent=2)+'\n');print(ans,'seconds',time.time()-st)
