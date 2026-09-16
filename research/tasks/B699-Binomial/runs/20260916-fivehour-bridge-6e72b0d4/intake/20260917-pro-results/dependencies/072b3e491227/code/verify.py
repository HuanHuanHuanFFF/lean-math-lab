"""Exact receiver: standard-library integers/Fraction only. No discovery imports.
This accepts finite algebra/coverage duties, not the full infinite proof or frozen theorems.
"""
from pathlib import Path
from fractions import Fraction as Q
from itertools import combinations,product
from collections import Counter
from math import gcd, isqrt, factorial, lcm
from functools import reduce
import json,time
ROOT=Path(__file__).resolve().parents[1]
PRIMES=(2,3,5,7,11,13,17,19,23,29,31)
def require(x,msg):
 if not x:raise ValueError(msg)
def bs():return [(a,b) for b in range(3) for a in range(6-2*b)]
def vals():return {r:tuple(s*(r-s) for s in range(r//2+1)) for r in range(3,9)}
def ev(v,n,x):return sum(c*n**a*x**b for c,(a,b) in zip(v,bs()))
def smooth(v):
 if not v:return False
 v=abs(v)
 for p in PRIMES:
  while v%p==0:v//=p
 return v==1
def canonical_mod(v,p):
 x=next((x%p for x in v if x%p),None)
 require(x is not None,'zero mod vector');inv=pow(x,p-2,p)
 return tuple((x*inv)%p for x in v)
def echelon_mod(M,p):
 A=[[x%p for x in row] for row in M];piv=[];r=0
 for j in range(len(A[0])):
  k=next((k for k in range(r,len(A)) if A[k][j]),None)
  if k is None:continue
  A[r],A[k]=A[k],A[r]; inv=pow(A[r][j],p-2,p)
  A[r][j:]=[(x*inv)%p for x in A[r][j:]]
  for k in range(r+1,len(A)):
   m=A[k][j]
   if m:A[k][j:]=[(x-m*y)%p for x,y in zip(A[k][j:],A[r][j:])]
  piv.append(j);r+=1
  if r==len(A):break
 return A,piv
def rational_nulls(M):
 # Independent exact Fraction elimination; only used on the few low-rank patterns.
 A=[[Q(x) for x in row] for row in M];piv=[];r=0;nc=len(A[0])
 for j in range(nc):
  k=next((k for k in range(r,len(A)) if A[k][j]),None)
  if k is None:continue
  A[r],A[k]=A[k],A[r];v=A[r][j];A[r]=[x/v for x in A[r]]
  for k in range(r+1,len(A)):
   v=A[k][j]
   if v:A[k]=[x-v*y for x,y in zip(A[k],A[r])]
  piv.append(j);r+=1
  if r==len(A):break
 ret=[]
 for free in range(nc):
  if free in piv:continue
  v=[Q(0)]*nc;v[free]=Q(1)
  for k,j in reversed(list(enumerate(piv))):v[j]=-sum((A[k][h]*v[h] for h in range(j+1,nc)),Q(0))
  den=lcm(*(x.denominator for x in v));vv=[int(x*den) for x in v];g=reduce(gcd,vv)
  ret.append(tuple(x//g for x in vv))
 return ret

def mul(A,B):
 C={}
 for (a,b),v in A.items():
  for (c,d),w in B.items():C[(a+c,b+d)]=C.get((a+c,b+d),0)+v*w
 return {k:v for k,v in C.items() if v}
def check_candidate(rec):
 v=rec['v'];require(len(v)==12 and all(type(x)is int for x in v),'vector domain')
 require(reduce(gcd,v)==1 and next(x for x in v if x)>0,'primitive normalization')
 require(sum(abs(x) for x in v)<2**25,'small candidate bound')
 route=rec['route']
 if route=='first_windows':
  out=[ev(v,1,0),ev(v,2,0),ev(v,2,1)]
  require(out==rec['values'] and all(out),'first windows values')
  require(abs(out[0]*out[1]*out[2])<2**90,'first windows size')
 elif route=='low_weight_product':
  A={(0,0):rec['scalar']}
  require(type(rec['scalar'])is int and rec['scalar']!=0,'product scalar')
  require(rec['factors'],'factor list')
  for terms,m in rec['factors']:
   require(all(len(t)==3 and all(type(x)is int for x in t) and t[0]>=0 and t[1]>=0 and t[2]!=0 for t in terms),'integer factor monomials')
   B={(a,b):c for a,b,c in terms if c}
   require(len(B)==len(terms) and 1<=m<=5,'factor format')
   require(B and max(a+2*b for a,b in B)<=4,'factor weight')
   require(sum(abs(c) for c in B.values())<2**40,'factor height')
   for _ in range(m):A=mul(A,B)
  require(A=={z:c for z,c in zip(bs(),v) if c},'factor identity')
 elif route=='C31_constant':require(smooth(v[0]),'constant smoothness')
 elif route=='C31_linear_origin':require(v[0]==0 and smooth(v[1]),'linear origin smoothness')
 elif route=='mod25':require(all(ev(v,0,x)%25 for x in range(25)),'mod25 obstruction')
 elif route=='leading_sign':
  a,b,c=v[11],v[9],v[5];xx=[Q(0),Q(1,4)]
  if a and 0<Q(-b,2*a)<Q(1,4):xx.append(Q(-b,2*a))
  yy=[a*x*x+b*x+c for x in xx]
  require(rec['critical']==[[x.numerator,x.denominator] for x in xx],'critical points')
  require(rec['values']==[[y.numerator,y.denominator] for y in yy],'leading values')
  require(all(y>0 for y in yy) or all(y<0 for y in yy),'constant sign')
  require(min(abs(y) for y in yy)>Q(1,2**40),'leading separation')
 else:raise ValueError('unknown candidate route')
 return route

def check_bounds(d):
 b=d['bounds'];require(b['G_coeff_bits']==1242694 and b['G_terms']==23562,'frozen kernel constants')
 require((b['G_N_degree'],b['G_X_degree'])==(305,152),'frozen degrees')
 require(b['G_terms']<2**15,'term count bound')
 factor_est=b['G_coeff_bits']+15+b['G_N_degree']+b['G_X_degree']
 require(factor_est<b['factor_bits']<=b['branch_bits'],'multivariate factor margin')
 require(b['consumer_bits']+7<b['branch_bits']<=1290000,'consumer factor height')
 require(b['entry_bits']==14000001,'frozen entry')
 require(b['small5_bits']>=220,'small-kernel declared budget')
 # Cramer's small evaluation kernels; r may be smaller than the number of rows.
 for r in range(1,12):
  require(factorial(r)*(2**15)**r*12<2**b['small5_bits'],'small-five minors')
 lowrank=b['small5_bits']+66+11*(b['branch_bits']+915)
 require(lowrank<b['entry_bits'],'low-rank nonzero branch')
 # Integer resultant after dividing two small polynomials by their primitive gcd.
 require(1000<b['entry_bits'],'small-five resultant roots')
 # 120 x 121 Taylor matrix: each entry <=9^20<2^64, row length <2^68.
 require(9**20<2**64 and 121<2**8,'fat matrix rows')
 require(120*68+7<b['bootstrap_bits'],'fat minor coefficient bound')
 fat_nonzero_num=b['bootstrap_bits']+264+44*(b['branch_bits']+915)
 require(fat_nonzero_num<4*b['entry_bits'],'fat nonzero height')
 resultant=162*8+10*b['branch_bits']+152*b['bootstrap_bits']
 require(resultant<b['entry_bits'],'mixed resultant height')
 require(b['bootstrap_bits']+30<b['bootstrap_factor_bits'],'bootstrap factor norm')
 # Final closure replaces that enormous bottom: ORDINARY double points, not
 # only weighted diagonal Taylor conditions. 36 rows < 42 monomials.
 require(len([(a,j) for j in range(6) for a in range(12-2*j)])==42,'double basis')
 require(12*3==36 and 9**11<2**35 and 42<2**6,'double matrix budget')
 require(36*38+6<b['ordinary_double_bits'],'double minor bound')
 double_height=b['ordinary_double_bits']+132+18*(b['bootstrap_factor_bits']+60)
 double_res=7*3+5*b['bootstrap_factor_bits']+2*b['ordinary_double_bits']
 general_res=15*4+5*b['bootstrap_factor_bits']+10*b['ordinary_double_bits']
 require(max(double_height,double_res,general_res)<b['entry_bits'],'double-point closure budget')
 require(11-6<=5 and 305//6==50 and 152//3==50,'quotient and component degrees')
 require(5463+5000*90<463*1000,'PC small endpoint')
 return {'factor_l1_bits_bound':factor_est,'small5_nonzero_height_bits':lowrank,
 'fat_nonzero_height_numerator':fat_nonzero_num,'fat_nonzero_height_denominator':4,
 'mixed_resultant_l1_bits':resultant,'double_nonzero_height_bits':double_height,
 'double_resultant_bits':double_res,'general_smooth_resultant_bits':general_res}

def verify(d,coverage=True,six=True):
 st=time.time();require(d['schema']==1,'schema');p=d['prime']
 require(p==1000003 and all(p%a for a in range(2,isqrt(p)+1)),'auxiliary prime')
 require(d['basis']==[list(x) for x in bs()],'basis')
 bounds=check_bounds(d);rc=Counter(); cmap={};exactmap={}
 for rec in d['candidates']:
  key=tuple(rec['v']);require(key not in exactmap,'duplicate candidate');exactmap[key]=rec
  rc[check_candidate(rec)]+=1
  mk=canonical_mod(key,p);require(mk not in cmap,'modular collision');cmap[mk]=key
 require(dict(rc)==d['expected']['routes'],'route counts')
 require(len(cmap)==d['expected']['distinct_rank11']==16440,'candidate count')
 stats={'status':'PASS_NEW_WEIGHT5_CERTIFICATE','routes':dict(rc),'bounds':bounds,
 'candidate_count':len(cmap),'coverage_checked':coverage,'six_checked':six}
 if coverage:
  V=vals(); EV={(r,x):[r**a*x**b for a,b in bs()] for r in V for x in V[r]}
  rank_counts=Counter();seen=set();npat=0;dot_checks=0;low_relations=0
  for single in V:
   rr=[r for r in V if r!=single]
   for opt in product(*(tuple(combinations(V[r],2)) for r in rr),V[single]):
    pts=[(r,x) for r,z in zip(rr,opt[:-1]) for x in z]+[(single,opt[-1])]
    M=[EV[z] for z in pts];A,piv=echelon_mod(M,p);rank=len(piv)
    if rank==11:
     free=next(j for j in range(12) if j not in piv);v=[0]*12;v[free]=1
     for i,col in reversed(list(enumerate(piv))):v[col]=-sum(A[i][j]*v[j] for j in range(col+1,12))%p
     key=canonical_mod(v,p);require(key in cmap,'missing rank-eleven candidate')
     z=cmap[key];require(all(sum(a*b for a,b in zip(row,z))==0 for row in M),'exact kernel')
     seen.add(z);dot_checks+=len(M)
    else:
     ks=rational_nulls(M);require(len(ks)>=2,'mod rank was not Q rank')
     for z in ks[:2]:
      require(sum(abs(x) for x in z)<2**d['bounds']['small5_bits'],'low rank coefficient')
      require(all(sum(a*b for a,b in zip(row,z))==0 for row in M),'low rank exact kernel')
      dot_checks+=len(M)
     require(any(ks[0][a]*ks[1][b]!=ks[0][b]*ks[1][a] for a in range(12) for b in range(a)),'independence')
     low_relations+=2
    rank_counts[rank]+=1;npat+=1
  require(npat==d['expected']['patterns']==18900,'complete pattern count')
  require(rank_counts=={11:d['expected']['rank11_patterns'],10:d['expected']['rank10_patterns']},'rank profile')
  require(seen==set(exactmap),'complete candidate coverage')
  stats.update(patterns=npat,rank_counts=dict(rank_counts),exact_row_equations=dot_checks,low_integer_kernels=low_relations)
 if six:
  # No mathematical absence is inferred merely from a modular rank drop.
  V=vals();cnt=Counter()
  for pairs in product(*(tuple(combinations(V[r],2)) for r in V)):
   M=[[r**a*x**b for a,b in bs()] for r,z in zip(V,pairs) for x in z]
   _,piv=echelon_mod(M,p);rank=len(piv)
   if rank<12:rank=12-len(rational_nulls(M))
   cnt[rank]+=1
  require(sum(cnt.values())==3240,'six pair coverage')
  require(cnt=={12:3147,11:91,10:2},'six pair rank distribution')
  stats['six_double_ranks']=dict(cnt)
 stats['seconds']=time.time()-st
 return stats
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);p.add_argument('--fast',action='store_true');a=p.parse_args()
 d=json.loads((ROOT/'evidence/certificate.json').read_text());out=verify(d,not a.fast,not a.fast)
 Path(a.out).write_text(json.dumps(out,indent=2));print(json.dumps(out,ensure_ascii=False))
