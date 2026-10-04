"""Use the length-at-most-five sharpening in the same 9-dimensional relation presentation."""
import exact_fiber as f
from nine_module import mv,vadd,scale,pad,rank,bits
from pathlib import Path
import json,time

if __name__=='__main__':
 start=time.monotonic();rs,fs,gs,prov=f.source();out=Path(__file__).parent;names=['P5','V4','V3','V2','V1'];results=[]
 for fname in ['rational-generic','four-boundary-base-fibers','F0-complex-fiber']:
  rec=json.loads((out/(fname+'-certificate.json')).read_text(encoding='utf-8'));K=f.Alg(rec['base_modulus']);uu=K.val(rec['u']);yy=K.val(rec['y']);pp={n:f.evaluate(K,F,uu,yy) for n,F in (fs|gs).items()};Q=pp['V0'];L=Q[9];il=K.inv(L);assert pp['P5'] and len(pp['P5'])<=6
  A=[[K.zero]*9 for _ in range(9)]
  for i in range(8):A[i+1][i]=L
  for i in range(9):A[i][8]=K.neg(Q[i])
  columns=[]
  for name in names:
   FF=pp[name]+[K.zero]*(10-len(pp[name]));w=[K.sub(K.mul(L,FF[i]),K.mul(FF[9],Q[i])) for i in range(9)];vv=w
   for j in range(9):columns.append(vv);vv=mv(K,A,vv)
  ss=f.pm(K,[K.zero,K.one],f.pm(K,pp['D'],f.pm(K,pp['N'],pp['K'])));ss+= [K.zero]*(7-len(ss))
  def S(v):
   z=[K.zero]*9;p=v
   for j in range(7):
    z=vadd(K,z,scale(K,K.mul(ss[j],K.pow(L,6-j)),p))
    if j<6:p=mv(K,A,p)
   return z
  vv=[K.one]+[K.zero]*8;smod=[K.one]
  for k in range(1,6):
   vv=S(vv);smod=f.pd(K,f.pm(K,smod,ss),Q)[1];assert vv==scale(K,K.pow(L,6*k),pad(K,smod))
  dec=lambda p:[K.val(c) for c in p];d=dec(rec['gcd']);m,rem=f.pd(K,smod,d);assert not rem
  bez={n:dec(c) for n,c in zip(rec['gcd_bezout_names'],rec['gcd_bezout'])};comb=[K.zero]*9
  for jn,name in enumerate(names):
   mult=pad(K,f.pd(K,f.pm(K,m,bez[name]),Q)[1])
   for j in range(9):comb=vadd(K,comb,scale(K,K.mul(mult[j],K.pow(il,j+1)),columns[9*jn+j]))
  assert comb==pad(K,smod)
  rr=rank(K,columns);ra=rank(K,columns+[vv]);assert rr==ra
  row={'case':fname,'rank_R':rr,'rank_augmented':ra,'power':5,'all_gate_iterates_exact':5,'gate_vector_coefficient_bits':bits(vv),'s5_relation_member_exact':True,'unit_inversions_verified':K.inv_count};results.append(row);print(row,flush=True)
 receipt={'source_provenance':prov,'definition':'v5=S^5 e0=L^30 s(C)^5 e0','pointwise_allowed_iff':'rank([R,v5])>rank(R)','length_dependency':'p5-nonzero-fiber-certificate.json and proof note 03','global_colon_power_not_claimed':True,'checks':results,'seconds':time.monotonic()-start}
 (out/'five-power-module-receipt.json').write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
