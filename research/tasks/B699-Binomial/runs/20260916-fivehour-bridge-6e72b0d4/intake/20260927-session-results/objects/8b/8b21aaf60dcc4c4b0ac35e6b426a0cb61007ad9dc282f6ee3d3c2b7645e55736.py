#!/usr/bin/env python3
"""Separated acceptance; does not import discovery code. Standard library only."""
from __future__ import annotations
import argparse,json,math
from fractions import Fraction
from pathlib import Path

def require(ok,msg):
    if not ok:raise ValueError(msg)
def rough(x):
    return x//math.prod(p**val(x,p) for p in (2,3,5))
def val(x,p):
    require(x!=0,'zero valuation');x=abs(x);v=0
    while x%p==0:x//=p;v+=1
    return v
def bval(n,j,p):
    def fv(x):
        v=0
        while x:x//=p;v+=x
        return v
    return fv(n)-fv(j)-fv(n-j)
def prime(p):
    return p>=2 and all(p%d for d in range(2,math.isqrt(p)+1))
def factors(x):
    out=[]
    for p in range(2,math.isqrt(x)+1):
        if x%p==0:
            e=0
            while x%p==0:e+=1;x//=p
            out.append((p,e))
        if x==1:break
    if x>1:out.append((x,1))
    return out
def square(x):return x>=0 and math.isqrt(x)**2==x

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--cert-dir',required=True);args=ap.parse_args();cdir=Path(args.cert_dir)
    load=lambda name:json.loads((cdir/name).read_text())
    claim=load('claims.json')
    require(claim['certified_history_net_deletion']==0 and claim['R7']==[3,4,5,6,7,8,9],'frontier scope changed')
    for k in ['B_RES10_closed','E4_square_closed','global_finite_reduction','new_current_ordinary_model','global_polynomial_obstruction_is_pointwise_deletion','old_experiments_repeated','Lean','repository_access']:
        require(claim[k] is False,'false scope: '+k)
    require(claim['notation']=='r0=2Ac<s','inverse equality changed')
    require(claim['source2_gate_is_reformulation'] is True,'source2 independence overclaim')
    I=load('identities.json');require(I['not_additional_independent_equations'] is True,'identity independence overclaim')
    # Multiplication, rather than sampling the identity.
    def pmul(a,b):
        o=[0]*(len(a)+len(b)-1)
        for i,x in enumerate(a):
            for j,y in enumerate(b):o[i+j]+=x*y
        return o
    first=pmul([1063,-10],[1063,-10]);tail=[-40*23**2,80*23**2,0]
    left=[x+y for x,y in zip(first,tail)];right=pmul([1053,10],[1053,10])
    require(left==right==I['rational_family_in_u']['left']==I['rational_family_in_u']['right'],'rational polynomial identity')
    # Conditional identities at a deterministic integer grid; proof is in PROOFS.
    for a in range(2,17):
      for b in range(1,a):
       for g in (1,2,10):
        for z in (1,2,7):
         X=b-10*g*z*z;Y=a-b-10*g*z*z
         residue=b*(a-b)-10*(g*a-1)*z*z
         require(X*Y-10*z*z*(10*g*g*z*z-1)==residue,'factor identity')
         require(b*b-a*X-10*z*z==-residue,'gap identity')
    core=load('square_core_obstructions.json')
    allowed={0:{6,10,15},1:{2,5,30}}
    for row in core['classes']:
        a,d=row['a_parity'],row['squarefree_d'];D=d*(3 if a else 1)
        if D%9==0:D//=9
        require(row['normalized_D']==D,'core normalization')
        require(row['excluded']==(d not in allowed[a]),'core class over/under exclusion')
    for Ds,n in core['primitive_mod25_counts'].items():
        D=int(Ds);total=0
        # Fix y,z and enumerate solutions of x^2, independent loop ordering.
        roots={r:[x for x in range(25) if x*x%25==r] for r in range(25)}
        for z in range(25):
            for y in range(25):
                total+=sum(bool(x%5 or y%5 or z%5) for x in roots[(D*y*y+10*z*z)%25])
        require(n==total,'mod25 primitive count')
        if D in (2,3,5,30):require(total==0,'5-adic obstruction sanity')
    for row in core['minimum_tests']:
        X,a=row['X'],row['a_parity'];r=[z for z in range(8) if ((X+20*z*z)**2-pow(3,a,8)*X-10*z*z)%8==0]
        require(r==row['possible_z_mod8'],'even-g parity check')
        d=row['squarefree_d'];D=d*(3 if a else 1)
        if D%9==0:D//=9
        impossible=(D==1 or (D%5!=0 and (D%5 not in (1,4))) or (D%5==0 and ((D//5)%5 in (1,4))))
        require(impossible==row['core_forbidden'] and (impossible or not r),'small X exclusion')
    require(core['minimum_even_g']=={'a_even':10,'a_odd':5},'minimum altered')
    actual=load('canonical_factor_pairs.json')
    require(len(actual)==4,'archived regression count')
    for v in actual:
        n,j,z=v['n'],v['j'],v['z'];g=math.gcd(n,j);a=v['a'];alpha=3**a;N=n-1;k=n-j
        require(n==g*alpha and j*k==N*10*g*g*z*z,'ordinary norm source')
        beta=j//g;gamma=k//g
        X_num=beta*(j-1);Y_num=gamma*(k-1)
        require(X_num%N==Y_num%N==0,'positive quotient integrality')
        X,Y=X_num//N,Y_num//N
        require((X,Y)==(v['X'],v['Y']),'factor changed')
        d=math.gcd(n-2,j-1);q2=rough(n-2)
        require(d==math.gcd(X,Y)==math.gcd(q2,j-1)==v['d']==v['source2_center_gcd'],'center gcd')
        U=j*k//N;P=X*Y;L=X+Y
        require(U==v['U'] and P==v['P'] and L==v['L'],'product/sum changed')
        require(P==10*z*z*(U-1) and L==alpha-20*g*z*z,'factor target')
        require((X//d,Y//d)==(v['unit_x'],v['unit_y']) and math.gcd(X//d,Y//d)==1,'unitary partition')
        require(v['unit_product']==P//d**2 and v['unit_sum']==L//d,'normalized sum/product')
        for h,b,side in [(X,beta,'X'),(Y,gamma,'Y')]:
            require((b-1)**2<alpha*h<b*b,'strict real gap')
            require(v['gap_left_'+side]==(b-1)**2 and v['alpha_'+side]==alpha*h and v['gap_right_'+side]==b*b,'gap endpoints')
            require(not square(h) and not(h%3==0 and square(h//3)),'forbidden full square tail')
            require(v[side+'_square'] is False and v[side+'_three_square'] is False,'tail flag')
        h0=10 if a%2==0 else 5
        if g%2==0:require(min(X,Y)>=h0 and v['even_g_minimum']==h0,'lower bound')
        require(alpha*h0<=20*g*z*z*h0+P+h0*h0==v['upper_bound_num'],'relative bound')
        require(v['upper_bound_den']==h0,'bound denominator')
        q=[rough(n-r) for r in range(6)]
        windows=[math.prod(j-b for b in range(r+1))%q[r]==0 for r in range(6)]
        near=((j-1)*(j-4))%q[5]==0
        require(windows==v['source_windows'] and near==v['all_q5_near'],'source contract')
        e2=math.gcd(q2,U);m=q2//e2;gate=math.gcd(e2,m)==1 and (U-1)%m**2==0
        require(gate==windows[2]==v['source2_gate']==v['source2_window'],'source2 gate')
        require(v['E2']==e2 and v['menu_center']==m,'source2 complete block')
        require(v['current_B_RES10_model'] is False and not near,'archived input scope')
    grid=load('source2_exact_gate.json');generated=[];pairs=0
    for j in range(8,grid['limit_n']//2+1,2):
        for n in range(30,grid['limit_n']+1,30):
            if n%4!=2 or j>n//2:continue
            pairs+=1;g=math.gcd(n,j);N=n-1;k=n-j
            if j*k%N:continue
            U=j*k//N
            if U%g**2 or (n//g)%2!=1:continue
            q2=rough(n-2);fs=factors(q2)
            gate=all(U%p**e==0 or (U-1)%p**(2*e)==0 for p,e in fs)
            window=all(j%p**e in (0,1,2) for p,e in fs)
            require(gate==window,'prime-power gate')
            d=math.gcd((j-U)//g,(k-U)//g);require(d==math.gcd(q2,j-1),'broad gcd check')
            e2=math.gcd(q2,U);m=q2//e2
            generated.append(dict(n=n,j=j,g=g,U=U,q2=q2,E2=e2,m=m,d=d,gate=gate,window=window))
    generated.sort(key=lambda r:(r['n'],r['j']))
    require(generated==grid['rows'] and pairs==grid['legal_pairs_tested'],'bounded source2 regression')
    require(len(generated)==grid['selected']==claim['source2_selected'],'selected count')
    require(sum(r['window'] for r in generated)==grid['full_source2']==claim['source2_full'],'full count')
    require(pairs==claim['source2_test_pairs'],'pairs count')
    rb=load('polynomial_and_rational_boundary.json')
    require(rb['ordinary_z_on_x_powers_3']==[1],'rational integer restriction')
    require(rb['polynomial_barrier']['pointwise_deletion'] is False,'polynomial obstruction overclaim')
    for row in rb['rows']:
        h=row['h'];x=3**h;alpha=x**4;n=2*alpha;z=Fraction(*row['z']);delta=Fraction(*row['delta'])
        # Rational circle parameter t=1/92, not the simplified discovery expressions.
        D=40*(n-1);zz=Fraction(184*alpha,92**2+D);dd=Fraction(alpha*(92**2-D),92**2+D)
        require(z==zz and delta==dd and delta*delta+D*z*z==alpha*alpha,'global rational norm')
        require(row['z_integer']==(h==1) and row['ordinary_canonical_input']==(h==1),'rational/integer distinction')
        require(row['current_menu'] is False,'rational family promoted to menu')
        if h>=2:require(2<z<Fraction(23,10),'infinite interval certificate')
    cf=load('source3_tail_consumer.json');require(cf['history_net_deletion']==0,'consumer novelty overclaim')
    for row in cf['rows']:
        g,z=row['g'],row['z'];beta=10*g*z*z+1;alpha=beta*beta-10*z*z;n=g*alpha;j=g*beta;k=n-j
        require(n==row['n'] and j==row['j'] and math.gcd(n,j)==g,'consumer real input')
        require(j*k==(n-1)*10*g*g*z*z and j>=7 and j*2<n,'norm/legality')
        q3=(n-3)//3;F=(g-1)*(g-3);require(q3==rough(n-3)==row['q3'] and q3>F==row['F'],'tail size trigger')
        require(math.prod(p**e for p,e in row['factorization'])==q3,'factor reconstruction')
        require(all(prime(p) for p,e in row['factorization']),'prime certification')
        p,e=row['witness_p'],row['source_e'];require(prime(p) and val(n-3,p)==e and F%p**e!=0,'witness full exponent')
        require(j%p**e==row['j_mod_source'] and j%p**e>3,'actual window failure')
        require(bval(n,6,p)==row['v_binomial6'] and bval(n,j,p)==row['v_binomialj']>0,'same-prime return')
        require(row['actual_alpha_power3'] is False and row['current_B_RES10_model'] is False,'broad family scope')
    v=cf['scope_boundary'];require(v['d']==22 and v['M2']==11 and v['alpha_power3'] is False,'coarse/full gcd boundary')
    print(json.dumps({'status':'PASS','certificates':7,'archived_regressions':len(actual),'source2_pairs':pairs,
                      'source3_original_pairs':len(cf['rows']),'imports_discover':False},sort_keys=True))
if __name__=='__main__':main()
