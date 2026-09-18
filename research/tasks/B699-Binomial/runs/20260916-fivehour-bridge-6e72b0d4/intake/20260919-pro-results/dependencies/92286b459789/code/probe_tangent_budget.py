from pathlib import Path
import json,itertools,time
R=Path(__file__).resolve().parents[1];states=json.loads((R/'evidence/vertical_state_probe.json').read_text());begin=time.monotonic()

def opt(Q=10,F=14):
 best=-1;records=[];tests=0
 for s in states:
  h,E=s['h'],s['E'];ds=s['delta'];vs=s['v']
  parity={1:max(56-vs[1],0)%2,3:max(41-vs[3],0)%2,5:max(52-vs[5],0)%2}
  for a in range(min(E,h//3)+1):
   for x0,x1,x2 in itertools.product(*(range(ds[i]+1) for i in range(3))):
    x=x0+x1+x2;k4=x0+x1;k6=x
    d=list(ds);d[0]-=x0;d[1]-=x1;d[2]-=x2
    d[1]=(2*ds[1]+parity[1]-k4)//2-x1
    d[3]=(2*ds[3]+parity[3]-k6)//2
    if min(d)<0:continue
    T=sum(d);A=sum(d[:3]);X=h-3*a-4*x
    if X<0:continue
    for y in range(min(A,X//6)+1):
     for z in range(min((T-y)//2,(X-6*y)//4)+1):
      for w in range(min(T-y-2*z,(X-6*y-4*z)//Q)+1):
       f=(X-6*y-4*z-Q*w)//F;k=a+x+y+z+w+f;tests+=1
       if k>best:best=k;records=[]
       if k==best:records.append({'state':s,'counts':{'positive':a,'quartic_single':[x0,x1,x2],'low_single':y,'double':z,'middle':w,'free':f},'residual_delta':d})
 return {'mid':Q,'free':F,'max':best,'max_records':len(records),'tests':tests,'records':records}
for Q,F in [(7,14),(8,14),(9,14),(10,14),(10,15),(10,16)]:
 ans=opt(Q,F);print('TANGENT',Q,F,ans['max'],ans['max_records'],ans['tests'],'seconds',time.monotonic()-begin,'example',ans['records'][0],flush=True)
 (R/f'evidence/tangent_probe_{Q}_{F}.json').write_text(json.dumps(ans,separators=(',',':'))+'\n')
