from pathlib import Path
from fractions import Fraction as Q
import json,hashlib,time
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261005-onehour-h110';out=cont/'reviews/B-stage1';exp=cont/'experiments/b';src=root/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results';start=time.monotonic()
manifest_raw=(exp/'STAGE1-FROZEN.json').read_bytes();assert hashlib.sha256(manifest_raw).hexdigest()=='22b6bc0ab4a97638e3642f9721342b8cc4e98e76b9692609db382644e713fc6e';manifest=json.loads(manifest_raw)
for z in manifest['files']:
 p=cont/z['path'];b=p.read_bytes();assert len(b)==z['bytes'] and hashlib.sha256(b).hexdigest()==z['sha256']
container='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c';mm=json.loads((src/'MEMBERS.json').read_text());records={m['name'].split('/',1)[1]:m for m in mm['members'] if m['archive_sha256']==container and m.get('retained_path')};provenance=[]
def load(name):
 z=records[name];raw=(src/z['retained_path']).read_bytes();assert hashlib.sha256(raw).hexdigest()==z['sha256'];provenance.append({'member':name,'sha256':z['sha256'],'bytes':len(raw),'retained_path':z['retained_path']});return json.loads(raw)
def decode(ts,n):
 d={}
 for e,c in ts:assert len(e)==n and all(type(a)is int and a>=0 for a in e);v=int(c);assert str(v)==str(c) and v;key=tuple(e)+((0,) if n==2 else ());assert key not in d;d[key]=v
 return d
g=load('inputs/generic.json');assert all(e[3]==0 for key in ['B5','N','K'] for e,c in g[key]);fs={'P5':decode([(e[:3],c) for e,c in g['B5']],3)};gs={key:decode([(e[:3],c) for e,c in g[key]],3) for key in ['N','K']}
for i in [4,3,2,1,0]:fs[f'V{i}']=decode(load(f'certificates/colon_{i}.json')['V'],3)
prior=run/'continuations/20261005-fiftymin/experiments/b/one-step-N-colon.json';wb=prior.read_bytes();assert hashlib.sha256(wb).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';W=decode(json.loads(wb)['W'],3)
z=json.loads((exp/'r2-compact-certificate.json').read_text());Z=decode(z['Z'],3);J=decode(z['Jcal'],2);M=decode(z['M'],2);B=decode(z['B1'],2)
def add(a,b,s=1):
 d=dict(a)
 for e,c in b.items():d[e]=d.get(e,0)+s*c
 return {e:c for e,c in d.items() if c}
def mul(a,b):
 d={}
 for (a0,a1,a2),c in a.items():
  for (b0,b1,b2),v in b.items():e=(a0+b0,a1+b1,a2+b2);d[e]=d.get(e,0)+c*v
 return {e:c for e,c in d.items() if c}
assert J=={(2,0,0):1,(1,2,0):1,(1,1,0):-3,(0,1,0):1}
rpoly={(0,0,1):1};gate={(2,2,2):1};lhs=mul(gate,Z);rhs=add({e:-c for e,c in mul(mul(J,J),fs['V0']).items()},mul(add(mul(J,M),mul(rpoly,B)),fs['P5']),-1);assert lhs==rhs
um={(1,0,0):1,(0,0,0):-1};ym={(0,1,0):1,(0,0,0):-1};D=add({(2,2,1):8},{e:6*c for e,c in mul(mul(um,um),mul(ym,ym)).items()},-1);allF=fs|gs|{'D':D,'W':W,'Z':Z}
# Independent standard-library rational quotient-polynomial arithmetic.
def trim(a):
 a=list(a)
 while a and not a[-1]:a.pop()
 return a
def plus(a,b):return trim([(a[i] if i<len(a) else Q(0))+(b[i] if i<len(b) else Q(0)) for i in range(max(len(a),len(b)))])
def product(a,b):
 d=[Q(0)]*max(0,len(a)+len(b)-1)
 for i,c in enumerate(a):
  for j,v in enumerate(b):d[i+j]+=c*v
 return trim(d)
def remainder(a,q):
 a=trim(a)
 while a and len(a)>=len(q):
  shift=len(a)-len(q);v=a[-1]/q[-1]
  for i,c in enumerate(q):a[shift+i]-=v*c
  a=trim(a)
 return a
results=[]
for filename in ['strict-support-fiber.json','r0-removal-fiber.json']:
 data=json.loads((exp/filename).read_text());q=list(map(Q,data['q']));assert len(q)>1 and q[-1]!=0 and data['u']=='t' and data['y']==2;rdata=data['r'] if isinstance(data['r'],list) else [data['r']];rr=trim(list(map(Q,rdata)));rp=[[Q(1)]]
 for k in range(1,10):rp.append(remainder(product(rp[-1],rr),q))
 vals={}
 for name in data['values']:
  F=allF[name];v=[]
  for k in range(max(e[2] for e in F)+1):
   co=[Q(0)]*(max(e[0] for e in F)+1)
   for (a,b,j),c in F.items():
    if j==k:co[a]+=c*2**b
   v=remainder(plus(v,product(remainder(co,q),rp[k])),q)
  assert v==trim(list(map(Q,data['values'][name])));vals[name]=v
 units=data.get('unit_inverses',data.get('inverses'));extra={'r':rr,'u':[Q(0),Q(1)],'um':[Q(-1),Q(1)],'E':[Q(-1),Q(2)]}
 for name,iv in units.items():assert remainder(product(vals.get(name,extra.get(name)),list(map(Q,iv))),q)==[Q(1)]
 assert all(vals[name]==[] for name in fs)
 if filename.startswith('strict'):assert vals['N']==vals['K']==[] and vals['W']!=[] and 'W' in units
 else:assert vals['W']==[] and vals['Z']==[Q(402192),Q(187056)] and 'Z' in units and all(vals[name] for name in ['N','K','D'])
 results.append({'file':filename,'quotient_degree':len(q)-1,'all_original_six_zero':True,'values_checked':len(vals),'unit_identities_checked':len(units),'W_invertible':filename.startswith('strict'),'Z_invertible':filename.startswith('r0')})
stats={'terms':len(Z),'total_degree':max(map(sum,Z)),'degrees':[max(e[i] for e in Z) for i in range(3)],'coefficient_bits':max(abs(c).bit_length() for c in Z.values()),'denominators':[1]};assert stats==z['Z_stats']
result={'verifier':'/root/verify_reg3_module','method':'Independent original-member parser, integer sparse global identity and standard-library Fraction quotient arithmetic','stage1_manifest_sha256':hashlib.sha256(manifest_raw).hexdigest(),'global_r2_integer_identity':True,'lhs_terms':len(lhs),'Z_stats':stats,'fibers':results,'source_provenance':provenance,'seconds':time.monotonic()-start,'not_checked':'General r0 F0 curve explanation, B9/further elimination, legal-domain emptiness'}
(out/'independent-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:result[k] for k in ['global_r2_integer_identity','Z_stats','fibers','seconds']}))
