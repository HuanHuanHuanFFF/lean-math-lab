from pathlib import Path
import hashlib,json,subprocess,itertools
import numpy as np
root=Path(__file__).resolve().parents[1];src=root/'sources/global649.txt';C=(6,7,4,6);shape=tuple(x+1 for x in C);INF=10000
assert hashlib.sha256(src.read_bytes()).hexdigest()=='cfdbdcff9aa376b12c7ae57e27534a4b635b5b966b247e3157c4a18c67e4e553'
raw=[tuple(map(int,x.split())) for x in src.read_text().splitlines()];assert len(raw)==649
pr=[x for x in raw if x[1:3]==(0,0)]
assert sorted(pr)==sorted(tuple(map(int,x.split())) for x in (root/'sources/global649_c3c4zero_excerpt.txt').read_text().splitlines())
types=sorted(set((x[0],x[3:]) for x in pr if all(x[i+3]<=C[i] for i in range(4))))
out={'source649_bytes_verified':True,'projection_bytes_records_verified':True,'raw_projection_count':len(pr),'fitting_distinct_types':len(types),'grid_cells_per_layer':1960,'cases':[]}
base=None
for floor in [4,5,10,11]:
 ts=[(max(e,floor) if (e,c)==(4,(2,1,0,0)) else e,c) for e,c in types]
 layers=[np.zeros(shape,dtype=np.int64)]
 for k in range(1,9):
  new=np.full(shape,INF,dtype=np.int64)
  for e,c in ts:
   dst=tuple(slice(x,None) for x in c);ss=tuple(slice(0,n-x) for n,x in zip(shape,c))
   new[dst]=np.minimum(new[dst],layers[-1][ss]+e)
  layers.append(new)
 flat=np.array(layers).ravel();path=root/'certificates'/f'ledger_T{floor}.grid.txt'
 ret=subprocess.run([str(root/'code/ledger_receiver'),str(src),str(floor),str(path)],capture_output=True,text=True,check=True)
 rec=np.loadtxt(path,dtype=np.int64);assert np.array_equal(flat,rec)
 R=C;wit=[]
 for k in range(8,0,-1):
  for e,c in ts:
   if all(c[i]<=R[i] for i in range(4)):
    rr=tuple(R[i]-c[i] for i in range(4))
    if int(layers[k-1][rr])+e==int(layers[k][R]):wit.append([e,0,0,*c]);R=rr;break
  else:raise AssertionError('no witness')
 assert sum(v[0] for v in wit)==int(layers[8][C])
 out['cases'].append({'T_floor':floor,'M8':int(layers[8][C]),'compared_integer_cells':len(flat),'differences':0,'resource_only_minimizer':wit})
 if floor==4:base=layers
assert out['cases'][-1]['M8']==128
D=json.loads((root/'certificates/old649_low_preimage_diagnostic.json').read_text())
complete=[]
for q in range(4,11):
 for c in itertools.product(range(2,7,2),range(1,8),range(0,5,2),range(7)):
  rr=tuple(C[i]-c[i] for i in range(4));m7=int(base[7][rr])
  if q+m7<=127:complete.append((q,(0,0,*c),m7))
assert complete==[(v['q'],tuple(v['fee']),v['M7']) for v in D['low']]
assert len(complete)==47 and len(D['missing'])==16
out['low_preimages']=47;out['already_classified_LOW_T43']=31;out['new_or_reverified_pairs']=16
out['new_geometry_scope_note']='16 relative to frozen LOW-T43, not a claim of 16 globally novel results.'
(root/'certificates/ledger_verification.json').write_text(json.dumps(out,indent=2)+'\n')
print({k:v for k,v in out.items() if k!='cases'});print([(v['T_floor'],v['M8']) for v in out['cases']])
