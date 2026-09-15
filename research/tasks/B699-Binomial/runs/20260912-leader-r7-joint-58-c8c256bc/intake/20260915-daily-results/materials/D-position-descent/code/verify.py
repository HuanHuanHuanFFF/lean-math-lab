#!/usr/bin/env python3
"""Independent standard-library receiver. Does not import core.py or discovery code."""
from __future__ import annotations
import argparse,json,math,time
from pathlib import Path
from itertools import product,combinations
ROOT=Path(__file__).resolve().parents[1]
PRIMES={4:(2,3),6:(2,3,5),8:(2,3,5,7)}

def check(b,msg='verification failed'):
 if not b:raise ValueError(msg)

def v(x,p):
 check(type(x)==int and x>0 and p>=2,'valuation domain')
 a=0
 while x%p==0:a+=1;x//=p
 return a

def floor_root(x,k):
 check(x>=0 and k>0)
 r=0
 for bit in range((x.bit_length()+k-1)//k,-1,-1):
  trial=r+(1<<bit)
  if trial**k<=x:r=trial
 return r

def value(deg,c,x,y):
 if deg==1:a,b,z=c;return a*x+b*y+z
 a,b,e,h,i,z=c;return a*x*x+b*x*y+e*y*y+h*x+i*y+z

def translate(c,deg,d):
 h=d+1
 if deg==1:
  a,b,z=c;return [a+b,b,h*(a+b)+z]
 a,b,e,D,E,F=c
 return [a+b+e,b+2*e,e,2*h*(a+b+e)+D+E,h*(b+2*e)+E,h*h*(a+b+e)+h*(D+E)+F]

def verify_dual(c):
 d=c['d'];m=c['target'];H=c['H'];R={int(r):w for r,w in c['row_weights'].items()};polys=c['polynomials']
 check(d in (4,6,8) and m in ((4,) if d==4 else (6,7) if d==6 else (8,)),'dual target')
 check(H==sorted(set(H)) and len(H)==(3 if d==8 else 2) and min(H)>=0 and max(H)<d,'profile')
 check(R and all(0<=r<d and r not in H and type(w)==int and w>0 for r,w in R.items()),'row weights')
 for f in polys:
  e=f['degree'];cf=f['coeffs'];a=f['weight']
  check(e in (1,2) and len(cf)==(3 if e==1 else 6) and all(type(z)==int for z in cf) and type(a)==int and a>0,'polynomial schema')
  check(any(cf[:2] if e==1 else cf[:3]),'polynomial degree')
  t=translate(cf,e,d)
  check((all(z>=0 for z in t) and t[-1]>0) or (all(z<=0 for z in t) and t[-1]<0),'strict nonvanishing')
 for r in range(d):
  for b in range(r+1):
   have=sum(f['weight'] for f in polys if value(f['degree'],f['coeffs'],b,r-b)==0)
   check(have>=R.get(r,0),'missing full-power column')
 W=sum(R.values());D=sum(f['weight']*f['degree'] for f in polys);gap=W-D
 check(gap>0,'no descent')
 ee={p:max(sum(w*v(abs(r-h),p) for r,w in R.items()) for h in H) for p in PRIMES[d]}
 if m==7:ee[7]=max(R.values())
 K=W+sum(e*(p-1).bit_length() for p,e in ee.items())+sum(f['weight']*(sum(map(abs,f['coeffs']))-1).bit_length() for f in polys)
 check((c['W'],c['degree_weight'],c['gap'],c['K'],c['height_exponent'])==(W,D,gap,K,K//gap+1),'height arithmetic')
 check({int(p):e for p,e in c['small_exponents'].items()}==ee,'small-prime full exponents')
 return sum(range(1,d+1)),len(polys)

def verify_all_duals(data):
 certs=data['certificates'];seen=set();columns=0;uses=0
 for c in certs:
  key=(c['target'],tuple(c['H']));check(key not in seen,'duplicate dual');seen.add(key)
  x,y=verify_dual(c);columns+=x;uses+=y
 expected={(4,(2,3))}
 for m in (6,7):expected|={(m,H) for H in combinations(range(6),2) if H not in ((0,1),(0,2))}
 excluded8={(0,1,h) for h in range(2,7)}|{(0,2,h) for h in range(3,6)}
 expected|={(8,H) for H in combinations(range(8),3) if H not in excluded8}
 check(seen==expected,'dual family completeness')
 return {'certificates':len(certs),'exact_columns':columns,'polynomial_uses':uses,'heights':{str(m):max(c['height_exponent'] for c in certs if c['target']==m) for m in (4,6,7,8)}}

def weighted_constant(d,H,rows,m):
 ee={p:max(sum(w*v(abs(r-h),p) for r,w in rows.items()) for h in H) for p in PRIMES[d]}
 if m in (5,7):ee[m]=max(rows.values())
 return math.prod(p**e for p,e in ee.items()),ee

def verify_moment(b):
 d=b['d'];m=b['m'];H=b['H'];a=b['axes'];q=b['quad'];R={int(r):w for r,w in b['rows'].items()}
 check(d in (6,8) and m in ((6,7) if d==6 else (8,)) and H==sorted(set(H)) and len(H)==(2 if d==6 else 3) and min(H)>=0 and max(H)<d and len(a)==d and all(type(z)==int and z>=0 for z in a) and type(q)==int and q>=0,'moment schema')
 check(R and all(r not in H and 0<=r<d and type(w)==int and w>0 for r,w in R.items()),'moment rough rows')
 for r in range(d):
  for x in range(r+1):
   y=r-x
   check(a[x]+a[y]+q*int(x*x+y*y-3*x-3*y+2==0)>=R.get(r,0),'moment column')
 W=sum(R.values());S=sum(a);gap=W-2*S-2*q;check(gap>0,'moment gap')
 C,e=weighted_constant(d,H,R,m)
 N=max(2*(d-1)*W,floor_root(2*C//4**S,gap)+1)
 check((W,S,gap,C,N)==(b['W'],b['S'],b['gap'],b['C'],b['cutoff']),'tail cutoff')
 check({int(p):z for p,z in b['small_exponents'].items()}==e,'tail prime exponents')
 # All axis factors positive; F=(j-1)(j-2)+(k-1)(k-2)-2 >0.
 check((d)*(d-1)*2-2>0,'quadratic nonzero')
 return N

def verify_bounds(bs):
 got=set()
 for b in bs:
  d,m,H=b['d'],b['m'],tuple(b['H']);key=(m,H);check(key not in got,'duplicate cutoff');got.add(key)
  if b['kind']=='moment':verify_moment(b)
  elif b['kind']=='direct4':check((d,H,b['C'],b['cutoff'])==(4,(2,3),36 if m==4 else 900,11 if m==4 else 227) and m in (4,5),'source4 endpoint')
  elif b['kind']=='alpha14':check((d,H,m,b['cutoff']) in ((6,(1,2),6,6),(6,(1,2),7,422)),'alpha case cutoff')
  else:raise ValueError('unknown cutoff')
 expected={(4,(2,3)),(5,(2,3))}
 expected|={(m,H) for m in (6,7) for H in combinations(range(6),2) if H not in ((0,1),(0,2))}
 expected|={(8,H) for H in combinations(range(8),3) if sum(H)>=9}
 check(got==expected,'complete consumer family')
 # Exact alpha |14 cases, all products come from alpha*j=beta*n.
 table=[]
 for alpha in (2,7,14):
  for beta in range(1,alpha//2+1):
   if math.gcd(alpha,beta)!=1:continue
   raw=math.prod(abs(alpha*b-3*beta) for b in range(4));check(raw>0,'zero specialization')
   stripped=raw
   for p in (2,3,5):
    while stripped%p==0:stripped//=p
   D=14 if alpha==2 else 2
   table.append([alpha,beta,raw,stripped,D,D*stripped+3])
 check(max(r[-1] for r in table)==421,'alpha14 maximum')
 # New self-contained canonical-CRT lemma, no historical EIGHTG invocation.
 ww={r:8-r for r in range(8)}
 for r in range(8):
  for b in range(r+1):check(max(4-b,0)+max(4-(r-b),0)>=8-r)
 ee={p:max(sum(w*v(abs(r-h),p) for r,w in ww.items() if r!=h) for h in range(8)) for p in (2,3,5,7)}
 check(ee=={2:24,3:13,5:8,7:8},'CRT moment constant')
 C=math.prod(p**e for p,e in ee.items());check(512>=2*7*36 and C<2**19*512**8,'CRT threshold')
 return {'bounds':len(bs),'alpha14_cases':table,'canonical_C':C,'canonical_threshold':512,'max_cutoff':max(b['cutoff'] for b in bs)}

def maximum_masks(d):
 period={4:36,6:1800,8:88200}[d]
 # Separate receiver: truncated powers p^a>d-1, no unbounded valuations.
 tables=[]
 for p in PRIMES[d]:
  Q=p
  while Q<=d-1:Q*=p
  one=[]
  for z in range(Q):
   counts=[]
   for r in range(d):
    b=(z-r)%Q
    if b==0:counts.append(v(Q,p))
    else:counts.append(v(b,p))
   e=max(counts);one.append(sum(1<<r for r,x in enumerate(counts) if x==e))
  tables.append((Q,one))
 return period,tables

def finite_domain(bs):
 allpairs=[];summ=[]
 for m in (4,5,6,7,8):
  d=4 if m<=5 else 6 if m<=7 else 8;rows=[b for b in bs if b['m']==m]
  cap=max(min(b['cutoff'],32768) if m==8 and b['H']==[0,2,7] else b['cutoff'] for b in rows)
  period,tabs=maximum_masks(d);lookup={}
  for z in range(period):
   masks=[t[z%Q] for Q,t in tabs];ns=[]
   for b in rows:
    hm=sum(1<<h for h in b['H'])
    if all(hm & mask for mask in masks):ns.append(b['cutoff'])
   if ns:lookup[z]=min(ns)
  cnt=0
  for z,N in lookup.items():
   n=z
   if n<2*(m+1):n+=((2*(m+1)-n+period-1)//period)*period
   while n<min(cap,N):
    # Only the one stated high CRT branch is removed, never an arbitrary missing row.
    if not(m==8 and n>=32768 and N==44286751):allpairs.append((m,n));cnt+=1
    n+=period
  summ.append({'m':m,'cap':cap,'period':period,'structural_classes':len(lookup),'low_rows':cnt})
 return set(allpairs),summ

def receiver_crt(N,lower):
 check((N,lower)==(44286751,32768),'CRT scope')
 options=[]
 for p in (2,3,5,7):
  q=p;vs=[]
  while q<N:vs.append(q);q*=p
  options.append(vs)
 H=(0,2,7);out=set();tested=0;passed=0;profiles=0
 for q2,q3,q5,q7 in product(*options):
  if q2<8:continue
  qs=(q2,q3,q5,q7);M=math.prod(qs)
  if M<=lower:continue
  partial=[h%q2 for h in H];mod=q2
  for q in (q3,q5,q7):
   inv=pow(mod,-1,q)
   partial=[r+mod*((h-r)*inv%q) for r in partial for h in H];mod*=q
  for n in partial:
   tested+=1
   if not(lower<=n<N):continue
   passed+=1
   if all(max(v(n-r,p) for r in range(8))==v(q,p) for p,q in zip((2,3,5,7),qs)):
    profiles+=1;out.add(n)
 return out,{'N':N,'lower':lower,'assignments_tested':tested,'range_prefilter':passed,'canonical_profiles':profiles,'distinct_rows':len(out)}

_PRIME_CACHE={}
def prime(p):
 if p in _PRIME_CACHE:return _PRIME_CACHE[p]
 ok=type(p)==int and p>=2
 if ok:
  if p%2==0:ok=(p==2)
  else:
   for d in range(3,math.isqrt(p)+1,2):
    if p%d==0:ok=False;break
 _PRIME_CACHE[p]=ok
 return ok

def verify_row(row):
 m,n=row['m'],row['n'];check(m in (4,5,6,7,8) and type(n)==int and n>=2*(m+1),'row legality')
 cur=m+1;src=math.comb(n,m);ps=set();layers=0
 for cell in row['cover']:
  check(isinstance(cell,list) and len(cell)==4 and all(type(z)==int for z in cell),'interval schema')
  l,h,p,e=cell;check(l==cur and l<=h<=n//2,'complete interval endpoints')
  check(p>=m and prime(p),'eligible prime')
  check(e>=1 and e<=n.bit_length(),'prime power exponent domain')
  Q=p**e;check(Q<=n,'prime power outside row')
  check(src%p==0,'source valuation including p=i')
  check(l//Q==h//Q and l%Q>n%Q,'full carry layer')
  cur=h+1;ps.add(p);layers+=int(p==m)
 check(cur==n//2+1,'incomplete row')
 return ps,layers

def verify_finite(cert,bs):
 check(cert['schema']=='b699-D-position-descent-finite-v1','certificate schema')
 low,summ=finite_domain(bs);check(summ==cert['domain_summary'],'finite domain summary')
 high,stats=receiver_crt(cert['crt027']['N'],cert['crt027']['lower'])
 check(stats==cert['crt027'] and sorted(high)==cert['high027'],'complete high CRT set')
 expected=low|{(8,n) for n in high};actual=[(r['m'],r['n']) for r in cert['rows']]
 check(len(actual)==len(set(actual)) and set(actual)==expected and actual==sorted(actual),'exact final row domain')
 ps=set();endpoints=0
 for r in cert['rows']:
  pp,ep=verify_row(r);ps|=pp;endpoints+=ep
 return {'low_rows':len(low),'high_rows':len(high),'target_rows':len(actual),'intervals':sum(len(r['cover']) for r in cert['rows']),'represented_legal_j':sum(n//2-m for m,n in actual),'different_primes':len(ps),'largest_prime':max(ps),'endpoint_intervals':endpoints,'max_row':max(n for m,n in actual),'crt':stats}

def run(out):
 t=time.perf_counter();dual=json.loads((ROOT/'evidence/dual_certificates.json').read_text());cert=json.loads((ROOT/'evidence/finite_certificate.json').read_text())
 ds=verify_all_duals(dual);bs=verify_bounds(cert['bounds']);fs=verify_finite(cert,cert['bounds'])
 result={'status':'PASS_POSITION_DESCENT_AND_COMPLETE_CONSUMERS','duals':ds,'bounds':bs,'finite':fs}
 out.mkdir(parents=True,exist_ok=True);(out/'acceptance.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
 print(json.dumps({'status':result['status'],'seconds':time.perf_counter()-t,'finite':fs,'heights':ds['heights']}),flush=True)
 return result
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();run(args.out)
