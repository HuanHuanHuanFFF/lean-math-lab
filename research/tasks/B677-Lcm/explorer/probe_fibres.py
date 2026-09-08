from math import lcm
import json, time
from pathlib import Path
base = Path(__file__).resolve().parent
start=time.monotonic()
N=10000
K=80
first=[{} for _ in range(K+1)]
last=[{} for _ in range(K+1)]
repeat_counts=[0]*(K+1)
max_span=[0]*(K+1)
nonconsecutive=[]
collisions=[]
for a in range(1,N+1):
    L=1
    for k in range(1,K+1):
        L=lcm(L,a+k-1)
        old=first[k].get(L)
        if old is None:
            first[k][L]=a
        else:
            repeat_counts[k]+=1
            max_span[k]=max(max_span[k],a-old)
            if a-last[k][L]>1 and len(nonconsecutive)<30:
                nonconsecutive.append({'a':old,'b':a,'k':k,'previous':last[k][L],'lcm':str(L)})
            if a-old>=k:
                collisions.append({'a':old,'b':a,'k':k,'lcm':str(L)})
        last[k][L]=a
out={'test':'exact LCM fibres','definition':'a=n+1; b=m+1; L(a,k)=lcm(a,...,a+k-1)','range':{'1<=a<=N':N,'1<=k<=K':K},'repeat_counts':repeat_counts,'max_span':max_span,'nonconsecutive_examples':nonconsecutive,'disjoint_collisions':collisions,'seconds':time.monotonic()-start}
(base/'fibres-result.json').write_text(json.dumps(out,indent=2),encoding='utf8')
print(json.dumps(out,indent=2))
