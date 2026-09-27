#!/usr/bin/env python3
"""R8 deterministic certificates. No new inverse-menu or row-recovery sweep."""
from __future__ import annotations
import argparse, json, math
from pathlib import Path
from fractions import Fraction

def dump(path, obj):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(obj,ensure_ascii=False,indent=2,sort_keys=True)+'\n')

def rough(x):
    for p in (2,3,5):
        while x%p==0: x//=p
    return x

def issq(x):
    return x>=0 and math.isqrt(x)**2==x

def power3(x):
    a=0
    while x>1 and x%3==0: a+=1;x//=3
    return a if x==1 else None

def audit(n,j,z):
    k=n-j;g=math.gcd(n,j);alpha=n//g;beta=j//g;gamma=k//g;a=power3(alpha)
    assert a is not None and a>=1 and j>=7 and 2*j<n
    N=n-1;assert j*k%N==0
    U=j*k//N;assert U==10*g*g*z*z
    delta=gamma-beta;assert delta*delta+40*N*z*z==alpha*alpha
    X=beta-10*g*z*z;Y=gamma-10*g*z*z
    P=10*z*z*(U-1);L=alpha-20*g*z*z;d=math.gcd(X,Y)
    q=[rough(n-r) for r in range(6)]; E2=math.gcd(q[2],U);m0=q[2]//E2
    gate=math.gcd(E2,m0)==1 and (U-1)%(m0*m0)==0
    source2=(j*(j-1)*(j-2))%q[2]==0
    h=10 if a%2==0 else 5
    source_windows=[math.prod(j-r for r in range(k+1))%q[k]==0 for k in range(6)]
    return dict(a=a,n=n,j=j,k=k,g=g,alpha=alpha,beta=beta,gamma=gamma,z=z,delta=delta,
                U=U,X=X,Y=Y,L=L,P=P,d=d,source2_center_gcd=math.gcd(q[2],j-1),
                source2_gate=gate,source2_window=source2,E2=E2,menu_center=m0,
                unit_x=X//d,unit_y=Y//d,unit_product=P//(d*d),unit_sum=L//d,
                X_square=issq(X),Y_square=issq(Y),X_three_square=X%3==0 and issq(X//3),Y_three_square=Y%3==0 and issq(Y//3),
                gap_left_X=(beta-1)**2,alpha_X=alpha*X,gap_right_X=beta**2,
                gap_left_Y=(gamma-1)**2,alpha_Y=alpha*Y,gap_right_Y=gamma**2,
                even_g_minimum=h if g%2==0 else None,
                upper_bound_num=20*g*z*z*h+P+h*h,upper_bound_den=h,
                all_q5_near=((j-1)*(j-4))%q[5]==0,
                source_windows=source_windows,
                E4=math.gcd(q[4],j*k),C=math.gcd(q[4],j-2),
                provenance='previous-round exact input; regression only',
                current_B_RES10_model=False)

def source2_grid(limit):
    rows=[];pairs=0;selected=0;full=0
    for n in range(30,limit+1,30):
        if n%4!=2:continue
        for j in range(8,n//2+1,2):
            pairs+=1;g=math.gcd(n,j);N=n-1;jk=j*(n-j)
            if jk%N:continue
            U=jk//N
            if U%(g*g):continue
            alpha=n//g
            if alpha%2!=1:continue
            X=(j-U)//g;Y=(n-j-U)//g
            assert X>0 and Y>0
            q2=rough(n-2);e2=math.gcd(q2,U);m=q2//e2
            gate=math.gcd(e2,m)==1 and (U-1)%(m*m)==0
            win=(j*(j-1)*(j-2))%q2==0
            assert gate==win
            d=math.gcd(X,Y);assert d==math.gcd(q2,j-1)
            selected+=1;full+=win
            rows.append(dict(n=n,j=j,g=g,U=U,q2=q2,E2=e2,m=m,d=d,gate=gate,window=win))
    return dict(limit_n=limit,domain='n multiple 30, n=2 mod4, even j>=8; N|jk and g^2|U; not assumed canonical norm',
                legal_pairs_tested=pairs,selected=selected,full_source2=full,rows=rows,
                proof_role='finite arithmetic regression; no frontier coverage')

def cores():
    classes=(1,2,3,5,6,10,15,30);table=[];count={}
    for D in classes:
        v=0
        for x in range(25):
            for y in range(25):
                for z in range(25):
                    if (x*x-D*y*y-10*z*z)%25==0 and (x%5 or y%5 or z%5):v+=1
        count[str(D)]=v
    for parity in (0,1):
        for d in classes:
            D=d*(3 if parity else 1)
            if D%9==0:D//=9
            reason=('real_adjacent_square_gap' if D==1 else
                    'inert_5_even_valuation' if D in (2,3) else
                    'ramified_5_descent' if D in (5,30) else
                    'not_excluded_by_this_test')
            table.append(dict(a_parity=parity,squarefree_d=d,normalized_D=D,excluded=reason!='not_excluded_by_this_test',reason=reason))
    minimum=[]
    for parity in (0,1):
        h=10 if parity==0 else 5
        for X in range(1,h):
            d=X
            for p in (2,3,5,7):
                while d%(p*p)==0:d//=p*p
            normalized=d*(3 if parity else 1)
            if normalized%9==0:normalized//=9
            base_forbidden=(normalized==1 or (normalized%5!=0 and pow(normalized%5,2,5)==4) or (normalized%5==0 and pow((normalized//5)%5,2,5)==1))
            residues=[z for z in range(8) if (X*X-pow(3,parity,8)*X-10*z*z)%8==0]
            assert base_forbidden or not residues
            minimum.append(dict(a_parity=parity,X=X,squarefree_d=d,core_forbidden=base_forbidden,possible_z_mod8=residues))
    return dict(classes=table,primitive_mod25_counts=count,minimum_tests=minimum,
                minimum_even_g={'a_even':10,'a_odd':5},
                scope='Necessary core conditions only; allowed does not assert global representability')

def rational_family():
    rows=[]
    for h in (0,1,2,3,8,32):
        x=3**h;w=x**4;den=10*w+1053
        z=Fraction(23*w,den);delta=Fraction(w*(1063-10*w),den)
        assert delta*delta+40*(2*w-1)*z*z==w*w
        rows.append(dict(h=h,x=x,alpha=w,n=2*w,g_parameter=2,
                         z=[z.numerator,z.denominator],delta=[delta.numerator,delta.denominator],
                         z_integer=z.denominator==1,norm_exact=True,
                         current_menu=False,ordinary_canonical_input=(h==1)))
    return dict(formulas={'alpha':'x^4','n':'2*x^4','z':'23*x^4/(10*x^4+1053)',
                         'delta':'x^4*(1063-10*x^4)/(10*x^4+1053)'},
                rows=rows,ordinary_z_on_x_powers_3=[1],
                scope='Global rational norm family, NOT an inverse menu or current weak model; only h=1 gives ordinary z',
                polynomial_barrier=dict(base_constant=40,irrational_square_root_witness='v5(40)=1 odd',
                                        assumptions=['alpha=lambda*x^d, d>=1','g,delta,z in Q[x]','g eventually positive','z not identically zero'],
                                        conclusion='no polynomial norm identity',
                                        pointwise_deletion=False))

def identities():
    # Coefficient lists are recorded in u=x^4 for the rational family.
    # (1063-10u)^2 +40(2u-1)*23^2 == (1053+10u)^2.
    return dict(rational_family_in_u=dict(left=[1108809,21060,100],right=[1108809,21060,100]),
                global_factor_equations=[
                    'X+Y=alpha-20*g*z^2',
                    'X*Y-10*z^2*(10*g^2*z^2-1)=beta*(alpha-beta)-10*(g*alpha-1)*z^2',
                    'beta^2-alpha*X-10*z^2=-(beta*(alpha-beta)-10*(g*alpha-1)*z^2)',
                    'g^2*X*Y=U*(U-1)',
                    '(j-1)*(n-j-1)=(n-1)*(U-1)'],
                not_additional_independent_equations=True)

def vp(x,p):
    if x==0:raise ValueError("valuation of zero")
    x=abs(x);v=0
    while x%p==0:v+=1;x//=p
    return v

def bin_v(n,j,p):
    v=0;P=p
    while P<=n:
        v+=n//P-j//P-(n-j)//P;P*=p
    return v

def factor_small(x):
    out=[];p=2
    while p*p<=x:
        if x%p==0:
            e=0
            while x%p==0:x//=p;e+=1
            out.append([p,e])
        p=3 if p==2 else p+2
    if x>1:out.append([x,1])
    return out

def source3_family():
    rows=[]
    for g,z in [(90,1),(90,2),(90,3),(180,1),(270,1)]:
        beta=10*g*z*z+1;alpha=beta*beta-10*z*z
        n=g*alpha;j=g*beta;k=n-j;U=10*g*g*z*z
        q3=rough(n-3);F=(g-1)*(g-3)
        assert (n-3)//3==q3 and math.gcd(n,j)==g and j*k==(n-1)*U and q3>F
        fs=factor_small(q3)
        p,e=next((p,e) for p,e in fs if F%(p**e))
        rows.append(dict(g=g,z=z,n=n,j=j,alpha=alpha,beta=beta,X=1,
                         q3=q3,F=F,factorization=fs,witness_p=p,source_e=e,
                         j_mod_source=j%(p**e),v_binomial6=bin_v(n,6,p),v_binomialj=bin_v(n,j,p),
                         actual_alpha_power3=power3(alpha) is not None,
                         all_q5_near=((j-1)*(j-4))%rough(n-5)==0,
                         current_B_RES10_model=False))
    n,j=76672,26775;U=j*(n-j)//(n-1);q2=rough(n-2)
    boundary=dict(n=n,j=j,g=math.gcd(n,j),U=U,X=j-U,Y=n-j-U,
                  full_source2=(j*(j-1)*(j-2))%q2==0,d=math.gcd(j-U,n-j-U),
                  M2=math.gcd(q2,j-1),q2=q2,alpha_power3=False,
                  reason='Outside odd pure-three alpha contract; d contains an extra factor 2')
    return dict(quantified_family='g is a positive multiple of 90, z>=1, beta=10gz^2+1, alpha=beta^2-10z^2, n=g*alpha, j=g*beta',
                proof_role='Original-pair consumer regression, not current models; no pure-three alpha assertion',
                rows=rows,scope_boundary=boundary,
                history_net_deletion=0)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);args=ap.parse_args()
    root=Path(__file__).resolve().parents[1];out=Path(args.out)
    prefix=json.loads((root/'sources'/'R2_prefix_summary.json').read_text())
    models=json.loads((root/'sources'/'R3_canonical_contact_models.json').read_text())
    old=[prefix['candidate_rows'][0]]+models
    actual=[audit(r['n'],r['j'],r['z']) for r in old]
    grid=source2_grid(6000)
    data={'identities.json':identities(),'square_core_obstructions.json':cores(),
          'canonical_factor_pairs.json':actual,'source2_exact_gate.json':grid,
          'polynomial_and_rational_boundary.json':rational_family(),'source3_tail_consumer.json':source3_family()}
    claims=dict(round=8,R7=[3,4,5,6,7,8,9],certified_history_net_deletion=0,
                B_RES10_closed=False,E4_square_closed=False,global_finite_reduction=False,
                new_current_ordinary_model=False,global_polynomial_obstruction_is_pointwise_deletion=False,
                notation='r0=2Ac<s',archived_regression_inputs=len(actual),source2_test_pairs=grid['legal_pairs_tested'],
                source2_selected=grid['selected'],source2_full=grid['full_source2'],
                source2_gate_is_reformulation=True,old_experiments_repeated=False,Lean=False,repository_access=False)
    data['claims.json']=claims
    for n,o in data.items():dump(out/n,o)
    print(json.dumps({'certificates':len(data),'regressions':len(actual),'source2_pairs':grid['legal_pairs_tested'],
                      'source2_selected':grid['selected'],'source2_full':grid['full_source2'],'status':'PASS'},sort_keys=True))
if __name__=='__main__':main()
