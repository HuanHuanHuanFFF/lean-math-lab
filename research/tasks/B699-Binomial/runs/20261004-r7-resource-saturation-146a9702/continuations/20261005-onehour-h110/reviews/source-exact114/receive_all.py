from pathlib import Path
import json,hashlib,subprocess,time
root=Path.cwd();cont=root/'research/tasks/B699-Binomial/runs/20261004-r7-resource-saturation-146a9702/continuations/20261005-onehour-h110';exp=cont/'experiments/a/source-exact114';out=cont/'reviews/source-exact114';start=time.monotonic();summaryraw=(exp/'summary.json').read_bytes();assert hashlib.sha256(summaryraw).hexdigest()=='ab7e733f177955010d1811737fbf49096f7979b8df818695baa3fac1f0e51be2';summary=json.loads(summaryraw);assert summary['completed']==21 and summary['all_zero']
base=[list(map(int,s.split())) for s in (cont/'experiments/main/kernel110p11/input.txt').read_text().splitlines()[1:]];exe=Path('D:/Temp/b699-r7-onehour-h110-20261005/review-omega/receive-p11.exe');results=[];fixed=[]
for i,entry in enumerate(summary['results']):
 assert entry['point']==i;inp=exp/f'raise-{i:02d}.input.txt';trace=exp/f'raise-{i:02d}.trace.tsv';ib=inp.read_bytes();tb=trace.read_bytes();assert hashlib.sha256(ib).hexdigest()==entry['input_sha256'] and hashlib.sha256(tb).hexdigest()==entry['trace_sha256']
 rows=[list(map(int,s.split())) for s in ib.decode().splitlines()];assert rows[0]==[114,305,11,0,21];expected=[v[:] for v in base];expected[i][3]+=1;assert rows[1:]==expected;assert (entry['r'],entry['s'],entry['weight'],entry['original_order'],entry['raised_order'])==tuple(base[i]+[base[i][3]+1])
 log=out/f'receive-{i:02d}.json';err=out/f'receive-{i:02d}.stderr.log'
 if not log.exists():
  with log.open('w') as stdout,err.open('w') as stderr:r=subprocess.run([str(exe),str(inp),str(trace)],stdout=stdout,stderr=stderr,cwd=root)
  assert r.returncode==0,('receiver failed',i,r.returncode)
 got=json.loads(log.read_text());author=json.loads((exp/f'raise-{i:02d}.json').read_text());assert got['verified'] and got['e']==114 and got['p']==11 and got['D']==305 and got['dimension']==0 and got['min_weight']>=306
 for key in ['conditions','nonredundant','dimension','min_weight','weights']:assert got[key]==author['source_conditions' if key=='conditions' else key]
 results.append({'point':i,'r':base[i][0],'s':base[i][1],'weight':base[i][2],'original_order':base[i][3],'raised_order':base[i][3]+1,'dimension':0,'min_weight':got['min_weight'],'conditions':got['conditions'],'nonredundant':got['nonredundant'],'weights':got['weights']})
 for p in [inp,trace,exp/f'raise-{i:02d}.json']:
  b=p.read_bytes();fixed.append({'path':str(p.relative_to(root)).replace('\\','/'),'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()})
 print('RECEIVED',i,'zero kernel','elapsed',round(time.monotonic()-start,2),flush=True)
(out/'independent-result.json').write_text(json.dumps({'verifier':'/root/verify_reg3_module','all21_full_traces_received':True,'all21_inputs_exact_single_order_raise':True,'all21_bounded_kernels_zero':True,'summary_sha256':hashlib.sha256(summaryraw).hexdigest(),'receiver_source':'../source110/receive_p11.cpp','results':results,'fixed_files':fixed,'seconds':time.monotonic()-start},indent=2)+'\n',encoding='utf-8');print('PASS 21',round(time.monotonic()-start,2),flush=True)
