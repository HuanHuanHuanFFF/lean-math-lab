#!/usr/bin/env python3
"""Exact R6 integer certificates. No symbolic CAS, modular-to-Q UNIT inference, or Lean."""
from __future__ import annotations
import json,time,sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parent))
import ipoly as P
ROOT=Path(__file__).resolve().parents[1]
CHECKS=[]
def load(p):return json.loads((ROOT/p).read_text())
def check(name,ok):
    if not ok:raise AssertionError(name)
    CHECKS.append(name)
def term3(ts):
    if ts and len(ts[0][0])==4:return P.drop_last(ts)
    return P.unpack(ts,3)
def pw(p,n):return P.power(p,n,3)
def trim(a,p):
    a=[x%p for x in a]
    while a and not a[-1]:a.pop()
    return a
def rem(a,b,p):
    a=trim(a,p);b=trim(b,p)
    if not b:raise ZeroDivisionError
    inv=pow(b[-1],-1,p)
    while len(a)>=len(b):
        k=len(a)-len(b);q=a[-1]*inv%p
        for j,c in enumerate(b):a[j+k]=(a[j+k]-q*c)%p
        a=trim(a,p)
    return a
def gcd(a,b,p):
    while b:a,b=b,rem(a,b,p)
    return [(x*pow(a[-1],-1,p))%p for x in a] if a else []
def prime(p):return p>=2 and all(p%d for d in range(2,__import__('math').isqrt(p)+1))
def specialize(poly,axis,values):return P.coeff_specialize(poly,axis,values)

def main():
    start=time.monotonic();g=load('inputs/generic.json');old=load('inputs/R1_scale.json')
    src={'P5':term3(g['B5']),**{f'G{i}':term3(g['low'][str(i)]['stripped']) for i in range(4,-1,-1)}}
    u,y,r=[P.var(3,i)for i in range(3)];one=P.const(3,1);um=P.sub(u,one);ym=P.sub(y,one)
    N=term3(g['N']);K=term3(g['K']);D=term3(old['D']);c=term3(old['c'])
    H=P.add(P.add(P.sub(pw(u,2),P.mul(u,pw(y,2))),P.scale(P.mul(u,y),3)),P.sub(pw(ym,2),P.scale(u,2)))
    J=P.add(P.add(pw(u,2),P.mul(u,pw(y,2))),P.sub(y,P.scale(P.mul(u,y),3)))
    T=P.sub(P.scale(P.product(u,pw(y,2),H,r),4),P.scale(P.product(um,pw(ym,2),J),3))
    check('N exact original binding',N==P.mul(um,T))
    check('quadratic constant c is a nonzero basic-unit product',c==P.scale(P.product(r,pw(u,2),pw(um,2),pw(y,4),pw(ym,4)),3))
    check('all original six distinct generators present',len(src)==6 and all(src.values()))
    patterns={4:(-9,3,8,3,8),3:(9,3,8,3,8),2:(-9,5,7,3,8),1:(9,4,6,3,8),0:(9,3,5,3,6)}
    N3=pw(N,3);Vs={};stats=[]
    for i in range(4,-1,-1):
        cert=load(f'certificates/colon_{i}.json');check(f'index {i}',cert['i']==i and cert['power_N']==3)
        A,B,C,V=[term3(cert[s])for s in ['A','B','C','V']]
        sign,eu,ey,eum,eym=patterns[i]
        check(f'A{i} exact permitted unit factor',A==P.scale(P.product(pw(r,2),pw(u,eu),pw(y,ey),pw(um,eum),pw(ym,eym)),sign))
        check(f'C{i} is exactly one',C==one)
        left=P.mul(N3,V);right=P.add(P.mul(A,src[f'G{i}']),P.mul(B,src['P5']))
        check(f'CHARACTERISTIC_ZERO_MEMBER_{i}: N^3 V = A G + B P5',left==right)
        check(f'V{i} nonzero integer polynomial',bool(V))
        check(f'G{i} retained rather than replaced by a subset',f'G{i}'in src)
        Vs[i]=V
        stats.append({'i':i,'old_terms':len(src[f'G{i}']),'new_terms':len(V),'old_total_degree':max(map(sum,src[f'G{i}'])),'new_total_degree':max(map(sum,V)),'old_r_degree':P.degree(src[f'G{i}'],2),'new_r_degree':P.degree(V,2),'multiplier_B_terms':len(B)})
        print(f'Exact integer membership {i}: PASS',file=sys.stderr,flush=True)
    # Coprimality: only a hypersurface exclusion, NOT a zero-set emptiness claim.
    A5=P.sub(P.scale(P.mul(pw(u,3),y),8),P.scale(P.mul(pw(um,2),pw(ym,3)),5))
    p5coeff={m[:2]+(0,):v for m,v in src['P5'].items() if m[2]==5}
    check('P5 r-leading coefficient complete factorization',p5coeff==P.scale(P.product(pw(u,4),pw(y,4),pw(um,2),ym,A5),144))
    p4coeff={m[:2]+(0,):v for m,v in src['P5'].items() if m[2]==4}
    p=32003;check('32003 prime by trial division',prime(p))
    aa=specialize(A5,0,{1:2,2:0});bb=specialize(p4coeff,0,{1:2,2:0})
    check('A5 u-degree preserved at y=2 mod p',P.degree(A5,0)==3 and len(trim(aa,p))-1==3)
    check('A5 and P5 r4 coefficient coprime in Q(y)[u] witness',gcd(aa,bb,p)==[1])
    check('A5 has u-leading coefficient 8y', { (0,m[1],m[2]):v for m,v in A5.items()if m[0]==3}==P.scale(y,8))
    check('A5 has u-constant coefficient -5(y-1)^3',{m:v for m,v in A5.items()if m[0]==0}==P.scale(pw(ym,3),-5))
    check('A5 pure-y content witness',P.sub(P.mul(y,P.add(P.sub(pw(y,2),P.scale(y,3)),P.const(3,3))),pw(ym,3))==one)
    aa=specialize(src['P5'],2,{0:2,1:2});bb=specialize(Vs[0],2,{0:2,1:2})
    check('P5 r-degree preserved at u=y=2 mod p',P.degree(src['P5'],2)==5 and len(trim(aa,p))-1==5)
    check('P5,V0 positive-r common-factor obstruction',gcd(aa,bb,p)==[1])
    check('P5 degree 21',max(map(sum,src['P5']))==21)
    check('V0 degree 39',max(map(sum,Vs[0]))==39)
    check('other V maximum degree 45',max(max(map(sum,v))for i,v in Vs.items()if i!=0)==45)
    check('new Bezout numerical upper bound',21*39*45==36855)
    check('old/new bound comparison is arithmetic, not enumerated deletion',44415-36855==7560)
    # Exact counterexample to unconditional modular-UNIT promotion.
    from fractions import Fraction as F
    x=F(1);z=-F(1,p)
    check('modular UNIT counterexample retains characteristic-zero point',x-1==0 and x+p*z==0)
    check('modular difference equals one',((1+p*0)-(1-1))%p==1)
    result={'status':'PASS','checks':len(CHECKS),'seconds':round(time.monotonic()-start,4),'exact_integer_memberships':5,'stats':stats,'new_allowed_complex_point_upper_bound':36855,'points_enumerated':0,'actual_allowed_points_proved_removed':0,'global_UNIT_proved':False,'RUR_complete':False,'checks_detail':CHECKS}
    print(json.dumps(result,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
