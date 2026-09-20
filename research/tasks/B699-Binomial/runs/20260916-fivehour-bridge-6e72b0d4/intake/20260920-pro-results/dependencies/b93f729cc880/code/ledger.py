#!/usr/bin/env python3
"""Same-G integer ledger, independently rebuilt from frozen PROOFS §§6--7.
New optional degree-10 class: one ordinary defect at row3, costs X degree10.
It does NOT spend unproved tangency costs. All states share one actual (h,v).
"""
import json,math,sys
from itertools import product
from pathlib import Path
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)
def L(r,v):return sum(max(m-v,0) for m in OFF[r])+(max(DIAG[r]-v,0)+1)//2

def weak_u(total,n):
    if n==0:
        yield ();return
    for x in range(total+1):
        for z in weak_u(total-x,n-1):yield (x,)+z

def states():
    out=[]
    for h in range(153):
        a=[]
        for r in range(6):
            v=0
            while L(r,v)>h:v+=1
            a.append(v)
        E0=305-2*h-sum(a)
        if E0<0:continue
        for u in weak_u(E0,6):
            v=[x+y for x,y in zip(a,u)];d=[h-L(r,v[r]) for r in range(6)]
            p=[max(DIAG[r]-v[r],0)%2 if DIAG[r] else 0 for r in range(6)]
            out.append((h,tuple(v),tuple(d),tuple(p),E0-sum(u)))
    return out

def ledger(middle=10,free=16,nf10=False,k10=(0,0,0)):
    best=-1;records=[];validx=0;queries=0
    sts=states()
    for h,v,d,p,E in sts:
        for x3 in range(d[0]+1):
            for x4 in range(d[1]+1):
                for x5 in range(d[2]+1):
                    x=x3+x4+x5
                    dd=(d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5])
                    if min(dd)<0:continue
                    validx+=1
                    for t in range(dd[0]+1 if nf10 else 1):
                        # Recompute parity directly so no parity is rounded twice.
                        ddd=(dd[0]-t,(2*d[1]+p[1]-x3-x4-t*k10[0])//2-x4,dd[2],(2*d[3]+p[3]-x-t*k10[1])//2,dd[4],(2*d[5]+p[5]-t*k10[2])//2)
                        if min(ddd)<0:continue
                        B=sum(ddd)
                        for a in range(E+1):
                            cost0=3*a+4*x+10*t
                            for b in range(B//2+1):
                                cost1=cost0+4*b
                                if cost1>h:continue
                                for c in range(B-2*b+1):
                                    cost=cost1+middle*c
                                    if cost>h:continue
                                    f=(h-cost)//free
                                    queries+=1;size=a+x+t+b+c+f
                                    if size>best:best=size;records=[]
                                    if size==best:records.append({'h':h,'v':v,'d':d,'p':p,'E':E,'a':a,'S':(x3,x4,x5),'NF10':t,'B':b,'C':c,'F':f,'size':size,'x_cost':cost+free*f})
    return {'max':best,'states':len(sts),'valid_S':validx,'queries':queries,'middle':middle,'free':free,'nf10':nf10,'nf10_kappa':k10,'max_records':records,'max_positive_excess':max((r['size'] for r in records if r['a']),default=None)}
if __name__=='__main__':
    out=Path(sys.argv[1]);results={}
    for label,m,f,n in [('baseline',10,16,False),('sat_only',10,18,False),('nf_location_only',11,16,True),('nf_location_and_sat',11,18,True),('old_conditional_goal',11,18,False)]:
        z=ledger(m,f,n);results[label]=z
        print(label,z['max'],len(z['max_records']),z['states'],z['valid_S'],z['queries'],flush=True)
    out.write_text(json.dumps(results,sort_keys=True,separators=(',',':'))+'\n')
