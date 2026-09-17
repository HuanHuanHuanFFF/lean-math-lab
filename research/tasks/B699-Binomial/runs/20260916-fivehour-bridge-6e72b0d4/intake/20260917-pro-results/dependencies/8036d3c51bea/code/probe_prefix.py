import json,time
from pathlib import Path
out=Path(__file__).resolve().parents[1]/'outputs/prefix_probe.json'
t0=time.perf_counter(); first=[]; second=[]; cases=0
for T in range(3,42,2):
 for a in range(1,T):
  for b in range(1,5):
   for x in range(T*b*b,T*b*b+180):
    n=T*(a*x+b)
    for u in range(a+1):
     for v in range(b+1):
      j=T*(u*x+v)
      if not 0<j<n: continue
      cases+=1
      if (3*j*(j-1))%(n-1): continue
      first.append([T,a,b,x,j,n])
      if not (6*j*(j-1)*(j-2))%(n-2): second.append(first[-1])
r={'cases':cases,'first_count':len(first),'both':second,'first_sample':first[:24],'seconds':time.perf_counter()-t0}
out.write_text(json.dumps(r,indent=2)); print({k:v for k,v in r.items() if k!='first_sample'})
