#!/usr/bin/env python3
"""Independent R08 receiver: direct integer binomials, digit carries, Euler inverses,
and a complete bounded-degree polynomial tensor. Does not import the generator.
"""
from __future__ import annotations
import argparse,copy,hashlib,itertools,json,math
from pathlib import Path

def check(x,m):
    if not x:raise ValueError(m)
def canon(x):return (json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n').encode()
def val(n,p):
    check(n>0,'valuation zero/nonpositive')
    a=0
    while n%p==0:a+=1;n//=p
    return a
def cb(n,k,p):
    check(0<=k<=n,'bad binomial')
    return val(math.comb(n,k),p)
def carries(n,k,p):
    x,y=k,n-k;carry=0;total=0
    while x or y or carry:
        carry=int(x%p+y%p+carry>=p);total+=carry;x//=p;y//=p
    return total
def prime(n):
    if n<2:return False
    d=2
    while d*d<=n:
        if n%d==0:return False
        d+=1
    return True
def inv_euler(Q,p,e):return pow(Q,p**(e-1)*(p-1)-1,p**e)

def block(p,e,n,k):
    P=p**e;check(0<=k<=n<P*P,'two block scope')
    n1=n//P;n0=n-P*n1;k1=k//P;k0=k-P*k1;delta=int(k0>n0)
    lower=cb(n0+delta*P,k0,p);upper=cb(n1-delta,k1,p)
    incoming=val(n1,p) if delta else 0
    total=carries(n,k,p)
    check(total==lower+upper+incoming,'direct two-block reconstruction')
    return dict(p=p,exponent=e,P=P,N=n,Y=k,N0=n0,Y0=k0,N1=n1,Y1=k1,
                delta=delta,lower_valuation=lower,upper_valuation=upper,
                incoming_valuation=incoming,total=total)

def generic():
    boxes=[(3,1,9),(3,2,81),(3,3,180),(5,1,25),(5,2,180),(7,1,49),
           (7,2,180),(11,1,121),(17,1,180)]
    d=hashlib.sha256();counts=[0,0];rows=direct=maximum=0
    for p,e,cap in boxes:
        for n in range(cap):
            for k in range(n+1):
                r=block(p,e,n,k);rows+=1;counts[r['delta']]+=1
                d.update((','.join(map(str,[p,e,n,k,r['delta'],r['lower_valuation'],
                    r['upper_valuation'],r['incoming_valuation'],r['total']]))+'\n').encode())
                if n<=48:check(cb(n,k,p)==r['total'],'original integer binomial');direct+=1
                maximum=max(maximum,r['total'])
    return dict(boxes=[list(x) for x in boxes],rows=rows,delta_counts=counts,
       direct_original_binomials=direct,maximum_valuation=maximum,stream_sha256=d.hexdigest(),
       meaning='finite arithmetic regression, not NC counts')

def inverses():
    specs=[(17,1),(41,1),(73,1),(89,1),(97,1),(113,1),(17,3)]
    d=hashlib.sha256();rows=phys=neg=0
    for p,e in specs:
        check(prime(p),'prime base');P=p**e
        for Q in range(1,P):
            if Q%p==0:continue
            u=inv_euler(Q,p,e);H=u*u%P;r=Q*Q%P
            check(Q*Q*H%P==1 and Q*u%P==1,'Euler inverse')
            n0=2*Q*H%P;y0=(Q*Q*((P+1)//2))%P
            delta=int(n0<y0)
            check(y0==(r+(r%2)*P)//2,'half square with parity')
            if P>4*H+2*Q:phys+=1;neg+=delta
            d.update((','.join(map(str,[p,e,Q,H,u,r,n0,y0,delta]))+'\n').encode());rows+=1
    return dict(prime_powers=[list(x) for x in specs],rows=rows,with_size_bound=phys,
       with_size_bound_and_boundary_carry=neg,stream_sha256=d.hexdigest(),
       meaning='complete residue recovery at listed P only; not original core tuples')

def evaluate(poly,x):
    used=set();out=0
    for row in poly:
        check(len(row)==5,'polynomial row')
        powers=tuple(row[:4]);coef=row[4]
        check(powers not in used and all(isinstance(z,int) and 0<=z<=4 for z in powers),'polynomial powers')
        check(isinstance(coef,int) and coef!=0,'coefficient');used.add(powers)
        out+=coef*math.prod(a**b for a,b in zip(x,powers))
    return out

def symbolic(rows):
    names=['size_linear','inverse_exact','half_square','pair_restore_d','j_complement',
           'two_block_bound','h_restore','complement_sum']
    check([r['name'] for r in rows]==names,'identity coverage')
    for r in rows:check(r['degree_box']==[4]*4,'declared degree box')
    count=0
    for h,Q,v,H in itertools.product(range(5),repeat=4):
        P=Q+h*v;d=Q-v;E=P*Q*Q-1-4*v*H*H;L=h*d-4*H-Q
        N=2*Q*H;Y=Q*Q+2*v*H;Z=2*d*H-Q*Q;j=Q*Q*(P+2*H)
        lhs=[P-4*H-2*Q-h*(v-d),P*(d*H-Q*Q)-(Q*Q*H-1),
             2*Y-d*P-Q*Q,(P+4*H)*d-Q*(Q+4*H),j-P*Z-2,
             P*P-16*N,h*Q-P-4*H,N-Y-Z]
        rhs=[L,-E+v*H*L,-v*L,v*L,2*E-2*v*H*L,
             (P-2*Q-4*H)*(P+2*Q+4*H)+4*(Q-2*H)**2,L,0]
        for r,a,b in zip(rows,lhs,rhs):
            check(a==b,'author identity formula mismatch')
            check(evaluate(r['left'],(h,Q,v,H))==a,'left interpolation')
            check(evaluate(r['right'],(h,Q,v,H))==b,'right interpolation')
        count+=1
    return count

def boundary():
    P,Q,H,d,v,h,y,A,B,q=89,3,10,1,2,43,1,2,0,0
    X=P+2*H;Y=Q*Q+2*v*H;n=2*P*Q*H+2;j=Q*Q*X;k=P*Y
    checks={
        'P_and_Q_distinct_odd_primes':prime(P) and prime(Q) and P!=Q,
        'Q_equals_d_plus_v':Q==d+v,'P_equals_Q_plus_hv':P==Q+h*v,
        'hd_equals_4H_plus_Q':h*d==4*H+Q,'original_norm':P*Q*Q-1==4*v*H*H,
        'paired_norm':P*P*Q-1==v*X*X,'Pell_equation':d*d+d+1==3*y*y,
        'balanced_multiplication':v==A*y and A*B==3*(d-1),
        'original_index_sum':j+k==n,'first_source':X*Y==n-1,
        'j_minus_1':j-1==2*H*Y,'k_minus_1':k-1==2*v*H*X,
        'legal_original_pair':4<=j<=n//2,'original_gcd_one':math.gcd(n,j)==1,
        'strict_P_size':P>4*H+2*Q,'P_source_qualifies':carries(n,3,P)==1}
    check(all(checks.values()),'boundary checks')
    # Minimal Q in the stated relaxation: Q=3, even positive v<Q means v=2.
    # The remaining quadratic is (H-10)(H+1)=0; positive solution H=10.
    check(H*H-9*H-10==0 and H==10,'minimal relaxed Q recovery')
    return dict(P=P,Q=Q,H=H,v=v,d=d,h=h,y=y,A=A,B=B,q=q,X=X,Y=Y,
        Z=2*d*H-Q*Q,n=n,j=j,k=k,checks=checks,binomial_terminal=math.comb(60,11),
        terminal=block(P,1,60,49),original_P_valuation=carries(n,j,P),
        other_witness_5_valuation=carries(n,j,5),
        scope_failures=['H is even','B=0 not positive','q=0 not >=6',
                        'n is not 3*2^s','Q=3 is outside the retained entry',
                        'A=2 is not 5616 mod 24570','13-adic entry not satisfied'],
        minimality='smallest possible odd Q>=3 in the relaxed system 0<d<v,Q=d+v,v even; not minimal in the original core')

def power_examples():
    out=[]
    for p,e,Q,d in [(17,3,73,19),(17,3,79,19),(17,5,103,19)]:
        P=p**e;H=inv_euler(Q,p,e)**2%P;N=2*Q*H;Y=(d*P+Q*Q)//2
        check(prime(Q) and P>4*H+2*Q and H%2,'relaxed power model')
        r=block(p,e,N,Y)
        check(r['delta']==0,'boundary-zero model')
        r.update(Q=Q,H=H,d=d,original_linear_residual=d*P-Q*Q-4*(Q-d)*H,
                 actual_core_instance=False)
        check(r['original_linear_residual']!=0,'failed original equation not recorded')
        out.append(r)
    return out

def phases():
    dig=hashlib.sha256();count=0
    for a in range(1,5):
        t=13**a;m=13**(a+1)
        for A0 in range(1,13):
            for u in range(4):
                H=4+13*u;P=1+11*A0*t;Q=1+7*A0*t
                v=A0*t;N=2*Q*H;Y=Q**2+2*v*H;n=2*P*Q*H+2
                n1=N//P;n0=N-P*n1;y1=Y//P;y0=Y-P*y1
                eq=[N-(2*H+4*A0*t),Y-(1+9*A0*t),n-(2*H+2+A0*t),
                    n1+n0-(n-2+(3-11*n1)*A0*t),
                    y1+y0-(1+(9-11*y1)*A0*t)]
                check(all(z%m==0 for z in eq),'13 unit transport')
                dig.update((','.join(map(str,[a,A0,u,*[z%m for z in eq]]))+'\n').encode());count+=1
    return dict(rows=count,stream_sha256=dig.hexdigest(),
       scope='finite formal congruence checks only; no global core/prime-power recovery',
       coefficients=dict(N=4,Y=9,n=1,N_block=3,Y_block=9,P_unit=11),
       gives_ordering_of_residues=False)


def make_expected():
    contract=dict(block_base='P=piP^eP, not a new prime',strict_size_multiplier=16,
           maximum_unstripped_digit_layers='2*eP-1',prime_source_exact_range=[0,1],
           all_layers_of_H_source_still='e_l+b_l stripped, then all remaining layers',
           no_new_global_min_A=True,all_entry_closed=False,historical_numeric_net_gain=0)
    return dict(schema='B699-D-R08-finite-certificate-v1',contract=contract,
       generic=generic(),phase_transport=phases(),inverse=inverses(),relaxed_boundary=boundary(),
       power_examples=power_examples(),incoming_example=block(17,3,17*17**3+1,17**3+2),
       forced_pair_recovery=dict(P=89,Q=3,H=10,h=43,d=1,h_remainder=0,d_remainder=0,
          H_interval=[1,22],unique_H=True,original_norm_zero=True,current_entry_pass=False))

def compare(obj,expected):
    check(set(obj)==set(expected)|{'identities'},'certificate sections')
    for k,x in expected.items():check(obj[k]==x,'certificate mismatch: '+k)
    symbolic(obj['identities'])

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True)
    ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    obj=json.loads(Path(a.certificate).read_text());expected=make_expected();compare(obj,expected)
    negative=[]
    mutations=[
      ('claim_prime_block_zero_always',lambda c:c['contract'].update(prime_source_exact_range=[0])),
      ('drop_original_shared_b',lambda c:c['contract'].update(all_layers_of_H_source_still='e_l only')),
      ('wrong_size_constant',lambda c:c['contract'].update(strict_size_multiplier=32)),
      ('false_entry_closure',lambda c:c['contract'].update(all_entry_closed=True)),
      ('erase_incoming_carry',lambda c:c['incoming_example'].update(incoming_valuation=0)),
      ('erase_internal_lower_carry',lambda c:c['power_examples'][0].update(lower_valuation=0)),
      ('erase_internal_upper_carry',lambda c:c['power_examples'][1].update(upper_valuation=0)),
      ('boundary_claims_original_core',lambda c:c['relaxed_boundary'].update(scope_failures=[])),
      ('force_prime_witness_89',lambda c:c['relaxed_boundary'].update(original_P_valuation=1)),
      ('change_unique_inverse',lambda c:c['forced_pair_recovery'].update(H=11)),
      ('fake_generic_count',lambda c:c['generic'].update(rows=c['generic']['rows']+1)),
      ('polynomial_coefficient',lambda c:c['identities'][1]['left'][0].__setitem__(4,c['identities'][1]['left'][0][4]+1)),
      ('missing_prime_power_layer',lambda c:c['inverse']['prime_powers'].pop()),
      ('drop_nonzero_original_error',lambda c:c['power_examples'][0].update(original_linear_residual=0)),
      ('turn_13_units_into_order',lambda c:c['phase_transport'].update(gives_ordering_of_residues=True))]
    if a.negative_tests:
        for name,mutate in mutations:
            bad=copy.deepcopy(obj);mutate(bad)
            try:compare(bad,expected)
            except (ValueError,AssertionError,IndexError):negative.append(dict(name=name,status='REJECTED'))
            else:raise ValueError('bad certificate accepted '+name)
    receipt=dict(schema='B699-D-R08-receiver-v1',status='PASS',identities=8,
       full_tensor_points=625,generic_rows=expected['generic']['rows'],
       direct_original_binomials=expected['generic']['direct_original_binomials'],
       direct_child_binomial_formula_checked_for_all_generic_rows=True,
       inverse_rows=expected['inverse']['rows'],phase_transport_rows=expected['phase_transport']['rows'],power_models=3,
       all_models_are_original_core_instances=False,negative_tests=negative,
       whole_entry_closed=False,historical_numeric_net_gain=0,
       Lean_executed=False,parent_mathematics_executed_by_receiver=False,
       external_BL_reproved=False,q6_executed=False)
    out=Path(a.output);out.parent.mkdir(parents=True,exist_ok=True);out.write_bytes(canon(receipt))
    print(json.dumps(dict(status='PASS',generic_rows=receipt['generic_rows'],
          negative_tests_rejected=len(negative))))
if __name__=='__main__':main()
