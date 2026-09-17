#!/usr/bin/env python3
"""Replay NEW cubic source consumers; standard library only.
Frozen NC9/P/E/S14/Q2/W6/FH/K152 contracts are not re-proved here.
"""
from __future__ import annotations
import argparse,copy,hashlib,itertools,json,math,platform,sys,time
from pathlib import Path
from typing import Any
ROOT=Path(__file__).resolve().parents[1]
E0=14_000_001;H0=1_244_000;D0=305;B0=11_950;MEXP=H0+3*D0
POINTS=tuple((r,s*(r-s))for r in range(3,9)for s in range(r//2+1))
SIZES=(2,3,3,4,4,5);OFFSETS=(0,2,5,8,12,16)

def require(v: bool,msg: str)->None:
    if not v:raise ValueError(msg)

def integer(x:Any)->bool:return type(x) is int

def dim(d:int)->int:return 0 if d<0 else sum(d-2*b+1 for b in range(d//2+1))
def monomials(d:int):return [(a,b)for b in range(d//2+1)for a in range(d-2*b+1)]
def diag(m:int)->int:return sum(m-2*b for b in range((m-1)//2+1)) if m else 0

def shape(mask:int):
    require(integer(mask) and 0<mask<2**21,'invalid source mask')
    cs=tuple(sum(bool(mask>>i&1)for i,(r,v)in enumerate(POINTS)if r==rr)for rr in range(3,9))
    ds=tuple(sum(bool(mask>>i&1)and 4*v==r*r for i,(r,v)in enumerate(POINTS)if r==rr)for rr in range(3,9))
    require(all(1<=z<=min(3,t)for z,t in zip(cs,SIZES)) and 14<=sum(cs)<=17,'outside cubic source scope')
    return cs,ds

def all_profiles():
    for cs in itertools.product(range(1,3),*([range(1,4)]*5)):
        if sum(cs)<14:continue
        opts=[]
        for i,z in enumerate(cs):
            opts.append([0]if(i+3)%2 else [1]if z==SIZES[i] else [0,1])
        for ds in itertools.product(*opts):yield cs,ds

def all_masks():
    choices=[]
    for i,t in enumerate(SIZES):
        choices.append([m<<OFFSETS[i]for m in range(1,1<<t)if m.bit_count()<=3])
    for xs in itertools.product(*choices):
        mask=sum(xs)
        if mask.bit_count()>=14:yield mask

def stats(cs,ds,d,ms):
    require(integer(d) and 0<=d<=23,'degree out of range')
    require(len(ms)==6 and all(integer(m) and 0<=m<=24 for m in ms),'bad window weights')
    cost=sum(z*m*(m+1)//2-de*(m*(m+1)//2-diag(m))for z,de,m in zip(cs,ds,ms))
    losses=[0 if z==t else 1 if z==3 else t-z for z,t in zip(cs,SIZES)]
    ell=sum(m*l for m,l in zip(ms,losses));omega=sum(ms)
    margin=E0*(omega-d)-(B0+11*omega+MEXP*ell)
    return {'cost':cost,'columns':dim(d),'omega':omega,'loss':ell,'margin':margin}

def choose(n,k):return math.comb(n,k) if 0<=k<=n else 0

def direct_jets(mask,d,ms,co):
    """Binomial-coefficient Taylor formula, no modular arithmetic."""
    mon=monomials(d);rows=0
    for ix,(r,x)in enumerate(POINTS):
        if not(mask>>ix&1):continue
        m=ms[r-3];s=r//2;isd=(4*x==r*r)
        for i in range(m):
            for h in range(m):
                if i+(2 if isd else 1)*h>=m:continue
                val=0
                for c,(a,b)in zip(co,mon):
                    if not c:continue
                    if not isd:
                        if a>=i and b>=h:val+=c*choose(a,i)*choose(b,h)*r**(a-i)*x**(b-h)
                    elif b>=h:
                        for l in range(b-h+1):
                            k=i-l
                            if 0<=k<=a:
                                val+=c*choose(b,h)*choose(b-h,l)*s**l*(s*s)**(b-h-l)*choose(a,k)*r**(a-k)
                require(val==0,f'nonzero exact Taylor coefficient {(mask,r,x,i,h)}')
                rows+=1
    return rows

def add(A,B):
    C=dict(A)
    for k,v in B.items():
        C[k]=C.get(k,0)+v
        if not C[k]:del C[k]
    return C

def mul(A,B,m,w):
    C={}
    for(a,b),c in A.items():
        for(i,j),v in B.items():
            key=(a+i,b+j)
            if key[0]+w*key[1]<m:C[key]=C.get(key,0)+c*v
    return {k:v for k,v in C.items()if v}

def horner_jets(mask,d,ms,co):
    """Independent truncated-ring Horner substitution, without binomial rows."""
    polys={}
    for c,(a,b)in zip(co,monomials(d)):polys.setdefault(b,{})[a]=c
    total=0
    for ix,(r,x)in enumerate(POINTS):
        if not(mask>>ix&1):continue
        m=ms[r-3]
        if not m:continue
        w=2 if 4*x==r*r else 1
        nv={(0,0):r,(1,0):1};xv={(0,0):x,(0,1):1}
        if w==2:xv[(1,0)]=r//2
        out={}
        for b in range(d//2,-1,-1):
            q={};cs=polys.get(b,{})
            for a in range(d-2*b,-1,-1):
                q=mul(q,nv,m,w)
                if cs.get(a):q=add(q,{(0,0):cs[a]})
            out=add(mul(out,xv,m,w),q)
        require(not out,f'nonzero Horner jet {(mask,r,x)}')
        total+=diag(m) if w==2 else m*(m+1)//2
    return total

def check_kernel(rec):
    mask=rec['mask'];d=rec['d'];ms=rec['weights'];co=rec['coefficients'];cs,ds=shape(mask)
    st=stats(cs,ds,d,ms)
    require(st['margin']>0,'valuation-height inequality failed')
    require(len(co)==dim(d) and all(integer(v)for v in co),'bad coefficient vector')
    require(any(co)and math.gcd(*co)==1,'zero or nonprimitive kernel')
    bits=sum(map(abs,co)).bit_length();require(bits<=B0,'coefficient height exceeded')
    require(bits==rec['l1_bits'],'wrong norm receipt')
    a=direct_jets(mask,d,ms,co);b=horner_jets(mask,d,ms,co)
    require(a==b==st['cost']==rec['conditions'],'wrong condition count')
    return a,st['margin'],bits

def rank_mod(rows,p):
    if not rows:return 0
    # Reversed rows/columns and complete Gauss-Jordan: distinct from discovery.
    a=[[v%p for v in reversed(row)]for row in reversed(rows)];r=0
    for c in range(len(a[0])):
        k=next((k for k in range(len(a)-1,r-1,-1)if a[k][c]),None)
        if k is None:continue
        a[r],a[k]=a[k],a[r];u=pow(a[r][c],-1,p);a[r]=[(v*u)%p for v in a[r]]
        for i in range(len(a)):
            if i!=r and a[i][c]:
                v=a[i][c];a[i]=[(x-v*y)%p for x,y in zip(a[i],a[r])]
        r+=1
        if r==len(a):break
    return r

def check_closure(data):
    mon=[(a,b)for a,b in monomials(7)if(a,b)not in[(6,0),(7,0)]]
    require(data['monomials']==[list(x)for x in mon],'bad closure monomials')
    ev=[[r**a*x**b for a,b in mon]for r,x in POINTS]
    p=1_000_003;require(all(p%d for d in range(2,math.isqrt(p)+1)),'nonprime rank modulus')
    out=set();eq=0
    for rec in data['certificates']:
        mask=rec['mask'];shape(mask);k=rec['forced_index'];basis=rec['basis'];rho=rec['mod_rank']
        require(mask not in out and integer(k)and 0<=k<21 and not(mask>>k&1),'bad forced point')
        require(all(len(b)==18 and all(integer(x)for x in b)for b in basis),'bad source basis')
        rows=[v for i,v in enumerate(ev)if mask>>i&1]
        require(rank_mod(rows,p)==rho and rank_mod(basis,p)==len(basis)==18-rho,'missing rank certificate')
        for b in basis:
            for row in rows+[ev[k]]:
                require(sum(x*y for x,y in zip(b,row))==0,'invalid source-closure equality');eq+=1
        out.add(mask)
    return out,eq

def check_bounds():
    require((dim(17),dim(10),dim(11),dim(3))==(90,36,42,6),'dimension identity')
    c3=c2=0;patterns=0
    for a in range(18):
        for b in range(10):
            for c in range(7):
                z=a+b+c;mu=a+2*b+3*c
                if 14<=z<=17 and mu<=18:
                    require(3*a+5*b+6*c<=53 and 2*a+3*b+3*c<=35,'local condition bound')
                    require(3*a+b<=51 and a<=17,'local-column count')
                    c3=max(c3,3*a+5*b+6*c);c2=max(c2,2*a+3*b+3*c);patterns+=1
    require((c3,c2)==(53,35),'extremal condition count')
    require(102*9**34<2**120 and 102*9**610<2**1944,'ordinary-three column bound')
    require(51*9**22<2**80 and 51*9**610<2**1944,'ordinary-two column bound')
    require(141<2**(53000-51*972-51*60),'three-jet Cramer norm')
    require(59<2**(18000-17*972-34*40),'two-jet Cramer norm')
    b3=51*80000+53000;b2=17*200000+18000
    bounds={'C3_nonzero':b3+18*11+21*(80000+915),
            'C3_resultant':8*80000+3*b3+math.factorial(11).bit_length(),
            'C2_nonzero':b2+12*11+14*(200000+915),
            'C2_resultant':5*200000+3*b2+math.factorial(8).bit_length(),
            'bootstrap_resultant':11*H0+3*B0+math.factorial(14).bit_length()}
    require(all(v<E0 for v in bounds.values()),'height budget not strict')
    require(156*9**46<2**154 and 156<2**(B0-155*77),'pure auxiliary Cramer bound')
    require(B0+23+3<12000<80000,'factor-height descent')
    for r in range(3,9):
        vals=[x for rr,x in POINTS if rr==r]
        for a,b in itertools.combinations(vals,2):
            d=abs(a-b)
            for p in(2,3,5,7):
                while d%p==0:d//=p
            require(d==1,'source difference not 7-smooth')
    return {'multiplicity_patterns':patterns,'local_maxima':[c3,c2],'exponents':bounds}

def mutation_checks(rec):
    bad=[]
    x=copy.deepcopy(rec);x['coefficients'][0]+=1;bad.append(x)
    x=copy.deepcopy(rec);x['coefficients'][0]=float(x['coefficients'][0]);bad.append(x)
    x=copy.deepcopy(rec);x['coefficients'].pop();bad.append(x)
    x=copy.deepcopy(rec);x['weights']=[0]*6;bad.append(x)
    x=copy.deepcopy(rec);x['weights'][0]=-1;bad.append(x)
    x=copy.deepcopy(rec);x['mask']=0;bad.append(x)
    x=copy.deepcopy(rec);x['conditions']+=1;bad.append(x)
    x=copy.deepcopy(rec);x['coefficients']=[2*c for c in x['coefficients']];bad.append(x)
    rejected=0
    for x in bad:
        try:check_kernel(x)
        except(ValueError,KeyError,TypeError):rejected+=1
    require(rejected==len(bad),'corruption accepted')
    x=copy.deepcopy(rec);x['coefficients']=[-c for c in x['coefficients']];check_kernel(x)
    return {'rejected':rejected,'sign_equivalent_accepted':1}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    require(not args.out.exists()or not any(args.out.iterdir()),'output must be empty')
    args.out.mkdir(parents=True,exist_ok=True);start=time.monotonic();bounds=check_bounds()
    data=json.loads((ROOT/'evidence/final_profiles.json').read_text());profiles={};good={};margins=[]
    for rec in data:
        cs=tuple(rec['counts']);ds=tuple(rec['diagonal']);key=(cs,ds)
        require(key not in profiles,'duplicate profile');profiles[key]=rec
        if rec['accepted']:
            sol=rec['solution'];st=stats(cs,ds,sol['d'],sol['weights'])
            require(st==sol['verified_stats'] and st['cost']<st['columns'] and st['margin']>0,'profile certificate failed')
            good[key]=rec;margins.append(st['margin'])
    require(set(profiles)==set(all_profiles()),'profile coverage differs')
    ks=json.loads((ROOT/'evidence/integer_kernels.json').read_text())['certificates'];km={};rows=0;bits=[]
    for rec in ks:
        mask=rec['mask'];require(mask not in km and shape(mask)not in good,'duplicate or overlapping kernel')
        nr,margin,nb=check_kernel(rec);rows+=nr;bits.append(nb);margins.append(margin);km[mask]=rec
    closure,closureeq=check_closure(json.loads((ROOT/'evidence/source_closure.json').read_text()))
    universe=set(all_masks());covered={m for m in universe if shape(m)in good}
    residual=universe-covered-set(km);w7=residual-closure
    expected=set(map(int,(ROOT/'evidence/cubic_residual_masks.txt').read_text().split()))
    expected7=set(map(int,(ROOT/'evidence/weight7_residual_masks.txt').read_text().split()))
    require(residual==expected and w7==expected7,'residual manifest mismatch')
    require(all(min(shape(m)[0])>=2 for m in residual),'remaining row can be single-hit')
    from collections import Counter
    z14=Counter(shape(m) for m in residual if m.bit_count()==14)
    require(z14=={((2,2,3,2,3,2),(0,0,0,0,0,0)):38,((2,2,3,3,2,2),(0,0,0,0,0,0)):18},'fourteen-hit residual shapes changed')
    mutation=mutation_checks(ks[0])
    def byz(s):return {str(z):sum(m.bit_count()==z for m in s)for z in range(14,18)}
    receipt={'status':'PASS_NEW_CUBIC_SOURCE_CONSUMERS_REPLAY','python':sys.version,'platform':platform.platform(),
             'frozen_mathematics_replayed':False,'lean':False,'bounds':bounds,
             'profiles':len(profiles),'profile_consumers':len(good),'profile_residuals':len(profiles)-len(good),
             'source_masks':len(universe),'profile_covered_masks':len(covered),'integer_kernels':len(km),
             'integer_Taylor_equalities':rows,'independent_Horner_equalities':rows,'max_kernel_l1_bits':max(bits),
             'minimum_height_margin':min(margins),'source_closure_certificates':len(closure),'closure_integer_equalities':closureeq,
             'additional_weight7_closures':len(residual&closure),'cubic_residual_masks':len(residual),'cubic_residual_by_hits':byz(residual),
             'weight7_residual_masks':len(w7),'weight7_residual_by_hits':byz(w7),
             'frontier':{'R7':[3,4,5,6,7,8,9],'alpha_templates':57,'row_targets':152,'component_bound':43,'min_weight':7,'min_X_degree':3},
             'mutations':mutation,'seconds':time.monotonic()-start}
    (args.out/'REPLAY.json').write_text(json.dumps(receipt,indent=2));print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
