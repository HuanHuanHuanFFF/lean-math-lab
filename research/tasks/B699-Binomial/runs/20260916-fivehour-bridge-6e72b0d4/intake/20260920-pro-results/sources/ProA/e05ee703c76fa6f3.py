#!/usr/bin/env python3
"""Discovery: CRT and rational reconstruction of exact coefficient kernels.
Final proof is the exact dot-product identity and an augmented nonzero minor,
not modular rank deficiency or a heuristic reconstruction bound.
"""
import json,math,sys,time
from pathlib import Path
from fractions import Fraction as F
import numpy as np
from jets import Model,full_minor
from accept_core import isprime,determinant_mod,enc,packpoly

def rational_reconstruction(a,M):
 if a==0:return F(0)
 B=math.isqrt((M-1)//2);r0,r1=M,a;t0,t1=0,1
 while abs(r1)>B:
  k=r0//r1;r0,r1=r1,r0-k*r1;t0,t1=t1,t0-k*t1
 if not t1 or abs(t1)>B or math.gcd(r1,t1)!=1:return None
 if (r1-a*t1)%M:return None
 return F(r1,t1)

def normalize_kernels_mod(A,nc,p,pivcols,free):
 """Solve A*v=0 with free coordinates forming an identity matrix."""
 mat=np.array([[int(row[j]%p) for j in pivcols]+[int(-row[j]%p) for j in free] for row in A],dtype=np.int64)
 rank=0;n=len(pivcols)
 for j in range(n):
  nz=np.flatnonzero(mat[rank:,j])
  if not len(nz):return None
  i=rank+int(nz[0]);mat[[rank,i]]=mat[[i,rank]]
  if rank+1<len(mat):
   fac=mat[rank+1:,j]*pow(int(mat[rank,j]),-1,p)%p
   mat[rank+1:,j:]=(mat[rank+1:,j:]-fac[:,None]*mat[rank,j:][None,:])%p
  rank+=1
 if np.any(mat[n:,n:]):return None
 X=np.zeros((n,len(free)),dtype=np.int64)
 for i in range(n-1,-1,-1):
  # p~10^6 here; each dot sum < 400*p^2 < 2^63.
  tail=(mat[i,i+1:n]@X[i+1:,:])%p
  X[i,:]=((mat[i,n:]-tail)*pow(int(mat[i,i]),-1,p))%p
 out=[]
 for k,f in enumerate(free):
  v=[0]*nc;v[f]=1
  for i,j in enumerate(pivcols):v[j]=int(X[i,k])
  out.append(v)
 return out

def recover_kernel(A,nc,free,max_primes=400):
 piv=[j for j in range(nc) if j not in free];acc=[[0]*nc for _ in free];M=1;p=1000000;used=[]
 for step in range(max_primes):
  p+=1
  while not isprime(p):p+=1
  vv=normalize_kernels_mod(A,nc,p,piv,free)
  if vv is None:continue
  inv=pow(M,-1,p)
  for k in range(len(free)):
   for j in range(nc):acc[k][j]+=M*((vv[k][j]-acc[k][j])%p*inv%p)
  M*=p;used.append(p)
  if len(used)%3:continue
  qs=[[rational_reconstruction(a,M) for a in v] for v in acc]
  if any(x is None for v in qs for x in v):continue
  if all(sum(F(a)*b for a,b in zip(row[:nc],v))==0 for row in A for v in qs):
   return qs,{'moduli_used':used,'crt_bits':M.bit_length(),'free_coordinates':free}
  if len(used)%30==0:print('RECONSTRUCTION_PROGRESS',len(used),M.bit_length(),flush=True)
 raise RuntimeError('kernel not reconstructed within explicit bound; no mathematical exclusion')

def main(src,out):
 ob=json.loads(src.read_text());q=ob['q'];M0=Model(q);res=[]
 for ex in ob['exceptions']:
  if M0.nc not in ex.get('columns',[]) and ex.get('rank_aug_mod')==M0.nc:
   print('DEFER_FULL_COEFFICIENT_RANK_CANDIDATE',q,ex['index'],flush=True);continue
  start=time.monotonic();labs,A=M0.build(ex['record']);nc=M0.nc
  coeff=[[v%1000033 for v in row[:-1]] for row in A];rr,cc,rank=full_minor(coeff,1000033);free=[j for j in range(nc) if j not in cc]
  print('KERNEL_BEGIN',q,ex['index'],'coefficient_mod_rank',rank,'free',free,flush=True)
  ker,log=recover_kernel(A,nc,free)
  # Exact identities and independent free coordinates bound rational rank.
  assert all(v[f]==int(i==j) for i,v in enumerate(ker) for j,f in enumerate(free))
  ar,ac,aug=full_minor([[v%1000033 for v in row] for row in A],1000033)
  assert aug>nc-len(ker)
  det=determinant_mod([[A[i][j] for j in ac] for i in ar],1000033)
  assert det
  polys=[]
  for v in ker:
   den=math.lcm(*(x.denominator for x in v));nums=[int(x*den) for x in v];g=math.gcd(*nums);nums=[x//g for x in nums]
   polys.append(packpoly({m:x for m,x in zip(M0.mons,nums) if x}))
  z={'index':ex['index'],'kernel_vectors':[[enc(x) for x in v] for v in ker],'kernel_Q_polynomials':polys,'kernel_free_columns':free,'coefficient_rank_upper':nc-len(ker),'augmented_rank_lower':aug,'prime':1000033,'rows':ar,'columns':ac,'determinant_mod_prime':det,'reconstruction':log}
  res.append(z);out.write_text(json.dumps(res,separators=(',',':'),sort_keys=True)+'\n');print('KERNEL_ACCEPTED_DISCOVERY',q,ex['index'],'nullity',len(ker),'augmented_rank',aug,'bits',log['crt_bits'],'seconds',round(time.monotonic()-start,3),flush=True)
if __name__=='__main__':main(*map(Path,sys.argv[1:]))
