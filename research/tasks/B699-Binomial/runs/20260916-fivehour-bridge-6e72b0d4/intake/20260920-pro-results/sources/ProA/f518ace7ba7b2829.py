#!/usr/bin/env python3
"""Independent receiving-side exact arithmetic. No discovery module imports.
Root gates use squared-root moments and alternate interpolation pivots.
Jets use Newton differences (not discovery's Lagrange construction).
NumPy is used only for bounded int64 arithmetic modulo verified primes.
"""
from __future__ import annotations
import json, math, itertools
from collections import Counter,defaultdict
from fractions import Fraction as F
from functools import lru_cache
import numpy as np
ROWS=tuple(range(3,9))
VALUES={r:tuple(s*(r-s) for s in range(r//2+1)) for r in ROWS}
DIFF=(-1,5,-10,10,-5,1)
ALT={3:(4,5,7),4:(3,6,7),5:(3,4,8),6:(3,5,8),7:(3,4,6),8:(3,5,7)}

def need(b,msg):
    if not b:raise AssertionError(msg)
def save(p,obj):p.write_text(json.dumps(obj,sort_keys=True,separators=(',',':'))+'\n')
def enc(x):x=F(x);return [x.numerator,x.denominator]
def loadpoly(p):return {(a,b):F(n,d) for a,b,n,d in p}
def packpoly(p):return [[a,b,*enc(x)] for (a,b),x in sorted(p.items()) if x]
def key(c):return (c['h'],tuple(tuple(r) for r in c['roots']),c['lambda'])

@lru_cache(maxsize=None)
def isprime(p):
    return isinstance(p,int) and p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))

def row_options(q):
    seq={};byS={};bySM={}
    for r in ROWS:
        seq[r]=[];byS[r]=defaultdict(list);bySM[r]=defaultdict(list)
        for roots in itertools.combinations_with_replacement(VALUES[r],q):
            mm=Counter(roots);S=sum(roots);M=sum(x*x for x in roots)
            z=(roots,S,M,len(mm),tuple(mm[t*(r-t)] for t in range(9)),sum(x*(x-1)//2 for x in mm.values()))
            seq[r].append(z);byS[r][S].append(z);bySM[r][S,M].append(z)
    return seq,byS,bySM

def filter_record(q,h,rows,lam,stats,out):
    # Each row is the ordinary multiset, NOT the missing-row extra root.
    if sum(x[3] for x in rows)<14:
        stats['small_z']+=1;return
    stats['z14_gates']+=1
    line=[sum(x[4][t] for x in rows) for t in range(9)]
    if any(x>2*q for x in line[:5]):stats['old_line_forced']+=1;return
    stats['after_old_lines']+=1
    if any(x>2*q for x in line[5:]):stats['new_line_forced']+=1;return
    stats['after_all_lines']+=1
    genus=sum(x[5] for x in rows)
    if genus>(q-1)**2:stats['genus_forced']+=1;return
    kk=(h,tuple(x[0] for x in rows),lam)
    need(kk not in out,'duplicate independent gate')
    out[kk]=genus;stats['jet_residual']+=1

def sat_gates(q):
    need(q in (16,17),'SAT scope');need(5*q*q-13*q-13>0,'small-z genus inequality')
    seq,S,SM=row_options(q);st=Counter();out={}
    for aa in itertools.product(seq[3],seq[4],seq[5]):
        s3,s4,s5=(x[1] for x in aa)
        sums=(s3,s4,s5,s3-3*s4+3*s5,3*s3-8*s4+6*s5,6*s3-15*s4+10*s5)
        if any(sums[r-3] not in S[r] for r in (6,7,8)):continue
        # Unlike discovery, finish at row8, using squared-root moments.
        for d,e in itertools.product(S[6][sums[3]],S[7][sums[4]]):
            M8=aa[0][2]-5*aa[1][2]+10*aa[2][2]-10*d[2]+5*e[2]
            for f in SM[8].get((sums[5],M8),()):
                rr=aa+(d,e,f);st['complete_gates']+=1
                filter_record(q,0,rr,None,st,out)
    return out,dict(st)

def nf_gates(q,h):
    need(q==10 and h in ROWS,'NF scope')
    seq,T,_=row_options(q);piv=ALT[h];good=[r for r in ROWS if r!=h];weights={}
    for r in ROWS:
        w=[F(math.prod(r-t for t in piv if t!=s),math.prod(s-t for t in piv if t!=s)) for s in piv]
        d=math.lcm(*(x.denominator for x in w));weights[r]=(d,[int(x*d) for x in w])
    lowseq,_,_=row_options(q-1);cache={};out={};st=Counter()
    for sss in itertools.product(*(tuple(T[r]) for r in piv)):
        sums={}
        for r in ROWS:
            den,ww=weights[r];s,rem=divmod(sum(x*y for x,y in zip(sss,ww)),den)
            if rem or (r!=h and s not in T[r]):break
            sums[r]=s
        if len(sums)!=6:continue
        sh=sums[h]
        if sh not in cache:
            b=defaultdict(list)
            for row in lowseq[h]:
                lam=sh-row[1]
                if lam in VALUES[h] and lam not in row[0]:continue
                b[row[2]+lam*lam].append((row,lam))
            cache[sh]=b
        for choices in itertools.product(*(T[r][sums[r]] for r in good)):
            zz=sum(x[3] for x in choices)
            if zz+len(VALUES[h])<14:continue
            target,rem=divmod(-sum(DIFF[r-3]*x[2] for r,x in zip(good,choices)),DIFF[h-3])
            if rem:continue
            for low,lam in cache[sh].get(target,()):
                if zz+low[3]<14:continue
                st['complete_gates']+=1
                rd=dict(zip(good,choices));rd[h]=low
                filter_record(q,h,tuple(rd[r] for r in ROWS),lam,st,out)
    return out,dict(st)

def multiply_uni(a,b):
    c=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):c[i+j]+=x*y
    return c

def rootpoly(roots):
    a=[1]
    for x in roots:a=multiply_uni(a,[-x,1])
    return a

def derivative_coefficient(a,r,i):
    return sum(a[k]*math.comb(k,i)*r**(k-i) for k in range(i,len(a)))

class ReceiverModel:
    def __init__(self,q,prime=None):
        self.q=q;self.p=prime;self.W=rootpoly(ROWS);d=2*q-6
        self.mons=[(a,b) for b in range(q-2) for a in range(d-2*b+1)]
        self.nc=len(self.mons);need(self.nc==(q-2)**2,'dimension')
        self.NB=[]
        for k in range(6):self.NB.append([x*(120//math.factorial(k)) for x in rootpoly(range(3,3+k))])
        self.NBjets={(r,k,i):derivative_coefficient(self.NB[k],r,i) for r in ROWS for k in range(6) for i in range(6)}
        self.Wj={(r,i):derivative_coefficient(self.W,r,i) for r in ROWS for i in range(7)}
        self.acache={}
    @lru_cache(maxsize=None)
    def rt(self,roots,v,j):
        x=derivative_coefficient(rootpoly(roots),v,j)
        return x%self.p if self.p else x
    def arow(self,r,v,i,j):
        lab=(r,v,i,j)
        if lab not in self.acache:
            row=[]
            for a,b in self.mons:
                n=sum(self.Wj[r,k]*math.comb(a,i-k)*r**(a-i+k) for k in range(max(0,i-a),min(6,i)+1))
                x=math.comb(b,j)*v**(b-j) if b>=j else 0
                z=n*x;row.append(z%self.p if self.p else z)
            self.acache[lab]=row
        return self.acache[lab]
    def build(self,c):
        fullroots=tuple(tuple(sorted(rt+([c['lambda']] if r==c['h'] else []))) for r,rt in zip(ROWS,c['roots']))
        diffcache={};A=[];labs=[]
        for r,rt in zip(ROWS,c['roots']):
            for v,m in sorted(Counter(rt).items()):
                for i in range(1,m):
                    for j in range(m-i):
                        labs.append((r,v,i,j));target=0
                        if i<6:
                            if (v,j) not in diffcache:
                                seq=[self.rt(rt0,v,j) for rt0 in fullroots];ds=[]
                                for _ in range(6):
                                    ds.append(seq[0]);seq=[b-a for a,b in zip(seq,seq[1:])]
                                diffcache[v,j]=ds
                            target=sum(self.NBjets[r,k,i]*diffcache[v,j][k] for k in range(i,6))
                        rhs=(-target)%self.p if self.p else -target
                        A.append(self.arow(r,v,i,j)+[rhs])
        return labs,A
    def h0(self,c):
        fs=[rootpoly(rt+([c['lambda']] if r==c['h'] else [])) for r,rt in zip(ROWS,c['roots'])];H={}
        for b in range(self.q+1):
            seq=[v[b] for v in fs]
            for k in range(6):
                for a,z in enumerate(self.NB[k]):H[a,b]=H.get((a,b),0)+seq[0]*z
                seq=[y-x for x,y in zip(seq,seq[1:])]
        return {k:v for k,v in H.items() if v}
    def assemble(self,c,sol,base):
        H=self.h0(c) if base else {}
        for (a,b),x in zip(self.mons,sol):
            for i,z in enumerate(self.W):H[a+i,b]=H.get((a+i,b),0)+x*z
        return {k:F(v,120) for k,v in H.items() if v}

def determinant_mod(A,p,numpy=True):
    need(isprime(p),'unverified prime');n=len(A)
    need(n>0 and all(len(r)==n for r in A),'not square')
    # All np operands are residues; products < p^2 < 2^63/4.
    need(p*p<2**61,'modular backend overflow risk')
    if numpy:
        M=np.array([[int(v%p) for v in r] for r in A],dtype=np.int64);ans=1
        for k in range(n):
            nz=np.flatnonzero(M[k:,k])
            if not len(nz):return 0
            r=k+int(nz[0])
            if r!=k:M[[r,k]]=M[[k,r]];ans=-ans
            pivot=int(M[k,k]);ans=ans*pivot%p
            if k+1<n:
                c=M[k+1:,k]*pow(pivot,-1,p)%p
                M[k+1:,k+1:]=(M[k+1:,k+1:]-c[:,None]*M[k,k+1:][None,:])%p
        return int(ans%p)
    M=[[int(v%p) for v in r] for r in A];ans=1
    for k in range(n):
        r=next((i for i in range(k,n) if M[i][k]),None)
        if r is None:return 0
        if r!=k:M[r],M[k]=M[k],M[r];ans=-ans
        z=M[k][k];ans=ans*z%p;iv=pow(z,-1,p)
        for i in range(k+1,n):
            c=M[i][k]*iv%p
            for j in range(k+1,n):M[i][j]=(M[i][j]-c*M[k][j])%p
    return ans%p

def bareiss(A):
    M=[r[:] for r in A];n=len(A);last=1;sign=1
    for k in range(n-1):
        if not M[k][k]:
            r=next((i for i in range(k+1,n) if M[i][k]),None)
            if r is None:return 0
            M[k],M[r]=M[r],M[k];sign=-sign
        p=M[k][k]
        for i in range(k+1,n):
            for j in range(k+1,n):
                v=M[i][j]*p-M[i][k]*M[k][j]
                x,rem=divmod(v,last);need(rem==0,'Bareiss non-exact division');M[i][j]=x
            M[i][k]=0
        last=p
    return sign*M[-1][-1]

def validate_minor(A,rows,p,nc):
    need(len(rows)==nc+1,'non-full augmented minor')
    need(len(set(rows))==len(rows),'duplicate minor row')
    need(all(isinstance(i,int) and 0<=i<len(A) for i in rows),'minor row out of bounds')
    d=determinant_mod([A[i] for i in rows],p);need(d!=0,'zero augmented minor');return d

def ordinary_jet(H,r,v,i,j):
    return sum(c*math.comb(a,i)*r**(a-i)*math.comb(b,j)*v**(b-j) for (a,b),c in H.items() if a>=i and b>=j)

def tangent_jet(H,s,i,j):
    # First expand in t along X=s*N-s^2+t, then Taylor-expand N at 2s.
    z=F(0)
    for (a,b),c in H.items():
        if b<j:continue
        for k in range(b-j+1):
            degree=a+k
            if degree>=i:
                z+=c*math.comb(b,j)*math.comb(b-j,k)*s**k*(-s*s)**(b-j-k)*math.comb(degree,i)*(2*s)**(degree-i)
    return z

def affine_space(eqs,d):
    M=[[F(x) for x in e[1:]]+[-F(e[0])] for e in eqs if any(e)];rank=0;piv=[]
    for j in range(d):
        r=next((r for r in range(rank,len(M)) if M[r][j]),None)
        if r is None:continue
        M[r],M[rank]=M[rank],M[r];v=M[rank][j];M[rank]=[x/v for x in M[rank]]
        for i in range(len(M)):
            if i!=rank and M[i][j]:
                v=M[i][j];M[i]=[x-v*y for x,y in zip(M[i],M[rank])]
        piv.append(j);rank+=1
    if any(not any(r[:d]) and r[d] for r in M):return None
    free=[j for j in range(d) if j not in piv];b=[F(0)]*d
    for r,j in enumerate(piv):b[j]=M[r][d]
    dirs=[]
    for f in free:
        v=[F(0)]*d;v[f]=F(1)
        for r,j in enumerate(piv):v[j]=-M[r][f]
        dirs.append(v)
    return b,dirs,[[-M[r][d]]+M[r][:d] for r in range(rank)]

def identically_zero(e,aff):
    b,ds,_=aff
    return e[0]+sum(x*y for x,y in zip(e[1:],b))==0 and all(sum(x*y for x,y in zip(e[1:],v))==0 for v in ds)

def primitive(H):
    den=math.lcm(*(F(v).denominator for v in H.values()));g=math.gcd(*(int(v*den) for v in H.values()))
    return {k:int(v*den)//g for k,v in H.items() if v}

def bernstein_certificate(P,q,bits):
    aa=[F(P.get((2*q-2*i,i),0),4**i) for i in range(q+1)]
    b=[sum(aa[i]*F(math.comb(k,i),math.comb(q,i)) for i in range(k+1)) for k in range(q+1)]
    # Independently expand the Bernstein polynomial back into power basis.
    back=[F(0)]*(q+1)
    for k,v in enumerate(b):
        for a in range(k,q+1):back[a]+=v*math.comb(q,k)*math.comb(q-k,a-k)*(-1)**(a-k)
    need(back==aa,'Bernstein inverse identity')
    need(all(x>0 for x in b) or all(x<0 for x in b),'no strict common sign')
    c=min(abs(x) for x in b);T=sum(abs(x) for x in P.values());need(c*(1<<bits)>T,'nonvanishing threshold not strict')
    return {'bernstein':[enc(x) for x in b],'l1':T,'minimum':enc(c),'threshold_power2':bits,'strict_margin':enc(c*(1<<bits)-T)}
