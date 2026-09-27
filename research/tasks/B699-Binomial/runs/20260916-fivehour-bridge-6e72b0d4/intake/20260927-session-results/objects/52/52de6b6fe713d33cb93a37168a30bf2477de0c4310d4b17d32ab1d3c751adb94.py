#!/usr/bin/env python3
"""Generate Round 10 exact certificates; standard library only.
The infinite statements are proved in PROOFS.md, not extrapolated from samples.
"""
from __future__ import annotations
import argparse, json, math
from pathlib import Path

if not __debug__: raise RuntimeError('Run without Python -O: proof checks must stay enabled')

ROOT = Path(__file__).resolve().parents[1]
PAIRS = [(6,65,39,79,4),(6,185,111,1999,60),
         (10,71,71,1279,48),(10,159,159,319,8)]

def vp(n:int,p:int)->int:
    if n == 0: raise ValueError('valuation of zero is not finite')
    n=abs(n); out=0
    while n%p==0: out+=1; n//=p
    return out

def factors(n:int)->dict[int,int]:
    if n<1: raise ValueError('positive integer required')
    out={};p=2
    while p*p<=n:
        while n%p==0: out[p]=out.get(p,0)+1;n//=p
        p=3 if p==2 else p+2
    if n>1:out[n]=out.get(n,0)+1
    return out

def sf(n:int)->int:
    return math.prod(p for p,e in factors(n).items() if e%2)

def coarse(n:int)->int:
    for p in (2,3,5):
        while n%p==0:n//=p
    return n

def mul(a:list[int],b:list[int])->list[int]:
    r=[0]*(len(a)+len(b)-1)
    for i,x in enumerate(a):
        for j,y in enumerate(b):r[i+j]+=x*y
    return r

def sub(a:list[int],b:list[int])->list[int]:
    r=[(a[i] if i<len(a) else 0)-(b[i] if i<len(b) else 0)
       for i in range(max(len(a),len(b)))]
    while len(r)>1 and not r[-1]:r.pop()
    return r

def ordinary(n:int,j:int)->dict:
    k=n-j;g=math.gcd(n,j);alpha=n//g;beta=j//g;gamma=k//g;N=n-1
    assert j*k%N==0
    U=j*k//N;assert U%(10*g*g)==0
    z2=U//(10*g*g);z=math.isqrt(z2);assert z*z==z2
    assert U%g==0
    X=(j-U)//g;Y=(k-U)//g
    dX=sf(alpha*X);dY=sf(alpha*Y)
    sources=[]
    for r in range(6):
        qr=coarse(n-r);fac=factors(qr)
        slots=[{'p':p,'e':e,'power':p**e,'j_residue':j%(p**e),
                'passed':j%(p**e)<=r} for p,e in fac.items()]
        sources.append({'r':r,'q':qr,'slots':slots,'passed':all(s['passed'] for s in slots)})
    a=0;q=alpha
    while q%3==0:a+=1;q//=3
    return {'n':n,'j':j,'k':k,'g':g,'alpha':alpha,'beta':beta,'gamma':gamma,
            'alpha_is_3_power':q==1,'a_when_3_power':a if q==1 else None,
            'U':U,'z':z,'X':X,'Y':Y,'dX':dX,'dY':dY,
            'hX':math.isqrt(alpha*X//dX),'hY':math.isqrt(alpha*Y//dY),
            'M_actual':math.gcd(coarse(n-2),j-1),'C_actual':math.gcd(coarse(n-4),j-2),
            'g_even':g%2==0,'v2g':vp(g,2),'v2z':vp(z,2),
            'product_identity':X*Y==10*z*z*(U-1),
            'source_checks':sources,'current_model':False}

def make_certificates()->dict[str,object]:
    finite=[]
    for de,do,D,u,v in PAIRS:
        assert u*u-10*D*v*v==1
        ybound=math.isqrt((u-1)//(2*D))
        trials=[];seeds=[]
        for y in range(ybound+1):
            m2=10+10*D*y*y;m=math.isqrt(m2)
            good=m*m==m2 and m%10==0
            trials.append({'abs_y':y,'m_squared':m2,'floor_sqrt':m,'seed':good})
            if good:
                for yy in ([0] if y==0 else [-y,y]):seeds.append([m//10,yy])
        expected_x_mod4=0 if de==6 else 2
        orbit_mod4=sorted({s[0]%4 for s in seeds})
        assert len(orbit_mod4)==1 and expected_x_mod4 not in orbit_mod4
        finite.append({'even_core':de,'odd_core':do,'D':D,'D_factors':factors(D),
                       'unit_u':u,'unit_v':v,'unit_norm':u*u-10*D*v*v,
                       'y_squared_bound_num':u-1,'y_squared_bound_den':2*D,
                       'x_squared_bound_num':u+1,'x_squared_bound_den':20,
                       'abs_y_bound':ybound,'finite_reduction_trials':trials,
                       'all_reduced_seeds':seeds,
                       'unit_matrix':[[u,D*v],[10*v,u]],
                       'matrix_mod4':[[u%4,D*v%4],[10*v%4,u%4]],
                       'all_orbit_x_mod4':orbit_mod4,
                       'required_x_mod4':expected_x_mod4,
                       'complete_pair_class_excluded':True,
                       'historical_net_certified':0,
                       'central_character_pass_prime':17 if D in (39,71) else 7,
                       'central_character_example_is_original_model':False})
    parity=[]
    for nu in range(5):
        vals=[]
        for b0 in (1,3,5,7):
            for z0 in (1,3,5,7):
                vals.append((2**(2*nu+1)*b0*b0-5*z0*z0)%8)
        assert len(set(vals))==1
        parity.append({'v2_z':nu,'odd_unit_residues':sorted(set(vals)),
                       'even_core_mod16':2*vals[0],
                       'odd_core_mod8':7 if nu==0 else 1,
                       'v2_even_factor':2*nu+1})
    polynomial={'coefficient_order':'ascending powers of ell',
                'D_coefficients':[-1,0,10],'u_coefficients':[-1,0,20],'v_coefficients':[0,2],
                'unit_norm_coefficients':sub(mul([-1,0,20],[-1,0,20]),
                    [10*x for x in mul([-1,0,10],mul([0,2],[0,2]))]),
                'bound_numerator_minus_2D':sub([-2,0,20],[-2,0,20])}
    samples=[]
    for ell in [1,2,3,4,6,8,10,12,16,25,100]:
        D=10*ell*ell-1;u=20*ell*ell-1;v=2*ell;x,y=ell,1;orbit=[]
        for step in range(6):
            assert 10*x*x-D*y*y==1
            orbit.append({'step':step,'x':x,'y':y,'x_mod_2ellD':x%(2*ell*D),
                          'y_mod_20ell2':y%(20*ell*ell),'v2_x':vp(x,2)})
            x,y=u*x+D*v*y,10*v*x+u*y
        samples.append({'ell':ell,'D':D,'u':u,'v':v,'orbit_samples':orbit})
    bridge=[]
    for de,do,D,_,_ in PAIRS:
        bridge.append({'d_even':de,'d_odd':do,'common_core':math.gcd(de,do),
                       'product':de*do,'ten_D':10*D,'D_squarefree':all(e==1 for e in factors(D).values()),
                       'w_formula':'h_even*h_odd/(alpha*z)',
                       'M2_removed':False})
    boundary=[]
    for D,cores,u,v,x,y in [(31,[10,31],848719,48204,206,117),
                            (159,[6,265],319,8,4,1)]:
        start=[x,y]
        for _ in range(2):x,y=u*x+D*v*y,10*v*x+u*y
        assert x%10==0
        z=x//10
        boundary.append({'D':D,'not_excluded_by_this_norm_parity_test':cores,
                         'initial_norm_point':start,'unit':[u,v],'steps':2,
                         'x':x,'w':y,'g':10,'z':z,'U':10*x*x,'norm':10*x*x-D*y*y,
                         'v2_x':vp(x,2),'v2_z':vp(z,2),
                         'is_only_auxiliary_norm_point':True,
                         'has_alpha_X_Y_j_recovery':False,'current_model':False})
    ordinary_inputs=[ordinary(162,70),ordinary(275562,18942),ordinary(169,64)]
    scope={'round':10,'date':'2026-09-27','R7':[3,4,5,6,7,8,9],
           'historical_net_certified':0,'B_RES10_closed':False,'E4_square_closed':False,
           'full_current_integer_model_found':False,'lean':False,'repository_operations':False,
           'finite_terminal_scope':'only the four coefficient-specific reduced norm equations',
           'global_finite_reduction':False,'M2_is_retained':True,
           'same_pair_required':True,'unit_multiplication_is_NC_descent':False,
           'excluded_unordered_effective_core_pairs':[[r[0],r[1]] for r in PAIRS],
           'parametric_family':{
              'identity':'U-1=(10*ell^2-1)*w^2 with ordinary integers ell,w>=1',
              'v2_g_required':1,
              'excluded':[{'even_core':6,'v2_ell':1},
                          {'even_core':10,'v2_ell_min':2}],
              'squareclass_alone_sufficient_without_squarefree_coefficient':False}}
    return {'finite_norm_orbits.json':finite,'parity_bridge.json':parity,
            'parametric_unit.json':{'symbolic':polynomial,'samples':samples,
                'non_squarefree_guard':{'ell':314,'D_ell':985959,'squarefree_part':39,
                    'coefficient_square_part':159,'x':2,'U':40,
                    'rational_w_numerator':1,'rational_w_denominator':159,
                    'ordinary_w_exists':False,'ell_divides_x':False,'current_model':False}},
            'squareclass_bridge.json':bridge,'auxiliary_survivors.json':boundary,
            'ordinary_regressions.json':ordinary_inputs,'scope.json':scope}

def main()->None:
    parser=argparse.ArgumentParser();parser.add_argument('--out',type=Path,default=ROOT/'certificates')
    args=parser.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    certs=make_certificates()
    for name,data in sorted(certs.items()):
        (args.out/name).write_text(json.dumps(data,indent=2,sort_keys=True,ensure_ascii=False)+'\n')
        print('GENERATED',name)
    print('PASS: 7 exact certificate files; no arbitrary n-bound used in the four exclusions.')
if __name__=='__main__':main()
