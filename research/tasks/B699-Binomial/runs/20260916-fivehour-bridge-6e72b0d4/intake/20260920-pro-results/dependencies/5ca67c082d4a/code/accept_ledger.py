#!/usr/bin/env python3
"""Receiving implementation: reconstruct original source data and a single
complete vertical allocation; no discovery imports or floating arithmetic."""
from itertools import product
from accept_core import need

def exact_parts(total,k):
    if k==1:
        yield (total,);return
    for a in range(total+1):
        for tail in exact_parts(total-a,k-1):yield (a,)+tail

def source_states():
    P=[27,24,19,13]+[0]*5;weights=[137,110,91,78,68,61];V0=[20,16,13,11,10,9];sources=[]
    for r,w,v in zip(range(3,9),weights,V0):
        off=[];diag=0
        for s in range(r//2+1):
            m=w-P[s]-P[r-s]-v;need(m>0,'original nonpositive order')
            if 2*s==r:diag=m
            else:off.append(m)
        sources.append({'r':r,'off':off,'diag':diag})
    def L(row,v):return sum(max(m-v,0) for m in row['off'])+(max(row['diag']-v,0)+1)//2
    need([L(row,0) for row in sources]==[151,152,151,152,149,151],'original source order')
    baseline=[];states=[]
    for h in range(153):
        a=[]
        for row in sources:
            v=next(v for v in range(306) if L(row,v)<=h)
            need(v==0 or L(row,v-1)>h,'minimal vertical order');a.append(v)
        slack=305-2*h-sum(a);baseline.append({'h':h,'minimum':a,'slack':slack})
        for total in range(slack+1):
            for u in exact_parts(total,6):
                v=[x+y for x,y in zip(a,u)];d=[h-L(row,x) for row,x in zip(sources,v)]
                p=[max(row['diag']-x,0)%2 if row['diag'] else 0 for row,x in zip(sources,v)]
                need(min(d)>=0,'negative ordinary capacity')
                states.append({'h':h,'v':v,'d':d,'p':p,'E':slack-total})
    need(len(states)==2035 and len({(s['h'],tuple(s['v'])) for s in states})==2035,'vertical state coverage')
    need(max(s['slack'] for s in baseline)==3,'total vertical slack bound')
    return sources,baseline,states

def record_key(rec):
    return tuple(tuple(rec[k]) if isinstance(rec[k],(list,tuple)) else rec[k] for k in ['h','v','d','p','E','a','S','NF10','B','C','F','size','x_cost'])

def valid_witness(r,middle,free):
    h,d,p,E=r['h'],r['d'],r['p'],r['E'];a=r['a'];x3,x4,x5=r['S'];x=x3+x4+x5
    dd=[d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
    need(a<=E and min(dd)>=0 and r['NF10']==0,'invalid witness base')
    need(2*r['B']+r['C']<=sum(dd),'invalid witness ordinary costs')
    cost=3*a+4*x+4*r['B']+middle*r['C']+free*r['F']
    need(cost<=h and r['x_cost']==cost,'invalid witness X cost')
    need(r['size']==a+x+r['B']+r['C']+r['F'],'invalid witness count')
    return True

def run_ledger(states,middle,free):
    best=-1;records=[];perstate=[];queries=0;single_queries=0
    for s in states:
        h,d,p,E=s['h'],s['d'],s['p'],s['E'];local=-1
        for a in range(min(E,h//3)+1):
            for x3,x4,x5 in product(*(range(d[i]+1) for i in range(3))):
                x=x3+x4+x5;X=h-3*a-4*x
                ds=[d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5]]
                if X<0 or min(ds)<0:continue
                single_queries+=1;T=sum(ds)
                # Receiving loop advances c before b, unlike discovery.
                for c in range(min(T,X//middle)+1):
                    for b in range(min((T-c)//2,(X-middle*c)//4)+1):
                        f=(X-middle*c-4*b)//free;K=a+x+b+c+f;queries+=1
                        rec={**s,'a':a,'S':[x3,x4,x5],'NF10':0,'B':b,'C':c,'F':f,'size':K,'x_cost':3*a+4*x+4*b+middle*c+free*f}
                        local=max(local,K)
                        if K>best:best=K;records=[]
                        if K==best:records.append(rec)
        perstate.append({'h':h,'v':s['v'],'maximum':local})
    for r in records:valid_witness(r,middle,free)
    records.sort(key=record_key)
    return {'middle':middle,'free':free,'maximum':best,'states':len(states),'queries':queries,'single_queries':single_queries,
            'maximum_records':len(records),'positive_excess_maximum_records':sum(r['a']>0 for r in records),
            'records':records,'per_state':perstate}
