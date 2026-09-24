import os
os.environ['OPENBLAS_NUM_THREADS']='2'
import numpy as np
from numba import njit
import time,json,sys
from pathlib import Path
import model
@njit
def make_matrix(h,js,p):
 C=np.zeros((2*h+1,2*h+1),np.int64);PP=np.ones((32,2*h+1),np.int64)
 for i in range(2*h+1):
  C[i,0]=1;C[i,i]=1
  for j in range(1,i):C[i,j]=(C[i-1,j-1]+C[i-1,j])%p
 for a in range(32):
  for b in range(1,2*h+1):PP[a,b]=PP[a,b-1]*a%p
 mons=[]
 for b in range(h+1):
  for a in range(2*h-2*b+1):mons.append((a,b))
 A=np.zeros((len(js),len(mons)),np.float64)
 for row in range(len(js)):
  r,v,s,i,j=js[row]
  for col in range(len(mons)):
   a,b=mons[col]
   if j>b:continue
   sm=0
   for z in range(min(b-j,i)+1):
    if i-z>a or (s==0 and z):continue
    term=C[b,j]*C[b-j,z]%p*PP[v,b-j-z]%p*PP[s,z]%p*C[a,i-z]%p*PP[r,a-i+z]%p
    sm=(sm+term)%p
   A[row,col]=sm
 return A
@njit
def panel_factor(A,p):
 A=A.copy();m,n=A.shape;perm=np.arange(m);D=np.zeros(n,np.float64);L=np.zeros((m,n),np.float64)
 for j in range(n):
  a=j
  while a<m and A[a,j]==0:a+=1
  if a==m:return perm,L,D,j
  if a!=j:
   for k in range(n):A[a,k],A[j,k]=A[j,k],A[a,k]
   for k in range(j):L[a,k],L[j,k]=L[j,k],L[a,k]
   perm[a],perm[j]=perm[j],perm[a]
  d=int(A[j,j]);D[j]=d
  inv=1
  while inv*d%p!=1:inv+=1
  for k in range(j,n):A[j,k]=(A[j,k]*inv)%p
  for i in range(j+1,m):
   c=A[i,j];L[i,j]=c
   if c:
    for k in range(j+1,n):A[i,k]=(A[i,k]-c*A[j,k])%p
 return perm,L,D,n

def rank(A,p,block=64):
 m,n=A.shape;ids=np.arange(m);pivs=[];det=1
 for k in range(0,n,block):
  b=min(block,n-k);perm,L,D,r=panel_factor(A[k:,k:k+b],p)
  if r!=b:return k+r,pivs,det
  ids[k:]=ids[k:][perm];pivs.extend(map(int,ids[k:k+b]))
  trail=A[k:,k+b:][perm].copy();U=trail[:b].copy()
  for j in range(b):
   inv=pow(int(D[j]),-1,p);det=det*int(D[j])%p
   if j:U[j]=(U[j]-L[j,:j]@U[:j])%p
   U[j]=U[j]*inv%p
  if k+b<n:
   A[k:k+b,k+b:]=U
   A[k+b:,k+b:]=(trail[b:]-L[b:]@U)%p
  if k%512==0:print('RANK_BLOCK',k,n,flush=True)
 return n,pivs,det


def plain_rank(A,p):
    B=A.astype(np.int64).tolist();m=len(B);n=A.shape[1];rank=0
    for col in range(n):
        found=next((i for i in range(rank,m) if B[i][col]%p),None)
        if found is None:continue
        B[rank],B[found]=B[found],B[rank];inv=pow(B[rank][col]%p,-1,p)
        B[rank]=[(v*inv)%p for v in B[rank]]
        for i in range(rank+1,m):
            c=B[i][col]%p
            if c:B[i]=[(x-c*y)%p for x,y in zip(B[i],B[rank])]
        rank+=1
        if rank==m:break
    return rank

def run(out):
    import argparse,subprocess,random,tempfile
    state=model.all_states()[1027];h=state['h'];js=model.jets(state)
    A=make_matrix(h,np.array(js,np.int64).reshape((-1,5)),257)
    assert A.shape==(5564,5476) and np.all(A==np.rint(A)) and np.all((0<=A)&(A<257))
    start=time.time();rk,pivs,det=rank(A,257);assert rk==5476
    print('DENSE_REFERENCE_FULL_COLUMN_RANK',rk,'seconds',round(time.time()-start,3),flush=True)
    # 64-product Schur updates and pivot-row updates stay integral and <2^53.
    assert 65*256*256<2**53
    del A
    rng=random.Random(109257);small=[];exe=out.parent.parent/'bin/module257'
    maxima=[77,67,54,48,45,52]
    with tempfile.TemporaryDirectory() as td:
        for index in range(24):
            h=index%7;v=[a-rng.randrange(6) for a in maxima];K=(0,0,0);s5=0
            st=dict(h=h,v=v);js=model.jets(st);mat=make_matrix(h,np.array(js,np.int64).reshape((-1,5)),257)
            ref=plain_rank(mat,257)
            for reverse in (0,1):
                trace=Path(td)/f't{index}_{reverse}.txt'
                subprocess.run([str(exe),str(h),*map(str,v),'0','0','0','0',str(trace),str(reverse)],capture_output=True,text=True,check=True)
                weights=list(map(int,trace.read_text().splitlines()[-1].split()[1:]));nullity=sum(max(0,2*h-w+1) for w in weights)
                assert ref==(h+1)**2-nullity
            small.append(dict(index=index,h=h,v=v,rows=len(js),columns=(h+1)**2,rank=ref))
    result=dict(status='PASS_INDEPENDENT_DENSE_AND_24_SMALL_RANK_CHECKS',state1027=dict(shape=[5564,5476],rank=5476,prime=257,pivot_product=det,selected_rows=pivs),
        small_tests=small,small_source_order_runs=48,field_arithmetic='integer residues; BLAS double dot products are exact integers under proved 65*256^2 bound',
        numerical_approximate_rank_used=False)
    out.write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
if __name__=='__main__':
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();run(args.out)
