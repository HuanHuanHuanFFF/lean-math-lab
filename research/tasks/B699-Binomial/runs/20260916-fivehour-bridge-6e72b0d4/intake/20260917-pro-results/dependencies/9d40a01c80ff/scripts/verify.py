#!/usr/bin/env python3
"""Exact local acceptance checks. Publication completeness is an adopted input.

No finite scan below is used as a proof for arbitrary n or t. The archived
139 records are re-filtered, not independently re-enumerated in this round.
"""
from __future__ import annotations
import argparse
import hashlib
import json
from math import gcd, isqrt
from pathlib import Path
import platform
import sys

ROOT = Path(__file__).resolve().parents[1]

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def iso(x: int) -> int:
    assert x > 0
    return 3 if x % 3 == 0 and x % 9 != 0 else 1

def power2(x: int) -> bool:
    return x > 0 and (x & (x - 1)) == 0

def zmin(lam: int, g: int) -> int:
    r = (lam * (g * g - 1)) % 8
    return r or 8

def prime(p: int) -> bool:
    return p >= 2 and all(p % d for d in range(2, isqrt(p) + 1))

def symbols_check() -> dict:
    import sympy as S
    q,m,H,g,t,lam,z = S.symbols('q m H g t lam z')
    n = 2*q*H+2; j=(q-m)*H+1; k=(q+m)*H+1
    checks = {
        'window_product': S.expand(j*k-((q*q-m*m)*H*H+2*q*H+1)),
        'quad_from_W1': S.expand((lam*j*k-t*g*g*(n-1)) - (lam*(q*q-m*m)*H*H-(t*g*g-lam)*(n-1))),
        'norm_factorization': S.expand(lam*(q*q-m*m)*H*H-(t*g*g-lam)*(n-1)).subs(lam*(q*q-m*m), z*(n-1)),
        'complement_product': S.expand((j-1)*(k-1)-(q*q-m*m)*H*H),
    }
    # Test the substitution-free polynomial implication using ideal reduction.
    I1=lam*(q*q-m*m)-z*(2*q*H+1)
    I2=t*g*g-z*H*H-lam
    matrix_det=(lam*q-z*H)**2-lam*lam*m*m-t*z*g*g
    checks.pop('norm_factorization')
    checks['matrix_identity'] = S.expand(matrix_det-lam*I1+z*I2)
    assert all(v == 0 for v in checks.values()), checks
    curves=[]
    u,w,X,Y=S.symbols('u w X Y')
    expected={(1,1):(-36,1296),(1,2):(-144,10368),(2,1):(-360,5184),(2,2):(-1440,41472)}
    for rho in (1,2):
        for eps in (1,2):
            a=12*rho*eps**2;b=-36*rho*eps;c0=24*rho+9
            aa=a*c0-b*b//3;bb=2*b**3//27-a*b*c0//3
            assert (aa,bb)==expected[rho,eps]
            xx=a*u*u+b//3; yy=a*u*w
            identity=S.expand(yy*yy-(xx**3+aa*xx+bb)-a*a*u*u*(w*w-a*u**4-b*u*u-c0))
            assert identity==0
            assert -16*(4*aa**3+27*bb*bb)!=0
            curves.append({'rho':rho,'epsilon':eps,'quartic':[a,b,c0],'short_curve':[aa,bb]})
    return {'sympy_version':S.__version__, 'polynomial_identities':list(checks),'four_nonsingular_curve_maps':curves}

def periodic_check() -> dict:
    # Before these covers, the original equation modulo 3 gives the stated
    # exponent classes, using n modulo 9 and lambda*mu=3.
    initial={}
    for rho in (1,2):
        got=[]
        for e in (2,3,4,5):
            a=pow(2,e,9)
            assert (a-1)*(a-2)%3==0
            D=(1+4*rho*((a-1)*(a-2)//3))%3
            if D in (0,1): got.append(e)
        assert got==([2,3] if rho==1 else [4,5])
        initial[str(rho)]=got
    results=[]
    for rho,T,left,ps in ((1,60,[e for e in range(60) if e%6==3],(5,11,61)),(2,12,[4,5,10,11],(5,13))):
        start=list(left);steps=[]
        for p in ps:
            assert prime(p) and pow(2,T,p)==1
            sq={x*x%p for x in range(p)}
            removed=[];keep=[]
            for e in left:
                a=pow(2,e,p)
                r=(12*rho*(a*a-3*a+2)+9)%p
                if r not in sq: removed.append([e,r])
                else: keep.append(e)
            left=keep
            steps.append({'p':p,'excluded_exponent_and_nonsquare_residue':removed,'remaining':list(left)})
        assert not left
        results.append({'rho':rho,'period':T,'initial':start,'steps':steps,'survivors':left})
    return {'modulo_3_normalization':initial,'complete_periodic_covers':results}

def publication_check() -> dict:
    path=ROOT/'sources/published_E19.json'; obj=json.loads(path.read_text())
    pts=obj['points_up_to_Y_sign']
    assert len(pts)==15 and len(set(x for x,y in pts))==15
    candidates=[];square_n=[];large_power2=[]
    for x,y in pts:
        assert y>=0 and y*y==x**3-36*x+1296
        if (x+12)%12: continue
        n=(x+12)//12
        candidates.append(n)
        if n>0 and isqrt(n)**2==n:
            u=isqrt(n)
            assert y%(12*u)==0
            w=y//(12*u)
            assert w*w==12*n*n-36*n+33
            square_n.append(n)
            if n>=8 and power2(n): large_power2.append(n)
    assert sorted(candidates)==[0,1,4,33,6889]
    assert sorted(square_n)==[1,4,6889] and not large_power2
    return {'adopted_completeness':True,'independent_CAS_complete_list':False,'source_sha256':sha(path),'point_pairs_checked':15,'candidate_n_from_X':sorted(candidates),'positive_square_n':sorted(square_n),'legal_power2_n_at_least_8':large_power2}

def previous_filter() -> dict:
    path=ROOT/'sources/quotient_100000.json'; obj=json.loads(path.read_text())
    fields=obj['record_fields']; records=obj['pre_second_window_records']
    assert len(records)==139
    rejected=[];coarse=[];left=[]
    for values in records:
        r=dict(zip(fields,values)); t,n,j,g,lam,mu=(r[s] for s in ['t','n','j','g','lambda','mu'])
        assert gcd(n,j)==g and lam==iso(n-1) and mu==iso((n-2)//2)
        K=(n-2)//(2*mu); C=gcd(K,t);Z=zmin(lam,g)
        a=Z*(n-1);b=lam*(mu*mu*C*C-g*g)
        if n<=3*(C*C-1):coarse.append({'t':t,'n':n,'j':j,'g':g,'C':C,'lambda':lam,'mu':mu,'Z':Z,'lhs':a,'rhs':b})
        if a>b:rejected.append([t,n,j,a,b])
        else:left.append([t,n,j])
    assert len(coarse)==2 and len(rejected)==139 and not left
    return {'input_sha256':sha(path),'input_record_count':139,'fresh_all_t_enumeration':False,'coarse_survivors':coarse,'sharp_survivors':left,'sharp_rejected_count':len(rejected)}

def root_residues(N:int, spf:list[int]) -> list[int]:
    mods=[];v=N
    while v>1:
        p=spf[v];Q=1
        while v%p==0:v//=p;Q*=p
        mods.append(Q)
    r=[0];M=1
    for Q in mods:
        inv=pow(M,-1,Q)
        r=[a+M*((b-a)*inv%Q) for a in r for b in (0,1)]
        M*=Q
    return r

def bounded_regression(limit:int) -> dict:
    # Only a regression; the full theorem is the written argument.
    spf=list(range(limit+1))
    for p in range(2,isqrt(limit)+1):
        if spf[p]==p:
            for v in range(p*p,limit+1,p):
                if spf[v]==v:spf[v]=p
    checks=0;weak=[];missing=[]
    for n in range(8,limit+1,4):
        lam=iso(n-1);mu=iso((n-2)//2);N=(n-1)//lam;K=(n-2)//(2*mu)
        for r in root_residues(N,spf):
            for j in range(r,n//2+1,N):
                if j<4:continue
                checks+=1
                if j*(j-1)*(j-2)%K:continue
                L=gcd(K,j);H=gcd(K,j-1);R=gcd(K,j-2)
                assert L*H*R==K
                assert gcd(L,H)==gcd(L,R)==gcd(H,R)==1
                if min(L,H,R)==1:missing.append([n,j,L,H,R])
                g=gcd(n,j);k=n-j;alpha=n//g
                assert (j//g)*(k//g)%N==0
                t=(j//g)*(k//g)//N;C=gcd(K,t);q=mu*C
                assert C==L*R and K//C==H and gcd(H,t)==1
                assert (j-1)%H==0
                m=q-(j-1)//H
                if j<n//2:
                    assert m>0 and m<q
                    assert lam*(q*q-m*m)%(n-1)==0
                    z=lam*(q*q-m*m)//(n-1)
                    assert z>0 and t*g*g-z*H*H==lam
                    if alpha%8==0:
                        assert t%8==lam%8 and m%g==0
                        Z=zmin(lam,g)
                        assert Z*(n-1)<=lam*(mu*mu*C*C-g*g)
                        assert n<=3*(C*C-1)
                    if alpha%2==0:
                        assert m%g==0
                        w=(lam*q-z*H)//g;d=m//g;X=alpha//2
                        assert (lam*q-z*H)%g==0 and w>0
                        assert w*w-lam*lam*d*d==t*z
                        assert lam*X==t*g+w*H and lam*q==w*g+z*H
                        assert X*g-q*H==1
                weak.append({'n':n,'j':j,'g':g,'alpha':alpha,'t':t,'L':L,'H':H,'R':R})
    # These are nonvacuous models of the two windows, not NC3.
    return {'limit_n':limit,'window_1_candidates_checked':checks,'two_window_models':weak,'models_with_missing_allocation':missing,'claim_for_unbounded_n':False}

def coefficient_table() -> dict:
    rows=[]
    for lam,mu in [(1,1),(1,3),(3,1)]:
        for gc in (1,2,0):
            g={1:1,2:2,0:4}[gc];Z=zmin(lam,g)
            assert lam*mu*mu<=3*Z
            assert 16*lam*lam*mu*mu<=36*g*g*Z
            rows.append({'lambda':lam,'mu':mu,'g_mod4':gc,'minimum_positive_z':Z,'numerator':lam*mu*mu,'denominator':Z})
    assert 9*421*421+32<16*100000
    return {'rows':rows,'uniform_coefficient_at_most':3,'TC_leading_coefficient_at_most':'9/16','C_421_conflicts_with_t_gt_100000':True}

def main() -> None:
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,required=True);ap.add_argument('--limit-n',type=int,default=1000000)
    a=ap.parse_args()
    if not 8<=a.limit_n<=2000000: raise ValueError('Regression limit must be between 8 and 2,000,000')
    if a.output.exists(): raise FileExistsError('Use a new output path; do not overwrite evidence')
    out={'python':sys.version,'platform':platform.platform(),'symbolic':symbols_check(),'periodic':periodic_check(),'publication':publication_check(),'coefficients':coefficient_table(),'old_filter':previous_filter(),'regression':bounded_regression(a.limit_n)}
    out['status']='PASS_LOCAL_CHECKS_WITH_PUBLISHED_COMPLETENESS_INPUT'
    a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':out['status'],'publication_points':out['publication']['point_pairs_checked'],'periodic_covers':len(out['periodic']['complete_periodic_covers']),'old_records_rejected':out['old_filter']['sharp_rejected_count'],'regression_candidates':out['regression']['window_1_candidates_checked'],'two_window_models':len(out['regression']['two_window_models']),'output':str(a.output)},ensure_ascii=False))

if __name__=='__main__': main()
