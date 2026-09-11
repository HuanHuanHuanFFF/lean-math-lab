"""Independent symbolic receiver: solves for B modulo Q, opposite to the generator."""
from pathlib import Path
from itertools import combinations
import json,time
R=Path(__file__).resolve().parents[1]
PS=(2,3,5,7,11,13)
def need(test,msg):
    if not test:raise ValueError(msg)
def ceiling(a,b):return (a+b-1)//b

def receive(doc):
    f=1;prod9=1
    for h in range(1,14):
        f*=h
        if h<=9:prod9*=f
    KK=(prod9**3)*(1<<90);BB=(2*f)**14
    need(int(doc['K'])==KK and int(doc['B'])==BB,'scalar constants')
    prev=1<<doc['start_height_bits'];out=[]
    need(0<len(doc['rows'])<31,'number of descent rows')
    for row in doc['rows']:
        H=int(row['H']);M=int(row['M']);start=int(row['start']);t0=time.monotonic()
        need(H==prev and M>=1,'descent linkage')
        need(KK*M**70>=BB*H**23 and (M==1 or KK*(M-1)**70<BB*H**23),'incorrect minimal M')
        need(start==max(182,M+14),'small branch boundary')
        fam={}
        for p in PS:
            Q=1;a=0;arr=[]
            while Q<H:
                if Q*p>14:
                    low=max(1,ceiling(start-13,Q));high=min(M,(H-1)//Q)
                    if low<=high:arr.append((a,Q,low,high))
                a+=1;Q*=p
            fam[p]=arr
        best=min(start-1,H-1);pairs=nonempty=count=0
        for p,q in combinations(PS,2):
            for a,Q,al,ah in fam[p]:
                for b,T,bl,bh in fam[q]:
                    pairs+=1;inverse=pow(T,-1,Q)
                    for d in range(-13,14):
                        b0=(-d*inverse)%Q
                        a0=(T*b0+d)//Q
                        need(Q*a0-T*b0==d,'opposite CRT identity')
                        lower=max(ceiling(al-a0,T),ceiling(bl-b0,Q))
                        upper=min((ah-a0)//T,(bh-b0)//Q)
                        if lower>upper:continue
                        nonempty+=1;count+=upper-lower+1
                        aa=a0+T*upper;bb=b0+Q*upper
                        need(al<=aa<=ah and bl<=bb<=bh,'endpoint interval containment')
                        maximum=min(Q*aa+13,T*bb+13,H-1)
                        need(max(Q*aa,T*bb,start)<=maximum,'empty n intersection')
                        best=max(best,maximum)
        need(best+1==int(row['out_H']),'descent maximum mismatch')
        need(pairs==row['power_pairs'] and pairs*27==row['signed_branches'],'pair coverage count')
        need(nonempty==row['nonempty_branches'] and count==int(row['symbolic_progression_terms']),'symbolic progression coverage count')
        need(sum(len(v) for v in fam.values())==row['family_count'],'power family count')
        need(best+1<=H,'non-descending height')
        out.append({'stage':len(out)+1,'H':str(H),'out_H':str(best+1),'M':str(M),'power_pairs':pairs,'symbolic_terms':str(count),'seconds':round(time.monotonic()-t0,3)})
        print('ACCEPT_CRT_STAGE',len(out),'H',H,'->',best+1,flush=True)
        prev=best+1
    need(int(doc['rows'][-1]['H'])==prev,'last fixed point not received')
    return {'status':'PASS_INDEPENDENT_OPPOSITE_CRT_ALL_SYMBOLIC_STEPS','start_height_bits':doc['start_height_bits'],'steps':len(out),'final_H':str(prev),'final_M':doc['rows'][-1]['M'],'rows':out}
if __name__=='__main__':
    result=receive(json.loads((R/'evidence/crt_descent.json').read_text()));(R/'evidence/crt_check.json').write_text(json.dumps(result,indent=2)+'\n');print(result['status'])
