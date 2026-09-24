#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
from fractions import Fraction
from math import comb
import hashlib
import json

ROOT=Path(__file__).resolve().parents[1]
K16=json.loads((ROOT/'outputs'/'kernel16.json').read_text())
EXC=json.loads((ROOT/'outputs'/'bft_exception_pairs.json').read_text())
HEIGHT=json.loads((ROOT/'outputs'/'height_ledger.json').read_text())
SCAN=json.loads((ROOT/'outputs'/'exponent_scan.json').read_text())

def sha256(path):
    h=hashlib.sha256()
    with open(path,'rb') as f:
        for block in iter(lambda:f.read(1<<20),b''):
            h.update(block)
    return h.hexdigest()

def mul(a,b):
    out={}
    for (i,j),ca in a.items():
        for (u,v),cb in b.items():
            out[(i+u,j+v)]=out.get((i+u,j+v),0)+ca*cb
    return {k:v for k,v in out.items() if v}

def shift(poly,a,b):
    out={}
    for (i,j),c in poly.items():
        for u in range(i+1):
            for v in range(j+1):
                key=(u,v)
                out[key]=out.get(key,0)+c*comb(i,u)*a**(i-u)*comb(j,v)*b**(j-v)
    return {k:v for k,v in out.items() if v}

def order(poly,a,b):
    s=shift(poly,a,b)
    return min(i+j for (i,j),c in s.items() if c)

def dyadic_bound(upper,coeff,delta):
    p,q=delta.numerator,delta.denominator
    rhs=(upper/coeff)**q*2**p
    K=0
    while not rhs < Fraction(2)**(K*(p-q)):
        K+=1
    return K

H={(i,j):c for i,j,c in K16['H8_terms']}
F=mul(mul(mul(mul({(2,0):1},{(0,2):1}),{(2,0):1,(1,0):-2,(0,0):1}),
        {(0,2):1,(0,1):-2,(0,0):1}),H)
orders={str(r):[order(F,b,r-b) for b in range(r+1)] for r in range(6)}
assert orders=={'0':[4],'1':[8,8],'2':[3,4,3],'3':[4,4,4,4],
                '4':[3,3,3,3,3],'5':[2,2,1,1,2,2]}
Hs=shift(H,7,7)
assert len(Hs)==45 and min(Hs.values())==34 and all(c>0 for c in Hs.values())
L=sum(abs(c) for c in H.values())
assert L==1388988

assert len(EXC)==40
by={}
for a,b in EXC: by.setdefault(abs(a-b),[]).append([a,b])
assert by.get(2,[])==[]
assert sorted(by[5])==[[1029,1024],[1215,1210],[30618,30613]]
assert all(max(z)%1800 not in {1280,1530} for z in by[5])

a23=Fraction(57,200); a25=Fraction(129,500); a35=Fraction(27,125)
upA=Fraction(L,2); upB=Fraction(81*L,16)
def g7(c): return dyadic_bound(Fraction(2**22),Fraction(1,c**7),7*a23)
re=[]
for tail,cs,s,up in [('A',[1,5],a25,upA),('B',[1,2,5,10],a35,upB)]:
    for c in cs:
        if tail=='A':
            c1=Fraction(7**2,2**3*c**4); c2=Fraction(7**4,2**3*3**2)
        else:
            c1=Fraction(7**2,c**4); c2=Fraction(7**4,1)
        vals=[g7(c),dyadic_bound(up,c1,3*a23+4*s),dyadic_bound(up,c2,3*a23+2*s)]
        re.append(max(vals))
assert re==[43,43,45,45,45,48]
assert [r['uniform_K'] for r in HEIGHT]==re

A=[]
for b in range(2,27):
    A0=2*3**(b-1); s2=3*A0
    for E in range(2,18):
        q5=(-pow(5**E,-1,A0))%A0
        A.append((b,E,q5,15*7**3*q5,s2))
B=[]
for b in range(3,48):
    A0=2**b
    for E in range(2,21):
        q5=(-3*pow(5**E,-1,A0))%A0
        B.append((b,E,q5,9*7**3*q5,A0))
assert len(A)==400 and len(B)==855
assert all(lhs>=rhs for b,E,q5,lhs,rhs in A)
assert all(lhs>=rhs for b,E,q5,lhs,rhs in B)
ca=min(A,key=lambda z:Fraction(z[3],z[4]))
cb=min(B,key=lambda z:Fraction(z[3],z[4]))
assert ca==(15,4,30611,157493595,28697814)
assert cb==(7,3,1,3087,128)
assert SCAN['A']['pairs_tested']==400 and SCAN['A']['passing_pairs']==0
assert SCAN['B']['pairs_tested']==855 and SCAN['B']['passing_pairs']==0

result={
 'status':'PASS_C15_NO_CENTRAL_Q5_CLOSURE',
 'closed_domain':'Q52=1 in both old H025 tails, with arbitrary q2 splitting',
 'kernel16':{'degree':16,'source_orders':orders,'L':L},
 'height':{'A':'n<2^43','B':'n<2^48','template_uniform_K':re},
 'sat_squeeze':{'A':'5145*q5<s2','B':'3087*q5<s2'},
 'finite_certificate':{
   'A_pairs':400,'B_pairs':855,'A_passing':0,'B_passing':0,
   'A_closest':{'b':15,'E':4,'q5':30611,'ratio':'52497865/9565938'},
   'B_closest':{'b':7,'E':3,'q5':1,'ratio':'3087/128'},
 },
 'new_frontier':'Q52>1 and ((E2>1 and M2>1) or Q50*Q51>1)',
 'remaining_unbounded_parameters_inside_two_tails':[],
 'not_claimed':['closure of either complete H025 tail','general i=6 closure',
                'new complete index','NC-preserving descent','Lean verification',
                'complete B699 closure'],
 'source_hashes':{
   'kernel16.json':sha256(ROOT/'outputs'/'kernel16.json'),
   'bft_exception_pairs.json':sha256(ROOT/'outputs'/'bft_exception_pairs.json'),
   'height_ledger.json':sha256(ROOT/'outputs'/'height_ledger.json'),
   'exponent_scan.json':sha256(ROOT/'outputs'/'exponent_scan.json'),
 },
 'repository_actions':'none',
}
print(json.dumps(result,ensure_ascii=False,indent=2,sort_keys=True))
