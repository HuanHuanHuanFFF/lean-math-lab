"""Independent integer sparse-dictionary verification; no SymPy and no author checker."""
from pathlib import Path
import hashlib,json,time,sys
root=Path.cwd();run=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702';cont=run/'continuations/20261005-fiftymin';out=cont/'reviews/N-colon-member';src=root/'research/tasks/B699-Binomial/runs/20260916-fivehour-bridge-6e72b0d4/intake/20261003-session-results';container='080d9a2d955471a9f4cb56594cf439e67672141d4caf2a3b9ea98adc2105389c';start=time.monotonic()
m=json.loads((src/'MEMBERS.json').read_text());records={z['name'].split('/',1)[1]:z for z in m['members'] if z['archive_sha256']==container and z.get('retained_path')};provenance=[]
def load(name):
 z=records[name];p=src/z['retained_path'];b=p.read_bytes();assert hashlib.sha256(b).hexdigest()==z['sha256'];provenance.append({'member':name,'retained_path':z['retained_path'],'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()});return json.loads(b)
g=load('inputs/generic.json');c={i:load(f'certificates/colon_{i}.json') for i in [4,3,2,1,0]}
def decode(ts,n):
 result={}
 for e,v in ts:
  assert len(e)==n and all(type(a) is int and a>=0 for a in e);ee=tuple(e);assert ee not in result;vv=int(v);assert str(vv)==str(v);assert vv!=0;result[ee if n==3 else ee+(0,)]=vv
 return result
assert g['vars']==['u','y','r','L']
assert all(len(e)==4 and e[3]==0 for e,v in g['N']);N=decode([(e[:3],v) for e,v in g['N']],3);V1=decode(c[1]['V'],3);V0=decode(c[0]['V'],3)
p=cont/'experiments/b/one-step-N-colon.json';raw=p.read_bytes();assert hashlib.sha256(raw).hexdigest()=='9151546b31ec8f2e6882acf142364c234226ce55eefee12ee70a151fa1d2d45f';data=json.loads(raw);W=decode(data['W'],3);C0=decode(data['C0'],2);C1=decode(data['C1'],2);assert (len(W),len(C0),len(C1))==(11536,541,604)
def add(a,b,scale=1):
 result=dict(a)
 for e,v in b.items():result[e]=result.get(e,0)+scale*v
 return {e:v for e,v in result.items() if v}
def mul(a,b):
 result={}
 for (a0,a1,a2),x in a.items():
  for (b0,b1,b2),y in b.items():e=(a0+b0,a1+b1,a2+b2);result[e]=result.get(e,0)+x*y
 return {e:v for e,v in result.items() if v}
um={(1,0,0):1,(0,0,0):-1};ym={(0,1,0):1,(0,0,0):-1};yy={(0,1,0):1};two={(0,0,0):2}
left=mul(N,W);right=mul(um,add(mul(two,mul(C0,V1)),mul(mul(yy,um),mul(mul(ym,ym),mul(C1,V0))),-1));assert left==right
stats={'terms':len(W),'total_degree':max(map(sum,W)),'degrees':[max(e[i] for e in W) for i in range(3)],'coefficient_bits':max(abs(v).bit_length() for v in W.values()),'denominators':[1]};assert stats==data['W_stats']
result={'verifier':'/root/verify_reg3_module','status':'INDEPENDENT_EXACT_INTEGER_DICTIONARY_IDENTITY_PASS','method':'Independent original-member parser and plain Python integer sparse multiplication; no SymPy','identity':'N*W=(u-1)*(2*C0*V1-y*(u-1)*(y-1)^2*C1*V0)','source_provenance':provenance,'certificate_sha256':hashlib.sha256(raw).hexdigest(),'W_stats':stats,'C0_terms':len(C0),'C1_terms':len(C1),'lhs_terms':len(left),'rhs_terms':len(right),'full_global_integer_identity':True,'elapsed_seconds':time.monotonic()-start,'python':sys.version}
(out/'independent-result.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:result[k] for k in ['status','W_stats','lhs_terms','full_global_integer_identity','elapsed_seconds']}))
