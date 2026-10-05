#!/usr/bin/env python3
"""Build finite obligations for D-R03. Stdlib only; outputs only to the requested directory.
The all-parameter proofs are in PROOFS.md; samples do not replace those proofs.
"""
from __future__ import annotations
import argparse, hashlib, json, math
from pathlib import Path


def dump(x):
    return json.dumps(x, ensure_ascii=False, sort_keys=True, indent=2)+'\n'

def vp(n,p):
    if n<=0: raise ValueError('valuation requires a positive integer')
    k=0
    while n%p==0: n//=p; k+=1
    return k

def pell(q):
    d=y=1
    for _ in range(q):
        d,y=18817*d+32592*y+9408,10864*d+18817*y+5432
    return d,y

def local_rows(ell,q,A):
    d,y=pell(q); d%=ell; y%=ell; A%=ell
    if math.gcd(A,ell)!=1 or math.gcd(d,ell)!=1:
        raise ValueError('This table uses only verified unit A,d; zero P,Q,H remain allowed')
    B=3*(d-1)*pow(A,-1,ell)%ell
    v=A*y%ell; Q=(d+v)%ell
    out=[]
    for H in range(ell):
        h=(4*H+Q)*pow(d,-1,ell)%ell
        P=(Q+h*v)%ell
        E=(4*v*H*H-P*Q*Q+1)%ell
        n=(2*P*Q*H+2)%ell
        Z=(2*d*H-Q*Q)%ell
        S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%ell
        F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%ell
        N=(4*v*H**3+H+Q)%ell
        if E==0 and F==0 and S==Z*Z%ell and 2*N%ell==n*Q%ell:
            out.append(dict(ell=ell,q_mod_period=q,A=A,d=d,y=y,B=B,v=v,H=H,h=h,P=P,Q=Q,
                            E=E,F=F,N=N,n=n,Z=Z,S=S))
    return out

# Sparse integer polynomials in named variables, no external CAS.
def pc(x): return {():x} if x else {}
def pv(x): return {((x,1),):1}
def padd(a,b):
    z=dict(a)
    for m,c in b.items():
        z[m]=z.get(m,0)+c
        if z[m]==0: del z[m]
    return z

def pscale(a,k):return {m:c*k for m,c in a.items() if c*k}
def pmul(a,b):
    z={}
    for ma,ca in a.items():
        for mb,cb in b.items():
            d=dict(ma)
            for n,e in mb:d[n]=d.get(n,0)+e
            m=tuple(sorted(d.items()));z[m]=z.get(m,0)+ca*cb
    return {m:c for m,c in z.items() if c}
def ppow(a,n):
    z=pc(1)
    for _ in range(n):z=pmul(z,a)
    return z

def psub(a,b):return padd(a,pscale(b,-1))
def serial(a):return [{'monomial':dict(m),'coefficient':c} for m,c in sorted(a.items())]

def identities():
    P,Q,v,nu=[pv(x) for x in ('P','Q','v','nu')]
    E=padd(psub(pmul(v,ppow(nu,2)),pmul(P,ppow(Q,2))),pc(1))
    R=psub(psub(pmul(P,psub(Q,v)),ppow(Q,2)),pscale(pmul(v,nu),2))
    n=padd(pmul(pmul(P,Q),nu),pc(2)); nm1=psub(n,pc(1))
    U=padd(P,nu); V=padd(ppow(Q,2),pmul(v,nu))
    j=pmul(U,ppow(Q,2)); k=pmul(V,P)
    rows=[]
    def add(name,lhs,rhs):
        if lhs!=rhs:raise ArithmeticError(name)
        rows.append({'name':name,'lhs':serial(lhs),'rhs':serial(rhs)})
    add('original_j_plus_k',psub(padd(j,k),n),psub(pscale(E,-2),pmul(nu,R)))
    add('original_first_window_factorization',psub(pmul(U,V),nm1),psub(pscale(E,-1),pmul(nu,R)))
    add('original_square_class_transfer',psub(pmul(nm1,pmul(j,k)),pmul(P,ppow(pmul(nm1,Q),2))),
        pscale(pmul(pmul(pmul(P,ppow(Q,2)),nm1),padd(E,pmul(nu,R))),-1))
    A,B,d,y,h=[pv(x) for x in ('A','B','d','y','h')]
    K=psub(pmul(A,B),pscale(psub(d,pc(1)),3))
    qexpr=padd(d,pmul(A,y)); pexpr=padd(qexpr,pmul(h,pmul(A,y)))
    add('Q_minus_one_full_quotient',psub(pscale(psub(qexpr,pc(1)),3),pmul(A,padd(B,pscale(y,3)))),pscale(K,-1))
    add('P_minus_one_full_quotient',psub(pscale(psub(pexpr,pc(1)),3),pmul(A,padd(B,pscale(pmul(padd(h,pc(1)),y),3)))),pscale(K,-1))
    D,c,b,a=[pv(x) for x in ('D','c','b','a')]
    for eps in [-1,1]:
        jj=padd(pmul(b,D),pscale(a,eps)); nn=pscale(pmul(c,D),2)
        lhs=psub(pmul(jj,psub(nn,jj)),pmul(ppow(a,2),psub(nn,pc(1))))
        inner=psub(padd(pmul(pmul(b,psub(pscale(c,2),b)),D),pscale(pmul(psub(c,b),a),2*eps)),pscale(pmul(c,ppow(a,2)),2))
        add('square_root_divisor_epsilon_'+str(eps),lhs,pmul(D,inner))
    return rows

def small_divisors(N,bound):
    rem=N; fac=[]
    for p in range(2,bound+1):
        if rem%p:continue
        e=0
        while rem%p==0: rem//=p;e+=1
        fac.append([p,e])
    divs=[1]
    for p,e in fac:
        if p in (2,3,13):continue
        old=divs[:];pw=1
        for _ in range(e):
            pw*=p
            if pw>bound:break
            divs += [x*pw for x in old if x*pw<=bound]
    return {'factors_extracted_up_to_bound':fac,'unfactored_remainder_with_no_small_prime_factor':rem,
            'coprime_78_divisors_up_to_bound':sorted(divs)}

def terminal():
    q=6; d,y=pell(q); N=3*(d-1);bound=q**6
    counts=[];rows=[]
    for r in (1,2,3):
        C=2**r*27*13;screened=0
        for G in range(1,bound+1):
            if math.gcd(G,78)!=1:continue
            A=C*G
            if A%5!=1 or A%7 not in (2,4):continue
            screened+=1
            if N%A:continue
            B=N//A; A0=A//13
            expected=(-A0 if A%7==2 else 6*A0)%13
            rows.append({'v2_A':r,'A':A,'G':G,'B':B,'A0':A0,'A_mod_7':A%7,
                         'normalized_q_mod_13':6,'required_normalized_q_mod_13':expected,
                         'true_13_unit_pass':expected==6,'old_y_bound_pass':y<2**17*A**3,
                         'y_minus_2pow17_Acube':y-2**17*A**3})
        counts.append({'v2_A':r,'C':C,'raw_G_candidates':bound,'coprime_and_residue_candidates':screened})
    return {'q':q,'d':d,'y':y,'N_for_A_divisibility':N,'G_bound':bound,
            'valuation_superset_v2_A':[1,2,3],'v3_A':3,'v13_A':1,
            'counts':counts,'complete_divisibility_survivors':rows,
            'survivors_after_true_13_unit':sum(x['true_13_unit_pass'] for x in rows),
            'divisor_lattice_metadata':small_divisors(N,bound)}

def make():
    lemma=[]
    for c in (1,3):
        for b in range(1,c+1):
            K=b*(2*c-b)
            aa=[a for a in range(1,K+1) if K%a==0 and a%2 and (c!=3 or a%3)]
            lemma.append({'c':c,'b':b,'dividend':K,'admissible_odd_a':aa})
    rows5=[{'q_mod_3':q,'A_mod_5':A,'roots':local_rows(5,q,A)} for q in (0,2) for A in (1,4)]
    rows7=[{'A_mod_7':A,'roots':local_rows(7,0,A)} for A in (2,4)]
    exp7=[{'base_mod_7':r,'exponent_mod_6':f%6,'Q_mod_7':pow(r,f,7)}
          for r in range(1,7) for f in range(1,7) if pow(r,f,7) in (3,5)]
    exp13=[{'base_mod_13':r,'exponent_mod_12':f,'Q_mod_13':1}
           for r in range(1,13) for f in (1,5,7,11) if pow(r,f,13)==1]
    pexp13=[{'base_mod_13':p,'exponent_mod_12':e}
            for p in range(1,13) for e in range(1,12,2) if pow(p,e,13)==1]
    regs=[]
    for q in range(1,65):
        d,y=pell(q)
        regs.append({'q':q,'v2_3dminus3':vp(3*(d-1),2),'v3_3dminus3':vp(3*(d-1),3),
                     'd_mod_4':d%4,'y_mod_4':y%4})
    coeff=[]
    for am7,B,H in [(2,5,4),(4,9,1)]:
        h=(4*H+1)%13
        coeff.append({'A_mod_7':am7,'q_mod_3':0,'d_mod_13':1,'y_mod_13':1,'B_mod_13':B,
                      'H_mod_13':H,'h_mod_13':h,'P_mod_13':1,'Q_mod_13':1,
                      'Q_minus_one_over_A_mod_13':(B+3)*pow(3,-1,13)%13,
                      'P_minus_one_over_A_mod_13':(B+3*(h+1))*pow(3,-1,13)%13,
                      'normalized_q_over_A0_mod_13':12 if am7==2 else 6})
    lift=[]
    for u in (1,2,3):
        for t in (0,1,2):
            for z in (1,2,5):
                for m in (1,5):
                    a=u+t; base=1+13**u*z;exponent=13**t*m;mod=13**(a+1)
                    residue=(pow(base,exponent,mod)-1)%mod
                    lift.append({'base':base,'exponent':exponent,'u':u,'t':t,'z':z,'m':m,'a':a,
                                 'residue_mod_13pow_a_plus1':residue,'unit':residue//13**a})
    term=terminal()
    result={'schema':'B699-D-R03-certificate-v1',
      'scope':'adopted same original n,j balanced canonical core; not a complete NC3 characterization',
      'square_root_divisor_cases':lemma,'mod5_factor_placement':rows5,'mod7_complete_Q':rows7,
      'complete_Q_exponent_table_7':exp7,'complete_Q_base_table_13':exp13,
      'odd_P_base_table_13':pexp13,'symbolic_identities':identities(),
      'valuation_regressions_not_uniform_proofs':regs,'full_source_13_units':coeff,
      'binomial_lift_examples_not_uniform_proofs':lift,
      'cofactor6_tail':{'q_start':9,'cofactor_degree':6,'smooth_part_factor':468,'denominator_power':21,
                       'base_numerator':37,'base_denominator':10,
                       'base_strict_difference':37**73-2**19*468**3*9**21*10**73,
                       'monotone_strict_difference':37**8*9**21-10**29},
      'cofactor6_terminal':term,
      'boundary_fixtures':{'composite_P':65,'composite_Q':1795,
                          'note':'These violate the complete-prime-power hypothesis; not original inputs'},
      'parent_entry':{'A_modulus':8190,'A_residue':5616,'old_labels':[[0,3,6],[2,3,6]],
                      'new_q_labels':[[0,3,6]],'refined_A_modulus':24570,'refined_A_residue':5616,
                      'projection_not_actual_NC3_count':True}}
    return result

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,required=True);args=ap.parse_args()
    x=make();args.output_dir.mkdir(parents=True,exist_ok=True)
    (args.output_dir/'certificate.json').write_text(dump(x),encoding='utf-8')
    summary={'status':'PASS','symbolic_identities':len(x['symbolic_identities']),
      'mod5_roots':sum(len(r['roots']) for r in x['mod5_factor_placement']),
      'mod7_roots':sum(len(r['roots']) for r in x['mod7_complete_Q']),
      'terminal_raw_grid':sum(r['raw_G_candidates'] for r in x['cofactor6_terminal']['counts']),
      'terminal_residue_screened':sum(r['coprime_and_residue_candidates'] for r in x['cofactor6_terminal']['counts']),
      'terminal_exact_divisibility_survivors':len(x['cofactor6_terminal']['complete_divisibility_survivors']),
      'terminal_full_13_survivors':x['cofactor6_terminal']['survivors_after_true_13_unit'],
      'historical_net_increment_certified':0,'historical_net_status':'not audited',
      'new_global_minimum_A':None,'actual_NC3_inputs_counted':False}
    (args.output_dir/'summary.json').write_text(dump(summary),encoding='utf-8')
    print(dump(summary),end='')
if __name__=='__main__':main()
