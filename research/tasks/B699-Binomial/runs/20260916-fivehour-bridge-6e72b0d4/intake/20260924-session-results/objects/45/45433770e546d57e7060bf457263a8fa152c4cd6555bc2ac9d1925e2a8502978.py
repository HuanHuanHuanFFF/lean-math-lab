"""Round25: deterministic local images and full-period cover.
Algorithm A solves the quadratic equation in h. All zero mod-p factors remain.
Only this new certificate is generated; no old campaign/Lean/network is run.
"""
from __future__ import annotations
import argparse,json
from math import isqrt
from pathlib import Path
N0=194400000

def prime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def mul(a,b,p):
    return ((a[0]*b[0]+3*a[1]*b[1])%p,(a[0]*b[1]+a[1]*b[0])%p)

def power(a,e,p):
    z=(1,0)
    while e:
        if e&1:z=mul(z,a,p)
        a=mul(a,a,p);e//=2
    return z

def period(p):
    gamma=power((2,1),8,p);u=(1,0)
    for t in range(1,p*p+1):
        u=mul(u,gamma,p)
        if u==(1,0):return t
    raise ArithmeticError('period not found')

def image(p,q):
    if p<=3 or not prime(p):raise ValueError('prime >3 required')
    U,X=power((2,1),8*q+1,p);inv=[0]+[pow(i,-1,p) for i in range(1,p)]
    d=(3*X-1)*inv[2]%p;y=U*inv[2]%p
    square={i*i%p:i for i in range(p)}
    cyc=set();a2=1
    while a2 not in cyc:cyc.add(a2);a2=2*a2%p
    ns=cyc|{3*z%p for z in cyc}
    target=3*(d-1)%p;out=set()
    for A in range(p):
        bs=[target*inv[A]%p] if A else (range(p) if target==0 else [])
        for B in bs:
            a=d*d%p;b=-(6*d*d+10*A*d*y+4*A*A*y*y)%p
            c=-(11*d*d+10*A*d*y+3*A*A*y*y+4*B*y)%p
            if a:
                D=(b*b-4*a*c)%p
                if D not in square:continue
                r=square[D];hs={(-b+r)*inv[2*a%p]%p,(-b-r)*inv[2*a%p]%p}
            elif b:hs=[-c*inv[b]%p]
            elif c==0:hs=range(p)
            else:hs=[]
            for h in hs:
                v=A*y%p;Q=(d+v)%p;P=(Q+h*v)%p;nu=(h*d-Q)*inv[2]%p
                if (P*Q*nu+2)%p not in ns:continue
                C=(4*B*h-16*A*d-120*y-27*B)%p
                Z=(20*B-320*A-C)%p;F=(3*Z*Z-64*(C*A+15)**2)%p
                cs=C*inv[4]%p;fs=F*inv[16%p]%p
                w=(5*fs+42*cs*cs-18000)%p
                out.add((w*w-97200*cs*cs+N0)%p)
    return sorted(out)

def build():
    plan=json.loads((Path(__file__).with_name('cover_plan.json')).read_text())
    values=sorted(2**a*3**b*5**c for a in (0,4,6) for b in (0,2,4,5) for c in (0,2,4,5))
    ps=sorted({p for pp in plan.values() for p in pp});tables={}
    for p in ps:
        T=period(p)
        if 1260%T:raise ArithmeticError('period not dividing 1260')
        tables[str(p)]={'p':p,'period':T,'V_images':[image(p,q) for q in range(T)]}
    cover=[];qs=[q for q in range(1260) if q%3!=1]
    for V in values:
        if V%16 not in (0,9):cover.append({'V':V,'kind':'mod16'});continue
        pending=set(qs);steps=[]
        for p in plan[str(V)]:
            tb=tables[str(p)];T=tb['period']
            bad=[q for q,arr in enumerate(tb['V_images']) if V%p not in arr]
            kept={q for q in pending if q%T not in bad}
            removed=len(pending)-len(kept)
            if removed<=0:raise ArithmeticError('redundant step')
            steps.append({'p':p,'excluded_q_residues':bad,'removed':removed});pending=kept
        if pending:raise ArithmeticError(('uncovered',V,sorted(pending)[:8]))
        cover.append({'V':V,'kind':'odd_primes','steps':steps})
    return {'schema':'B699-D-Round25-235-full-period-v1','exponents':{'2':[0,4,6],'3':[0,2,4,5],'5':[0,2,4,5]},
            'common_period':1260,'q_mod3':[0,2],'V_mod16':[0,9],'values':values,'tables':tables,'cover':cover,
            'scope':'All integer q>=1 in the frozen necessary core. No upper bound on q is used.'}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args()
    cert=build();a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(cert,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print('FULL_PERIOD_CERTIFICATE_GENERATED=PASS; VALUES='+str(len(cert['values'])))
if __name__=='__main__':main()

# Supplemental unbounded exponent families; imported by generate_seven.py.
def order_seven(p:int)->int:
    if p==7 or not prime(p):raise ValueError('unit base7 at prime p required')
    z=1
    for e in range(1,p):
        z=z*7%p
        if z==1:return e
    raise ArithmeticError('unit order not found')

def build_seven():
    plans={16:[241,5,73,193,181],3888:[241,5,193,73,17,11]}
    ps=sorted({p for steps in plans.values() for p in steps});tables={}
    for p in ps:
        T=period(p);O=order_seven(p)
        if 45%T or 240%O:raise ArithmeticError('wrong common period')
        tables[str(p)]={'p':p,'q_period':T,'seven_order':O,'V_images':[image(p,r) for r in range(T)]}
    cover=[]
    for m,plan in plans.items():
        pending={(q,e) for q in range(45) if q%3!=1 for e in range(240)}
        steps=[]
        for p in plan:
            table=tables[str(p)];T=table['q_period'];O=table['seven_order']
            bad=[[e for e in range(O) if m*pow(7,e,p)%p not in table['V_images'][r]] for r in range(T)]
            kept={(q,e) for q,e in pending if e%O not in bad[q%T]}
            n=len(pending)-len(kept)
            if n<=0:raise ArithmeticError('redundant seven step')
            steps.append({'p':p,'excluded_exponents_by_q':bad,'removed':n});pending=kept
        if pending:raise ArithmeticError(('seven tail uncovered',m))
        cover.append({'multiplier':m,'steps':steps})
    return {'schema':'B699-D-Round25-two-seven-tails-v1','multipliers':[16,3888],'q_period':45,
            'exponent_period':240,'q_mod3':[0,2],'exponent_range':'All nonnegative integers; no height bound',
            'tables':tables,'cover':cover}
