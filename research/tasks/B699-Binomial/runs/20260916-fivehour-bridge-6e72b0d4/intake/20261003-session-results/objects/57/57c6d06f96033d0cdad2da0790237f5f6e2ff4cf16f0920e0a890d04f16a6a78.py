"""Separate state-specific S5 systems for 2029 or 2000, no licence transfer."""
from common import *
import subprocess,time,hashlib,sys
O=ROOT/'certificates/kernels';O.mkdir(exist_ok=True)
audit_path=ROOT/'certificates/S5_ALL_PARAMETER_AUDIT.json'
source=json.loads(audit_path.read_text()); assert source['all_21_orders_exact'] and source['adopted_bounds_match']
idx=int(sys.argv[1]) if len(sys.argv)>1 else 2029;fam='S5';assert idx in (2029,2000);z=STATES[idx];assert (z['h'],z['v'])==({2029:(152,(0,0,0,0,0,1)),2000:(147,(2,2,2,2,1,2))}[idx])
upper=[a['upper_order'] for a in source['points']]
assert [(a['r'],a['s']) for a in source['points']]==[(r,s) for r in range(3,9) for s in range(r//2+1)]
e=z['h']-4;D=2*e;receipts=[]
for p,mode in [(257,0),(263,1),(257,1),(263,0)]:
 name=f's{idx}_{fam}_p{p}_m{mode}';pre=O/name;inp=pre.with_suffix('.input');inp.write_text(source_input(e,D,z['v'],p,mode,upper));t=time.monotonic();print('START',name,flush=True)
 with inp.open() as fi,(ROOT/f'logs/{name}.generate.log').open('w') as log:subprocess.run([str(ROOT/'work/module_kernel'),str(pre)],stdin=fi,stdout=log,stderr=subprocess.STDOUT,check=True)
 j=json.loads(pre.with_suffix('.json').read_text())
 rr=subprocess.run([str(ROOT/'work/check_trace'),str(inp),str(pre)+'.trace.tsv'],capture_output=True,text=True,check=True)
 (ROOT/f'logs/{name}.receive.json').write_text(rr.stdout);r=json.loads(rr.stdout);assert r['verified']
 for k in ['weights','conditions','nonredundant','dimension','min_weight']: assert j[k]==r[k]
 rc={'state':idx,'family':fam,'h':z['h'],'v':z['v'],'e':e,'D':D,'p':p,'mode':mode,'dimension':j['dimension'],'conditions':j['conditions'],'nonredundant':j['nonredundant'],'min_weight':j['min_weight'],'weights':j['weights'],'source_audit_sha256':hashlib.sha256(audit_path.read_bytes()).hexdigest(),'input_sha256':hashlib.sha256(inp.read_bytes()).hexdigest(),'trace_sha256':hashlib.sha256(Path(str(pre)+'.trace.tsv').read_bytes()).hexdigest(),'received':True}
 pre.with_suffix('.receipt.json').write_text(json.dumps(rc,indent=2)+'\n');receipts.append(rc)
 print('DONE',idx,fam,p,mode,'dim',j['dimension'],'min',j['min_weight'],'L',D,'sec',round(time.monotonic()-t,2),flush=True)
assert all(a['dimension']==0 for a in receipts)
(O/f'LICENCE_{idx}_S5.json').write_text(json.dumps({'state':idx,'family':'S5','license_mask':1,'domain':'lambda in Q except 0','source_audit_sha256':hashlib.sha256(audit_path.read_bytes()).hexdigest(),'receipts':[{'file':f"s{idx}_S5_p{a['p']}_m{a['mode']}.receipt.json",'sha256':hashlib.sha256((O/f"s{idx}_S5_p{a['p']}_m{a['mode']}.receipt.json").read_bytes()).hexdigest()} for a in receipts],'full_bounded_kernel_zero':True,'other_state_licences':[]},indent=2)+'\n')
