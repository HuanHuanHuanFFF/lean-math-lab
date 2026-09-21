"""Same-G source allocation ledger: exact integer enumeration, no curve sampling."""
from pathlib import Path
import json
D=Path(__file__).resolve().parents[1]
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
def L(i,v):
    return sum(max(m-v,0) for m in OFF[i])+(max(DIAG[i]-v,0)+1)//2
def vectors_leq(k,cap):
    if k==0:
        yield ();return
    for t in range(cap+1):
        for r in vectors_leq(k-1,cap-t):yield (t,)+r

def states():
    for h in range(153):
        amin=[]
        for i in range(6):
            v=0
            while L(i,v)>h:v+=1
            assert v==0 or L(i,v-1)>h
            amin.append(v)
        slack=305-2*h-sum(amin)
        if slack<0:continue
        for u in vectors_leq(6,slack):
            v=tuple(a+b for a,b in zip(amin,u));E=305-2*h-sum(v)
            d=tuple(h-L(i,v[i]) for i in range(6));p=tuple(max(DIAG[i]-v[i],0)%2 for i in range(6))
            yield h,v,E,d,p

def run(middle,free):
    maxc=-1; max_positive=-1;witness=[];statecount=0;assignments=0;queries=0
    for h,v,E,d,p in states():
        statecount+=1
        for x3 in range(d[0]+1):
          for x4 in range(d[1]+1):
           for x5 in range(d[2]+1):
            x=x3+x4+x5
            dp=(d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5])
            if min(dp)<0:continue
            assignments+=1;cap=sum(dp)
            for a in range(E+1):
             for b in range(min(cap//2,(h-3*a-4*x)//4)+1):
              for c in range(min(cap-2*b,(h-3*a-4*x-4*b)//middle)+1):
                rem=h-3*a-4*x-4*b-middle*c
                if rem<0:continue
                f=rem//free;val=a+x+b+c+f;queries+=1
                rec={'h':h,'v':v,'E':E,'d':d,'p':p,'a':a,'x3':x3,'x4':x4,'x5':x5,'b':b,'c':c,'f':f,'count':val,'x_cost':h-rem+free*f,'remaining_deficit_cap':cap-2*b-c}
                if a:max_positive=max(max_positive,val)
                if val>maxc:maxc=val;witness=[rec]
                elif val==maxc:witness.append(rec)
    return {'middle':middle,'free':free,'states':statecount,'assignments':assignments,'queries':queries,'maximum':maxc,'maximum_with_positive_excess':max_positive,'maximizers':witness}
if __name__=='__main__':
    records=[]
    for mid,free in [(10,16),(10,18),(11,16),(11,18)]:
        r=run(mid,free);records.append(r)
        print({k:v for k,v in r.items() if k!='maximizers'},'maximizers',len(r['maximizers']))
    (D/'certificates/ledger_results.json').write_text(json.dumps(records,indent=2))
