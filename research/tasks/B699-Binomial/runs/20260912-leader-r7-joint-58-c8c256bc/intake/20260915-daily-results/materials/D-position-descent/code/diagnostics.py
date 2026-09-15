#!/usr/bin/env python3
"""Independent exact diagnostics; finite observations never prove the infinite claims."""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path
from fractions import Fraction
from itertools import combinations
import verify as V
ROOT=Path(__file__).resolve().parents[1]

def maxsets(n,d):
 return [set(r for r in range(d) if V.v(n-r,p)==max(V.v(n-i,p) for i in range(d))) for p in V.PRIMES[d]]
def cover(ss,H):return all(set(H)&x for x in ss)
def accepts(n,m):
 d=4 if m<=5 else 6 if m<=7 else 8;ss=maxsets(n,d)
 if d==4:return cover(ss,(2,3))
 if d==6:return any(cover(ss,H) for H in combinations(range(6),2) if H not in ((0,1),(0,2)))
 return any(cover(ss,H) for H in combinations(range(8),3) if sum(H)>=9)
def cv(n,j,p):
 # Digit comparison, different from factorial summation in the generator.
 q=p;s=0
 while q<=n:s+=int(j%q>n%q);q*=p
 return s

def model_check():
 data=json.loads((ROOT/'evidence/failure_models.json').read_text());details=[]
 for c in data['cases']:
  d=c['d'];H=c['H'];x=list(map(Fraction,c['values']));pts=[(b,r-b) for r in range(d) for b in range(r+1)];rough=set(range(d))-set(H)
  V.check(len(x)==len(pts) and min(x)>=0,'model domain')
  for r in rough:V.check(sum(a for a,(u,v) in zip(x,pts) if u+v==r)>=1,'model rough normalization')
  cnt=0
  for deg,coeffs,inds in data['pools'][str(d)]:
   true=[i for i,(u,v) in enumerate(pts) if V.value(deg,coeffs,u,v)==0]
   V.check(inds==true,'model incidence')
   ts=V.translate(coeffs,deg,d)
   sign=(all(z>=0 for z in ts) and ts[-1]>0) or(all(z<=0 for z in ts) and ts[-1]<0)
   if sign or any(all(sum(pts[i])!=r for i in inds) for r in rough):
    V.check(sum(x[i] for i in inds)<=deg,'model polynomial budget');cnt+=1
  V.check(cnt==c['constraints'],'model count');details.append({'d':d,'H':H,'constraints':cnt})
 V.check(len(details)==10,'failure model family')
 return details

def comparisons():
 ans=[]
 for d,period in ((4,36),(6,1800),(8,88200)):
  new=set();old=set()
  for z in range(period):
   n=period+z;ss=maxsets(n,d)
   if accepts(n,d):new.add(z)
   legacy=(z in (0,1,2,3)) if d==4 else bool(set.intersection(*ss)) if d==6 else any(cover(ss,H) for H in combinations(range(8),2))
   if legacy:old.add(z)
  ans.append({'d':d,'period':period,'new_classes':len(new),'old_named_classes':len(old),'intersection':len(new&old),'new_only':len(new-old),'old_only':len(old-new)})
 V.check([(r['new_classes'],r['old_named_classes'],r['new_only'],r['old_only']) for r in ans]==[(10,4,8,2),(897,76,821,0),(49102,12518,36874,290)],'named comparison counts')
 return ans

def smallpart(x,m):
 s=1
 for p in (2,3,5,7):
  if p<m:s*=p**V.v(x,p)
 if m in (5,7) and V.v(x,m)==1:s*=m
 return s

def old_scalar(n,m):
 T=math.prod(smallpart(n-r,m) for r in range(4))
 qig=T**6*(3*n*n-12*n+8)<2**20*(n-1)**6*(n-3)**3
 if m<=5:return qig
 T=math.prod(smallpart(n-r,m) for r in range(6))
 six=T**4*(3*n*n-20*n+24)<2**18*27*(n-1)**4*(n-3)**3*(n-5)**2
 if m<=7:return qig or six
 T=math.prod(smallpart(n-r,m) for r in range(8));R=6*n**4-89*n**3+462*n*n-1072*n+960
 eight=T**6*(n-6)**2*R<5*3**8*2**47*(n-1)**6*(n-3)**6*(n-5)**4*(n-7)**3
 return qig or six or eight

def regression():
 checks=0;positive=0;endpoint=0;by={}
 ps=[p for p in range(2,301) if V.prime(p)]
 for m in range(4,9):
  C=0;P=0
  for n in range(2*(m+1),301):
   ok=accepts(n,m);src=math.comb(n,m);cand=[p for p in ps if p>=m and src%p==0]
   for j in range(m+1,n//2+1):
    C+=1;checks+=1
    if ok:
     target=math.comb(n,j);w=[p for p in cand if target%p==0];V.check(w,'new full-row direct check')
     positive+=1;P+=1;endpoint+=int(m in w)
  by[str(m)]={'legal':C,'accepted_and_checked':P}
 scalar=[]
 for m in range(4,9):
  outside=[]
  for n in range(2*(m+1),20001):
   if accepts(n,m) and not old_scalar(n,m):outside.append(n)
  scalar.append({'m':m,'range_max':20000,'new_structure_outside_named_scalar_union':len(outside),'first_12':outside[:12]})
 return {'max_n':300,'legal_configurations':checks,'accepted_and_directly_checked':positive,'endpoint_available_configurations':endpoint,'by_target':by,'finite_old_scalar_comparison':scalar}

def large_families():
 out=[]
 for d,ps,hs,es in [(4,(2,3),(2,3),(2,2)),(6,(2,3,5),(0,3,0),(3,2,2)),(8,(2,3,5,7),(0,6,7,0),(3,2,2,2))]:
  for level in (0,4,30,100,500):
   qs=[p**(e+level) for p,e in zip(ps,es)];M=math.prod(qs)
   n=sum(h*(M//q)*pow(M//q,-1,q) for h,q in zip(hs,qs))%M+M*(1+level)
   ss=maxsets(n,d);V.check(all(s=={h} for s,h in zip(ss,hs)),'large exact positions');V.check(accepts(n,d),'large family consumer')
   if d==6:V.check(not set.intersection(*ss),'not old ONE')
   if d==8:V.check(not any(cover(ss,H) for H in combinations(range(8),2)),'not old TWO')
   out.append({'d':d,'exponents':[e+level for e in es],'positions':hs,'n_bits':n.bit_length(),'n':str(n),'mod_period':n%{4:36,6:1800,8:88200}[d]})
 return out

def controls():
 endpoints=[]
 for n,m in [(26,5),(50,7)]:
  row={'n':n,'m':m,'cover':[[m+1,n//2,m,2]]};V.verify_row(row)
  endpoints.append({'n':n,'m':m,'full_power':m*m,'source_valuation':cv(n,m,m),'minimum_target_valuation':min(cv(n,j,m) for j in range(m+1,n//2+1))})
 n=30625;j=15312;p=11
 V.check(not accepts(n,8) and cv(n,8,p)>0 and cv(n,j,p)>0,'failure example')
 return {'endpoint_rows':endpoints,'unclosed_example':{'n':n,'j':j,'H':[0,1,7],'p':p,'valuations':[cv(n,8,p),cv(n,j,p)],'status':'outside new complete consumers; bounded branch; not a counterexample'}}

def main(out):
 t=time.perf_counter();data={'status':'PASS_EXACT_DIAGNOSTICS','failure_models':model_check(),'named_structural_comparisons':comparisons(),'regression':regression(),'large_family_samples':large_families(),'controls':controls()}
 out.mkdir(parents=True,exist_ok=True);(out/'diagnostics.json').write_text(json.dumps(data,sort_keys=True,indent=2)+'\n')
 print(json.dumps({'status':data['status'],'seconds':time.perf_counter()-t,'regression':data['regression'],'models':len(data['failure_models'])}))
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args();main(a.out)
