from pathlib import Path
import json,itertools,time
R=Path(__file__).resolve().parents[1];states=json.loads((R/'evidence/vertical_state_probe.json').read_text());begin=time.monotonic()

def opt(Q=10,F=14,B=6):
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
    for y in range(min(A,X//B)+1):
     for z in range(min((T-y)//2,(X-B*y)//4)+1):
      for w in range(min(T-y-2*z,(X-B*y-4*z)//Q)+1):
       f=(X-B*y-4*z-Q*w)//F;k=a+x+y+z+w+f;tests+=1
       if k>best:best=k;records=[]
       if k==best:records.append({'state':s,'counts':{'positive':a,'quartic_single':[x0,x1,x2],'low_single':y,'double':z,'middle':w,'free':f},'residual_delta':d})
 return {'mid':Q,'free':F,'max':best,'max_records':len(records),'tests':tests,'records':records}

for Q in [9,10,11]:
 for F in [14,15,16,17,18]:
  a=opt(Q,F,Q);print(Q,F,a["max"],a["max_records"])
