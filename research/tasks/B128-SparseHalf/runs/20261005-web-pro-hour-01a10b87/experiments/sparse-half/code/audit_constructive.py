#!/usr/bin/env python3
"""Independent stdlib exact-rational check of explicit half constructions.
Finite checks are bug-finding evidence, not proofs for all graph orders.
Uses sets, explicit unordered edge tuples and common-denominator energy;
independent from audit_small.cpp's bitset and min-half comparison.
"""
from __future__ import annotations
from fractions import Fraction as F
from itertools import combinations
from collections import Counter
from pathlib import Path
import random, json, time, argparse

C=F(215582257403,8176320972800)
C_REFINED=F(110637361403,4196188620800)

def edgelist(n,es):
    return sorted({tuple(sorted(e)) for e in es})
def inside(es,S):
    return sum(u in S and v in S for u,v in es)
def energy_int(es,nums,den):
    return F(sum(nums[u]*nums[v] for u,v in es),den*den)
def energy(es,x):
    # Common denominator prevents repeatedly multiplying large Fractions.
    from math import lcm
    den=lcm(*(a.denominator for a in x)) if x else 1
    return energy_int(es,[int(a*den) for a in x],den)
def direction(n,es,B):
    B=set(B); m0=inside(es,B);b=len(B)
    if not m0:return [F(0)]*n,F(0),{'core_size':b,'core_edges':0,'center':None}
    H=set(B);q=m0;peel=[]
    while True:
        he=[(u,v) for u,v in es if u in H and v in H]
        deg={v:0 for v in H}
        for u,v in he:deg[u]+=1;deg[v]+=1
        kill=next((v for v in sorted(H) if deg[v]*len(H)<q),None)
        if kill is None:break
        peel.append(kill);q-=deg[kill];H.remove(kill)
    h=len(H);best=F(0);bestz=None;center=None
    for v in sorted(H):
        D={w for a,b in he for w in ([b] if a==v else [a] if b==v else [])}
        a=len(D);M=max(a,h-a);z=[F(0)]*n
        for x in H:z[x]=F(h-a,M) if x in D else -F(a,M)
        val=-energy(es,z)
        L=sum(deg[w] for w in D)
        assert val==F(a*(h*L-q*a),M*M)
        if val>best:best,bestz,center=val,z,v
    assert bestz is not None and sum(bestz)==0 and all(-1<=x<=1 for x in bestz)
    assert F(4*m0**3,(b*b-m0)**2)<=best<=m0
    return bestz,best,{'core_size':h,'core_edges':q,'center':center,'peeled_vertices':peel}

def round_half(n,es,x):
    x=x[:];before=energy(es,x)
    while True:
        frac=[i for i,a in enumerate(x) if 0<a<1]
        if len(frac)<2:break
        i,j=frac[:2];lo=max(-x[i],x[j]-1);hi=min(1-x[i],x[j])
        alternatives=[]
        for t in [lo,hi]:
            y=x[:];y[i]+=t;y[j]-=t;alternatives.append((energy(es,y),y))
        v,x=min(alternatives,key=lambda p:p[0]);assert v<=before;before=v
    S={v for v,a in enumerate(x) if a==1}
    assert len(S)==n//2 and inside(es,S)<=before
    return sorted(S),inside(es,S)

def exact_half(n,es):
    best=None;hist=Counter();witness=None
    for T in combinations(range(n),n//2):
        v=inside(es,set(T));hist[v]+=1
        if best is None or v<best:best,witness=v,list(T)
    return {'minimum':best,'histogram':dict(sorted(hist.items())),'witness':witness,'sets':sum(hist.values())}

def verify_graph(name,n,es,oracle=False):
    es=edgelist(n,es);m=len(es);N=[set() for _ in range(n)]
    for u,v in es:
        assert 0<=u<v<n;N[u].add(v);N[v].add(u)
    assert all(not(N[u]&N[v]) for u,v in es)
    z,k,dc=direction(n,es,range(n))
    row={'name':name,'n':n,'m':m,'edges':es,'core_kappa':str(k),'core_certificate':dc}
    tr4=sum(len(N[u]&N[v])**2 for u in range(n) for v in range(n))
    J=sum(all(len(N[v]&set(T))==1 for v in T) for T in combinations(range(n),4))
    sumcross=sumb=0;rows=[];bestval=None;bestx=None;directions=1
    maxd=max(map(len,N),default=0)
    for u,v in es:
        A1=N[u];A2=N[v];B=set(range(n))-A1-A2
        cr=sum(y in A2 for x,y in es if x in A1)+sum(x in A2 for x,y in es if y in A1)
        mb=inside(es,B);sumcross+=cr;sumb+=mb
        if 2*maxd>=n:continue
        zz,kap,cert=direction(n,es,B);directions+=1
        b=len(B);p1=F(n-2*len(A1),2*b);p2=1-p1;r=min(p1,p2)
        vals=[]
        for p,A in [(p1,A1),(p2,A2)]:
            mu=[F(1) if j in A else p if j in B else F(0) for j in range(n)]
            v0=energy(es,mu);pair=[]
            for sign in [1,-1]:
                x=[mu[j]+sign*r*zz[j] for j in range(n)]
                assert sum(x)==F(n,2) and all(0<=a<=1 for a in x)
                val=energy(es,x);pair.append(val)
                if bestval is None or val<bestval:bestval,bestx=val,x
            assert sum(pair)/2==v0-r*r*kap;vals+=pair
        mix=p2*sum(vals[:2])/2+p1*sum(vals[2:])/2
        X=m-cr
        assert mix==p1*p2*X-r*r*kap
        assert mix<=F(X,4)-kap/8
        assert mix<=F(X,4)-F(mb**3,2*(b*b-mb)**2)
        rows.append({'u':u,'v':v,'b':b,'residual_edges':mb,'kappa':str(kap),'mixture_energy':str(mix),'best_four':str(min(vals))})
    assert tr4==2*sumcross and sumb==2*J
    if n:
        rho=F(2*m,n*n);c4=F(3*tr4,n**4);m4=F(24*J,n**4)
        assert c4>=F(3,2)*rho*rho-F(81,256)*rho
        assert c4+2*m4>=F(3,2)*rho*rho-F(6,25)*rho
    if not n or not m:
        S=list(range(n//2));ee=0
    elif 2*maxd>=n:
        v=next(v for v in range(n) if 2*len(N[v])>=n);S=sorted(N[v])[:n//2];ee=inside(es,set(S));assert ee==0
    else:
        zeta=F(sumb,m*n*n)
        lower_penalty=zeta**3/(2*(1-2*rho-zeta)**2)
        bound=rho/8-c4/(12*rho)-lower_penalty
        exactavg=sum(F(r['mixture_energy']) for r in rows)/m/n**2
        assert bestval/n**2<=exactavg<=bound<=C
        S,ee=round_half(n,es,bestx)
        if F(maxd,n)<F(3,8):
            refined_param=rho/8-c4/(12*rho)-zeta**3/(2*(1-F(5,2)*rho-zeta)**2)
            assert exactavg<=refined_param
            if rho>=F(32,125):assert refined_param<=C_REFINED
            else:assert rho/8-rho**3/(4*(1-rho))<=C_REFINED
            row['refined_parameter_bound']=str(refined_param)
        row.update({'rho':str(rho),'C4':str(c4),'M4':str(m4),'zeta':str(zeta),'parameter_bound':str(bound),'best_fractional_energy':str(bestval),'edge_audits':rows})
    assert len(S)==n//2 and ee<=C*n*n
    assert ee<=C_REFINED*n*n
    row.update({'constructed_half':S,'constructed_edges':ee,'constructed_meets_1_50':50*ee<=n*n,'direction_checks':directions})
    if oracle:row['exact_half']=exact_half(n,es)
    print(json.dumps({k:row[k] for k in ['name','n','m','constructed_edges','constructed_meets_1_50','direction_checks']}),flush=True)
    return row

def mycielski(n,es):
    return 2*n+1,edgelist(2*n+1,es+[(u,n+v) for u,v in es]+[(v,n+u) for u,v in es]+[(n+i,2*n) for i in range(n)])
def blowup(n,es,weights):
    classes=[];cur=0
    for w in weights:classes.append(list(range(cur,cur+w)));cur+=w
    return cur,[(a,b) for u,v in es for a in classes[u] for b in classes[v]]
def fixtures(seed):
    rng=random.Random(seed);out=[]
    def add(name,n,es,oracle=False):out.append((name,n,es,oracle))
    for n in [0,1,7]:add('empty-'+str(n),n,[],n<=7)
    for n in [5,7,9]:add('cycle-'+str(n),n,[(i,(i+1)%n) for i in range(n)],True)
    ks=list(combinations(range(5),2));pe=[(i,j) for i,j in combinations(range(10),2) if not(set(ks[i])&set(ks[j]))]
    add('Petersen-KG(5,2)',10,pe,True)
    labels=[x for x in range(32) if x.bit_count()%2==0]
    ce=[(i,j) for i,j in combinations(range(16),2) if (labels[i]^labels[j]).bit_count()==4]
    add('Clebsch',16,ce,True)
    nn,me=mycielski(5,[(i,(i+1)%5) for i in range(5)]);add('Mycielski-C5',nn,me,True)
    nn2,me2=mycielski(nn,me);add('Mycielski-twice-C5',nn2,me2)
    for base,n,es,weights in [('C5-even',5,[(i,(i+1)%5) for i in range(5)],[4]*5),('C5-unequal',5,[(i,(i+1)%5) for i in range(5)],[1,3,2,5,4]),('Petersen-even',10,pe,[2]*10),('Clebsch-even',16,ce,[2]*16),('Clebsch-unequal',16,ce,[1+(i%3) for i in range(16)])]:
        bn,be=blowup(n,es,weights);add('blowup-'+base,bn,be,bn<=16)
    for n in [8,9,12,16,20,24,32]:
        for rep in range(3):
            pairs=list(combinations(range(n),2));rng.shuffle(pairs);N=[set() for _ in range(n)];es=[]
            for u,v in pairs:
                if rng.random()<[.2,.55,1][rep] and not(N[u]&N[v]):N[u].add(v);N[v].add(u);es.append((u,v))
            add(f'greedy-seed{seed}-n{n}-r{rep}',n,es,n<=12)
    for n in [10,20,30]:
        for p in [.2,.7,1]:
            es=[(u,v) for u in range(n//2) for v in range(n//2,n) if rng.random()<p]
            add(f'bipartite-n{n}-p{p}',n,es,n<=10)
    # Fixed induced-2K2 signature rule failure, even after max-degree<half.
    groups=[(0,2),(0,3),(1,2),(1,3)];es=[(0,1),(2,3)]
    for g,(a,b) in enumerate(groups):
        for v in [4+2*g,5+2*g]:es.extend([(a,v),(b,v)])
    for g,h in [(0,3),(1,2)]:
        es.extend((a,b) for a in [4+2*g,5+2*g] for b in [4+2*h,5+2*h])
    add('two-edge-rule-size-failure',12,es,True)
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--seed',type=int,default=12820261005);args=ap.parse_args()
    t0=time.perf_counter();rows=[verify_graph(*f) for f in fixtures(args.seed)]
    data={'seed':args.seed,'graphs':rows,'graph_count':len(rows),'direction_checks':sum(r['direction_checks'] for r in rows),'outer_edge_checks':sum(len(r.get('edge_audits',[])) for r in rows),'seconds':time.perf_counter()-t0}
    args.out.write_text(json.dumps(data,indent=2)+'\n');print('PASS',json.dumps({k:v for k,v in data.items() if k!='graphs'}))
if __name__=='__main__':main()
