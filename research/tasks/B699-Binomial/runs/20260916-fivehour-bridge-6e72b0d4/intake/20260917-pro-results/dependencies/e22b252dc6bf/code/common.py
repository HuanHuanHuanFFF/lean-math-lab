"""Exact arithmetic helpers; no discovery library or upstream checker is imported."""
from __future__ import annotations
import hashlib,json,math
from fractions import Fraction
from pathlib import Path

def dump(path: Path, obj: object) -> None:
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')

def sha_records(records: object) -> str:
    return hashlib.sha256(json.dumps(records,sort_keys=True,separators=(',',':')).encode()).hexdigest()

def vp(a:int,p:int)->int:
    if a<=0 or p<2: raise ValueError('vp requires positive a and p>=2')
    ans=0
    while a%p==0:a//=p;ans+=1
    return ans

def factor_trial(n:int)->dict[int,int]:
    if n<1: raise ValueError('factor_trial requires positive n')
    ans={};p=2
    while p*p<=n:
        if n%p==0:
            e=0
            while n%p==0:n//=p;e+=1
            ans[p]=e
        p=3 if p==2 else p+2
    if n>1:ans[n]=ans.get(n,0)+1
    return ans

def factors_choose3(n:int)->dict[int,int]:
    d={}
    for x in (n,n-1,n-2):
        for p,e in factor_trial(x).items(): d[p]=d.get(p,0)+e
    d[2]-=1; d[3]=d.get(3,0)-1
    return {p:e for p,e in d.items() if e>0}

def choose_vp(n:int,j:int,p:int)->int:
    if not 0<=j<=n: raise ValueError('invalid binomial')
    q=p;v=0
    while q<=n:
        v+=n//q-j//q-(n-j)//q;q*=p
    return v

def choose_carry(n:int,j:int,p:int)->int:
    a=j;b=n-j;carry=0;v=0
    while a or b or carry:
        w=a%p+b%p+carry
        carry=w//p;v+=carry
        a//=p;b//=p
    return v

def coeff_phi(n:int,j:int)->list[int]:
    return [-math.comb(j,3), math.comb(j,2)*(n-2), -j*math.comb(n-1,2), math.comb(n,3)]

def coeff_transform(n:int,j:int)->list[int]:
    out=[0]*4;k=n-j
    for r in range(4):
        f=math.comb(j,r)*math.comb(k,3-r)
        for q in range(r+1):out[3-q]+=f*math.comb(r,q)*(-1)**q
    return out

def eval_poly(co:list[int],z:Fraction)->Fraction:
    w=Fraction(0)
    for a in reversed(co):w=w*z+a
    return w

def gap_conditions(T:int,A:int,B:int,X:int)->bool:
    return min(T,A,B,X)>=1 and X*X>=2*A*B**3 and T*X>=4*A*A*B

def old_conditions(T:int,A:int,B:int,X:int)->bool:
    return T>=2 and 1<=A<T and B>=1 and X>=A*B and T*X*X>=A*B*B*(T*B+2)

def dominated(x:int,top:int,p:int)->bool:
    while x or top:
        if x%p>top%p:return False
        x//=p;top//=p
    return True

def all_dominated(top:int,p:int)->list[int]:
    choices=[0];power=1
    while top:
        choices=[x+d*power for x in choices for d in range(top%p+1)]
        top//=p;power*=p
    return sorted(choices)
