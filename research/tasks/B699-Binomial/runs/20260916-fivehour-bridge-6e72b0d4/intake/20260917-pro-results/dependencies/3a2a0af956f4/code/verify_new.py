"""Standalone directed certificate receiver. No searches, rational reconstruction,
old block replays, Lean, or floating-point mathematical comparisons are run.
NumPy is used only for modular int64 operations with explicit bounds.
"""
from pathlib import Path
from math import comb, gcd, isqrt, prod
from fractions import Fraction
import json,time,copy,hashlib
import numpy as np
from kernel_algebra import build,entry,det_mod,sylvester_mod
from h012_reduced import get_matrix,specifications
ROOT=Path(__file__).resolve().parents[1]
P=1000003

def prime_check(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def mod_mat(A):return np.array([[z%P for z in row] for row in A],dtype=np.int64)

def right_check(A,ker,free):
 assert len(A[0])*(P-1)**2<2**63
 M=mod_mat(A)
 for j,v in enumerate(ker):
  assert len(v)==M.shape[1] and all(isinstance(z,int) and 0<=z<P for z in v)
  assert [v[f] for f in free]==[int(j==i) for i in range(len(free))]
  assert not np.any((M@np.array(v,dtype=np.int64))%P)

def restriction(bs,v,N,degree):
 f=[0]*(degree+1)
 for z,(a,b) in zip(v,bs):f[b]=(f[b]+z*pow(N,a,P))%P
 return f

def expanded_f(bs,v,mu,D):
 G=np.zeros((D+1,D+1),dtype=np.int64)
 for z,(a,b) in zip(v,bs):
  for i in range(a+1):G[i+b,a-i+b]=(int(G[i+b,a-i+b])+z*comb(a,i))%P
 pp=[1]
 for t,m in enumerate(mu):
  for _ in range(m):
   q=[0]*(len(pp)+1)
   for i,c in enumerate(pp):q[i]=(q[i]-t*c)%P;q[i+1]=(q[i+1]+c)%P
   pp=q
 H=np.zeros_like(G)
 for h,c in enumerate(pp):
  H[h:]=(H[h:]+c*G[:D+1-h])%P
 F=np.zeros_like(G)
 for h,c in enumerate(pp):F[:,h:]=(F[:,h:]+c*H[:,:D+1-h])%P
 return F

def direct_taylor(bs,ker,mu,D,T,weights):
 # Translation uses binomial expansion in the original U,V coordinates.
 trans={}
 for s in range(9):
  trans[s]=np.array([[comb(a,u)*pow(s,a-u,P)%P if a>=u else 0 for a in range(D+1)] for u in range(D+1)],dtype=np.int64)
 assert (D+1)*(P-1)**2<2**63
 checks=0
 for v in ker:
  F=expanded_f(bs,v,mu,D)
  for a in range(D+1):
   for b in range(D+1):
    if a+b<T or a+b>D:assert F[a,b]==0
  for r,w in weights.items():
   for s in range(r+1):
    J=((trans[s]@F)%P@trans[r-s].T)%P
    for a in range(w):
     for b in range(w-a):assert J[a,b]==0;checks+=1
 return checks

def h012(cert,direct=True):
 assert cert['D']==80 and cert['T']==13 and cert['mu']==[5,4,3,2]
 assert {int(k):v for k,v in cert['weights'].items()}=={3:20,4:16,5:13,6:11,7:10,8:8}
 assert cert['prime']==P and prime_check(P)
 A,bs,rows,cont=get_matrix();m=len(rows);n=len(bs)
 assert (m,n)==(723,725) and cert['matrix_shape']==[m,n]
 assert cert['row_content']==cont and cert['basis']==[list(x) for x in bs]
 assert cert['equations']==[list(x) for x in rows]
 assert sorted(cert['rows'])==list(range(m))
 cols=cert['cols'];assert len(cols)==m and len(set(cols))==m and all(0<=i<n for i in cols)
 free=sorted(set(range(n))-set(cols));assert free==cert['free']
 assert [bs[f] for f in free]==[(8,22),(0,26)]
 M=mod_mat(A)
 d=det_mod(M[np.ix_(cert['rows'],cols)].tolist(),P)
 assert d==cert['minor_det'] and d!=0
 right_check(A,cert['kernel'],free)
 fs=[restriction(bs,v,9,26) for v in cert['kernel']]
 r=sylvester_mod(*fs,26,P)
 assert r==cert['resultant_at_9']==244641 and r!=0
 # Integer coefficient estimates for the adjugate-defined lifted kernels.
 assert max(abs(z).bit_length() for row in A for z in row)<=208
 assert n<32**2 and m*213==153999<154000
 assert 52*(154000+12)==8008624<14000001
 assert 154000+10+78*11==154868<155000
 assert 6*155000+13*1000000==13930000<14000001
 # Directly computed tighter Hadamard bound is diagnostic, not used by the paper constants.
 normbits=(sum(sum(z*z for z in row).bit_length() for row in A)+1)//2
 assert normbits==80851==cert['coefficient_bound_bits']
 cross=direct_taylor(bs,cert['kernel'],[5,4,3,2],80,13,{3:20,4:16,5:13,6:11,7:10,8:8}) if direct else 0
 return {'matrix':[m,n],'rank':m,'integer_matrix_entries':m*n,'right_kernel_equations':2*m,'minor_mod_p':d,'resultant_at_9_mod_p':r,'direct_UV_Taylor_checks':cross,'coefficient_bits_paper':154000,'coefficient_bits_Hadamard':normbits}

def h013(cert,direct=True):
 assert cert['p']==P and cert['matrix_shape']==[649,650]
 A,bs,rows=build(55,{2:18,4:10,5:9,6:7,7:6,8:6},3)
 left=cert['left_relations'];assert len(left)==2
 for v in left:
  assert len(v)==649
  nz=[(i,z) for i,z in enumerate(v) if z]
  assert all(sum(z*A[i][c] for i,z in nz)==0 for c in range(650))
 assert any(left[0][i]*left[1][j]!=left[0][j]*left[1][i] for i in range(649) for j in range(i+1,649))
 I=cert['rows'];J=cert['cols'];assert len(I)==len(set(I))==len(J)==len(set(J))==647
 assert all(0<=i<649 for i in I) and all(0<=j<650 for j in J)
 M=mod_mat(A)
 minor=det_mod(M[np.ix_(I,J)].tolist(),P);assert minor==cert['minor_det']!=0
 free=sorted(set(range(650))-set(J));assert free==cert['free']
 right_check(A,cert['kernel'],free)
 fs=[restriction(bs,v,0,24) for v in cert['kernel'][:2]]
 r=sylvester_mod(*fs,24,P);assert r==413371==cert['sylvester_residue']
 assert 48*(647*(196+10)+6)==6397824<6400000<14000001
 cross=direct_taylor(bs,cert['kernel'][:2],[1,1,1],55,2,{2:18,4:10,5:9,6:7,7:6,8:6}) if direct else 0
 return {'matrix':[649,650],'rank':647,'exact_left_equations':1300,'minor_mod_p':minor,'resultant_at_zero_mod_p':r,'direct_UV_Taylor_checks':cross}

def main(out):
 out=Path(out);out.mkdir(parents=True,exist_ok=True);t=time.time()
 c12=json.loads((ROOT/'evidence/h012_reduced_mod.json').read_text())
 c13=json.loads((ROOT/'evidence/h013_reconstruction.json').read_text())
 result={'status':'PASS_H013_TARGETED_AND_NEW_H012_D6','H013':h013(c13),'H012':h012(c12),'seconds':time.time()-t,'old_history_replayed':False,'lean':False}
 (out/'acceptance.json').write_text(json.dumps(result,indent=2));print(json.dumps(result,ensure_ascii=False))
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();main(a.out)
