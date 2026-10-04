from pathlib import Path
import subprocess,json,time,hashlib
BASE=Path(__file__).parent;OUT=BASE/'source-exact114';OUT.mkdir(exist_ok=True)
source=(BASE/'initial-h114.input.txt').read_text(encoding='utf-8-sig').splitlines();header=source[0];pts=[list(map(int,l.split())) for l in source[1:] if l.strip()];assert len(pts)==21
exe=Path('D:/Temp/b699-r7-onehour-h110-20261005/a-initial/source_exact114_kernel.exe');start=time.monotonic();results=[]
for z,pt in enumerate(pts):
    p2=[p[:] for p in pts];p2[z][3]+=1;inp=header+'\n'+''.join(' '.join(map(str,p))+'\n' for p in p2);pre=OUT/f'raise-{z:02d}';pre.with_suffix('.input.txt').write_text(inp,encoding='utf-8')
    tick=time.monotonic();proc=subprocess.run([str(exe),str(pre)],input=inp,text=True,capture_output=True,timeout=35);pre.with_suffix('.log').write_text(proc.stdout+proc.stderr,encoding='utf-8');assert proc.returncode==0
    d=json.loads(pre.with_suffix('.json').read_text());assert d['dimension']==0 and d['min_weight']>=306
    trace=pre.with_suffix('.trace.tsv');rec=dict(point=z,r=pt[0],s=pt[1],weight=pt[2],original_order=pt[3],raised_order=pt[3]+1,dimension=d['dimension'],min_weight=d['min_weight'],source_conditions=d['source_conditions'],nonredundant=d['nonredundant'],seconds=round(time.monotonic()-tick,3),trace_bytes=trace.stat().st_size,trace_sha256=hashlib.sha256(trace.read_bytes()).hexdigest(),input_sha256=hashlib.sha256(pre.with_suffix('.input.txt').read_bytes()).hexdigest());results.append(rec)
    (OUT/'summary.json').write_text(json.dumps(dict(scope='Author full F11 module zero-kernel certificates for raising each of 21 fixed source orders by one, q<=114 D<=305. Independent receipt pending.',completed=len(results),all_zero=True,seconds=round(time.monotonic()-start,3),results=results),indent=2)+'\n')
    print(json.dumps(rec),flush=True)
print('complete_seconds',round(time.monotonic()-start,3))
