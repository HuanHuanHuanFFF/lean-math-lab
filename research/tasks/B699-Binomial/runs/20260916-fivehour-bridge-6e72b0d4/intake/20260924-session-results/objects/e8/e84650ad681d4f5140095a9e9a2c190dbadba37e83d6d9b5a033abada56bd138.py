"""Generate finite certificates only. No network, Lean, or repository access.
Algorithm A: Pell binary powers and a quadratic equation for h.
The modular enumeration is adapted from frozen Round23_generate.py.
"""
from __future__ import annotations
from functools import lru_cache
from math import isqrt
from pathlib import Path
import argparse,json


def prime(p:int)->bool:
    return p>=2 and all(p%i for i in range(2,isqrt(p)+1))

def pell(q:int,p:int|None=None)->tuple[int,int]:
    z=(1,0);a=(2,1);e=8*q+1
    def mul(x,y):
        r=(x[0]*y[0]+3*x[1]*y[1],x[0]*y[1]+x[1]*y[0])
        return r if p is None else (r[0]%p,r[1]%p)
    while e:
        if e&1:z=mul(z,a)
        a=mul(a,a);e//=2
    if p is None:return (3*z[1]-1)//2,z[0]//2
    inv2=pow(2,-1,p)
    return (3*z[1]-1)*inv2%p,z[0]*inv2%p

@lru_cache(None)
def setup(p:int):
    sq={a*a%p:a for a in range(p)};inv=[0]+[pow(a,-1,p) for a in range(1,p)]
    H=set();v=1
    while v not in H:
        H.add(v);v=v*2%p
    return sq,inv,H|{3*v%p for v in H}

def possible_V(p:int,q:int)->set[int]:
    if not (p>3 and prime(p)):raise ValueError('prime p>3 required')
    d,y=pell(q,p);sq,inv,nh=setup(p)
    target=3*(d-1)%p;out=set()
    for a in range(p):
        bs=[target*inv[a]%p] if a else (range(p) if target==0 else [])
        for b in bs:
            lead=d*d%p
            lin=-(6*d*d+10*a*d*y+4*a*a*y*y)%p
            con=-(11*d*d+10*a*d*y+3*a*a*y*y+4*b*y)%p
            if lead:
                disc=(lin*lin-4*lead*con)%p
                if disc not in sq:continue
                rr=sq[disc]
                roots={(-lin+rr)*inv[2*lead%p]%p,(-lin-rr)*inv[2*lead%p]%p}
            elif lin:roots=[-con*inv[lin]%p]
            elif con==0:roots=range(p)
            else:roots=[]
            for h in roots:
                v=a*y%p;Q=(d+v)%p;P=(Q+h*v)%p;nu=(h*d-Q)*inv[2]%p
                n=(P*Q*nu+2)%p
                if n not in nh:continue
                C=(4*b*h-16*a*d-120*y-27*b)%p
                Z=(20*b-320*a-C)%p;F=(3*Z*Z-64*(C*a+15)**2)%p
                cc=C*inv[4]%p;ff=F*inv[16%p]%p
                w=(5*ff+42*cc*cc-18000)%p
                out.add((w*w-97200*cc*cc+194400000)%p)
    return out

def small_V_certificate():
    primes=[p for p in range(5,90) if prime(p)]
    rows=[];total=0;after=0
    for q in range(1,277):
        if q%3==1:continue
        total+=q*q
        vals=[v for v in range(1,q*q+1) if v%16 in (0,9)];after+=len(vals)
        steps=[]
        for p in primes:
            allowed=possible_V(p,q)
            kept=[v for v in vals if v%p in allowed]
            count=len(vals)-len(kept)
            if count:
                steps.append({'p':p,'excluded_residues':sorted(set(range(p))-allowed),'removed':count})
            vals=kept
            if not vals:break
        if vals:raise ArithmeticError(('uncovered',q,vals[:20]))
        rows.append({'q':q,'upper_V':q*q,'steps':steps})
    return {'schema':'B699-D-round24-small-V-square-v1','q_max':276,'V_power':2,
            'q_allowed_mod3':[0,2],'V_mod16':[0,9],
            'full_count':total,'after_mod16':after,'rows':rows,
            'scope':'Complete finite projection cover; original n=2^s or 3*2^s retained modulo each odd prime.'}

FACTORS={2:{2:5,3:2,7:1,13:1,37:1,73:1,97:1},
         3:{2:4,3:3,5:1,7:1,13:1,193:1,6811741:1},
         5:{2:4,3:2,7:1,11:1,13:1,19:1,181:1,757:1,2521:1,37441:1,10333:1}}

def divisors(factors:dict[int,int])->list[int]:
    out=[1]
    for p,e in sorted(factors.items()):out=[a*p**j for a in out for j in range(e+1)]
    return sorted(out)

def rpoly(d:int,v:int)->int:
    Q=d+v
    return (Q**10-12*Q**7+15*d*Q**6-4*d*d*Q**5-4*d*Q**3
            +12*d*d*Q*Q-12*d**3*Q+4*d**4)

def v2(n:int)->int:
    if not n:raise ArithmeticError('zero valuation argument')
    n=abs(n);return (n&-n).bit_length()-1

def base_certificate():
    result=[]
    for q,fac in FACTORS.items():
        d,y=pell(q)
        product=1
        for p,e in fac.items():
            if not prime(p):raise AssertionError(('not prime',p))
            product*=p**e
        assert product==3*(d-1)
        entries=[]
        for A in divisors(fac):
            if A%2:continue
            B=product//A
            if B%4:continue
            r=v2(rpoly(d,A*y));s=r-1-v2(A)
            if s>=0 and 3*(1<<s)>d*d:
                raise ArithmeticError(('base survivor',q,A,B,s))
            entries.append([A,B,r,s])
        result.append({'q':q,'d':d,'y':y,'factorization':[[p,e] for p,e in sorted(fac.items())],
                       'entries':entries,'count':len(entries),'max_forced_s':max(a[3] for a in entries)})
    return {'schema':'B699-D-round24-base-q-2-3-5-v1','entry_columns':['A','B','v2_R','forced_s'],
            'rows':result,'count':sum(a['count'] for a in result)}

def dump(p:Path,obj):p.write_text(json.dumps(obj,ensure_ascii=False,sort_keys=True,indent=2)+'\n')

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--directory',type=Path,required=True);args=ap.parse_args()
    args.directory.mkdir(parents=True,exist_ok=True)
    base=base_certificate();dump(args.directory/'base_q235.json',base)
    cert=small_V_certificate();dump(args.directory/'small_V_square.json',cert)
    print('CERTIFICATES_GENERATED=PASS')
    print('BASE_ASSIGNMENTS='+str(base['count']))
    print('SMALL_V_GRID='+str(cert['full_count'])+'; AFTER_MOD16='+str(cert['after_mod16']))
if __name__=='__main__':main()
