#!/usr/bin/env python3
"""Discovery: full ordinary plane jet systems, no sampling of coefficient boxes.
All row specializations are interpolated with integer 120*Lagrange numerators.
Full augmented rank over a prime is used ONLY at order nc+1 (a nonzero integer
minor). Smaller ranks are sent to exact rational recovery, never rejected.
"""
import json,math,time,argparse
from pathlib import Path
from collections import Counter
from functools import lru_cache
from fractions import Fraction
import numpy as np
from fastfield import rank_minor
RR=tuple(range(3,9))

def conv(a,b,p=None):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return [v%p for v in c] if p else c

def shift(c,x,p=None):
    out=[sum(c[a]*math.comb(a,i)*x**(a-i) for a in range(i,len(c))) for i in range(len(c))]
    return [v%p for v in out] if p else out

def roots_poly(rt,p=None):
    c=[1]
    for x in rt:c=conv(c,[-x,1],p)
    return c

class Model:
    def __init__(self,q,p=None):
        self.q=q;self.p=p;d=2*q-6
        self.mons=[(a,b) for b in range(d//2+1) for a in range(d-2*b+1)]
        self.nc=len(self.mons)
        self.W=roots_poly(RR)
        self.L=[]
        for r in RR:
            den=math.prod(r-s for s in RR if s!=r)
            self.L.append([c*(120//den) for c in roots_poly([s for s in RR if s!=r])])
        self.Ljets={r:[shift(c,r,p) for c in self.L] for r in RR}
        self.Njets={}
        for r in RR:
            for a in range(d+1):self.Njets[r,a]=shift([0]*a+self.W,r,p)
        self.cache={}
    @lru_cache(maxsize=None)
    def rowtaylor(self,rt,v):
        return shift(roots_poly(rt,self.p),v,self.p)
    def build(self,c):
        roots=tuple(tuple(sorted(row+([c['lambda']] if c['h']==r else []))) for r,row in zip(RR,c['roots']))
        labels=[];mat=[]
        for r,row in zip(RR,c['roots']):
            for v,m in sorted(Counter(row).items()):
                for i in range(1,m):
                    for j in range(m-i):
                        lab=(r,v,i,j);labels.append(lab)
                        if lab not in self.cache:
                            vals=[]
                            for a,b in self.mons:
                                u=self.Njets[r,a]
                                z=(u[i] if i<len(u) else 0)*math.comb(b,j)*v**(b-j) if b>=j else 0
                                vals.append(z%self.p if self.p else z)
                            self.cache[lab]=vals
                        val=0
                        if i<6:
                            val=sum(self.Ljets[r][s][i]*self.rowtaylor(roots[s],v)[j] for s in range(6))
                        mat.append(self.cache[lab]+[(-val)%self.p if self.p else -val])
        return labels,mat
    def h0(self,c):
        H={}
        for s,(r,row) in enumerate(zip(RR,c['roots'])):
            f=roots_poly(row+([c['lambda']] if c['h']==r else []))
            for a,x in enumerate(self.L[s]):
                for b,y in enumerate(f):H[a,b]=H.get((a,b),0)+x*y
        return {k:v for k,v in H.items() if v}
    def assemble(self,c,sol):
        H=self.h0(c)
        for (a,b),v in zip(self.mons,sol):
            if v:
                for i,z in enumerate(self.W):H[a+i,b]=H.get((a+i,b),0)+z*v
        return {k:Fraction(v)/120 for k,v in H.items() if v}

def full_minor(mat,p):
    if not mat:return [],[],0
    A=np.array(mat,dtype=np.int64)%p
    ids=list(range(len(mat)));piv=[];cols=[];rank=0
    for col in range(A.shape[1]):
        nz=np.flatnonzero(A[rank:,col])
        if not len(nz):continue
        i=rank+int(nz[0]);A[[rank,i]]=A[[i,rank]];ids[rank],ids[i]=ids[i],ids[rank]
        piv.append(ids[rank]);cols.append(col)
        inv=pow(int(A[rank,col]),-1,p)
        if rank+1<len(A):
            factors=A[rank+1:,col]*inv%p
            A[rank+1:,col:]=(A[rank+1:,col:]-factors[:,None]*A[rank,col:][None,:])%p
        rank+=1
        if rank==len(A):break
    return piv,cols,rank

def process(path,out):
    g=json.loads(path.read_text());q=g['q'];M=Model(q,65521);ex=[];cert=[];begin=time.monotonic()
    for idx,c in enumerate(g['records']):
        lab,A=M.build(c);rr,cc,rank,_det=rank_minor(A)
        if rank==M.nc+1:
            cert.append({'index':idx,'prime':M.p,'rows':rr})
        else:
            ex.append({'index':idx,'rank_aug_mod':rank,'columns':cc,'record':c})
            print('EXCEPTION',q,g['h'],idx,'rows',len(A),'rank',rank,'nc',M.nc,flush=True)
        if (idx+1)%250==0:print('PROGRESS',path.name,idx+1,round(time.monotonic()-begin,2),flush=True)
    obj={'gate_file':path.name,'q':q,'h':g['h'],'parameters':M.nc,'certificates':cert,'exceptions':ex}
    out.write_text(json.dumps(obj,separators=(',',':'),sort_keys=True)+'\n')
    print('FINISHED',path.name,len(g['records']),'minors',len(cert),'exceptions',len(ex),'seconds',round(time.monotonic()-begin,3),flush=True)
if __name__=='__main__':
    pa=argparse.ArgumentParser();pa.add_argument('gate',type=Path);pa.add_argument('out',type=Path);a=pa.parse_args();process(a.gate,a.out)
