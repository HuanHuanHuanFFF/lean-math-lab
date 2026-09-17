"""Build a small certificate for two characteristic-zero kernels.
The large integer coefficients are DEFINED by minors, not reconstructed from a
finite-field guess. Exact left relations prove equality of the two ranks.
"""
from probe_kernel import *
from probe_full import nullvectors
from build_exact_dependencies import entry
import json,hashlib

def detmod(M,p=P):
 M=M.copy();n=M.shape[0];d=1
 for c in range(n):
  nz=np.flatnonzero(M[c:,c]);assert len(nz)
  r=c+int(nz[0])
  if r!=c:M[[r,c]]=M[[c,r]];d=-d
  pivot=int(M[c,c]);d=d*pivot%p
  if c+1<n:
   factor=M[c+1:,c]*pow(pivot,-1,p)%p
   M[c+1:,c+1:] = (M[c+1:,c+1:]-factor[:,None]*M[c,c+1:])%p
 return d%p

def sylvester(f,g,d=24):
 # ascending arrays; padded degree d for both, map (u,v)->u*f+v*g.
 M=np.zeros((2*d,2*d),dtype=np.int64)
 for j in range(d):
  M[j:j+d+1,j]=f
  M[j:j+d+1,d+j]=g
 return M

if __name__=='__main__':
 D=55;w=weights(D,[2,4,5,6,7,8]);A,bs,spec=matrix(D,w,3)
 E,J=rref(A);ET,I=rref(A.T);assert len(I)==len(J)==647
 vs=nullvectors(E,J);free=[c for c in range(len(bs)) if c not in J]
 M=A[np.ix_(I,J)];det=detmod(M)
 fgs=[]
 for v in vs[:2]:
  assert np.all(A@v%P==0)
  fgs.append([int(v[bs.index((0,b))]) for b in range(25)])
 rs=detmod(sylvester(*fgs))
 deps=json.loads((ROOT/'evidence/exact_left_relations.json').read_text())['left_relations']
 depmod=np.array([[c%P for c in v] for v in deps],dtype=np.int64)
 _,dp=rref(depmod);assert len(dp)==2
 out={'schema':'B699-two-kernel-resultant-v1','auxiliary_prime':P,'degree_F':55,'peel':3,'basis_weight_bound':49,
      'source_rows':[2,4,5,6,7,8],'row_weights':[18,10,9,7,6,6],'total_weight':56,
      'matrix_shape':[649,650],'rank_Q_and_Fp':647,'independent_rows':I,'independent_columns':J,
      'free_columns':free,'free_basis_terms':[bs[c] for c in free],
      'chosen_free_columns':free[:2],'normalized_modular_kernels':[[int(c) for c in v] for v in vs[:2]],
      'exact_left_relations':deps,'left_relation_independence_columns':dp,
      'minor_determinant_mod_p':det,'diagonal_restrictions_mod_p':fgs,
      'padded_sylvester_degree':24,'sylvester_determinant_mod_p':rs,
      'entry_power_of_two_bound':196,'kernel_coefficient_power_of_two_bound':133282,
      'nonzero_value_height_exponent':133908,'resultant_height_exponent':6397824,
      'uniform_H013_height_exponent':6400000,'frozen_entrance_exponent':14000001}
 (ROOT/'evidence/two_kernel_certificate.json').write_text(json.dumps(out,indent=2))
 print(json.dumps({k:out[k] for k in ['matrix_shape','rank_Q_and_Fp','free_basis_terms','minor_determinant_mod_p','sylvester_determinant_mod_p','uniform_H013_height_exponent']},indent=2))
