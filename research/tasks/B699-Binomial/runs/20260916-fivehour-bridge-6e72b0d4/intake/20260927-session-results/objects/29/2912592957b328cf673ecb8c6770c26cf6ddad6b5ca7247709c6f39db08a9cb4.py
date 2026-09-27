from pathlib import Path
import sys,subprocess,json
D=Path('/mnt/data/research1787');sys.path.insert(0,str(D/'code'))
from resource_core import load_sigs,multisets
from frozen_capacity import all_states
raw=load_sigs(D/'inputs/signatures643.txt');st=all_states();T=(4,0,0,2,1,0,0);tar=(18,0,0,0,0,0,3)
assert raw.count(tar)==1
new=[]
for x in raw:
 if x!=tar:new.append(x);continue
 new.append((19,*x[1:]))
 for j in range(6):
  cc=list(x[1:]);cc[j]+=2 if j%2==0 else 1;new.append((18,*cc))
assert len(new)==649
active=[1785,1787,1856,1900,1965,1984,2015]
qs=D/'discovery/queries43.txt';allr=[]
for label,rr in [('final_global',new),('final_T11',[(11,*x[1:])if x==T else x for x in new])]:
 sp=D/f'discovery/{label}.txt';sp.write_text(''.join(' '.join(map(str,x))+'\n'for x in rr));out=D/f'discovery/{label}.fees';subprocess.run([D/'discovery/fees',sp,qs,out],check=True,stdout=subprocess.DEVNULL)
 allr.append([list(map(int,l.split()))for l in out.read_text().splitlines()])
ans=[];keep=[]
for a,b in zip(*allr):
 i,h,fee,*seq=b if a[0]in active else a
 if fee>h:ans.append((i,h,fee,i in active))
 else:keep.append(i)
print('FINAL removals',len(ans),ans,'frontier',len(keep),'hmin',min(st[i]['h']for i in keep),'lowids',[i for i in keep if st[i]['h']==min(st[i]['h']for i in keep)])
(D/'discovery/new_cost_result.json').write_text(json.dumps({'removed':ans,'keep':keep},indent=2)+'\n')
for i in (1794,):
 ss=multisets(new,st[i]['cap'],st[i]['h']);sat=sum(all(sum(x[j+1]for x in g)==v for j,v in enumerate(st[i]['cap']))for g in ss)
 print('NEXT',i,len(ss),'sat',sat,'min',min(sum(x[0]for x in g)for g in ss))
 (D/f'discovery/final_{i}_groups.json').write_text(json.dumps({'groups':ss,'saturated':sat},indent=2)+'\n')
