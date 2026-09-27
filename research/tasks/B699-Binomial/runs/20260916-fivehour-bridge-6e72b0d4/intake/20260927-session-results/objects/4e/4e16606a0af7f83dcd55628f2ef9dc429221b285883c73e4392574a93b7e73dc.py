"""Generate this round's exact certificates. No network or external packages."""
import argparse,json,math,sys
from fractions import Fraction as F
from pathlib import Path
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)

def save(p,obj):p.write_text(json.dumps(obj,indent=2,ensure_ascii=False,sort_keys=True)+'\n',encoding='utf-8')
def pell(k):
    a,b,c,d=1,0,2,1
    while k:
        if k&1:a,b=a*c+3*b*d,a*d+b*c
        c,d=c*c+3*d*d,2*c*d;k//=2
    return a,b

def row(q):
    V,X=pell(4*q);U=2*V+3*X
    return dict(q=q,V=V,X=X,U=U,d=1+3*U*X,y=U*V-1)

# Exact signed coefficients of 147456*B*(S-T^2), reduced by Pell.
TERMS=[(-25,0,0,5),(1200,0,1,4),(2400,2,0,3),(-4800,1,0,3),(-4800,0,0,3),(3456,2,1,2),(-28800,1,1,2),(-11520,3,0,1),(218880,1,0,1),(11520,0,0,1),(276480,1,1,0),(-276480,0,1,0)]

def allocation(q,B):
    r=row(q);d,y,X,U=r['d'],r['y'],r['X'],r['U']
    if 3*(d-1)%B:raise ValueError('nonintegral allocation')
    A=3*(d-1)//B;v=A*y;W=B*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
    N=384*v*v+960*d*v+720*d*d+120*B*y-5*B*B
    lo=N//384;floor=math.isqrt(S)
    return dict(**r,A=A,B=B,v=v,W=W,S=S,N384=N,T_floor=lo,is_square=(floor*floor==S),is_odd_square=(floor*floor==S and floor%2==1),between_T_floor_squares=(lo*lo<S<(lo+1)**2),cube_excluded=(B**3<=3*d))

def period(m):
    a,b=1,0;seen=[]
    while True:
        seen.append([a,b]);a,b=(97*a+168*b)%m,(56*a+97*b)%m
        if (a,b)==(1,0):return seen
        if len(seen)>10000:raise RuntimeError('unexpected period')

def main(out):
    out.mkdir(parents=True,exist_ok=True)
    save(out/'origin_recovery.json',dict(identity='v*(d*nu-Q^2)^2-Q^5+d^2=d*(d*v*nu^2-2*v*Q^2*nu-Q^4+d), Q=d+v',Y='abs(d*nu-Q^2)',Y_odd='d,Q odd and nu even',scope='adopted same-original-input core only'))
    terms=[dict(coefficient=c,d=d,y=y,B=B) for c,d,y,B in TERMS]
    save(out/'identity.json',dict(scale=147456,identity='147456*B*(S-T^2)=F modulo 3y^2-d^2-d-1',terms=terms,T='v^2+5dv/2+15d^2/8+5By/16-5B^2/384'))
    bounds=[];total=F(0)
    for c,d,y,B in TERMS:
        k=3-d-y;e=B-2-3*k;weight=F(abs(c),147456)*3**k*F(4)**e
        total+=weight;bounds.append(dict(coefficient=abs(c),k=k,B_exponent=e,weight=str(weight)))
    save(out/'uniform_bounds.json',dict(hypothesis='B>=4 and d>=B^3/3',term_bounds=bounds,total=str(total),upper='1/16',v_squared_lower='11/4',sqrt_denominator_lower='11/2',error_upper='B^3/(88*d)',under_hypothesis='3/88',lattice_gap='1/24',inequalities=dict(total_less_1_16=total<F(1,16),three_88_less_one_24=F(3,88)<F(1,24),v_bound=3*(1-F(1,16)-F(1,16**3))>F(11,4))))
    states=[dict(d_mod4=d,y_mod4=y,ell_mod4=e,K_mod4=(d*d+2*e*y-e*e)%4) for d in [1,3] for y in [1,3] for e in range(4)]
    parity=[]
    for d in [1,3]:
      for y in [1,3]:
       for v in [0,2]:
        valid=[]
        for B in range(4):
         S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%4
         if S==1:valid.append(B)
        parity.append(dict(d=d,y=y,v=v,allowed_B_mod4=valid))
    save(out/'lattice_gap.json',dict(states=states,parity_gate=parity,K='24v^2+60dv+45d^2+30ell*y-5ell^2',residues=sorted({s['K_mod4'] for s in states}),minimum_distance='1/24'))
    r1,r2=row(1),row(2)
    cap=1900
    save(out/'consumers.json',dict(q1=r1,q2=r2,q1_mod13=dict(y=r1['y']%13,d=r1['d']%13,S=5*pow(r1['d'],4,13)%13,squares=sorted({i*i%13 for i in range(13)})),growth=dict(U8=pell(8)[0],X8=pell(8)[1],multiplier=18817,max_cubic_ratio='27/8'),bounded_complement=dict(cap=cap,next_multiple_of_four=1904,cap_cubed=cap**3,three_d2=3*r2['d'],next_integer_cubed=(cap+1)**3),linear_complement=dict(coefficient=108,base_q=2,base_cube=(108*2)**3,base_three_d=3*r2['d'])))
    a2=[]
    for q in [1,2,3,5,8,20]:
        r=row(q);Uk,Xk=pell(4*q+1);Qt=r['d']+2*r['y']
        a2.append(dict(q=q,U_k=Uk,X_k=Xk,Q=Qt,factorization_identity=3*Xk*Xk,gcd_U_neighbors=math.gcd(Uk-1,Uk+1),U_even=Uk%2==0,X_greater_one=Xk>1))
    save(out/'A2_prime_power.json',dict(identity='Q=3*X_(4q+1)^2',samples=a2,argument='A prime-power Q would force X_k to be a power of 3. Coprime U_k-1,U_k+1 with product 3*X_k^2 force U_k=2, contrary k>=5.'))
    periods={str(m):period(m) for m in [7,13,49,169]}
    sample=allocation(2,364);H=9*sample['U']//26
    save(out/'nonredundancy.json',dict(family='q=2+546*k, k>=0; B=364; A=9UX/364',periods=periods,period_lengths={k:len(v) for k,v in periods.items()},step=546,sample=sample,reduced_ratio=dict(a=H,b=14,H=H),old_HEIGHT26_rational_upper=sample['V']+2*sample['X'],old_HEIGHT26_rhs=(4*H)**26,gcds=dict(B_U=math.gcd(364,sample['U']),B_X=math.gcd(364,sample['X'])),prime_power_precision=dict(X_mod49=sample['X']%49,U_mod169=sample['U']%169)))
    # Finite diagnostics only, not a coverage proof over q.
    checks=[]
    for q in range(1,13):
        r=row(q)
        for B in range(1,513):
            if 3*(r['d']-1)%B:continue
            a=3*(r['d']-1)//B
            if a%2:continue
            e=allocation(q,B)
            reason='q1_mod13' if q==1 else ('parity_B_mod4' if B%4 else 'CUBIC3')
            checks.append(dict(q=q,B=B,A=a,reason=reason,is_square=e['is_square'],is_odd_square=e['is_odd_square'],cube_excluded=e['cube_excluded'],interval_ok=e['between_T_floor_squares'] if B%4==0 and e['cube_excluded'] else None))
    save(out/'finite_diagnostics.json',dict(scope='q=1..12; B=1..512; B divides 3(d-1); A even. Not a global enumeration.',count=len(checks),rows=checks))
    boundaries=[]
    for q in [2,5,8,20]:
        r=row(q);B=3*(r['d']-1)//4;e=allocation(q,B);H=r['X']//4
        boundaries.append(dict(q=q,A=4,B=B,d=r['d'],y=r['y'],ratio_a=1,ratio_b=H,cubic_pass=(B**3>3*r['d']),old_HEIGHT26_pass=(r['V']+2*r['X']<(4*H)**26),is_square=e['is_square'],not_original_input=True))
    save(out/'failure_models.json',dict(scope='Exact Pell/allocation models only. Not NC3 or original counterexamples.',family='A=4; B=3(d-1)/4',samples=boundaries))
    print(json.dumps(dict(status='PASS',certificate_files=9,finite_allocation_count=len(checks),finite_odd_squares=sum(c['is_odd_square'] for c in checks),CUBIC3_coefficient=str(total),period_lengths={k:len(v) for k,v in periods.items()}),sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--output',required=True,type=Path);args=p.parse_args();main(args.output)
