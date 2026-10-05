from pathlib import Path
from resource_model import OFF,DIAG
import json,subprocess,hashlib,sys
base=Path(__file__).resolve().parent/'source-x-degree';base.mkdir(exist_ok=True);pts=[]
for r,(off,diag) in enumerate(zip(OFF,DIAG),3):
 for s in range(r//2+1):pts.append((r,s,2,diag) if 2*s==r else (r,s,1,off[s]))
for e in map(int,sys.argv[1:]):
 name=f'full-source-e{e}-d305';inp=f'{e} 305 257 0 21\n'+''.join(' '.join(map(str,p))+'\n' for p in pts);pre=Path('D:/Temp/b699-r7-146a9702/quotient-traces')/name
 (base/(name+'.input.txt')).write_text(inp,encoding='utf-8');r=subprocess.run(['D:/Temp/b699-r7-146a9702/source_module.exe',str(pre)],input=inp,capture_output=True,text=True,timeout=60);assert r.returncode==0
 (base/(name+'.log')).write_text(r.stdout+r.stderr,encoding='utf-8');d=json.loads(pre.with_suffix('.json').read_text());tr=pre.with_suffix('.trace.tsv');d.update(trace_sha256=hashlib.sha256(tr.read_bytes()).hexdigest(),trace_bytes=tr.stat().st_size,trace_location='D:/Temp/b699-r7-146a9702/quotient-traces/'+tr.name);(base/(name+'.json')).write_text(json.dumps(d,indent=2)+'\n',encoding='utf-8');print(json.dumps({k:v for k,v in d.items() if k!='weights'}),flush=True)
