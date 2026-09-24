#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from math import comb,gcd
import hashlib,json

ROOT=Path(__file__).resolve().parents[1]
K16=json.loads((ROOT/'outputs'/'kernel16.json').read_text())
K20=json.loads((ROOT/'outputs'/'kernel20.json').read_text())
HEIGHT=json.loads((ROOT/'outputs'/'height_ledger.json').read_text())
CANDS=json.loads((ROOT/'outputs'/'pure_shell_candidates.json').read_text())
FACTD=json.loads((ROOT/'outputs'/'factorizations.json').read_text())
CRT=json.loads((ROOT/'outputs'/'crt_receipts.json').read_text())
EXC=json.loads((ROOT/'outputs'/'bft_exception_pairs.json').read_text())

def sha256(p):
    h=hashlib.sha256()
    with p.open('rb') as f:
        for block in iter(lambda:f.read(1<<20),b''):h.update(block)
    return h.hexdigest()

def mul(a,b):
    out={}
    for (i,j),ca in a.items():
        for (u,v),cb in b.items():
            k=(i+u,j+v);out[k]=out.get(k,0)+ca*cb
    return {k:v for k,v in out.items() if v}

def shift(p,a,b):
    out={}
    for (i,j),c in p.items():
        for u in range(i+1):
            for v in range(j+1):
                k=(u,v)
                out[k]=out.get(k,0)+c*comb(i,u)*a**(i-u)*comb(j,v)*b**(j-v)
    return {k:v for k,v in out.items() if v}

def order(p,a,b):
    s=shift(p,a,b);return min(i+j for (i,j),c in s.items() if c)

x2={(2,0):1};y2={(0,2):1}
xm1sq={(2,0):1,(1,0):-2,(0,0):1};ym1sq={(0,2):1,(0,1):-2,(0,0):1}
H16={(i,j):c for i,j,c in K16['H8_terms']}
F16=mul(mul(mul(mul(x2,y2),xm1sq),ym1sq),H16)
O16={str(r):[order(F16,b,r-b) for b in range(r+1)] for r in range(6)}
assert O16=={'0':[4],'1':[8,8],'2':[3,4,3],'3':[4,4,4,4],
             '4':[3,3,3,3,3],'5':[2,2,1,1,2,2]}
assert all(c>0 for c in shift(H16,7,7).values())
L16=sum(abs(c) for c in H16.values());assert L16==1388988

G20={(i,j):c for i,j,c in K20['G6_terms']};H20={(i,j):c for i,j,c in K20['H8_terms']}
xm1={(1,0):1,(0,0):-1};ym1={(0,1):1,(0,0):-1}
F20=mul(mul(mul(mul(x2,y2),xm1),ym1),mul(G20,H20))
O20={str(r):[order(F20,b,r-b) for b in range(r+1)] for r in range(6)}
assert O20=={'0':[4],'1':[10,10],'2':[4,2,4],'3':[5,5,5,5],
             '4':[4,4,4,4,4],'5':[2,1,1,1,1,2]}
assert all(c>0 for c in shift(G20,7,7).values())
assert all(c>0 for c in shift(H20,7,7).values())

assert len(EXC)==40 and max(max(a,b) for a,b in EXC)==1771561
bydiff={}
for a,b in EXC:bydiff.setdefault(abs(a-b),[]).append([a,b])
assert bydiff.get(2,[])==[]
assert sorted(bydiff[5])==[[1029,1024],[1215,1210],[30618,30613]]
assert all(max(x)%1800 not in {1280,1530} for x in bydiff[5])

A23=Fraction(57,200);A25=Fraction(129,500);A35=Fraction(27,125)
UP16A=Fraction(L16,2);UP16B=Fraction(81*L16,16)
UP20A=Fraction(296202412015,256);UP20B=Fraction(71977186119645,4096)

def dbound(upper,lower,delta):
    p,q=delta.numerator,delta.denominator;rhs=(upper/lower)**q*2**p;K=0
    while not rhs<Fraction(2)**(K*(p-q)):K+=1
    return K

def g7(c):return dbound(Fraction(2**22),Fraction(1,c**7),Fraction(399,200))

specs={
'EC':('K20',4,1,65,68),'EN':('K16',3,2,43,53),'EE':('K20',4,2,43,50),
'CC':('K16',4,1,41,48),'CN':('K16',4,2,41,48),'CE':('K16',4,2,41,48)}
recalc=[]
for sh,(ker,a,b,KA,KB) in specs.items():
    for tail,cs,sec,up,expect in [('A',(1,5),A25,UP20A if ker=='K20' else UP16A,KA),
                                  ('B',(1,2,5,10),A35,UP20B if ker=='K20' else UP16B,KB)]:
        vals=[]
        for c in cs:
            if tail=='A':
                qg=dbound(up,Fraction(1,2**a*c**4),a*A23+4*sec)
                qq=dbound(up,Fraction(7**4,2**a*3**b),a*A23+b*sec)
            else:
                qg=dbound(up,Fraction(1,c**4),a*A23+4*sec)
                qq=dbound(up,Fraction(7**4),a*A23+b*sec)
            vals.append(max(g7(c),qg,qq))
        assert max(vals)==expect
        recalc.append((sh,tail,expect))

# candidate regeneration

def strip235(v):
    for p in (2,3,5):
        while v%p==0:v//=p
    return v

def vp(v,p):
    e=0
    while v%p==0:v//=p;e+=1
    return e

def enum_shell(sh,tail,K):
    lim=1<<K;out=[]
    if tail=='A':
        b=2
        while 2*3**b<lim:
            coeff=2*3**(b-1);s2=2*3**b;E=2
            while 3*5**E<lim:
                mod=5**E;s5=3*mod;r=pow(coeff,-1,mod)
                kr={'EC':2,'EN':3,'EE':1,'CC':3,'CN':1,'CE':6}[sh]
                for kk in range(kr):
                    q2=r+kk*mod;num=coeff*q2-1
                    if q2<=0 or num%mod:continue
                    q5=num//mod
                    if q5<=0:continue
                    ok={'EC':2*q2<s5 and 2*q5<s2,'EN':q2<s5 and q5<s2,
                        'EE':3*q2<=s5 and 3*q5<=s2,'CC':q2<s5 and q5<s2,
                        'CN':4*q2*q2<=s5 and 4*q2*q5<s2,
                        'CE':q2<=2*s5 and 4*q5<7*s2}[sh]
                    if not ok or gcd(q2,30)!=1 or gcd(q5,30)!=1:continue
                    n=s2*q2+2
                    if not(n<lim and n%1800==1280):continue
                    if strip235(n-2)!=q2 or strip235(n-5)!=q5:continue
                    if vp(n-2,3)!=b or vp(n-5,5)!=E:continue
                    out.append({'tail':'A','shell':sh,'n':n,'b':b,'E':E,'q2':q2,'q5':q5})
                E+=1
            b+=1
    else:
        b=3
        while 2**b<lim:
            coeff=2**b;s2=coeff;E=2
            while 5**E<lim:
                mod=5**E;s5=mod;r=(3*pow(coeff,-1,mod))%mod
                kr={'EC':1,'EN':1,'EE':1,'CC':1,'CN':1,'CE':2}[sh]
                for kk in range(kr):
                    q2=r+kk*mod;num=coeff*q2-3
                    if q2<=0 or num%mod:continue
                    q5=num//mod
                    if q5<=0:continue
                    ok={'EC':2*q2<s5 and 2*q5<s2,'EN':q2<s5 and q5<s2,
                        'EE':3*q2<=s5 and 3*q5<=s2,'CC':q2<s5 and q5<s2,
                        'CN':4*q2*q2<=s5 and 4*q2*q5<s2,
                        'CE':q2<=2*s5 and 4*q5<7*s2}[sh]
                    if not ok or gcd(q2,30)!=1 or gcd(q5,30)!=1:continue
                    n=s2*q2+2
                    if not(n<lim and n%1800==1530):continue
                    if strip235(n-2)!=q2 or strip235(n-5)!=q5:continue
                    if vp(n-2,2)!=b or vp(n-5,5)!=E:continue
                    out.append({'tail':'B','shell':sh,'n':n,'b':b,'E':E,'q2':q2,'q5':q5})
                E+=1
            b+=1
    return sorted(out,key=lambda z:(z['n'],z['b'],z['E'],z['q2']))

for sh,(ker,a,b,KA,KB) in specs.items():
    assert enum_shell(sh,'A',KA)==CANDS['candidate_sets'][sh]['A']
    assert enum_shell(sh,'B',KB)==CANDS['candidate_sets'][sh]['B']

# primality and factor verification
BASES=(2,325,9375,28178,450775,9780504,1795265022)
def prime64(n):
    if n<2:return False
    for p in (2,3,5,7,11,13,17,19,23,29,31,37):
        if n%p==0:return n==p
    assert n<2**64
    d=n-1;s=0
    while d%2==0:s+=1;d//=2
    for a in BASES:
        if a%n==0:continue
        z=pow(a,d,n)
        if z in (1,n-1):continue
        for _ in range(s-1):
            z=z*z%n
            if z==n-1:break
        else:return False
    return True
FACT={int(q):[(int(p),int(e)) for p,e in fs] for q,fs in FACTD['factorizations'].items()}
for q,fs in FACT.items():
    prod=1
    for p,e in fs:assert prime64(p);prod*=p**e
    assert prod==q

AL={
'EC':{0:(0,),1:(0,1),2:(0,2),3:(0,1,2,3),4:(0,1,2,3,4),5:(2,3)},
'EN':{0:(0,),1:(0,1),2:(0,2),3:(0,1,2,3),4:(0,1,2,3,4),5:(1,4)},
'EE':{0:(0,),1:(0,1),2:(0,2),3:(0,1,2,3),4:(0,1,2,3,4),5:(0,5)},
'CC':{0:(0,),1:(0,1),2:(1,),3:(0,1,2,3),4:(0,1,2,3,4),5:(2,3)},
'CN':{0:(0,),1:(0,1),2:(1,),3:(0,1,2,3),4:(0,1,2,3,4),5:(1,4)},
'CE':{0:(0,),1:(0,1),2:(1,),3:(0,1,2,3),4:(0,1,2,3,4),5:(0,5)}}
def crt(a,M,b,m):
    t=((b-a)*pow(M,-1,m))%m;return (a+M*t)%(M*m),M*m
def icount(a,M,n):
    lo,hi=7,n//2;k=(lo-a+M-1)//M;first=a+k*M
    if first>hi:return 0,None
    return (hi-first)//M+1,first
def cons(n,sh):
    out=[];seen=set();qv=[]
    for r in range(6):
        q=strip235(n-r);qv.append(q)
        for p,e in FACT[q]:
            assert p not in seen;seen.add(p);out.append((p**e,AL[sh][r],p,r))
    out.sort(reverse=True,key=lambda z:z[0]);return qv,out
def dfs(n,sh):
    qv,co=cons(n,sh);stack=[(0,0,1)];states=0;terms=set()
    while stack:
        idx,a,M=stack.pop();states+=1;cnt,first=icount(a,M,n)
        if not cnt:continue
        if idx==len(co):
            for t in range(cnt):terms.add(first+t*M)
            continue
        if cnt==1:
            if all(first%pp in al for pp,al,p,r in co[idx:]):terms.add(first)
            continue
        pp,al,p,r=co[idx]
        for rr in al:stack.append((idx+1,*crt(a,M,rr,pp)))
    return states,len(terms)
def rowres(q,r,sh):
    st=[(0,1)]
    for p,e in FACT[q]:
        pp=p**e;new=[]
        for a,M in st:
            for rr in AL[sh][r]:new.append(crt(a,M,rr,pp))
        st=new
    return sorted({a for a,M in st})
def block(n,sh):
    blocks=[]
    for r in range(6):
        q=strip235(n-r);blocks.append((q,rowres(q,r,sh),r))
    blocks.sort(reverse=True,key=lambda z:z[0]);st=[(0,1)];trans=0
    for q,res,r in blocks:
        new=[]
        for a,M in st:
            for rr in res:
                na,nM=crt(a,M,rr,q);trans+=1;cnt,_=icount(na,nM,n)
                if cnt:new.append((na,nM))
        st=new
        if not st:break
    terms=sum(icount(a,M,n)[0] for a,M in st)
    return trans,terms

saved={(r['shell'],r['tail'],r['n']):r for r in CRT['receipts']}
sdfs=sblock=0
for sh in specs:
    for tail in ('A','B'):
        for row in CANDS['candidate_sets'][sh][tail]:
            d,t1=dfs(row['n'],sh);b,t2=block(row['n'],sh)
            rec=saved[(sh,tail,row['n'])]
            assert (d,t1)==(rec['prime_power_dfs_states'],0)
            assert (b,t2)==(rec['row_block_transitions'],0)
            sdfs+=d;sblock+=b
assert sdfs==CRT['total_dfs_states'] and sblock==CRT['total_block_transitions']
assert CRT['total_terminals_algorithm_1']==CRT['total_terminals_algorithm_2']==0

result={
'status':'PASS_C14_ALL_PURE_SOURCE_SHELLS_CLOSED',
'closed_shells':['EC','EN','EE','CC','CN','CE'],
'new_shells':['EN','EE','CC','CN','CE'],
'candidate_counts':{sh:(CANDS['candidate_sets'][sh]['A_count'],CANDS['candidate_sets'][sh]['B_count']) for sh in specs},
'finite_terminal_obligations':CRT['total_candidate_obligations'],
'unique_n':CRT['total_unique_n'],
'algorithm_1_terminals':0,'algorithm_2_terminals':0,
'mixed_gate':'E2>1 and M2>1, or at least two of Q50,Q51,Q52 are >1',
'remaining_unbounded_parameters_inside_two_tails':[],
'not_claimed':['complete closure of either H025 tail','general i=6 closure','new complete index','NC-preserving descent','Lean verification','complete B699 closure'],
'source_hashes':{
'pure_shell_candidates.json':sha256(ROOT/'outputs'/'pure_shell_candidates.json'),
'factorizations.json':sha256(ROOT/'outputs'/'factorizations.json'),
'crt_receipts.json':sha256(ROOT/'outputs'/'crt_receipts.json')},
'repository_actions':'none'}
print(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True))
