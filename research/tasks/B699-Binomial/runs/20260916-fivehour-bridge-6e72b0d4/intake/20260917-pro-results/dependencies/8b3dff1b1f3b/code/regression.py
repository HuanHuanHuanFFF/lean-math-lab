#!/usr/bin/env python3
"""Finite diagnostics, exact endpoint checks and an infinite CRT certificate.
These tests are NOT substituted for the quantifier proofs in PROOFS.md.
"""
from __future__ import annotations
import math,json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
def prime(p):return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def val(x,p):
 e=0
 while x%p==0:x//=p;e+=1
 return e

def fact(x):
 f={};p=2
 while p*p<=x:
  while x%p==0:f[p]=f.get(p,0)+1;x//=p
  p+=1
 if x>1:f[x]=f.get(x,0)+1
 return f

def small(x,i):
 z=1
 for p in range(2,i):
  if prime(p):z*=p**val(x,p)
 if prime(i) and val(x,i)==1:z*=i
 return z

def large_gcd(x,i):
 for p in range(2,i):
  if prime(p):
   while x%p==0:x//=p
 return x

def vpchoose(n,j,p):
 z=0;k=n-j
 while n:
  n//=p;j//=p;k//=p;z+=n-j-k
 return z

def require(c,msg):
 if not c:raise ValueError(msg)

def run():
 at=time.monotonic();out={};bound={4:6,5:8,6:9,7:11,8:12}
 stats={i:{'legal_pairs':0,'support_consumer_pairs':0,'power_row_pairs':0,'min_source_support':100,'max_source_support':0} for i in range(4,9)}
 for n in range(10,501):
  binoms=[1]
  for j in range(1,n//2+1):binoms.append(binoms[-1]*(n-j+1)//j)
  for i in range(4,9):
   if n<2*i+2:continue
   source=math.comb(n,i);parts=[(n-r)//small(n-r,i) for r in range(i)]
   supp={p for q in parts for p in fact(q)}
   supp2={p for r in range(i) for p in fact(n-r) if p>=i and source%p==0}
   require(supp==supp2,'wrong endpoint in source support')
   st=stats[i];st['min_source_support']=min(st['min_source_support'],len(supp));st['max_source_support']=max(st['max_source_support'],len(supp))
   K={4:6,5:60,6:60,7:420,8:420}[i]
   has_power=any(K%small(n-r,i)==0 and len(fact(parts[r]))<=1 for r in range(i))
   for j in range(i+1,n//2+1):
    st['legal_pairs']+=1
    G=large_gcd(math.gcd(source,binoms[j]),i)
    if len(supp)<bound[i]:
     st['support_consumer_pairs']+=1;require(G>1,'support consumer direct regression failed')
    if has_power:
     st['power_row_pairs']+=1;require(G>1,'prime-power row direct regression failed')
 out['direct_binomial_10_to_500']=stats
 # Test complete-power NORM on non-vacuous avoiding parts, without pretending
 # these inputs satisfy NC_i. All have real binomial arithmetic behind them.
 partial_tests=instances=0
 for n in range(14,121):
  facs=[fact(n-r) for r in range(8)]
  for i in range(4,9):
   if n<2*i+2:continue
   ci=math.comb(n,i)
   for j in range(i+1,n//2+1):
    cj=math.comb(n,j)
    av={t:math.prod(p**e for p,e in facs[t].items() if p>=i and ci%p==0 and cj%p!=0) for t in range(i)}
    events=[(r,p**e) for r in range(i) for p,e in facs[r].items() if p>=i and ci%p==0 and cj%p!=0]
    if not events:continue
    r,Q=events[0];a,b=divmod(j,Q);c=(n-r)//Q
    require(b<=r and a>=1,'full-power carry condition')
    h=math.gcd(a,c);a//=h;c//=h
    instances+=1
    for t,A in av.items():
     F=math.prod(c*(b-u)+a*(t-r) for u in range(t+1))
     if not F:continue
     require(F%A==0,'partial avoiding NORM failed');partial_tests+=1
 out['partial_avoiding_norm']={'actual_inputs':instances,'nonzero_row_checks':partial_tests,'uses_NC_assumption':False}
 ends=[]
 for n,i,j,p,r in [(28,5,10,5,3),(78,5,25,5,3),(349,7,49,7,6),(153,7,49,7,6)]:
  e=val(n-r,p);Q=p**e
  ends.append({'n':n,'i':i,'j':j,'p':p,'r':r,'full_Q':Q,'source_v':vpchoose(n,i,p),'target_v':vpchoose(n,j,p),'full_layer_carry':j%Q>n%Q,'lowered_layer_carry':j%(Q//p)>n%(Q//p)})
  require((n-r)//small(n-r,i)%Q==0,'full endpoint power incorrectly discarded')
 out['endpoint_cases']=ends
 # Fixed-prime, ALL-exponent-class family; never construct the huge n at z=1.
 p=43;E0=2;L=1570800;c=4;r=4;N0=7400
 ws={0:37,1:151,2:137,3:13,4:43,5:17,6:3697,7:7393,8:11}
 for t,q in ws.items():
  require(prime(q),'CRT witness not prime')
  require((c*pow(p,E0,q)+r-t)%q==0,'CRT start')
  if q!=p:require(pow(p,L,q)==1,'period identity')
 require(math.gcd(p,88200)==1 and pow(p,L,88200)==1,'position period')
 positions=[]
 for q in [2,3,5,7]:
  vv=[val(N0-t,q) for t in range(8)];require(vv.count(max(vv))==1,'maximum not unique');positions.append(vv.index(max(vv)))
 require(positions==[0,2,0,1],'position family')
 for z in [0,1,2,10,10**9]:
  E=E0+L*z
  for t,q in ws.items():require((c*pow(p,E,q)+r-t)%q==0,'modular family test')
 # Exact i8/i9 gcd at every legal j of the seed; this is a finite regression,
 # not the proof for the infinite family.
 v=1;seed8=seed9=0
 C8=math.comb(N0,8);C9=math.comb(N0,9)
 for j in range(1,N0//2+1):
  v=v*(N0-j+1)//j
  if j>=9:
   W=large_gcd(math.gcd(C8,v),8);require(W>1,'seed i8');seed8+=1
   if j>=10:require(C9%W==0,'entire coarse gcd transfer');seed9+=1
 out['infinite_family']={'n':'4*43^(2+1570800*z)+4','z':'all nonnegative integers','witness_primes':ws,'eight_window_maxima_2_3_5_7':positions,'n_mod49':N0%49,'outside_unit_windows_through_r8':True,'seed_i8_pairs':seed8,'seed_full_gcd_i9_transfers':seed9,'period_proof':'pow identities, no extrapolation from finite z'}
 # Show that nonunit alone does NOT entail a split in arbitrary actual inputs.
 # The splitting theorem uses full NC_i; its contrapositive supplies a witness.
 n=7400;i=8;j=1851;qr=(n-4)//small(n-4,i)
 require(qr==43**2 and (j-2)%qr==0,'boundary example arithmetic')
 W=large_gcd(math.gcd(math.comb(n,i),math.comb(n,j)),i)
 require(W>1,'boundary example must not be a counterexample')
 out['non_NC_unsplit_example']={'n':n,'i':i,'j':j,'r':4,'b':2,'q_r':qr,'real_common_large_gcd':W}
 out['elapsed_seconds']=time.monotonic()-at;out['status']='PASS_REGRESSION_AND_PERIOD_CERTIFICATE'
 (ROOT/'outputs/regression.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
if __name__=='__main__':run()
