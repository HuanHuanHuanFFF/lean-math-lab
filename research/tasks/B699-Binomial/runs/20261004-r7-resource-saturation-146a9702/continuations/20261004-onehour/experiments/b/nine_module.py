"""Build and use the exact 9 x 45 Krylov relation matrix and the 9th-power gate operator."""
import exact_fiber as f
from fractions import Fraction
from pathlib import Path
import json,time,hashlib

def mv(K,A,v):
 z=[K.zero]*9
 for i in range(9):
  for j in range(9):z[i]=K.add(z[i],K.mul(A[i][j],v[j]))
 return z

def vadd(K,a,b):return [K.add(x,y) for x,y in zip(a,b)]
def scale(K,a,v):return [K.mul(a,x) for x in v]
def pad(K,v):return list(v)+[K.zero]*(9-len(v))
def rank(K,columns):
 basis={}
 for col in columns:
  v=list(col)
  for i in range(9):
   if not v[i]:continue
   if i not in basis:
    v=scale(K,K.inv(v[i]),v);basis[i]=v;break
   v=vadd(K,v,scale(K,K.neg(v[i]),basis[i]))
 return len(basis)

def bits(values):
 return max((max(abs(x.numerator).bit_length(),x.denominator.bit_length()) for a in values for x in a),default=0)

if __name__=='__main__':
 rs,fs,gs,prov=f.source();out=Path(__file__).parent;start=time.monotonic();names=['P5','V4','V3','V2','V1'];results=[];mem=rs.memory()
 u,y,r=rs.u,rs.y,rs.r;E=u*y-y+1
 L0=rs.R.from_dict({(a,b,0):c for (a,b,j),c in fs['V0'].items() if j==9})
 assert L0==-1105920*u**8*y**7*(u-1)**2*(y-1)**3*E**5
 for fname in ['rational-generic','four-boundary-base-fibers','F0-complex-fiber']:
  rec=json.loads((out/(fname+'-certificate.json')).read_text(encoding='utf-8'));K=f.Alg(rec['base_modulus']);uu=K.val(rec['u']);yy=K.val(rec['y']);pp={n:f.evaluate(K,F,uu,yy) for n,F in (fs|gs).items()};Q=pp['V0'];assert len(Q)==10;L=Q[9];K.inv(L)
  A=[[K.zero]*9 for _ in range(9)]
  for i in range(8):A[i+1][i]=L
  for i in range(9):A[i][8]=K.neg(Q[i])
  columns=[];verified=0
  for name in names:
   FF=pp[name]+[K.zero]*(10-len(pp[name]));w=[K.sub(K.mul(L,FF[i]),K.mul(FF[9],Q[i])) for i in range(9)];v=w
   for j in range(9):
    direct=f.pd(K,[K.zero]*j+pp[name],Q)[1];direct=scale(K,K.pow(L,j+1),pad(K,direct));assert v==direct
    columns.append(v);verified+=1;v=mv(K,A,v)
  ss=f.pm(K,[K.zero,K.one],f.pm(K,pp['D'],f.pm(K,pp['N'],pp['K'])));assert len(ss)<=7
  ss=ss+[K.zero]*(7-len(ss))
  def S(v):
   z=[K.zero]*9;p=list(v)
   for j in range(7):
    z=vadd(K,z,scale(K,K.mul(ss[j],K.pow(L,6-j)),p));p=mv(K,A,p)
   return z
  vv=[K.one]+[K.zero]*8;smod=[K.one]
  for k in range(1,10):
   vv=S(vv);smod=f.pd(K,f.pm(K,smod,ss),Q)[1];assert vv==scale(K,K.pow(L,6*k),pad(K,smod))
  rankR=rank(K,columns);rankAug=rank(K,columns+[vv]);assert rankR==9-rec['common_fiber_degree'];assert rankAug==rankR
  # A saturation membership witness for the unscaled matrix C^j F(C)e0.
  dec=lambda p:[K.val(c) for c in p];d=dec(rec['gcd']);m,rem=f.pd(K,smod,d);assert not rem
  bez={n:dec(c) for n,c in zip(rec['gcd_bezout_names'],rec['gcd_bezout'])}
  comb=[K.zero]*9
  for jn,name in enumerate(names):
   mult=f.pd(K,f.pm(K,m,bez[name]),Q)[1];mult=pad(K,mult)
   for j in range(9):comb=vadd(K,comb,scale(K,K.mul(mult[j],K.pow(K.inv(L),j+1)),columns[9*jn+j]))
  assert comb==pad(K,smod)
  results.append({'case':fname,'matrix_shape':[9,45],'matrix_rank':rankR,'augmented_shape':[9,46],'augmented_rank':rankAug,'all_relation_columns_exact':verified,'all_gate_iterates_exact':9,'gate_degree':6,'saturation_member_exact':True,'largest_matrix_coefficient_bits':max(bits(v) for v in columns),'gate_vector_coefficient_bits':bits(vv),'unit_inversions_verified':K.inv_count})
  print(results[-1],flush=True)
 data={'source_provenance':prov,'base_ring':'QQ[u,y,1/(u*(u-1)*y*(y-1)*(u*y-y+1))]','rank':9,'basis':['r^'+str(j) for j in range(9)],'L':'-1105920*u^8*y^7*(u-1)^2*(y-1)^3*(u*y-y+1)^5','A_entries':'A[i+1,i]=L (0<=i<8); A[i,8]=-[r^i]V0 (0<=i<9); all other entries zero','generator_order':names,'w_F':'w_F[i]=L*[r^i]F-[r^9]F*[r^i]V0 (0<=i<9)','R_columns':'A^j*w_F (F in generator_order, 0<=j<9)','gate':'s=r*D*N*K; D=8*r*u^2*y^2-6*(u-1)^2*(y-1)^2','S':'sum_{k=0}^6 ([r^k]s)*L^(6-k)*A^k','v':'S^9 * e_0','pointwise_allowed_iff':'rank([R,v]) > rank(R)','scheme_warning':'9 bounds nilpotency only after fixing a complex base point; not a global colon stabilization bound','checks':results,'resource':mem,'seconds':time.monotonic()-start}
 (out/'nine-module-presentation.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
