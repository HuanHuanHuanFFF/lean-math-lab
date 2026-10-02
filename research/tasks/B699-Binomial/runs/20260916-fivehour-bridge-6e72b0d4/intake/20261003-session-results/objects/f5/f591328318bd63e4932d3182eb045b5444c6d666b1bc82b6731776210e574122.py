#!/usr/bin/env python3
"""Independent R05 finite receiver: interpolation and generic Hensel/Newton.
Does not import the generator; does not prove the adopted BL theorem.
"""
from __future__ import annotations
import argparse, copy, itertools, json
from fractions import Fraction
from math import factorial, gcd, prod
from pathlib import Path

class Reject(ValueError):pass
def need(ok,msg):
    if not ok:raise Reject(msg)

def finite_v(x,p):
    need(x!=0,'valuation precision exhausted')
    z=0
    while x%p==0:x//=p;z+=1
    return z

def poly_eval(terms,point):
    return sum(c*prod(x**e for x,e in zip(point,es)) for es,c in terms)

def direct(point):
    d,A,H,B,y,h=point;v=A*y;W=B*y;Q=d+v;P=Q+h*v
    lin=d*h-4*H-Q;E=4*v*H*H-P*Q*Q+1
    F=4*d*v*H*H-4*v*Q*Q*H-Q**4+d
    C=4*d**3+6*d*d*v+4*d*v*v+v**3+d*W
    G=4*d*H*H-4*Q*Q*H-C
    Z=2*d*H-Q*Q;n=2*P*Q*H+2;N=4*v*H**3+H+Q
    return [
      (F-d*E,v*Q*Q*lin),
      (F-v*G,d*(v*W-d**3+1)),
      (G-4*d*(H*H-d*H-d*d),y*(-8*d*A*H-4*A*A*y*H-6*d*d*A-4*d*A*A*y-A**3*y*y-d*B)),
      (P*d-Q*Q-4*v*H,v*lin),
      (v*Z*Z-Q**5+d*d,d*F),
      (2*N-n*Q,2*H*E),
      (C-4*H*(d*H-Q*Q),-G),
      (Q**4+d*C-Z*Z,-d*G),
      (v*W-d**3+1,(A*B-3*(d-1))*y*y+(d-1)*(3*y*y-d*d-d-1))]

def check_polynomials(obj):
    need(obj['variables']==['d','A','H','B','y','h'],'variable names')
    bounds=[5,5,3,1,5,1];need(obj['degree_box']==bounds,'degree box')
    names=['F_minus_dE','integer_saturation','mod_y_identity','original_linear','square_norm','original_n','coprime_factorization','saturated_S','balanced_allocation']
    need([x['name'] for x in obj['identities']]==names,'identity names/order')
    for row in obj['identities']:
        for side in ['left','right']:
            seen=set()
            for es,c in row[side]:
                need(len(es)==6 and type(c)==int and c!=0,'polynomial term type')
                need(all(type(e)==int and 0<=e<=b for e,b in zip(es,bounds)),'term degree')
                need(tuple(es) not in seen,'duplicate term');seen.add(tuple(es))
    count=0
    for point in itertools.product(*(range(b+1) for b in bounds)):
        expected=direct(point)
        for row,(lhs,rhs) in zip(obj['identities'],expected):
            need(lhs==rhs,'direct identity failed')
            need(poly_eval(row['left'],point)==lhs and poly_eval(row['right'],point)==rhs,'coefficient tensor mismatch')
        count+=1
    return count

def check_constants(c):
    expected={'q_min':6,'s_upper_linear':[144,25],'s_upper_simple':149,'log_RH_lower_coefficient':6,
      'pmin_RH':19,'pmin_RH_general':7,'general_weighted_constant':[38400,49],
      'general_q_constant':[6400,49],'general_simple_constant':144,'general_polynomial_constant':20736,
      'general_n_height':[2985984,27],'BL_rational_T_coefficient':24,'BL_exponent_positive':[1,1],
      'E_majorant':10,'weighted_prime_sum_constant':[120000,361],'q_support_constant':[20000,361],
      'simple_support_constant':64,'polynomial_height_constant':4096,'large_q_threshold':65536,
      'n_height_constants':[589824,27],'jacobian_determinant':-12,'source_primes':[13,19],'source_periods':[3,5], 'source_first_increment':{'13':[8,4],'19':[17,18]}, 'v19_2pow36_minus1':1}
    for k,v in expected.items():need(c[k]==v,'constant '+k)
    need(Fraction(120000,361)==24*100*Fraction(1,2)*Fraction(100,361),'special sum identity')
    need(Fraction(20000,361)<64 and Fraction(6400,49)<144,'relaxed constants')
    need(64**2==4096 and 144**2==20736,'polynomial constants')
    need(144*4096==589824 and 144*20736==2985984,'n height constants')
    need(Fraction(4*6-5,6)>0,'lower mass gap')
    need(144*6+25<149*6 and Fraction(32,5)<9,'log envelope start')
    vals={
      'e_upper':sum(Fraction(1,factorial(i)) for i in range(5))+Fraction(1,100),
      'exp_three_quarters_lower':sum(Fraction(3,4)**i/factorial(i) for i in range(4)),
      'exp_six_lower':sum(Fraction(6)**i/factorial(i) for i in range(6))}
    for k,v in vals.items():need(c['exp_series'][k]==[v.numerator,v.denominator],'exp series '+k)
    need(vals['e_upper']<3 and vals['exp_three_quarters_lower']>2 and vals['exp_six_lower']>149,'exp inequalities')
    need(17*Fraction(3,4)<16 and 65536==16**4,'large q threshold')
    need(4096*19**4>65536 and 20736*7**4>65536,'small q inclusion')
    need(c['old_support_checks']=={'7':{'ord2_divisor':3,'T_at_s0mod6':4},'11':{'pow2_5':10,'pow3_5':1},'13':{'H':4},'17':{'pow2_8':1,'pow3_8':16}},'old support data')
    need(pow(2,3,7)==1 and (3*pow(2,5,7)-1)%7==4,'7 support')
    need((pow(2,5,11),pow(3,5,11))==(10,1),'11 support')
    need((pow(2,8,17),pow(3,8,17))==(1,16),'17 support')
    need(finite_v(2**36-1,19)==1,'primitive 19 exponent source')
    for p,T in [(13,3),(19,5)]:
        d,y=source(T,p*p)
        need([(d-1)//p,(y-1)//p]==c['source_first_increment'][str(p)],'primitive Pell source increments')

def matmul(a,b,m):
    return [[sum(a[i][k]*b[k][j] for k in range(3))%m for j in range(3)] for i in range(3)]

def source(q,m):
    M=[[18817,32592,9408],[10864,18817,5432],[0,0,1]];R=[[int(i==j) for j in range(3)] for i in range(3)]
    k=q
    while k:
        if k&1:R=matmul(R,M,m)
        M=matmul(M,M,m);k//=2
    return (sum(R[0])%m,sum(R[1])%m)

def residual(A,n,x,m):
    y,H,B=x;d=(1+A*B*pow(3,-1,m))%m;v=A*y%m;Q=(d+v)%m
    h=(4*H+Q)*pow(d,-1,m)%m;P=(Q+h*v)%m
    C=(4*d**3+6*d*d*v+4*d*v*v+v**3+d*B*y)%m
    fs=[(d*d+d+1-3*y*y)%m,(4*d*H*H-4*Q*Q*H-C)%m,(2*P*Q*H+2-n)%m]
    return fs,{'d':d,'y':y,'H':H,'B':B,'v':v,'Q':Q,'h':h,'P':P,'C':C}

def solve(M,r,p):
    a=[[z%p for z in row]+[rhs%p] for row,rhs in zip(M,r)]
    for j in range(3):
        pivot=next((i for i in range(j,3) if a[i][j]),None);need(pivot is not None,'singular local Jacobian')
        a[j],a[pivot]=a[pivot],a[j];v=pow(a[j][j],-1,p);a[j]=[x*v%p for x in a[j]]
        for i in range(3):
            if i==j:continue
            w=a[i][j];a[i]=[(x-w*y)%p for x,y in zip(a[i],a[j])]
    return [a[i][3] for i in range(3)]

def check_local(row,A,s):
    p=row['prime'];K=row['precision'];need(p in [13,19] and 3<=K<=30,'local size')
    m=p**K;need(row['modulus']==m,'local modulus');n=3*pow(2,s,m)%m;need(row['n_mod']==n,'original n')
    H0=(n-2)*pow(2,-1,p)%p;B0=(4*H0*H0-4*H0-4)%p;x=[1,H0,B0]
    need(len(row['implicit_digits'])==K-1,'implicit length')
    for k,record in enumerate(row['implicit_digits'],1):
        scale=p**k;mod=p*scale;fs,_=residual(A,n,x,mod)
        need(all(f%scale==0 for f in fs),'not a root at prior precision')
        r=[f//scale for f in fs];cols=[]
        for j in range(3):
            xp=list(x);xp[j]+=scale;fp,_=residual(A,n,xp,mod)
            cols.append([((a-b)%mod)//scale for a,b in zip(fp,fs)])
        J=[[cols[j][i] for j in range(3)] for i in range(3)]
        delta=solve(J,[-t for t in r],p)
        need(record=={'level':k+1,'residual_divided':r,'digits':delta},'implicit digit mismatch')
        x=[a+scale*b for a,b in zip(x,delta)]
        need(residual(A,n,x,mod)[0]==[0,0,0],'new root')
    fs,z=residual(A,n,x,m);need(fs==[0,0,0] and z==row['state'],'local state')
    # All norm/square/linear relations, including the saturated equation.
    P,Q,H,v,d,h,B,y=[z[k] for k in ['P','Q','H','v','d','h','B','y']]
    S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%m
    need((4*v*H*H-P*Q*Q+1)%m==0,'raw norm')
    need((S-(2*d*H-Q*Q)**2)%m==0,'saturated square S')
    need((d*h-4*H-Q)%m==0,'original linear')
    need((A*B-3*(d-1))%m==0,'allocation')
    need((2*(4*v*H**3+H+Q)-n*Q)%m==0,'original N')
    period={13:3,19:5}[p]
    need(all(source(i,p)!=(1,1) for i in range(1,period)) and source(period,p)==(1,1),'base source first return')
    need((source(period,p*p)[0]-1)% (p*p)!=0,'primitive source lift')
    q=0
    need(len(row['source_digits'])==K-1,'source digit count')
    for k,t in enumerate(row['source_digits'],1):
        step=period*p**(k-1);mod=p**(k+1)
        matches=[j for j in range(p) if source(q+j*step,mod)==(d%mod,y%mod)]
        need(matches==[t],'source digit uniqueness');q+=t*step
    need(q==row['source_q'] and row['source_period']==period*p**(K-1),'source q/period')
    need(source(q,m)==(d,y),'source final')
    return K-1

def check_boundaries(rows):
    need(len(rows)==4,'boundary count')
    specifications=[(1,1,1),(2,1,3),(3,3,2),(2,4,4)]
    total=0
    for row,(a,b,e) in zip(rows,specifications):
        need((row['a13'],row['b19'],row['e19'])==(a,b,e),'boundary index')
        A,s,q=[row[k] for k in ['A','s','q']];K=max(a+2,b+2*e+2)
        need(A%24570==5616 and s>=142 and s%12==6 and q>=9 and q%3==0,'shared input congruences')
        need(A%13**K==13**a and A%19**K==19**b,'A complete valuations')
        need(A%1890==5616%1890 and row['A_modulus']==1890*13**K*19**K,'A CRT')
        need(0<A<row['A_modulus'],'A canonical representative')
        rT=(3*pow(2,s-1,19**(e+1))-1)%19**(e+1)
        need(finite_v(rT,19)==e,'same s exact T valuation')
        for key,p in [('local13',13),('local19',19)]:
            loc=row[key];need(loc['prime']==p and loc['precision']==K,'boundary local assignment')
            total+=check_local(loc,A,s)
            need(q%loc['source_period']==loc['source_q'],'same q across both sources')
            need(source(q,p**K)==(loc['state']['d'],loc['state']['y']),'actual source q')
        need(row['q_modulus']==3*5*13**(K-1)*19**(K-1),'q CRT modulus')
        need(0<q<row['q_modulus'],'q canonical positive representative')
        z=row['local19']['state'];m=19**K
        need(finite_v(z['H'],19)==e and finite_v(z['v'],19)==b,'actual overlapping valuation')
        need(finite_v((z['P']*z['Q']**2-1)%m,19)==b+2*e==row['exact_19_norm_valuation'],'double valuation')
        z=row['local13']['state']
        need([z[k]%13 for k in ['P','Q','H','h','B']]==[1,1,4,4,5],'original 13 residues')
        need(finite_v(z['P']-1,13)==a and finite_v(z['Q']-1,13)==a,'complete 13 layers')
        units=[(z[k]-1)//13**a%13 for k in ['P','Q']]
        need(units==[11,7]==row['normalized_13_units'],'normalized 13 units')
        need(finite_v(q,13)==a-1 and q//13**(a-1)%13==12,'real 13 q unit')
        need(row['global_integer_recovery_claimed'] is False and row['prime_power_PQ_recovery_claimed'] is False,'weak model mislabeled')
    return total

def verify(c,polys=True):
    need(c['schema']=='B699-D-R05-exact-v1','schema')
    need(c['boundaries']=={'MA_upper_bound_proved':False,'whole_entry_closed':False,'BL_theorem_proved_by_code':False,'q6_reexecuted':False,'projection_counts_recomputed':False},'evidence boundary flags')
    check_constants(c['constants']);levels=check_boundaries(c['boundary_models'])
    points=check_polynomials(c['polynomials']) if polys else 0
    return {'status':'PASS','polynomial_identities':9,'tensor_points':points,'boundary_models':4,'local_lift_steps':levels,'external_BL_proved_by_code':False,'q6_reexecuted':False}

def mutations(c):
    tests=[]
    def add(name,fn):
        bad=copy.deepcopy(c);fn(bad);tests.append((name,bad))
    add('missing_overlap_b',lambda x:x['boundary_models'][0].__setitem__('exact_19_norm_valuation',2))
    add('altered_H_digit',lambda x:x['boundary_models'][1]['local19']['implicit_digits'][0]['digits'].__setitem__(1,(x['boundary_models'][1]['local19']['implicit_digits'][0]['digits'][1]+1)%19))
    add('different_original_s',lambda x:x['boundary_models'][0].__setitem__('s',x['boundary_models'][0]['s']+12))
    add('different_source_q',lambda x:x['boundary_models'][0].__setitem__('q',x['boundary_models'][0]['q']+1))
    add('truncated_13_layer',lambda x:x['boundary_models'][1].__setitem__('a13',1))
    add('wrong_13_unit',lambda x:x['boundary_models'][0]['normalized_13_units'].__setitem__(0,10))
    add('BL_constant_changed',lambda x:x['constants'].__setitem__('BL_rational_T_coefficient',23))
    add('unsupported_stronger_support',lambda x:x['constants'].__setitem__('simple_support_constant',49))
    add('boundary_as_prime_power_solution',lambda x:x['boundary_models'][0].__setitem__('prime_power_PQ_recovery_claimed',True))
    add('false_complete_closure',lambda x:x['boundaries'].__setitem__('whole_entry_closed',True))
    add('changed_saturation_coefficient',lambda x:x['polynomials']['identities'][1]['left'][0].__setitem__(1,x['polynomials']['identities'][1]['left'][0][1]+1))
    add('omitted_square_norm_term',lambda x:x['polynomials']['identities'][4]['right'].pop())
    return tests

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',required=True);ap.add_argument('--output',required=True);ap.add_argument('--negative-tests',action='store_true');args=ap.parse_args()
    c=json.loads(Path(args.certificate).read_text());result=verify(c)
    result['negative_tests']=[]
    if args.negative_tests:
        for name,bad in mutations(c):
            try:verify(bad)
            except (Reject,ValueError,KeyError,IndexError) as exc:result['negative_tests'].append({'name':name,'status':'REJECTED','reason':str(exc)})
            else:raise Reject('accepted deliberately corrupt certificate: '+name)
    Path(args.output).write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':'PASS','identities':9,'negative_tests':len(result['negative_tests']),'local_lift_steps':result['local_lift_steps']}))
if __name__=='__main__':main()
