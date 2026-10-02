from math import gcd, prod
import time, json

def rough(x):
    x=abs(x)
    if not x: raise ValueError('zero')
    for p in (2,3,5):
        while x%p==0: x//=p
    return x

def fac(x):
    out={}
    p=2
    while p*p<=x:
        while x%p==0:out[p]=out.get(p,0)+1;x//=p
        p+=1
    if x>1:out[x]=out.get(x,0)+1
    return out

def divisors(f):
    ds=[1]
    for p,e in sorted(f.items()):
        ds=[d*p**k for d in ds for k in range(e+1)]
    return ds

def cand(delta):
    roots=range(-5,6,2) if delta%2==0 else range(-4,5,2)
    ff={}
    for h in roots:
        for p,e in fac(rough(delta-h)).items():
            ff[p]=max(ff.get(p,0),e)
    rs=(1,3,5) if delta%2==0 else (0,2,4)
    return sorted({d+r for d in divisors(ff) for r in rs if d+r>=delta+14})

def failure(n,j):
    for r in range(6):
        q=rough(n-r)
        if prod((j-b)%q for b in range(r+1))%q:
            return r
    return None

def main(B=256):
    st=time.perf_counter();num=0;surv=[];counts=[0]*6; per=[];maxn=0
    for d in range(B+1):
        ns=cand(d);num+=len(ns)
        if ns:maxn=max(maxn,max(ns))
        kept=[]
        for n in ns:
            r=failure(n,(n-d)//2)
            if r is None:kept.append(n);surv.append([n,(n-d)//2,d])
            else:counts[r]+=1
        per.append([d,len(ns),len(kept)])
    print(json.dumps(dict(bound=B,candidates=num,survivors=surv,fails=counts,maxn=maxn,seconds=time.perf_counter()-st,per=per)))
if __name__=='__main__':
    import sys
    main(int(sys.argv[1]) if len(sys.argv)>1 else 256)
