#!/usr/bin/env python3
"""Independent R06 finite checker.
Uses Mobius formal products instead of generator polynomial division, divisor
pairing/inclusion-exclusion for totients, and truncated binomial arithmetic for
13-adic prime-power phases. Never imports the generator or ancestor programs.
"""
from __future__ import annotations
import argparse, copy, json
from fractions import Fraction
from math import comb, factorial, gcd, isqrt, prod
from pathlib import Path

class Reject(ValueError):pass

def need(ok,msg):
    if not ok:raise Reject(msg)

def divs(n):
    a=[];b=[]
    for i in range(1,isqrt(n)+1):
        if n%i==0:
            a.append(i)
            if i*i!=n:b.append(n//i)
    return a+b[::-1]

def fac(n):
    ps=[];d=2
    while d*d<=n:
        e=0
        while n%d==0:n//=d;e+=1
        if e:ps.append((d,e))
        d+=1
    if n>1:ps.append((n,1))
    return ps

def mu(n):
    f=fac(n)
    return 0 if any(e>1 for _,e in f) else (-1)**len(f)

def totient(n):
    return sum(mu(d)*(n//d) for d in divs(n))

def isprime(n):
    return isinstance(n,int) and n>=2 and not any(n%d==0 for d in range(2,isqrt(n)+1))

def val(n,p):
    need(n!=0,'finite valuation precision')
    j=0
    while n%p==0:j+=1;n//=p
    return j

def multiplicative_order(a,p):
    need(isprime(p) and a%p,'prime/unit for order')
    for d in divs(p-1):
        if pow(a,d,p)==1:return d
    raise Reject('order unavailable')

def cyclotomic(n):
    if n==1:return [-1,1]
    deg=totient(n);c=[1]+[0]*deg
    for d in divs(n):
        sign=mu(n//d)
        if sign==1:
            for j in range(deg,d-1,-1):c[j]-=c[j-d]
        elif sign==-1:
            for j in range(d,deg+1):c[j]+=c[j-d]
    need(c[-1]==1,'formal product degree')
    return c

def convolution(a,b):
    return [sum(a[i]*b[k-i] for i in range(max(0,k-len(b)+1),min(k,len(a)-1)+1)) for k in range(len(a)+len(b)-1)]

def eval_poly(a,x):
    y=0
    for c in a[::-1]:y=y*x+c
    return y

def binomial_mod(x,g,p,k):
    need(x%p==1,'binomial expansion center')
    h=x-1;m=p**k;v=val(h,p)
    out=0
    for j in range(min(g,(k-1)//v)+1):out=(out+comb(g,j)*pow(h,j,m))%m
    return out

def check_constants(c):
    need(c['minimum_log_H_strict']==47 and c['minimum_primitive_root']==45,'growth constants')
    a=Fraction(1,10)+Fraction(3,2)+Fraction(1,60)+Fraction(1,90)
    need(c['capacity_contradiction_coefficient']==[a.numerator,a.denominator],'mass coefficient')
    need(c['required_mass_coefficient']==[5,3] and a<Fraction(5,3),'mass gap')
    e4=sum(Fraction(4**i,factorial(i)) for i in range(9))
    e34=sum(Fraction(3,4)**i/factorial(i) for i in range(4))
    need(c['exp4_lower']==[e4.numerator,e4.denominator] and e4>47,'log47 bound')
    need(c['exp34_lower']==[e34.numerator,e34.denominator] and e34>2,'log2 bound')
    need(Fraction(3,4)<Fraction(47,60) and 4<Fraction(47,10),'linear log margins')
    ps=[5,7,11,13,17,19];z=Fraction(prod(p-1 for p in ps),prod(ps))
    need(c['six_prime_totient_ratio']==[z.numerator,z.denominator] and z>Fraction(1,2),'six-prime totient guard')
    need(c['power_mass_constant']==12500 and c['power_mass_H_threshold']==12500**3,'prime-divisor mass constants')
    need(c['pell_integer_comparison_left']==3**49 and c['pell_integer_comparison_right']==4*12500**3,'Pell threshold data')
    need(3**49>4*12500**3,'Pell strict threshold')
    need(c['direct_BL_no_gain_exponent_sum_threshold']==24*10**2,'BL floor threshold')
    need(c['factor_13_combined_unit']==[11,7,-1] and (11+2*7)%13==12,'norm 13 unit')
    need(c['q_from_primitive_core_denominator']==16 and c['linear_M_height_denominator']==32,'linear height constants')

def check_capacity(rows):
    gs=[1,5,7,13,25,35,65,125,169,175,361,5005,1616615,37182145]
    need([r['g'] for r in rows]==gs,'capacity row coverage')
    for r in rows:
        g=r['g'];ds=divs(g);terms=[[d,totient(d)] for d in ds]
        need(r['divisor_phi']==terms and r['factorization']==[list(t) for t in fac(g)],'divisor/phi data')
        need(r['sum_phi']==g==sum(t for _,t in terms),'totient partition identity')
        need(r['phi_g']==totient(g),'phi g')
        running=0
        for d,t in terms:
            running+=t
            if 2*running>g:threshold=d;break
        need(r['first_capacity_threshold']==threshold,'strict capacity threshold')
        need(r['necessary_M_at_least']==(2*threshold+1 if g>1 else None),'odd prime order bound')
        need(r['full_order_forced']==(g>1 and 2*totient(g)>=g),'full-order guard')
        need(r['claim_type']=='integer_divisor_capacity_only_not_NC3','capacity scope')

def check_polynomials(c):
    gs=[5,7,13,25,35,65,125,169,175,361]
    need(c['factorization_identity_indices']==gs,'factorization indices')
    indices=sorted({d for g in gs for d in divs(g)})
    need([r['n'] for r in c['polynomials']]==indices,'polynomial coverage')
    polys={}
    for row in c['polynomials']:
        n=row['n'];expected=cyclotomic(n)
        need(row['coefficients']==expected and row['phi']==totient(n),'Mobius polynomial mismatch')
        polys[n]=expected
    for g in gs:
        v=[1]
        for d in divs(g):v=convolution(v,polys[d])
        need(v==[-1]+[0]*(g-1)+[1],'full polynomial factorization')
    return polys

def check_lte(rows,polys):
    configs=[(5,5,31,0,1),(7,7,29,1,1),(35,35,71,0,1),(25,25,101,0,1),
             (19,1,19,1,1),(361,1,19,1,1),(65,13,53,0,1),(35,5,31,1,1)]
    need([(r['g'],r['order'],r['ell'],r['b'],r['e']) for r in rows]==configs,'LTE coverage/shared valuations')
    for r in rows:
        g,d,l,b,e=[r[k] for k in ['g','order','ell','b','e']]
        p,z=r['prime_P'],r['prime_Q'];need(isprime(p) and z==3 and p!=z,'LTE original primes')
        root=p*z*z;need(r['root_integer']==root,'one shared primitive integer')
        need(multiplicative_order(root,l)==d and g%d==0,'actual order')
        tau=val(g,l);need(r['tau']==tau,'exponent-valuation correction')
        k=b+2*e-tau;need(k>=1,'positive residual cyclotomic valuation')
        # Horner evaluation is independent of the generator's Hensel construction.
        ph=eval_poly(polys[d],root)
        need(val(ph,l)==k==r['primitive_cyclotomic_valuation'],'exact cyclotomic valuation')
        n=pow(root,g)-1
        need(val(n,l)==b+2*e==r['norm_valuation'],'exact total valuation b+2e')
        need(r['precision']==b+2*e+1 and r['norm_mod']==n%(l**r['precision']),'norm precision/value')
        need(r['claim_type']=='LTE_arithmetic_test_not_Pell_core','LTE model scope')

def check_phases(rows):
    configs=[(1,1),(5,1),(13,1),(65,1),(169,1),(5005,1),(13,2)]
    need([(r['g'],r['root_layer']) for r in rows]==configs,'phase coverage')
    for r in rows:
        g=r['g'];p,z=r['prime_P'],r['prime_Q'];a=r['a13'];k=r['root_layer']
        need(isprime(p) and isprime(z) and p!=z,'phase distinct genuine primes')
        need(r['e_P']==g==r['e_Q'] and gcd(g,6)==1,'one global exponent pair')
        tau=val(g,13);g0=g//13**tau
        need(r['tau13_g']==tau and a==tau+k and k>=1,'13 exponent split')
        need(r['A0_mod13']==3,'A unit')
        A,q=r['A'],r['q']
        need(A%24570==5616 and val(A,13)==a and A//13**a%13==3,'A actual layer/unit')
        need(q>=9 and q%9==3 and val(q,13)==a-1 and q//13**(a-1)%13==10,'same q normalized unit')
        need(val(A,3)==3 and val(q,3)==1,'retained 3 phases')
        need(r['s_phase_representative']==150,'same s phase')
        need(p%120==49 and pow(p,g,7)==1,'P phase')
        need(pow(z,g,5)==2 and pow(z,g,7)==3,'Q phase')
        mod=13**(a+1);need(r['modulus']==mod,'13 precision')
        Pm=binomial_mod(p,g,13,a+1);Qm=binomial_mod(z,g,13,a+1)
        norm=(Pm*Qm*Qm-1)%mod
        need([r['P_mod'],r['Q_mod'],r['norm_mod']]==[Pm,Qm,norm],'binomial prime-power phase')
        need([val((Pm-1)%mod,13),val((Qm-1)%mod,13),val(norm,13)]==[a]*3,'full original 13 valuations')
        units=[((Pm-1)//13**a)%13,((Qm-1)//13**a)%13,(norm//13**a)%13]
        need(units==[7,8,10]==r['original_units'],'original 13 units')
        rt=[((p-1)//13**k)%13,((z-1)//13**k)%13,((p*z*z-1)//13**k)%13]
        need(rt==r['root_units'] and [g0*x%13 for x in rt]==units,'root-normalized units cannot lose g')
        need(r['claim_type']=='prime_power_and_13_phase_only','prime-phase-only scope')
        need(r['original_global_equations_satisfied_claimed'] is False and r['H_or_RH_recovered'] is False and r['NC3_claimed'] is False,'no invented original recovery')

def check(c):
    need(c['schema']=='B699-D-R06-finite-certificate-v1','schema')
    check_constants(c['constants']);check_capacity(c['capacity']);ps=check_polynomials(c)
    check_lte(c['lte_examples'],ps);check_phases(c['prime_phase_examples'])
    return {'polynomial_count':len(ps),'factorization_identities':len(c['factorization_identity_indices']),
            'capacity_rows':len(c['capacity']),'LTE_arithmetic_examples':len(c['lte_examples']),
            'prime_power_phase_examples':len(c['prime_phase_examples'])}

def negatives(c):
    def put(path,value):
        def mutate(o):
            for key in path[:-1]:o=o[key]
            o[path[-1]]=value
        return mutate
    tests=[
      ('cyclotomic_coefficient',put(['polynomials',1,'coefficients',0],2)),
      ('wrong_phi',put(['capacity',5,'phi_g'],25)),
      ('capacity_strict_cutoff',put(['capacity',5,'first_capacity_threshold'],7)),
      ('double_count_order_block',put(['capacity',5,'sum_phi'],70)),
      ('lose_shared_b',put(['lte_examples',1,'b'],0)),
      ('wrong_H_exponent',put(['lte_examples',0,'e'],2)),
      ('lose_exponent_LTE_term',put(['lte_examples',4,'tau'],0)),
      ('wrong_actual_order',put(['lte_examples',2,'order'],7)),
      ('wrong_norm_precision',put(['lte_examples',0,'norm_mod'],1)),
      ('false_mass_constant',put(['constants','capacity_contradiction_coefficient'],[5,3])),
      ('false_six_factor_guard',put(['constants','six_prime_totient_ratio'],[1,2])),
      ('drop_13_exponent_split',put(['prime_phase_examples',4,'tau13_g'],0)),
      ('alter_original_13_unit',put(['prime_phase_examples',0,'original_units'],[7,7,10])),
      ('composite_base',put(['prime_phase_examples',0,'prime_P'],495769*2)),
      ('independently_rechoose_exponent',put(['prime_phase_examples',1,'e_Q'],1)),
      ('claim_phase_is_NC3',put(['prime_phase_examples',0,'NC3_claimed'],True)),
    ]
    out=[]
    for name,mut in tests:
        cc=copy.deepcopy(c);mut(cc)
        try:check(cc)
        except (Reject,ValueError,KeyError,ZeroDivisionError,IndexError) as ex:
            out.append({'test':name,'status':'REJECTED','reason':str(ex)})
        else:raise Reject('negative test accepted: '+name)
    return out

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');args=ap.parse_args()
    c=json.loads(Path(args.certificate).read_text());result=check(c)
    receipt={'schema':'B699-D-R06-finite-verification-v1','status':'PASS',**result,
             'negative_tests':negatives(c) if args.negative_tests else [],
             'same_author_second_implementation':True,'external_BL_proof_verified':False,
             'uniform_paper_proof_formalized':False,'original_NC3_count':None,
             'Lean_executed':False,'ancestor_math_executed':False,'q6_executed':False}
    out=Path(args.output);out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(receipt,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS',**result,'negative_tests_rejected':len(receipt['negative_tests'])}))
if __name__=='__main__':main()
