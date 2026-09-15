"""Exact arithmetic shared by discovery utilities; verifier is separately implemented."""
from __future__ import annotations
from itertools import combinations,product
from math import prod,isqrt
import json
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
PS={4:(2,3),5:(2,3),6:(2,3,5),7:(2,3,5),8:(2,3,5,7)}

def valuation(x:int,p:int)->int:
 if x<=0 or p<2:raise ValueError('positive integer and base >=2 required')
 e=0
 while x%p==0:x//=p;e+=1
 return e

def iroot(n:int,k:int)->int:
 if n<0 or k<=0:raise ValueError('nonnegative radicand and positive degree required')
 if n==0:return 0
 lo=0;hi=1<<((n.bit_length()+k-1)//k)
 while lo+1<hi:
  mid=(lo+hi)//2
  if mid**k<=n:lo=mid
  else:hi=mid
 return hi if hi**k<=n else lo

def maxsets(n:int,d:int)->tuple[frozenset[int],...]:
 if n<d:raise ValueError('window must be positive')
 out=[]
 for p in PS[d]:
  vs=[valuation(n-r,p) for r in range(d)];v=max(vs)
  out.append(frozenset(r for r,x in enumerate(vs) if x==v))
 return tuple(out)

def covers(sets,H):
 H=set(H);return all(H & s for s in sets)

def small_constant(d,H,rows,endpoint=0):
 exps={p:max(sum(w*valuation(abs(r-h),p) for r,w in rows.items()) for h in H) for p in PS[d]}
 if endpoint:exps[endpoint]=max(rows.values())
 return prod(p**e for p,e in exps.items()),exps

def cutoff(d,H,axes,quad,rows,m):
 W=sum(rows.values());S=sum(axes);gap=W-2*S-2*quad
 if gap<=0:raise ValueError('positive degree gap required')
 C,e=small_constant(d,H,rows,m if m in (5,7) else 0)
 N=max(2*(d-1)*W,iroot((2*C)//4**S,gap)+1)
 return {'d':d,'m':m,'H':list(H),'axes':axes,'quad':quad,'rows':rows,'W':W,'S':S,'gap':gap,'C':C,'small_exponents':e,'cutoff':N}

def bounds():
 out=[]
 # Direct cancellation in q0^2 q1 | jk gives n <= C/4+1.
 for m,C,N in [(4,36,11),(5,900,227)]:
  out.append({'d':4,'m':m,'H':[2,3],'kind':'direct4','C':C,'cutoff':N})
 for c in json.loads((ROOT/'evidence/simple_six.json').read_text()):
  for m in (6,7):
   rows={int(r):w for r,w in c['row_weights'].items()}
   out.append({'kind':'moment',**cutoff(6,c['H'],c['axes'],c['quad'],rows,m)})
 for m,N in [(6,6),(7,422)]:
  out.append({'d':6,'m':m,'H':[1,2],'kind':'alpha14','cutoff':N})
 for H in combinations(range(8),3):
  if sum(H)<9:continue
  rows={r:8-r for r in range(8) if r not in H}
  out.append({'kind':'moment',**cutoff(8,H,[4,3,2,1,0,0,0,0],0,rows,8)})
 return out

def expected_finite(bs):
 """Use a proved cutoff for any covering H; H=(0,2,7) high part uses CRT."""
 out=[];summaries=[]
 for m in (4,5,6,7,8):
  d=4 if m<=5 else 6 if m<=7 else 8
  active=[b for b in bs if b['m']==m]
  cap=max((min(b['cutoff'],32768) if m==8 and b['H']==[0,2,7] else b['cutoff']) for b in active)
  period={4:36,6:1800,8:88200}[d]
  # Construct finite max-position table on the existing safe period, not a scan of exponents.
  classes={}
  for r in range(period):
   ss=maxsets(period+r,d)
   candidates=[b['cutoff'] for b in active if covers(ss,b['H'])]
   if candidates:classes[r]=min(candidates)
  cnt=0
  for n in range(2*(m+1),cap):
   N=classes.get(n%period)
   if N is not None and n<N:
    if m==8 and n>=32768 and covers(maxsets(n,8),(0,2,7)) and N==44286751:
     continue
    out.append((m,n));cnt+=1
  summaries.append({'m':m,'cap':cap,'period':period,'structural_classes':len(classes),'low_rows':cnt})
 return sorted(set(out)),summaries

def candidate_027(N=44286751,lower=32768):
 """Finite complete exponent/position CRT enumeration; no original (n,j) scan."""
 H=(0,2,7);ps=(2,3,5,7);powers=[]
 for p in ps:
  pp=[];q=p
  while q<N:pp.append(q);q*=p
  powers.append(pp)
 residues=[];tested=0;prefiltered=0
 # d=8 forces Q2>=8; lower Q2 are impossible and may be skipped with proof.
 for qs in product(*powers):
  if qs[0]<8:continue
  M=prod(qs)
  if M<=lower:continue
  cof=[M//q*pow(M//q,-1,q) for q in qs]
  for hs in product(H,repeat=4):
   tested+=1;n=sum(h*c for h,c in zip(hs,cof))%M
   if not(lower<=n<N and n<M):continue
   prefiltered+=1
   actual=[max(p**valuation(n-r,p) for r in range(8)) for p in ps]
   if tuple(actual)!=qs:continue
   if any(valuation(n-h,p)!=valuation(q,p) for h,p,q in zip(hs,ps,qs)):continue
   residues.append(n)
 return sorted(set(residues)),{'N':N,'lower':lower,'assignments_tested':tested,'range_prefilter':prefiltered,'canonical_profiles':len(residues),'distinct_rows':len(set(residues))}

def sieve_spf(N):
 s=list(range(N+1))
 for p in range(2,isqrt(N)+1):
  if s[p]==p:
   for q in range(p*p,N+1,p):
    if s[q]==q:s[q]=p
 return s

def prime_factors(x,spf=None):
 ans=[]
 if spf is not None and x<len(spf):
  while x>1:
   p=spf[x];ans.append(p)
   while x%p==0:x//=p
  return ans
 p=2
 while p*p<=x:
  if x%p==0:
   ans.append(p)
   while x%p==0:x//=p
  p=3 if p==2 else p+2
 if x>1:ans.append(x)
 return ans

def choose_v(n,j,p):
 s=0;q=p
 while q<=n:s+=n//q-j//q-(n-j)//q;q*=p
 return s

def cover_row(n,m,spf=None):
 ps=sorted({p for r in range(m) for p in prime_factors(n-r,spf) if p>=m and choose_v(n,m,p)>0})
 layers=[]
 for p in ps:
  q=p;e=1
  while q<=n:layers.append((p,e,q,n%q));q*=p;e+=1
 cur=m+1;hi=n//2;cover=[]
 while cur<=hi:
  best=None
  for p,e,q,r in layers:
   if cur%q>r:
    end=min(hi,cur-cur%q+q-1)
    if best is None or end>best[1]:best=(cur,end,p,e)
  if best is None:raise ArithmeticError(('uncovered',n,m,cur))
  cover.append(list(best));cur=best[1]+1
 return {'m':m,'n':n,'cover':cover}
