from pathlib import Path
from math import gcd, factorial, prod
from itertools import product
from datetime import datetime,timezone
import json,time
out=Path(__file__).resolve().parent
start=time.perf_counter()
def rho(Q,v,d):
 r=(v*d)%Q
 return Q if r==0 else r
def coords(P,Q,v,d):
 a=rho(Q,v,d)
 assert (P*a-d)%Q==0
 return a,(P*a-d)//Q
def low(P,Q,a,c,lo):return lo<=0 or c+P*(lo-1)<1
def upper(P,Q,a,c,capA,capC,hi):return capA<a+Q*(hi+1) or capC<c+P*(hi+1)
def check(P,Q,v,d,w,capA,capC,lo,hi):
 if not(P>=2 and Q>=2 and (P*v)%Q==1 and -w<=d<=w):return False
 a,c=coords(P,Q,v,d)
 return low(P,Q,a,c,lo) and upper(P,Q,a,c,capA,capC,hi)
def brute(P,Q,d,capA,capC):return {(A,C) for A in range(1,capA+1) for C in range(1,capC+1) if P*A-Q*C==d}
def uv(P,Q,a,c,w,t):return min(P*(a+Q*t),Q*(c+P*t))+w
param=negative_seeds=zero_residues=0
for P in range(1,10):
 for Q in range(2,10):
  if gcd(P,Q)!=1:continue
  for v in [pow(P,-1,Q),pow(P,-1,Q)+Q]:
   z=(P*v)//Q
   assert P*v-Q*z==1
   for A in range(1,13):
    for C in range(13):
     d=P*A-Q*C;a,c=coords(P,Q,v,d)
     D,E=A-a,C-c;t=v*E-z*D
     param+=1;negative_seeds+=c<0;zero_residues+=((v*d)%Q==0)
     assert t>=0 and A==a+Q*t and C==c+P*t
     assert (A-a)//Q==t
     assert a+Q*(t-1)!=A and a+Q*(t+1)!=A
packets=solutions=empty=negative_packets=zero_packets=relaxed_packets=0
for P in range(2,10):
 for Q in range(2,10):
  if gcd(P,Q)!=1:continue
  for v in [pow(P,-1,Q),pow(P,-1,Q)+Q]:
   for d in range(-10,11):
    a,c=coords(P,Q,v,d)
    for capA,capC in product([0,1,3,6],repeat=2):
     packets+=1;negative_packets+=c<0;zero_packets+=((v*d)%Q==0)
     lo=max(0,-((c-1)//P))
     hi=min((capA-a)//Q,(capC-c)//P)
     assert check(P,Q,v,d,10,capA,capC,lo,hi)
     direct=brute(P,Q,d,capA,capC)
     affine={(a+Q*t,c+P*t) for t in range(lo,hi+1)}
     assert direct==affine,(P,Q,d,capA,capC,lo,hi,direct,affine)
     assert bool(direct)==(lo<=hi)
     empty+=not direct;solutions+=len(direct)
     for A,C in direct:
      t=(A-a)//Q
      assert lo<=t<=hi
      N=min(P*A,Q*C)+10
      assert N<=uv(P,Q,a,c,10,hi)
      assert N<=max(uv(P,Q,a,c,10,hi),0)
     # Deliberately loose valid bounds: completeness survives, feasibility is not asserted.
     loose_lo,loose_hi=lo-2,hi+2
     assert check(P,Q,v,d,10,capA,capC,loose_lo,loose_hi)
     relaxed_packets+=1
     for A,C in direct:assert min(P*A,Q*C)+10<=uv(P,Q,a,c,10,loose_hi)
     # A one-step too-high lower endpoint / too-low upper endpoint is rejected.
     assert not low(P,Q,a,c,lo+1)
     assert not upper(P,Q,a,c,capA,capC,hi-1)
arbitrary=valid_arbitrary=0
for P in range(2,6):
 for Q in range(2,6):
  if gcd(P,Q)!=1:continue
  v=pow(P,-1,Q)
  for d in range(-5,6):
   a,c=coords(P,Q,v,d)
   for capA,capC in product(range(4),repeat=2):
    direct=brute(P,Q,d,capA,capC)
    for lo,hi in product(range(-3,5),repeat=2):
     arbitrary+=1
     if not check(P,Q,v,d,10,capA,capC,lo,hi):continue
     valid_arbitrary+=1
     for A,C in direct:
      t=(A-a)//Q
      assert lo<=t<=hi and min(P*A,Q*C)+10<=uv(P,Q,a,c,10,hi)
     if hi<lo:assert not direct
# Exact boundary examples, including false modifications of strict checks.
examples=[]
for name,P,Q,d,capA,capC in [('negative C0',2,3,9,6,1),('C0 zero',2,3,6,6,2),('zero residue d0',2,3,0,3,2),('capA below rho',2,3,0,2,9),('negative shift',2,3,-10,6,6)]:
 v=pow(P,-1,Q);a,c=coords(P,Q,v,d);lo=max(0,-((c-1)//P));hi=min((capA-a)//Q,(capC-c)//P)
 examples.append({'name':name,'P':P,'Q':Q,'v':v,'d':d,'rho':a,'C0':c,'caps':[capA,capC],'lo':lo,'hi':hi,'solutions':sorted(brute(P,Q,d,capA,capC)),'upperValue_hi':uv(P,Q,a,c,10,hi)})
# Weakening strict inequalities falsely excludes a real endpoint solution.
a,c=coords(2,3,2,0);assert (a,c)==(3,2)
assert not upper(2,3,a,c,3,2,-1) and (3<=a or 2<=c)
a,c=coords(2,3,2,1);assert (a,c)==(2,1)
assert not low(2,3,a,c,1) and c<=1
# A nonempty certified interval need not contain any feasible coordinate pair.
assert check(2,3,2,0,10,0,0,-1,0) and not brute(2,3,0,0,0)
# Local binomial-to-CRT window connection, not a noCommon enumeration.
window_links=0
for n in range(0,151):
 for a,b in product(range(11),repeat=2):
  A=max(n-a,0);C=max(n-b,0)
  assert abs(A-C)<=10 and n<=min(A,C)+10
  window_links+=1
# Conservative count of all p^e < 2^109, without CRT pair enumeration.
H=2**109;counts={}
for p in [2,3,5,7]:
 e=1
 while p**e<H:e+=1
 counts[str(p)]=e-1
pair_count=sum(counts[str(p)]*counts[str(q)] for p,q in [(2,3),(2,5),(2,7),(3,5),(3,7),(5,7)])
# One explicit H/M arithmetic prerequisite, not a full CRT descent result.
T=(2*factorial(11))**11;K=142131407644347048724404082572664265244672000000000
num=T*H**7
lo,hi=0,1
while K*hi**33<num:hi*=2
while hi-lo>1:
 mid=(lo+hi)//2
 if K*mid**33>=num:hi=mid
 else:lo=mid
M=hi
assert K*M**33>=num and K*(M-1)**33<num
results={'utc':datetime.now(timezone.utc).isoformat(),'status':'independent finite cross-check; no Lean and no full CRT enumeration','parameterization':{'P':[1,9],'Q':[2,9],'A':[1,12],'C':[0,12],'inverse_representatives':['least nonnegative inverse','inverse+Q'],'solutions_checked':param,'negative_C0':negative_seeds,'zero_residues':zero_residues},'tight_bounds':{'P_Q':[2,9],'d':[-10,10],'caps':[0,1,3,6],'packets':packets,'solutions':solutions,'empty_packets':empty,'negative_C0_packets':negative_packets,'zero_residue_packets':zero_packets,'loose_bounds_also_checked':relaxed_packets},'arbitrary_bounds':{'P_Q':[2,5],'d':[-5,5],'caps':[0,3],'lo_hi':[-3,4],'packets':arbitrary,'valid_checks':valid_arbitrary},'boundary_examples':examples,'strict_endpoint_mutations_rejected':2,'lo_le_hi_does_not_imply_feasible':{'P':2,'Q':3,'v':2,'d':0,'capA':0,'capC':0,'lo':-1,'hi':0,'check_pass':True,'solutions':[]},'window_links':{'n':[0,150],'a_b':[0,10],'cases':window_links},'conservative_H_2pow109_packet_counts':{'prime_power_counts':counts,'unordered_power_pairs':pair_count,'signed_offset_rows_at_w10':pair_count*21,'not_actual_rows_computed':True},'H_2pow109_cofactor_certificate':{'H':str(H),'least_M':M,'lhs_bits':num.bit_length(),'rhs_bits':(K*M**33).bit_length(),'certificate_pass':True,'M_minus_one_fails':True,'Lean_status':'not run; integer example only'},'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0}
(out/'cross-check-results.json').write_text(json.dumps(results,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'parameterization_solutions':param,'tight_packets':packets,'arbitrary_packets':arbitrary,'max_H_prime_power_counts':counts,'signed_packet_upper_bound':pair_count*21,'example_M':M,'elapsed_seconds':results['elapsed_seconds']}))
