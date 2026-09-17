"""Bounded regressions and an adopted complete small-C terminal check.
The new infinite theorem is NOT inferred from these finite tests.
"""
from __future__ import annotations
import argparse, json
from pathlib import Path
from math import gcd, isqrt, comb
from consumer import negative_root_obstruction, _integer_root

def prime(p:int)->bool:
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))
def vp_fact(n:int,p:int)->int:
    v=0
    while n:
        n//=p;v+=n
    return v

def small_C(root:Path)->dict:
    records=json.loads((root/'sources/small-C-terminals.json').read_text())
    ws=records['witnesses']
    expected={(n,j) for n in range(8,82) for j in range(4,n//2+1)}
    observed=set()
    for n,j,p in ws:
        if (n,j) in observed or (n,j) not in expected or not prime(p) or p<3:
            raise ValueError('bad small-C witness')
        observed.add((n,j))
        for h in (3,j):
            if vp_fact(n,p)-vp_fact(h,p)-vp_fact(n-h,p)<=0:
                raise ValueError('nondividing witness')
    if observed!=expected:raise ValueError('small-C coverage missing')
    return {'complete_pairs':len(ws),'n_inclusive':[8,81],'status':'PASS','scope':'adopted old small-C terminal only; not new coverage'}

def regressions()->dict:
    denom=[0,0]
    for E in range(1,32,2):
        for W in range(E+2,65,2):
            if gcd(W,E)!=1:continue
            for S in range(1,201,2):
                for family,a,b in ((1,2,2),(2,18,6)):
                    if family==2 and E%3==0:continue
                    value=S*W**3-a*W*W*E-b*W*E*E+E**3
                    if value%(E**3)==0:
                        assert S%E==0 and gcd(E,S//E)==1
                        denom[family-1]+=1
    norm=0;cases={}
    for lam,mu in ((1,1),(1,3),(3,1)):
        A=lam**3*mu**2
        for g in range(1,7):
            if gcd(g,lam*mu)!=1:continue
            for u in range(1,82,2):
                for eps in range(1,82,2):
                    if gcd(g,eps)!=1:continue
                    w=2*u*g*g+eps
                    if w%(lam*mu):continue
                    H=w//(lam*mu)
                    if gcd(u,H)!=1:continue
                    h=gcd(w,eps)
                    assert h==gcd(u,lam*mu)
                    for T in range(1,82,2):
                        if eps*T%A:continue
                        num=u*g*g*T-A
                        if num<=0 or num%(eps*eps):continue
                        z=num//(eps*eps)
                        numC=4*z*u*g*g+4*z*eps+T
                        if numC%(lam*mu)**2:continue
                        C=numC//((lam*mu)**2)
                        if u*g*g*C-z*H*H!=lam:continue
                        assert z*h*h%A==0
                        E=eps//h;S=eps*T//A
                        n=2*mu*C*H+2
                        # The cubic evaluation is exactly the integer n/2.
                        W=w//h
                        assert (S*W**3-2*W*W*E-2*W*E*E+E**3)==(n//2)*E**3
                        assert S%E==0 and gcd(E,S//E)==1
                        norm+=1;key=f'A={A},h={h}';cases[key]=cases.get(key,0)+1
    roots=0
    for d in range(3,1000,2):
        f=d*(d*d+2*d-2)
        assert _integer_root(f,1)==d
        assert _integer_root(f+1,1) is None
        roots+=2
        if d>=5 and d%3:
            f=d*(d*d+6*d-18)
            assert _integer_root(f,2)==d
            assert _integer_root(f-1,2) is None
            roots+=2
    models=[]
    for r in range(6,102,2):
        q=r*r-3;d=2*q*q+r-1;me=4*q**3+4*r*q+1;M=d*d+2*d-2;B=d*d+d-3
        assert M==q*me and gcd(q,me)==1 and gcd(d,M)==1
        assert 2*B*B<me**3 and 72*d<5*q**3
        assert (d*M+2*me*me)**2<me*(d*M)**2
        models.append(r)
    return {'denominator_integer_hits_by_form':denom,'normalization_states':norm,'normalization_case_counts':cases,'root_recovery_tests':roots,'coefficient_model_regression_rows':len(models),'status':'PASS','scope':'finite regression only; infinite coefficient model is proved by symbolic positive polynomials'}

def api_regression()->dict:
    tested=0;hits=[]
    for n in range(8,2001,4):
        for j in range(4,n//2):
            tested+=1;r=negative_root_obstruction(n,j)
            if r is not None:
                v=gcd(comb(n,3),comb(n,j))
                while v%2==0:v//=2
                if v<=1:raise AssertionError((n,j,r))
                r['actual_common_odd_divisor']=v;hits.append(r)
    return {'scope':'finite API regression, NOT unrestricted proof or historical coverage difference','n_max':2000,'tested':tested,'hits':hits}

def main():
    p=argparse.ArgumentParser();p.add_argument('--output-dir',type=Path,required=True);ns=p.parse_args()
    root=Path(__file__).resolve().parent.parent
    ns.output_dir.mkdir(parents=True,exist_ok=True)
    values={'small_C_acceptance.json':small_C(root),'finite_regression.json':regressions(),'consumer_regression.json':api_regression()}
    for name,v in values.items():
        (ns.output_dir/name).write_text(json.dumps(v,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
    print(json.dumps({k:{a:b for a,b in v.items() if a not in ('hits',)} for k,v in values.items()},ensure_ascii=False))
if __name__=='__main__':main()
