"""Discover small symmetric fat-point atoms with exact postchecks.

The outer LP only suggests a search target. Published atoms require integer
Taylor checks and a nonnegative half-line coefficient expansion.
"""
from pathlib import Path
from fractions import Fraction
from functools import reduce
import json,math,time,itertools
import numpy as np
import sympy as sp
from sympy.polys.matrices import DomainMatrix
from sympy.polys.domains import ZZ
from probe_dual import LP,PTS,ALL,RS,REPLAY,translate_order

ROOT=Path(__file__).resolve().parent
X,Y=sp.symbols('X Y')
REP=[(x,y) for x,y in PTS if x<=y]

def initial_pool():
    old=json.loads((REPLAY/'exploration/oldodd/failure_models.json').read_text())
    cubic=json.loads((REPLAY/'exploration/probe7_cubic_pool.json').read_text())
    pool={}
    for f in old['pools']['7']+cubic:
        v=tuple(int(ALL.index(p) in f['zeros']) for p in PTS)
        if v not in pool or f['degree']<pool[v]['degree']:
            pool[v]=dict(degree=f['degree'],orders=v,source='old-pool')
    fat=json.loads((REPLAY/'evidence/height_certificates.json').read_text())
    for f in fat:
        p=f['poly'];v=tuple(translate_order(p,*z) for z in PTS)
        pool[v]=dict(degree=f['degree'],orders=v,source='old-fat',H=f['H'])
    return list(pool.values())

def dual(pool):
    A=[list(f['orders']) for f in pool];b=[f['degree'] for f in pool]
    for r in RS:
        row=[int(x+y==r) for x,y in PTS]
        A.extend([row,[-z for z in row]]);b.extend([1,-1])
    for i,(x,y) in enumerate(PTS):
        j=PTS.index((y,x))
        if i>=j:continue
        row=[0]*len(PTS);row[i]=1;row[j]=-1
        A.extend([row,[-z for z in row]]);b.extend([0,0])
    v=LP(A,b,[0]*len(PTS)).solve()
    return None if v is None else [Fraction(float(z)).limit_denominator(10**6) for z in v]

def pattern(d,dual):
    nc=(d+2)**2//4
    D=math.lcm(*(z.denominator for z in dual))
    rewards=[int(D*dual[PTS.index(p)])*(1 if p[0]==p[1] else 2) for p in REP]
    dp={0:(0,[])}
    for p,reward in zip(REP,rewards):
        nxt={}
        for used,(score,ms) in dp.items():
            for m in range(d+1):
                cost=(m+1)**2//4 if p[0]==p[1] else m*(m+1)//2
                if used+cost>=nc:break
                val=score+reward*m
                if used+cost not in nxt or val>nxt[used+cost][0]:
                    nxt[used+cost]=(val,ms+[m])
        dp=nxt
    score,ms=max(dp.values(),key=lambda t:t[0])
    return Fraction(score,D),ms

def halfshift(poly):
    out={}
    for a,b,c in poly:
        for u in range(a+1):
            for v in range(b+1):
                for z in range(b-v+1):
                    key=u+v,z
                    out[key]=out.get(key,0)+c*math.comb(a,u)*math.comb(b,v)*math.comb(b-v,z)*8**(a+b-u-v-z)
    return {k:v for k,v in out.items() if v}

def normalize(poly):
    g=math.gcd(*(abs(c) for a,b,c in poly))
    return [(a,b,c//g) for a,b,c in poly if c]

def construct(d,ms):
    exps=[(a,b) for a in range(d+1) for b in range(min(a,d-a)+1)]
    rows=[]
    for (x,y),m in zip(REP,ms):
        for u in range(m):
            for v in range(m-u):
                if x==y and u>v:continue
                row=[]
                for a,b in exps:
                    c=math.comb(a,u)*math.comb(b,v)*x**(a-u)*y**(b-v) if a>=u and b>=v else 0
                    if a!=b and b>=u and a>=v:c+=math.comb(b,u)*math.comb(a,v)*x**(b-u)*y**(a-v)
                    row.append(c)
                rows.append(row)
    basis=DomainMatrix.from_list(rows,ZZ).nullspace().to_list()
    result=[]
    for vv in basis[:6]:
        poly=[]
        for (a,b),c in zip(exps,vv):
            c=int(c)
            if c:poly.append((a,b,c))
            if c and a!=b:poly.append((b,a,c))
        poly=normalize(poly)
        pp=sum(c*X**a*Y**b for a,b,c in poly)
        factors=sp.factor_list(pp)[1]
        for fact,power in factors:
            p=[(int(a),int(b),int(c)) for (a,b),c in sp.Poly(fact,X,Y).terms()]
            p=normalize(p)
            shifted=halfshift(p)
            if all(c<0 for c in shifted.values()):p=[(a,b,-c) for a,b,c in p];shifted={k:-v for k,v in shifted.items()}
            if shifted.get((0,0),0)<=0 or any(c<0 for c in shifted.values()):continue
            orders=[translate_order(p,*z) for z in PTS]
            result.append(dict(degree=max(a+b for a,b,c in p),orders=orders,poly=p,
                               positive_halfshift_terms=len(shifted),source='new-atom'))
    return result,len(basis),len(rows),len(exps)

def main():
    start=time.time();pool=initial_pool();added=[];history=[]
    for iteration in range(80):
        v=dual(pool)
        if v is None:
            history.append(dict(iteration=iteration,dual_feasible=False))
            print('DUAL INFEASIBLE; exact primal certificate still required',flush=True);break
        print('ITER',iteration,'norm',float(sum(z*z for z in v)),flush=True)
        accepted=False
        for d in range(3,33):
            score,ms=pattern(d,v)
            if score<=d:continue
            print('TRY',d,'weighted target',str(score),flush=True)
            atoms,dim,nr,nc=construct(d,ms)
            new=[f for f in atoms if sum(w*m for w,m in zip(v,f['orders']))>f['degree']]
            history.append(dict(iteration=iteration,degree=d,target=str(score),multiplicities=ms,
                                kernel_dimension=dim,nrows=nr,ncols=nc,
                                positive_factors=len(atoms),violating_factors=len(new)))
            print('RESULT',dim,len(atoms),len(new),flush=True)
            if new:
                seen={tuple(f['orders']):i for i,f in enumerate(pool)}
                for f in new:
                    key=tuple(f['orders'])
                    if key in seen:
                        if pool[seen[key]]['degree']<=f['degree']:continue
                        pool[seen[key]]=f
                    else:
                        seen[key]=len(pool);pool.append(f)
                    added.append(f)
                accepted=True;break
            if time.time()-start>500:break
        (ROOT/'atoms.json').write_text(json.dumps(dict(atoms=added,history=history,elapsed=time.time()-start),indent=2),encoding='utf-8')
        if not accepted or time.time()-start>500:break
    print(json.dumps(dict(new_atoms=len(added),iterations=len(history),elapsed=time.time()-start)),flush=True)

if __name__=='__main__':main()
