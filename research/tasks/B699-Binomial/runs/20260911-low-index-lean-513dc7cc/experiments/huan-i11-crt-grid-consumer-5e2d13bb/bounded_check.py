from pathlib import Path
from itertools import product
from copy import deepcopy
from datetime import datetime,timezone
import json,hashlib,time
out=Path(__file__).resolve().parent
run=out.parent.parent
start=time.perf_counter()
def height(H,M,P):return min(M,max(H-1,0)//P)
def make(P,Q,ca,cc):
 v=pow(P,-1,Q);rows={}
 for d in range(-10,11):
  rho=(v*d)%Q or Q;c0=(P*rho-d)//Q
  rows[d]={'lo':max(0,-((c0-1)//P)),'hi':min((ca-rho)//Q,(cc-c0)//P)}
 return {'inverse':v,'bounds':rows}
def rowcheck(P,Q,ca,cc,T,d,data):
 v=data['inverse'];b=data['bounds'][d];lo,hi=b['lo'],b['hi']
 if not(P>=2 and Q>=2 and (P*v)%Q==1 and -10<=d<=10):return False
 rho=(v*d)%Q or Q;c0=(P*rho-d)//Q
 valid=(lo<=0 or c0+P*(lo-1)<1) and (ca<rho+Q*(hi+1) or cc<c0+P*(hi+1))
 upper=min(P*(rho+Q*hi),Q*(c0+P*hi))+10
 return valid and (hi<lo or max(upper,0)<=T)
def cellcheck(P,Q,ca,cc,T,data):return all(rowcheck(P,Q,ca,cc,T,d,data) for d in range(-10,11))
def block(p,q,H,M,T,a0,ac,b0,bc,data):
 return all(cellcheck(p**a,q**b,height(H,M,p**a),height(H,M,q**b),T,data[a,b]) for a in range(a0,a0+ac) for b in range(b0,b0+bc))
P,Q=3**22,7**12;H=2**109;M=118703030;T=1458309064184540963
ca,cc=height(H,M,P),height(H,M,Q);data=make(P,Q,ca,cc)
assert data['inverse']==6943879098 and ca==cc==M
assert all(b=={'lo':0,'hi':(0 if d==2 else -1)} for d,b in data['bounds'].items())
assert cellcheck(P,Q,ca,cc,T,data)
rows=[]
for d,b in data['bounds'].items():
 rho=(data['inverse']*d)%Q or Q;c0=(P*rho-d)//Q
 upper=min(P*(rho+Q*b['hi']),Q*(c0+P*b['hi']))+10
 rows.append({'d':d,'rho':rho,'C0':c0,**b,'empty':b['hi']<b['lo'],'upperValue':upper,'upper_toNat':max(upper,0),'rowCheck':rowcheck(P,Q,ca,cc,T,d,data)})
source=run/'experiments/huan-i11-crt-descent-probe-5e2d13bb/result.json'
old=json.loads(source.read_text(encoding='utf-8-sig'));r=next(x for x in old['stages'][0]['pairs'] if x['p']==3 and x['q']==7)
assert old['stages'][0]['H']==H and old['stages'][0]['M']==M
assert r['witness']['a']==22 and r['witness']['b']==12 and r['witness']['d']==2
assert r['max_window_upper']==T
assert rows[12]['rho']==r['witness']['A'] and rows[12]['C0']==r['witness']['C']
mutations=[]
bad=deepcopy(data);bad['inverse']+=1;assert not cellcheck(P,Q,ca,cc,T,bad);mutations.append('wrong inverse rejected')
bad=deepcopy(data);bad['bounds'][2]['hi']=-1;assert not cellcheck(P,Q,ca,cc,T,bad);mutations.append('false empty active row rejected')
bad=deepcopy(data);bad['bounds'][2]['lo']=1;assert not cellcheck(P,Q,ca,cc,T,bad);mutations.append('missing t=0 rejected')
assert not cellcheck(P,Q,ca,cc,T-1,data);mutations.append('target one below true witness rejected')
small_blocks=split_checks=empty_cells=0
for p,q in [(2,3),(3,7)]:
 for h,m in product([1,2,20,50],[0,1,4,10]):
  t=h+10;table={(a,b):make(p**a,q**b,height(h,m,p**a),height(h,m,q**b)) for a in range(1,4) for b in range(1,5)}
  assert block(p,q,h,m,t,1,3,1,4,table);small_blocks+=1
  assert block(p,q,h,m,t,1,0,1,4,table)
  for ac in range(4):
   assert block(p,q,h,m,t,1,ac,1,4,table) and block(p,q,h,m,t,1+ac,3-ac,1,4,table)
   split_checks+=1
  for bc in range(5):
   assert block(p,q,h,m,t,1,3,1,bc,table) and block(p,q,h,m,t,1,3,1+bc,4-bc,table)
   split_checks+=1
  assert block(p,q,h,m,t+5,1,3,1,4,table)
  empty_cells+=sum(all(b['hi']<b['lo'] for b in d['bounds'].values()) for d in table.values())
height_checks=0
for pp in range(1,9):
 for A in range(7):
  for n in range(A*pp,A*pp+11):
   for hh in range(n+1,n+6):
    for mm in range(A,A+4):
     assert A<=height(hh,mm,pp);height_checks+=1
assert 2<=height(7,2,3) and 2>(7-2)//3
result={'utc':datetime.now(timezone.utc).isoformat(),'status':'bounded exact checker/source tests, not Lean','sample':{'p':3,'a':22,'P':P,'q':7,'b':12,'Q':Q,'H':str(H),'M':M,'T':T,'inverse':data['inverse'],'caps':[ca,cc],'rows':rows,'matches_source_probe':True,'source_result_sha256':hashlib.sha256(source.read_bytes()).hexdigest()},'tamper_rejections':mutations,'small_grid_blocks':small_blocks,'row_column_split_checks':split_checks,'all_empty_cells_seen':empty_cells,'height_cap_checks':height_checks,'elapsed_seconds':time.perf_counter()-start,'worker_lean_runs':0,'whole_stage0_grid_generated':False}
(out/'bounded-check-results.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'sample_rows':21,'source_match':True,'tamper_rejections':len(mutations),'small_blocks':small_blocks,'split_checks':split_checks,'height_checks':height_checks,'seconds':result['elapsed_seconds']}))
