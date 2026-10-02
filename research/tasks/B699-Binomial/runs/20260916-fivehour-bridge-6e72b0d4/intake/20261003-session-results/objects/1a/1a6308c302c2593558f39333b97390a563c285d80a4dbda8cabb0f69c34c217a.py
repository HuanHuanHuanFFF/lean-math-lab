from common import *
import subprocess,time,collections,sys,hashlib
O=ROOT/'certificates/kernels';O.mkdir(exist_ok=True)
source=json.loads((ROOT/'sources/factor_source_bounds.json').read_text())
source['A35']=json.loads((ROOT/'certificates/A35_source_bounds.json').read_text())
allplans={2022:['A35']}
sel=[int(x) for x in sys.argv[1:]] or list(allplans)
receipts=[]
for idx in sel:
 for fam in allplans[idx]:
  upper=[x['upper_order'] for x in source[fam]['points']];z=STATES[idx];h=z['h'];e=h-4;D=2*e
  # Two primes/opposite source orders for minimum states; one prime for others.
  for p,mode in ([(257,0),(263,1)] if idx in [1907,1908,1910] else [(257,0)]):
   name=f's{idx}_{fam}_p{p}_m{mode}';pre=O/name;inp=pre.with_suffix('.input');inp.write_text(source_input(e,D,z['v'],p,mode,upper));t=time.perf_counter()
   with inp.open() as fi,(ROOT/f'logs/{name}.generate.log').open('w') as log:subprocess.run([str(ROOT/'code/module_kernel'),str(pre)],stdin=fi,stdout=log,stderr=subprocess.STDOUT,check=True)
   j=json.loads(pre.with_suffix('.json').read_text())
   with (ROOT/f'logs/{name}.receive.json').open('w') as fo:subprocess.run([str(ROOT/'code/check_trace'),str(inp),str(pre)+'.trace.tsv'],stdout=fo,check=True)
   r=json.loads((ROOT/f'logs/{name}.receive.json').read_text());assert r['verified']
   for k in ['weights','conditions','nonredundant','dimension','min_weight']:assert j[k]==r[k]
   rc={'state':idx,'family':fam,'e':e,'D':D,'p':p,'mode':mode,'dimension':j['dimension'],'conditions':j['conditions'],'min_weight':j['min_weight'],'weights':j['weights'],'input_sha256':hashlib.sha256(inp.read_bytes()).hexdigest(),'trace_sha256':hashlib.sha256(Path(str(pre)+'.trace.tsv').read_bytes()).hexdigest(),'received':True,'seconds':time.perf_counter()-t}
   pre.with_suffix('.receipt.json').write_text(json.dumps(rc,indent=2)+'\n');receipts.append(rc);print(idx,fam,p,mode,'dim',j['dimension'],'min',j['min_weight'],'L',D,'sec',round(rc['seconds'],2),flush=True)
