from pathlib import Path
import sys,json,shutil,subprocess,itertools,collections
D=Path('/mnt/data/research1787');F=Path('/mnt/data/work_source43/B699-ProA-LATE10-TAIL8-H125-FRONTIER43-20260926-evidence');S=Path('/mnt/data/work_source50/B699-ProA-T10-S5-FIXED4-FRONTIER50-20260926-evidence')
sys.path.insert(0,str(D/'code'))
from frozen_capacity import all_states
from resource_core import load_sigs
st=all_states()
for name,src in [('signatures643.txt',F/'certificates/ledger/stage2_global.txt'),('frontier43.tsv',F/'certificates/ledger/frontier43.tsv'),('LOW_T43_cover.json',S/'certificates/ledger/LOW_T43_cover.json')]:shutil.copyfile(src,D/'inputs'/name)
ids=[int(l.split()[0]) for l in (D/'inputs/frontier43.tsv').read_text().splitlines()[1:]]
raw=load_sigs(D/'inputs/signatures643.txt');assert len(raw)==643
T=(4,0,0,2,1,0,0);cover={(q,tuple(c))for q,c in json.loads((D/'inputs/LOW_T43_cover.json').read_text())['pairs']}
qf=D/'discovery/queries43.txt';qf.write_text(''.join(' '.join(map(str,[i,st[i]['h'],*st[i]['cap']]))+'\n'for i in ids))
subprocess.run(['g++','-O3','-std=c++17',D/'code/full_grid_dp.cpp','-o',D/'discovery/grid'],check=True)
subprocess.run(['g++','-O3','-std=c++17',D/'code/fees.cpp','-o',D/'discovery/fees'],check=True)
subprocess.run([D/'discovery/grid',D/'inputs/signatures643.txt',qf,D/'discovery/original_summary.tsv',D/'discovery/original_cells.tsv'],check=True)
M={};H={i:st[i]['h']for i in ids}
with (D/'discovery/original_cells.tsv').open()as f:
 next(f)
 for l in f:
  i,n,*x=map(int,l.split())
  if n==7:M[i,tuple(x[:6])]=x[6]
allpre={};maxr={}
for i in ids:
 cap=st[i]['cap'];pre=[]
 if all(a>=b for a,b in zip(cap,T[1:])):
  for c in itertools.product(*(range(T[j+1],cap[j]+1,2 if j%2==0 else 1)for j in range(6))):
   m=M[i,tuple(a-b for a,b in zip(cap,c))]
   pre.extend((q,c)for q in range(4,min(10,H[i]-m)+1))
 # first missing q limits the floor; exclude Fstar here provisionally
 missing=[(q,c)for q,c in pre if (q,c)not in cover or c==(0,2,2,1,0,0)]
 maxr[i]=min([q for q,c in missing]+[11]);allpre[i]=pre
result=[]
for r in range(5,12):
 sig=D/f'discovery/T{r}.txt';sig.write_text(''.join(' '.join(map(str,((r,*x[1:])if x==T else x)))+'\n'for x in raw))
 out=D/f'discovery/fees_T{r}.txt';subprocess.run([D/'discovery/fees',sig,qf,out],stdout=subprocess.DEVNULL,check=True)
 for l in out.read_text().splitlines():
  i,h,e,*_=map(int,l.split())
  if e>h and maxr[i]>=r and not any(t['id']==i for t in result):
   pre=[(q,c)for q,c in allpre[i]if q<r]
   result.append({'id':i,'h':h,'sufficient_floor':r,'maxcovered_floor':maxr[i],'fee':e,'pairs':pre,'count':len(pre)})
(D/'discovery/probe_result.json').write_text(json.dumps(result,indent=2)+'\n')
for t in result:print('CANDIDATE',t['id'],'h',t['h'],'floor',t['sufficient_floor'],'max_floor',t['maxcovered_floor'],'pairs',t['count'])
for i in (1785,1787,1794):
 print('LOW',i,'maxcovered',maxr[i],'pairs',len(allpre[i]),'missing',[(q,c)for q,c in allpre[i]if(q,c)not in cover][:12])
(D/'discovery/all_preimages_and_missing.json').write_text(json.dumps([{'state':i,'preimages':allpre[i],'missing':[(q,c)for q,c in allpre[i]if(q,c)not in cover],'max_covered_no_fstar_floor':maxr[i]}for i in ids],indent=2)+'\n')
