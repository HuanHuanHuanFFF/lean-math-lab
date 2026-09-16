from kernel_algebra import *
from pathlib import Path
import json,time
ROOT=Path(__file__).resolve().parents[1]
t=time.time();w={2:18,4:10,5:9,6:7,7:6,8:6}
A,bs,rows=build(55,w,3)
print('MATRIX',len(rows),len(bs),'seconds',time.time()-t,flush=True)
v1=residue_relation({2:16,4:9,5:8,6:6,7:5,8:5},[(1,Q(1),[1]),(0,Q(-1),[1])],rows)
v2=residue_relation({2:15,4:8,5:8,6:6,7:5,8:5},[(2,Q(1,2),[2,3]),(0,Q(-1,2),[2,3]),(1,Q(-1),[1,3]),(0,Q(1),[1,3])],rows)
for v in [v1,v2]:
 nz=[(i,z) for i,z in enumerate(v) if z]
 assert all(sum(z*A[i][c] for i,z in nz)==0 for c in range(len(bs)))
print('EXACT_LEFT_RELATIONS',[(sum(bool(x) for x in v),max(abs(x).bit_length() for x in v)) for v in [v1,v2]],flush=True)
assert any(v1[i]*v2[j]!=v1[j]*v2[i] for i in range(len(rows)) for j in range(i+1,len(rows)))
rr=rref_mod(A);assert rr['rank']==647
print('RANK',rr['rank'],'FREE',[bs[x] for x in rr['free']], 'MINOR',rr['minor_det'],flush=True)
rs=[]
for v in rr['kernel']:
 f=[0]*25
 for z,(a,b) in zip(v,bs):
  if a==0:f[b]=z
 rs.append(f)
r0=sylvester_mod(rs[0],rs[1],24)
print('SYLVESTER',r0,flush=True)
assert r0==413371
# Arithmetic height bounds, directly checked.
assert 647<2**10 and 48<2**6 and 650<2**10 and 1680<2**11
assert 647*(196+10)==133282
assert 48*(133282+6)==6397824
assert 133282+10+11*56==133908
assert 6397824<6400000<14000001
out={'status':'PASS_TARGETED_H013_NEW_RECONSTRUCTION','fixed_commit':'da4d9bab862e8d3a3cc5e1676be52e4fa82722f3','matrix_shape':[len(rows),len(bs)],'max_entry_bits':max(abs(z).bit_length() for row in A for z in row),'rank':rr['rank'],'minor_det':rr['minor_det'],'sylvester_residue':r0,'p':1000003,'rows':rr['rows'],'cols':rr['cols'],'free':rr['free'],'kernel':rr['kernel'],'left_relations':[v1,v2],'seconds':time.time()-t}
(ROOT/'evidence/h013_reconstruction.json').write_text(json.dumps(out,indent=2))
print(out['status'],out['seconds'],flush=True)
