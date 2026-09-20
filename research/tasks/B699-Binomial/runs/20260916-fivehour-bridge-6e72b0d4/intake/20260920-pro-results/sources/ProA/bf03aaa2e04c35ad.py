"""New discovery ledger: LOC89 + actual leading coefficient compatibility.
All resources share one h,v state. Mathematical prerequisites are in PROOFS.
"""
from pathlib import Path
from itertools import product
from functools import lru_cache
import json,sys,time
from ledger import states
from trace_budget_probe import row_sum_sets,compatible

@lru_cache(maxsize=None)
def trace_ok(h,v,d,p,E,x3,x4,x5,ell):
    if E:return True
    r={'h':h,'v':v,'d':d,'p':p,'E':E,'S':[x3,x4,x5],'specials':[ell]}
    ss,_=row_sum_sets(r);return compatible(ss)[0]

def run(middle=16,free=25,use_trace=True):
    best=-1;records=[];per_state=[];queries=0;rejected_outer=[]
    for h,v,d,p,E in states():
        local=-1
        for x3,x4,x5 in product(range(d[0]+1),range(d[1]+1),range(d[2]+1)):
            x=x3+x4+x5
            ds=(d[0]-x3,(2*d[1]+p[1]-x3-x4)//2-x4,d[2]-x5,(2*d[3]+p[3]-x)//2,d[4],d[5])
            if min(ds)<0:continue
            for ell in range(ds[0]+1):
                ds1=(ds[0]-ell,)+ds[1:]
                for a in range(E+1):
                    cost0=4*x+13*ell+3*a
                    if cost0>h:continue
                    if use_trace and not trace_ok(h,v,d,p,E,x3,x4,x5,ell):
                        rejected_outer.append({'h':h,'v':v,'d':d,'p':p,'E':E,'a':a,'S':[x3,x4,x5],'specials':[ell]});continue
                    T=sum(ds1)
                    for b in range(min(T//2,(h-cost0)//4)+1):
                        for c in range(min(T-2*b,(h-cost0-4*b)//middle)+1):
                            f=(h-cost0-4*b-middle*c)//free
                            K=a+x+ell+b+c+f;queries+=1;local=max(local,K)
                            r={'h':h,'v':v,'d':d,'p':p,'E':E,'a':a,'S':[x3,x4,x5],'specials':[ell],'B':b,'C':c,'F':f,'size':K,'x_cost':cost0+4*b+middle*c+free*f}
                            if K>best:best=K;records=[]
                            if K==best:records.append(r)
        per_state.append({'h':h,'v':v,'E':E,'maximum':local})
    return {'middle':middle,'free':free,'trace':use_trace,'maximum':best,'states':len(per_state),'queries':queries,'records':records,'per_state':per_state,'rejected_outer':rejected_outer}

def key(r):return tuple(tuple(r[k]) if isinstance(r[k],(list,tuple)) else r[k] for k in ['h','v','d','p','E','a','S','specials','B','C','F','size','x_cost'])

if __name__=='__main__':
    root=Path(__file__).resolve().parents[1];out={}
    for label,m,f,tr in [('baseline',15,25,False),('trace_only',15,25,True),('location_only',16,25,False),('new',16,25,True)]:
        t=time.monotonic();z=run(m,f,tr);z['records'].sort(key=key);out[label]=z
        ss={(r['h'],tuple(r['v'])) for r in z['records']}
        print(label,'max',z['maximum'],'records',len(z['records']),'states',len(ss),'minimum_h',min(h for h,v in ss),'queries',z['queries'],'seconds',round(time.monotonic()-t,3),flush=True)
    (root/'evidence/trace_ledger_discovery.json').write_text(json.dumps(out,separators=(',',':'),sort_keys=True)+'\n')
