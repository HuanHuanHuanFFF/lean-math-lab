"""Frozen six-source data and exact finite frontier/aggregate plumbing."""
from pathlib import Path
import json
OFF=((77,74),(67,57),(51,54,46),(40,43,48),(31,34,39,45),(25,28,33,39))
DIAG=(0,56,0,41,0,52)

def all_states():
    def weak_under(n,k):
        if not k:
            yield ();return
        for a in range(n+1):
            for rest in weak_under(n-a,k-1):yield (a,)+rest
    def lower(i,v):return sum(max(a-v,0) for a in OFF[i])+(max(DIAG[i]-v,0)+1)//2
    states=[]
    for h in range(153):
        minimum=[]
        for i in range(6):
            v=0
            while lower(i,v)>h:v+=1
            minimum.append(v)
        budget=305-2*h-sum(minimum)
        if budget<0:continue
        for extra in weak_under(budget,6):
            v=[a+b for a,b in zip(minimum,extra)]
            d=[h-lower(i,v[i]) for i in range(6)]
            parity=[max(DIAG[i]-v[i],0)%2 if DIAG[i] else 0 for i in range(6)]
            states.append(dict(h=h,v=v,E=305-2*h-sum(v),d=d,p=parity,cap=[2*x+y for x,y in zip(d,parity)]))
    assert len(states)==2035
    return states

def initial_orders(st):
    return ([[max(a-st['v'][i],0) for a in OFF[i]] for i in range(6)],
            [max(DIAG[i]-st['v'][i],0) if DIAG[i] else 0 for i in range(6)])

def jets(st,kappa=(0,0,0),s5=0,reverse=False):
    """Return (r,value,shear,i,j); increasing i inside every local j column."""
    off,bb=initial_orders(st);rows=[]
    for r in (range(8,2,-1) if reverse else range(3,9)):
        ri=r-3
        for s in (range(r//2,-1,-1) if reverse else range(r//2+1)):
            value=s*(r-s);diag=2*s==r
            if diag:
                B=bb[ri];m=(B+kappa[(r-4)//2]+1)//2
                for j in range(max((B+1)//2,m)):
                    for i in range(max(B-2*j,m-j,0)):rows.append((r,value,s,i,j))
            else:
                m=off[ri][s];extra=s5 if (r,s)==(5,2) else 0
                for j in range(m+extra):
                    for i in range(max(m-j,1 if j<m+extra and extra else 0)):
                        rows.append((r,value,0,i,j))
    return rows

def read_frontier(path):
    return [int(x.split()[0]) for x in Path(path).read_text().splitlines()[1:] if x.strip()]

def raw_signatures(path):
    raw=json.loads(Path(path).read_text())
    assert len(raw)==472
    for e,c,name,d,k in raw:
        assert len(c)==len(d)==len(k)==6 and e>=4
        assert all(x==2*y+z for x,y,z in zip(c,d,k))
        assert not any(k[i] for i in (0,2,4))
    return raw

def signature_text(raw):
    return ''.join(' '.join(map(str,[e,*c,k[1],k[3],k[5],int(name=='S5')]))+'\n' for e,c,name,d,k in raw)

def read_aggregates(path):
    out=[]
    for line in Path(path).read_text().splitlines()[1:]:
        x=list(map(int,line.split()));assert len(x)==11
        out.append(dict(cost=x[:6],kappa=x[6:9],S5=x[9],degree=x[10]))
    return out

def aggregate_python(st,raw,reverse=False):
    """Independent slow exact-used-resource DP, tuple keys (D,K,S5)."""
    raw=list(reversed(raw)) if reverse else raw
    h=st['h'];cap=st['cap']
    active=[a for a in raw if a[0]+28<=h and all(x<=y for x,y in zip(a[1],cap))]
    cur={((0,)*6,(0,)*6,0):0}
    for step in range(8):
        nxt={};ceiling=h-4*(7-step)
        for (D,K,s5),degree in cur.items():
            rem=[cap[i]-2*D[i]-K[i] for i in range(6)]
            for e,c,name,d,k in active:
                if degree+e>ceiling or any(c[i]>rem[i] for i in range(6)):continue
                key=(tuple(D[i]+d[i] for i in range(6)),tuple(K[i]+k[i] for i in range(6)),s5+(name=='S5'))
                if degree+e<nxt.get(key,10**9):nxt[key]=degree+e
        cur=nxt
    out=[]
    for (D,K,s),e in cur.items():
        out.append(dict(cost=[2*a+b for a,b in zip(D,K)],kappa=[K[1],K[3],K[5]],S5=s,degree=e))
    return sorted(out,key=lambda z:tuple(z['cost']+z['kappa']+[z['S5'],z['degree']]))
