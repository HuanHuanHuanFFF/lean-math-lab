from pathlib import Path
from resource_model import ROOT,OFF,DIAG
import json,subprocess,time,hashlib,sys
BASE=Path(__file__).resolve().parent;TMP=Path('D:/Temp/b699-r7-146a9702/quotient-traces');TMP.mkdir(parents=True,exist_ok=True)
states=json.loads((BASE/'positive-sensitivity.json').read_text())['states'];states=[s for s in states if dict(s['nonzero_tests']).get(4,10**9)<=s['h']]
families=[x['configuration'] for x in json.loads((BASE/'cubic-even-exact.json').read_text())['results'] if x['status']=='unresolved_family']
exe=Path('D:/Temp/b699-r7-146a9702/source_module.exe');outdir=BASE/'quotient-all';outdir.mkdir(exist_ok=True)
lo=int(sys.argv[1]);hi=int(sys.argv[2]);reports=[]
for st in states[lo:hi]:
 for fi,cfg in enumerate(families,1):
  points=[]
  for r,((kp,ms),off,diag,v) in enumerate(zip(cfg,OFF,DIAG,st['v']),3):
   for s in range(r//2+1):
    wt=2 if 2*s==r else 1
    order=max((diag-v-(2*ms[s]-kp)) if wt==2 else (off[s]-v-ms[s]),0)
    points.append((r,s,wt,order))
  inp=f"{st['h']-3} {2*(st['h']-3)} 257 0 21\n"+''.join(' '.join(map(str,p))+'\n' for p in points)
  name=f"s{st['idx']}-f{fi}";pre=TMP/name;dest=outdir/name;ip=dest.with_suffix('.input.txt');ip.write_text(inp,encoding='utf-8')
  start=time.monotonic()
  r=subprocess.run([str(exe),str(pre)],input=inp,capture_output=True,text=True,timeout=60)
  assert r.returncode==0,(r.returncode,r.stderr[-500:])
  dest.with_suffix('.log').write_text(r.stdout+r.stderr,encoding='utf-8')
  data=json.loads(pre.with_suffix('.json').read_text());trace=pre.with_suffix('.trace.tsv')
  record=dict(state=st['idx'],family=fi,**data,trace_sha256=hashlib.sha256(trace.read_bytes()).hexdigest(),trace_bytes=trace.stat().st_size,trace_location='D:/Temp/b699-r7-146a9702/quotient-traces/'+trace.name)
  dest.with_suffix('.json').write_text(json.dumps(record,indent=2)+'\n');reports.append({k:record[k] for k in ['state','family','e','L','dimension','min_weight','seconds']});print(json.dumps(reports[-1]),flush=True)
(outdir/f'batch-{lo}-{hi}.json').write_text(json.dumps(reports,indent=2)+'\n')
