from pathlib import Path
import json,sys,subprocess
from concurrent.futures import ThreadPoolExecutor
D=Path('/mnt/data/research1787');sys.path.insert(0,str(D/'code'))
from frozen_capacity import all_states,OFF,DIAG
from resource_core import load_sigs,multisets
st=all_states();raw=load_sigs(D/'inputs/signatures643.txt');T=(4,0,0,2,1,0,0)
results=json.loads((D/'discovery/probe_result.json').read_text())
ids=[r['id']for r in results]+[1785]
U=((2,2),(1,2),(1,1,1),(1,1,1),(1,1,1,1),(1,1,1,1));WU=(0,2,0,1,0,0)
def run(i):
 s=st[i];e=s['h']-4;pts=[]
 old=D/f'logs/probe_module_{i}.log'
 if old.exists() and 'PASS_TRANSPOSED' in old.read_text():
  print('REUSE_THIS_ROUND_ACCEPTED',i,flush=True);return {'id':i,'already_completed_in_this_round':True,'receipt':old.read_text()}
 for r in range(3,9):
  for t in range(r//2+1):
   dg=r==2*t;ri=r-3;m=max(0,(DIAG[ri]if dg else OFF[ri][t])-s['v'][ri]-(WU[ri]if dg else U[ri][t]));pts.append((r,t,m))
 case=D/f'discovery/{i}_S5.case';case.write_text(str(e)+'\n'+''.join('%d %d %d\n'%t for t in pts))
 trace=D/f'discovery/{i}_p257.trace'
 cp=subprocess.run([D/'discovery/mod257',case,trace,'0'],text=True,capture_output=True);print(i,cp.stdout.strip(),flush=True)
 rx=subprocess.run([D/'discovery/rx257',case,trace,'0','257'],text=True,capture_output=True)
 (D/f'logs/probe_module_{i}.log').write_text(cp.stdout+cp.stderr+rx.stdout+rx.stderr)
 return {'id':i,'generator_exit':cp.returncode,'receiver_exit':rx.returncode,'generator':cp.stdout,'receiver':rx.stdout}
with ThreadPoolExecutor(max_workers=2)as ex:rec=list(ex.map(run,ids))
(D/'discovery/module_probe_receipts.json').write_text(json.dumps(rec,indent=2)+'\n')
for i in (1785,1794):
 for floor in ((11,12)if i==1785 else(11,)):
  rr=[(floor,*r[1:])if r==T else r for r in raw];ss=multisets(rr,st[i]['cap'],st[i]['h'])
  sat=sum(all(sum(x[j+1]for x in g)==a for j,a in enumerate(st[i]['cap']))for g in ss)
  out={'id':i,'conditional_T_floor':floor,'groups':ss,'count':len(ss),'saturated':sat}
  (D/f'discovery/{i}_T{floor}_groups.json').write_text(json.dumps(out,indent=2)+'\n');print(i,'floor',floor,'groups',len(ss),'sat',sat,flush=True)
