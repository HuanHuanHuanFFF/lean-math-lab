#!/usr/bin/env python3
"""Exact finite checks. Full-sized module traces must also be regenerated."""
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from functools import lru_cache
from itertools import product
from math import comb
import hashlib,json

def dump(path,obj):
    path=Path(path);path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def sha(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()

def gates(path):
    lines=Path(path).read_text().splitlines();seen=set();rowspec=[(r,s)for r in range(3,9)for s in range(r//2+1)]
    for line in lines:
        z=list(map(int,line.split()));assert len(z)==25
        q,nz,lam,g,*mm=z;assert q==16 and all(x>=0 for x in mm)
        assert tuple(z)not in seen;seen.add(tuple(z))
        load=[0]*9;pos=0;S=[];T=[];genus=0;count=0
        for r in range(3,9):
            m=mm[pos:pos+r//2+1];pos+=len(m);assert sum(m)==q-(r==3)
            roots=[]
            for s,c in enumerate(m):
                roots += [s*(r-s)]*c;load[s]+=c;load[r-s]+=c;genus+=comb(c,2);count+=c>0
            if r%2==0:genus+=comb(m[-1],2)
            if r==3:
                assert all(lam!=s*(r-s)or c>0 for s,c in enumerate(m))
                roots.append(lam)
            assert len(roots)==q
            S.append(sum(roots));T.append(sum(x*y for j,x in enumerate(roots)for y in roots[j+1:]))
        assert count==nz and nz>=14 and max(load)<=32 and genus==g and g<=225
        assert all(-S[i]+3*S[i+1]-3*S[i+2]+S[i+3]==0 for i in range(3))
        assert sum(a*b for a,b in zip((-1,5,-10,10,-5,1),T))==0
    assert len(lines)==474
    return {'count':474,'all_source_root_and_genus_conditions':True,'unique':True}

def ranks(path,prime):
    ls=Path(path).read_text().splitlines();assert len(ls)==474
    for i,l in enumerate(ls):
        z=list(map(int,l.split()));assert z[0]==i and z[1]==197 and 0<z[2]<prime
        assert len(z)==200 and len(set(z[3:]))==197
    return {'prime':prime,'systems':474,'full_column_rank':197}

def trace(path,case,prime):
    h=case['quotient_degree'];J=case['constraints'];ls=Path(path).read_text().splitlines()
    assert ls[0]==f'p {prime} h {h} constraints {J}' and len(ls)==J+2
    w=list(range(0,2*h+1,2));independent=0;nz=0
    for j,line in enumerate(ls[1:-1]):
        a=list(map(int,line.split()));assert a[0]==j
        if a[1]==-1:assert len(a)==2;continue
        assert len(a)==4;_,b,d,ww=a;assert 0<=b<=h and 0<d<prime and ww==w[b]
        independent+=ww<=2*h;w[b]+=1;nz+=1
    assert ls[-1].split()[0]=='weights' and w==list(map(int,ls[-1].split()[1:]))
    assert sum(w)==h*(h+1)+nz
    nullity=sum(max(0,2*h-x+1)for x in w)
    assert nullity==0 and independent==(h+1)**2
    return {'state':case['state'],'prime':prime,'rows':J,'columns':(h+1)**2,'nullity':0,'min_weight':min(w),'max_weight':max(w),'independent_truncated_rows':independent,'trace_sha256':sha(path)}

def reference_fees(raw,cap,nmax=8):
    """Exact-used capacity forward DP + axis prefix minimum vs recursive <=capacity DP."""
    cap=tuple(cap);dims=tuple(x+1 for x in cap);points=list(product(*(range(d)for d in dims)))
    strides=[];m=1
    for d in reversed(dims):strides.append(m);m*=d
    strides=tuple(reversed(strides));idx=lambda c:sum(a*b for a,b in zip(c,strides))
    active=sorted(set((x[0],tuple(x[1]))for x in raw if all(a<=b for a,b in zip(x[1],cap))))
    inf=10**8;trans=[]
    for e,c in active:
        shift=idx(c);src=[k for k,u in enumerate(points)if all(a+b<=v for a,b,v in zip(u,c,cap))]
        trans.append((e,shift,src))
    cur=[inf]*len(points);cur[0]=0;flat=[]
    @lru_cache(None)
    def backward(n,c):
        if n==0:return 0
        return min((e+backward(n-1,tuple(a-b for a,b in zip(c,v)))for e,v in reversed(active)if all(b<=a for a,b in zip(c,v))),default=inf)
    for n in range(nmax+1):
        pre=cur[:]
        for d,st in zip(dims,strides):
            for k in range(len(pre)):
                if(k//st)%d:pre[k]=min(pre[k],pre[k-st])
        for k,c in enumerate(points):
            b=backward(n,c);assert pre[k]==b,(n,c,pre[k],b)
            flat.append((n,*c,b))
        if n==nmax:break
        nxt=[inf]*len(points)
        for e,shift,src in trans:
            for k in src:
                value=cur[k]+e
                if value<nxt[k+shift]:nxt[k+shift]=value
        cur=nxt
    text='n c3 c4 c5 c6 c7 c8 minimum\n'+''.join(' '.join(map(str,x))+'\n'for x in flat)
    return text,{'subcapacities':len(points),'comparisons':len(flat),'minimum_eight_degree':backward(nmax,cap),'active_unique_cost_pairs':len(active)}
