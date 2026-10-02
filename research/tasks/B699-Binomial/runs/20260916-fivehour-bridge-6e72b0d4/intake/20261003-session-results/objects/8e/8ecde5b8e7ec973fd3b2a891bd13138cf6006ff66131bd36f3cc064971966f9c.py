"""New, offline arithmetic checks for the shared low-index interfaces.
No historical proof scripts, Lean, network, repository operations or broad (n,i,j) scan.
"""
from math import comb,factorial,gcd,isqrt,prod
from hashlib import sha256

def primes_le(n:int)->list[int]:
 return [p for p in range(2,n+1) if all(p%d for d in range(2,isqrt(p)+1))]
def vp(x:int,p:int)->int:
 assert x>0 and p>=2
 e=0
 while x%p==0:e+=1;x//=p
 return e
def factvp(n:int,p:int)->int:
 s=0
 while n:n//=p;s+=n
 return s
def binvp(n:int,k:int,p:int)->int:
 return factvp(n,p)-factvp(k,p)-factvp(n-k,p)
def params(i:int,r:int,s:int):
 assert 0<=r<i and 1<=s<i and 2*s>r
 ell=i-r-1;lam=2*s-r;E=s*(s+1)+ell*(ell+1)//2
 K=2**(s*(s+1))*prod(factorial(h) for h in range(1,s+1))**2*prod(factorial(h) for h in range(1,ell+1))
 return ell,lam,E,K

def height_checks():
 # Original G7 proof table. These comparisons do NOT verify the external BFT premise.
 table=[(17,6,5,11,17,198,1767,208),(23,8,7,15,23,360,2273,329),
 (26,9,8,17,26,459,2526,394),(27,9,9,18,27,495,11277,95),
 (30,10,10,20,30,610,12530,110),(32,11,10,21,32,693,3032,531),
 (33,11,11,22,33,737,13783,125)]
 out=[]
 for i,t,r,s,lam0,E0,delta0,h in table:
  ell,lam,E,K=params(i,r,s);assert len(primes_le(i-1))==t
  delta=1000*(lam*(i-t)-E)+751*lam
  assert (lam,E,delta)==(lam0,E0,delta0) and delta>0 and h>=22
  diff={}
  for p in primes_le(i):
   # Two independently arranged formulas for the factorial-constant valuation.
   vk=(s*(s+1) if p==2 else 0)+2*sum(factvp(a,p) for a in range(1,s+1))+sum(factvp(a,p) for a in range(1,ell+1))
   assert vk==vp(K,p)
   d=1000*vk-1000*lam*factvp(i,p)+(h*delta-1751*lam if p==2 else 0)
   diff[p]=d
  numerator=prod(p**e for p,e in diff.items() if e>0)
  denominator=prod(p**(-e) for p,e in diff.items() if e<0)
  assert numerator>=denominator
  def ihash(x):return sha256(x.to_bytes((x.bit_length()+7)//8,'big')).hexdigest()
  out.append(dict(i=i,t=t,r=r,s=s,lam=lam,E=E,Delta=delta,height_exponent=h,
    numerator_bits=numerator.bit_length(),denominator_bits=denominator.bit_length(),
    numerator_sha256=ihash(numerator),denominator_sha256=ihash(denominator),
    exact_comparison=True,conditional_external_BFT_verified=False))
 return out

def ceildiv(a:int,b:int)->int:
 assert b>0
 return -((-a)//b)

def crt_family(Q,R,w,amin,amax,cmin,cmax,B,H,d):
 assert gcd(Q,R)==1 and 0<=w and -w<=d<=w
 A0=(d*pow(Q,-1,R))%R;C0=(Q*A0-d)//R;P=Q*R
 L0=max(Q*A0,R*C0);U0=min(Q*A0+w,R*C0+w)
 lo=max(ceildiv(amin-A0,R),ceildiv(cmin-C0,Q),ceildiv(B-U0,P))
 hi=min((amax-A0)//R,(cmax-C0)//Q,(H-1-L0)//P)
 rows=set()
 for z in range(lo,hi+1):
  l=max(B,L0+P*z);u=min(H-1,U0+P*z)
  assert l<=u
  rows.update(range(l,u+1))
 return rows,(lo,hi,A0,C0)

def crt_checks():
 count=0;neg=0;zero=0;digest=sha256()
 for Q,R in [(4,5),(5,7),(8,9),(9,25),(25,27),(49,8)]:
  for w in [0,1,3,7,9]:
   for B,H in [(1,60),(13,91),(39,180)]:
    for amin,amax,cmin,cmax in [(1,8,1,9),(2,7,3,8)]:
     for d in range(-w,w+1):
      got,rec=crt_family(Q,R,w,amin,amax,cmin,cmax,B,H,d)
      wanted=set()
      for A in range(amin,amax+1):
       for C in range(cmin,cmax+1):
        if Q*A-R*C!=d:continue
        l=max(B,Q*A,R*C);u=min(H-1,Q*A+w,R*C+w)
        if l<=u:wanted.update(range(l,u+1))
      assert got==wanted,(Q,R,w,B,H,d,rec)
      count+=1;neg+=int(rec[3]<0);zero+=int(d==0 and bool(got))
      digest.update(repr((Q,R,w,B,H,d,rec,sorted(got))).encode())
 assert ceildiv(-1,7)==0 and (-1)//7==-1
 # Two overlapping intervals of the SAME color are not two different primes.
 colors=[(5,30,39),(5,35,44)]
 assert sum(l<=37<=u for _,l,u in colors)==2
 assert len({p for p,l,u in colors if l<=37<=u})==1
 return dict(families_checked=count,negative_C0_cases=neg,nonempty_zero_shift_cases=zero,sha256=digest.hexdigest(),same_color_mutant_rejected=True)

def local_window_checks():
 triples=[(17,5,11),(23,7,15),(26,8,17),(27,9,18),(30,10,20),(32,10,21),(33,11,22),
 (11,3,7),(13,4,9),(14,4,9),(16,5,11),(18,5,12)]
 # Cases below are residue identities, not enumerations of original n or j.
 cnt=0
 for i,r,s in triples:
  ell,lam,E,K=params(i,r,s)
  for a in range(i):
   for b in range(a+1):
    c=a-b
    weight=max(a-r,0)+max(s-b,0)+max(s-c,0)
    assert weight>=lam
    # Direct count of occurrences of the source factor in each window.
    direct=sum(h>b for h in range(1,s+1))+sum(h>c for h in range(1,s+1))+sum(h>=i-a for h in range(1,ell+1))
    assert direct==weight
    cnt+=1
 # Exact full-power examples, including p=i and exponent 2.
 cases=[(2*13**3,13,13**3,13,4,9),(2*19**3,19,19**3,19,6,12),(338,12,169,13,4,8)]
 actual=[]
 for n,i,j,p,r,s in cases:
  e=binvp(n,i,p);assert e==2 and binvp(n,j,p)==0
  ell,lam,E,K=params(i,r,s)
  Q=p**(e+(p==i));a=n%Q;b=j%Q;c=(n-j)%Q
  assert a<i and b+c==a and Q>i
  vw=sum(binvp(j,h,p)+binvp(n-j,h,p) for h in range(1,s+1))+sum(binvp(n-i+h,h,p) for h in range(1,ell+1))
  assert vw>=e*lam
  actual.append(dict(n=n,i=i,j=j,p=p,e=e,Q=Q,a=a,b=b,v_window=vw,required=e*lam))
 # D=V before NC is genuinely false, using the actual common prime p=i=5.
 n,i,j,p,r,s=28,5,14,5,1,3
 ell,lam,E,K=params(i,r,s)
 e=binvp(n,i,p);ej=binvp(n,j,p)
 vw=sum(binvp(j,h,p)+binvp(n-j,h,p) for h in range(1,s+1))+sum(binvp(n-i+h,h,p) for h in range(1,ell+1))
 assert e==1 and ej>0 and vw<e*lam
 # An exact small-prime localization equality shows the v_p(i) compensation.
 e2=binvp(16,12,2);h2=max(vp(16-a,2) for a in range(12))
 assert e2+vp(12,2)==h2==4
 return dict(residue_cases=cnt,full_power_examples=actual,
  wrong_D_equals_V=dict(n=28,i=5,j=14,p=5,binomial_exponent=e,second_exponent=ej,window_exponent=vw,required=lam),
  localization=dict(n=16,i=12,p=2,e=e2,v_i=vp(12,2),maximum=h2))

def finite_row_certificates():
 # New two-segment witnesses, independently reconstructed; not the original stored arrays.
 specs=[(126,12,[(13,60,61),(61,63,17)]),(126,13,[(14,60,61),(61,63,17)]),(330,11,[(12,162,163),(163,165,13)])]
 results=[]
 for n,i,intervals in specs:
  nextj=i+1
  for lo,hi,p in intervals:
   assert all(p%d for d in range(2,isqrt(p)+1)) and p>=i and p*p>n
   assert lo==nextj and lo<=hi<=n//2
   assert binvp(n,i,p)>0
   assert lo//p==hi//p and lo%p>n%p
   # Both Legendre and direct integer binomials validate each row's limited terminal.
   for j in range(lo,hi+1):
    assert binvp(n,j,p)>0 and comb(n,j)%p==0 and comb(n,i)%p==0
   nextj=hi+1
  assert nextj==n//2+1
  results.append(dict(n=n,i=i,segments=intervals,legal_j_count=n//2-i,complete_row=True))
 assert comb(126,13)%19==0 and comb(126,12)%19==1
 return dict(rows=results,bad_cross_index_witness=dict(n=126,p=19,i13_remainder=0,i12_remainder=1))

def run():
 return {'seven_height_integer_certificates':height_checks(),'signed_CRT':crt_checks(),'full_power_windows':local_window_checks(),'isolated_actual_rows':finite_row_certificates()}
if __name__=='__main__':
 import json
 print(json.dumps(run(),ensure_ascii=False,indent=2))
