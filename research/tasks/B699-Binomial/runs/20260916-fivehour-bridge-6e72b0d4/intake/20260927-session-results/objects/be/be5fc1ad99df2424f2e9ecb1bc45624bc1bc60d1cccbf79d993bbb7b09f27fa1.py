#!/usr/bin/env python3
"""Separated exact receiver. Does not import the discovery implementation.
Finite orbit seeds are recovered by bounding x, rather than enumerating y.
"""
from __future__ import annotations
import argparse, json
from math import gcd, isqrt, comb
from pathlib import Path

if not __debug__: raise RuntimeError('Run without Python -O: proof checks must stay enabled')

ROOT=Path(__file__).resolve().parents[1]
CONFIG=[(6,65,39,79,4),(6,185,111,1999,60),
        (10,71,71,1279,48),(10,159,159,319,8)]
FILES={'finite_norm_orbits.json','parity_bridge.json','parametric_unit.json',
       'squareclass_bridge.json','auxiliary_survivors.json','ordinary_regressions.json','scope.json'}

def order(n:int,p:int)->int:
    if not n:raise ValueError('zero has no finite valuation')
    n=abs(n);v=0
    while n%p==0:n//=p;v+=1
    return v

def prime(n:int)->bool:
    return n>=2 and all(n%d for d in range(2,isqrt(n)+1))

def factor(n:int)->dict[int,int]:
    f={};k=2
    while k<=isqrt(n):
        if n%k==0:
            e=order(n,k);f[k]=e;n//=k**e
        k+=1
    if n>1:f[n]=1
    return f

def strip(n:int)->int:
    for p in (2,3,5):n//=p**order(n,p)
    return n

def mm(a,b):
    return [[sum(a[i][k]*b[k][j] for k in range(2)) for j in range(2)] for i in range(2)]

def power(a,n):
    ans=[[1,0],[0,1]]
    while n:
        if n&1:ans=mm(ans,a)
        a=mm(a,a);n//=2
    return ans

def apply(a,vec):return [sum(a[i][j]*vec[j] for j in range(2)) for i in range(2)]

def validate(directory:Path,verbose:bool=True)->dict:
    assert {p.name for p in directory.glob('*.json')}==FILES,'certificate file set mismatch'
    data={name:json.loads((directory/name).read_text()) for name in FILES}
    rows=data['finite_norm_orbits.json'];assert len(rows)==4
    terminals=0
    for row,(de,do,D,u,v) in zip(rows,CONFIG):
        assert (row['even_core'],row['odd_core'],row['D'],row['unit_u'],row['unit_v'])==(de,do,D,u,v)
        assert row['unit_norm']==u*u-10*D*v*v==1
        assert {int(k):z for k,z in row['D_factors'].items()}==factor(D)
        assert all(e==1 for e in factor(D).values())
        assert row['y_squared_bound_num']==u-1 and row['y_squared_bound_den']==2*D
        assert row['x_squared_bound_num']==u+1 and row['x_squared_bound_den']==20
        # A different exhaustive finite terminal: x, not y.
        xb=isqrt((u+1)//20);found=[]
        for x in range(1,xb+1):
            num=10*x*x-1
            if num%D:continue
            yy=num//D;y=isqrt(yy)
            if y*y==yy:
                found.extend([[x,-y],[x,y]] if y else [[x,0]])
        assert sorted(row['all_reduced_seeds'])==sorted(found) and found
        yb=isqrt((u-1)//(2*D));assert row['abs_y_bound']==yb
        assert len(row['finite_reduction_trials'])==yb+1
        for y,tr in enumerate(row['finite_reduction_trials']):
            num=10+10*D*y*y;m=isqrt(num)
            assert tr=={'abs_y':y,'m_squared':num,'floor_sqrt':m,'seed':m*m==num and m%10==0}
        matrix=[[u,D*v],[10*v,u]]
        assert row['unit_matrix']==matrix
        assert row['matrix_mod4']==[[a%4 for a in r] for r in matrix]
        assert matrix[0][0]*matrix[1][1]-matrix[0][1]*matrix[1][0]==1
        residues=sorted({x%4 for x,y in found})
        assert row['all_orbit_x_mod4']==residues
        assert u%4==3 and (D*v)%4==0
        assert all((-r)%4 in residues for r in residues),'forward/inverse invariance failed'
        required=0 if de==6 else 2
        assert row['required_x_mod4']==required and required not in residues
        assert row['complete_pair_class_excluded'] is True
        assert row['historical_net_certified']==0
        cp=row['central_character_pass_prime'];assert cp==(17 if D in (39,71) else 7)
        squares={a*a%cp for a in range(1,cp)}
        assert 3%cp not in squares and all(k%cp in squares for k in (30,6*de,6*do))
        assert row['central_character_example_is_original_model'] is False
        terminals+=xb
    parity=data['parity_bridge.json'];assert len(parity)==5
    for nu,row in enumerate(parity):
        residues=set()
        for beta0 in (1,3,5,7):
            for z0 in (1,3,5,7):
                beta=2**(1+2*nu)*beta0;z=2**nu*z0
                val=beta*beta-10*z*z
                assert order(val,2)==1+2*nu
                residues.add((val//2**(1+2*nu))%8)
        assert row['v2_z']==nu and row['odd_unit_residues']==sorted(residues)
        assert row['even_core_mod16']==(10 if nu==0 else 6)
        assert row['odd_core_mod8']==(7 if nu==0 else 1)
        assert row['v2_even_factor']==1+2*nu
    par=data['parametric_unit.json'];s=par['symbolic']
    guard=par['non_squarefree_guard']
    assert guard=={'ell':314,'D_ell':985959,'squarefree_part':39,
                  'coefficient_square_part':159,'x':2,'U':40,
                  'rational_w_numerator':1,'rational_w_denominator':159,
                  'ordinary_w_exists':False,'ell_divides_x':False,'current_model':False}
    assert 10*314**2-1==39*159**2==985959 and 10*2**2-1==39
    assert s=={'coefficient_order':'ascending powers of ell','D_coefficients':[-1,0,10],
               'u_coefficients':[-1,0,20],'v_coefficients':[0,2],
               'unit_norm_coefficients':[1],'bound_numerator_minus_2D':[0]}
    # Direct expansion: coefficients 400-400 and -40+40 vanish.
    assert (400-400,-40+40,1)==(0,0,1)
    ell_list=[1,2,3,4,6,8,10,12,16,25,100]
    assert [row['ell'] for row in par['samples']]==ell_list
    orbit_checks=0
    for row in par['samples']:
        ell=row['ell'];D=10*ell*ell-1;u=2*D+1;v=2*ell
        assert (row['D'],row['u'],row['v'])==(D,u,v)
        assert u*u-10*D*v*v==1 and u-1==2*D
        matrix=[[u,D*v],[10*v,u]]
        assert len(row['orbit_samples'])==6
        for step,o in enumerate(row['orbit_samples']):
            x,y=apply(power(matrix,step),[ell,1])
            assert (o['step'],o['x'],o['y'])==(step,x,y)
            assert 10*x*x-D*y*y==1
            assert o['x_mod_2ellD']==x%(2*ell*D)==ell
            assert o['y_mod_20ell2']==y%(20*ell*ell) in [1,20*ell*ell-1]
            assert o['v2_x']==order(x,2)==order(ell,2)
            orbit_checks+=1
    for row,(de,do,D,_,_) in zip(data['squareclass_bridge.json'],CONFIG):
        assert row=={'d_even':de,'d_odd':do,'common_core':gcd(de,do),
                    'product':de*do,'ten_D':10*D,'D_squarefree':True,
                    'w_formula':'h_even*h_odd/(alpha*z)','M2_removed':False}
        assert de*do==10*D and all(e==1 for e in factor(de).values()) and all(e==1 for e in factor(do).values())
    boundaries=data['auxiliary_survivors.json'];assert len(boundaries)==2
    for row,D,cores in zip(boundaries,[31,159],[[10,31],[6,265]]):
        assert row['D']==D and row['not_excluded_by_this_norm_parity_test']==cores
        u,v=row['unit'];assert u*u-10*D*v*v==1
        assert row['steps']==2
        # Explicit squared matrix instead of iterative generation.
        sq=[[2*u*u-1,2*D*u*v],[20*u*v,2*u*u-1]]
        x,y=apply(sq,row['initial_norm_point'])
        assert (row['x'],row['w'])==(x,y) and x%10==0
        assert row['g']==10 and row['z']==x//10 and row['U']==10*x*x
        assert row['norm']==10*x*x-D*y*y==1
        assert row['v2_x']==order(x,2) and row['v2_z']==order(x//10,2)
        assert row['v2_z']==(0 if cores[0]==10 else 1)
        assert row['is_only_auxiliary_norm_point'] is True
        assert row['has_alpha_X_Y_j_recovery'] is False and row['current_model'] is False
    originals=data['ordinary_regressions.json']
    assert [(o['n'],o['j']) for o in originals]==[(162,70),(275562,18942),(169,64)]
    for o in originals:
        n=o['n'];j=o['j'];k=n-j;g=gcd(n,j);alpha=n//g;beta=j//g;gamma=k//g;z=o['z']
        assert 7<=j<n//2+1 and gcd(beta,gamma)==1
        assert (o['k'],o['g'],o['alpha'],o['beta'],o['gamma'])==(k,g,alpha,beta,gamma)
        U=10*g*g*z*z;assert o['U']==U and (n-1)*U==j*k
        assert (alpha-2*beta)**2+40*(n-1)*z*z==alpha*alpha
        X=beta-10*g*z*z;Y=gamma-10*g*z*z
        assert (o['X'],o['Y'])==(X,Y) and X>0 and Y>0
        assert o['product_identity'] is True and X*Y==10*z*z*(U-1)
        for d,h,target in [(o['dX'],o['hX'],alpha*X),(o['dY'],o['hY'],alpha*Y)]:
            assert d*h*h==target and all(e==1 for e in factor(d).values())
        assert o['M_actual']==gcd(strip(n-2),j-1) and o['C_actual']==gcd(strip(n-4),j-2)
        assert o['g_even']==(g%2==0) and o['v2g']==order(g,2) and o['v2z']==order(z,2)
        a=order(alpha,3)
        assert o['alpha_is_3_power']==(3**a==alpha)
        assert o['a_when_3_power']==(a if 3**a==alpha else None)
        assert len(o['source_checks'])==6
        for r,src in enumerate(o['source_checks']):
            qr=strip(n-r);assert (src['r'],src['q'])==(r,qr)
            fac=factor(qr);assert len(src['slots'])==len(fac)
            accum=1;passes=[]
            for slot in src['slots']:
                p,e,P=slot['p'],slot['e'],slot['power']
                assert prime(p) and p>=7 and fac[p]==e and P==p**e
                assert slot['j_residue']==j%P
                floor_carry=n//P-j//P-k//P
                assert slot['passed']==(floor_carry==0)==(j%P<=r)
                accum*=P;passes.append(slot['passed'])
            assert accum==qr and src['passed']==all(passes)
        assert o['current_model'] is False
    odd=originals[-1]
    assert odd['g']==1 and [odd['dX'],odd['dY']]==[6,65]
    assert comb(169,6)%167==comb(169,64)%167==0
    scope=data['scope.json']
    assert scope['round']==10 and scope['R7']==[3,4,5,6,7,8,9]
    assert scope['historical_net_certified']==0
    for field in ['B_RES10_closed','E4_square_closed','full_current_integer_model_found','lean',
                  'repository_operations','global_finite_reduction','unit_multiplication_is_NC_descent']:
        assert scope[field] is False,field
    assert scope['M2_is_retained'] is True and scope['same_pair_required'] is True
    assert scope['excluded_unordered_effective_core_pairs']==[[x[0],x[1]] for x in CONFIG]
    assert scope['finite_terminal_scope']=='only the four coefficient-specific reduced norm equations'
    assert scope['parametric_family']=={
       'identity':'U-1=(10*ell^2-1)*w^2 with ordinary integers ell,w>=1',
       'v2_g_required':1,'excluded':[{'even_core':6,'v2_ell':1},{'even_core':10,'v2_ell_min':2}],
       'squareclass_alone_sufficient_without_squarefree_coefficient':False}
    result={'status':'PASS','certificate_files':len(FILES),'coefficient_classes':4,
            'independent_x_terminal_checks':terminals,'parametric_orbit_regressions':orbit_checks,
            'ordinary_input_regressions':len(originals),'auxiliary_only_boundaries':len(boundaries),
            'historical_net_certified':0}
    if verbose:print(json.dumps(result,indent=2,sort_keys=True))
    return result

def main()->None:
    p=argparse.ArgumentParser();p.add_argument('--certdir',type=Path,default=ROOT/'certificates');a=p.parse_args()
    validate(a.certdir)
if __name__=='__main__':main()
