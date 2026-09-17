"""Bounded floating discovery only; no LP output is an acceptance certificate."""
from pathlib import Path
import json, math, itertools, time
from fractions import Fraction
import numpy as np

ROOT=Path(__file__).resolve().parent
REPLAY=ROOT.parents[5]/'.tools/replay/a1c74e93-h023'
# Resolve against worktree rather than number of run-path segments.
REPLAY=Path.cwd()/'.tools/replay/a1c74e93-h023'
RS=(1,4,5,6)
PTS=[(b,r-b) for r in RS for b in range(r+1)]
ALL=[(b,r-b) for r in range(7) for b in range(r+1)]

class LP:
    def __init__(self,A,b,c):
        self.m,self.n=len(b),len(c)
        self.B=np.arange(self.n,self.n+self.m)
        self.N=np.append(np.arange(self.n),-1)
        self.D=np.zeros((self.m+2,self.n+2),float)
        self.D[:self.m,:self.n]=A
        self.D[:self.m,self.n]=-1
        self.D[:self.m,self.n+1]=b
        self.D[self.m,:self.n]=-np.array(c)
        self.D[self.m+1,self.n]=1
        self.pivots=0
    def pivot(self,r,s):
        p=self.D[r,s]
        row=self.D[r,:].copy()
        col=self.D[:,s].copy()
        self.D-=np.outer(col,row)/p
        self.D[r,:]=row/p
        self.D[:,s]=-col/p
        self.D[r,s]=1/p
        self.B[r],self.N[s]=self.N[s],self.B[r]
        self.pivots+=1
        if self.pivots>20000: raise RuntimeError('pivot budget')
    def simplex(self,phase):
        x=self.m+1 if phase==1 else self.m
        while True:
            ss=[j for j in range(self.n+1) if phase==1 or self.N[j]!=-1]
            s=min(ss,key=lambda j:(self.D[x,j],self.N[j]))
            if self.D[x,s]>=-1e-8:return True
            rr=[i for i in range(self.m) if self.D[i,s]>1e-8]
            if not rr:return False
            r=min(rr,key=lambda i:(self.D[i,self.n+1]/self.D[i,s],self.B[i]))
            self.pivot(r,s)
    def solve(self):
        r=int(np.argmin(self.D[:self.m,self.n+1]))
        if self.D[r,self.n+1]<-1e-8:
            self.pivot(r,self.n)
            if not self.simplex(1) or self.D[self.m+1,self.n+1]<-1e-8:return None
            for r in range(self.m):
                if self.B[r]==-1:
                    s=min(range(self.n+1),key=lambda j:(self.D[r,j],self.N[j]))
                    if abs(self.D[r,s])>1e-8:self.pivot(r,s)
        if not self.simplex(2):raise RuntimeError('unbounded')
        v=np.zeros(self.n)
        for i in range(self.m):
            if self.B[i]<self.n:v[self.B[i]]=self.D[i,self.n+1]
        return v

def translate_order(poly,x,y):
    degree=max(a+b for a,b,c in poly)
    for t in range(degree+1):
        for u in range(t+1):
            v=t-u
            z=sum(c*math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v)
                  for a,b,c in poly if a>=u and b>=v)
            if z:return t
    raise ValueError('zero polynomial')

def main():
    start=time.time()
    old=json.loads((REPLAY/'exploration/oldodd/failure_models.json').read_text())
    cubic=json.loads((REPLAY/'exploration/probe7_cubic_pool.json').read_text())
    constraints={}
    for f in old['pools']['7']+cubic:
        vec=tuple(int(ALL.index(p) in f['zeros']) for p in PTS)
        constraints[vec]=min(f['degree'],constraints.get(vec,99))
    fat=json.loads((REPLAY/'evidence/height_certificates.json').read_text())
    print('fat certificate count',len(fat),flush=True)
    certs=fat if isinstance(fat,list) else fat.get('certificates',fat.get('items',[]))
    for f in certs:
        poly=f.get('poly',f.get('polynomial'))
        if not poly:continue
        vec=tuple(translate_order(poly,*p) for p in PTS)
        degree=max(a+b for a,b,c in poly)
        constraints[vec]=min(degree,constraints.get(vec,9999))
    A=[list(v) for v in constraints]
    b=list(constraints.values())
    for r in RS:
        row=[int(x+y==r) for x,y in PTS]
        A.extend([row,[-z for z in row]])
        b.extend([1,-1])
    for i,(x,y) in enumerate(PTS):
        j=PTS.index((y,x))
        if i>=j:continue
        row=[0]*len(PTS);row[i]=1;row[j]=-1
        A.extend([row,[-z for z in row]])
        b.extend([0,0])
    lp=LP(A,b,[0]*len(PTS));v=lp.solve()
    out=dict(constraints=len(constraints),pivots=lp.pivots,elapsed=time.time()-start,
             feasible=v is not None,discovery_only=True)
    if v is not None:
        out['dual']=[str(Fraction(float(z)).limit_denominator(100000)) for z in v]
        out['sum_squares']=float(v@v)
        out['max_violation']=float(np.max(np.array(A)@v-b))
    (ROOT/'dual_probe.json').write_text(json.dumps(out,indent=2),encoding='utf-8')
    print(json.dumps(out),flush=True)

if __name__=='__main__':main()
