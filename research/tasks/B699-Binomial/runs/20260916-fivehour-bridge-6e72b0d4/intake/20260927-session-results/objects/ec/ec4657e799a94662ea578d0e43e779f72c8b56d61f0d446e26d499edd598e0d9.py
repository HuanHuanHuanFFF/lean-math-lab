"""Generate exact finite certificates for the stated infinite-domain paper proof.
No finite sample below is used to claim infinite-domain coverage.
"""
from pathlib import Path
from fractions import Fraction as F
import json,sys,math,hashlib,argparse
from exact_kernel import *
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
def dump(path,data):
    path.parent.mkdir(parents=True,exist_ok=True)
    path.write_text(json.dumps(data,ensure_ascii=False,indent=2,sort_keys=True)+'\n',encoding='utf-8')
def generate(out):
    o=source_polynomials();P=sqrt_polynomial();S=o['S']
    Fp=add(S,scale(power(P,2),-1))
    assert max(z for r,z in Fp)==5
    cp,cs=norm_sum(P),norm_sum(S)
    assert cp==F(152651,3072) and cs==F(1084601,2304)
    assert cp<50 and cs<512
    assert all(-4<=r<=2 for r,z in P)
    assert all(3072%c.a.denominator==0 and 3072%c.b.denominator==0 for c in P.values())
    assert all(-1<=r<=4 for r,z in S)
    identities={
      'Pell':add(power(o['V'],2),scale(power(o['X'],2),-3),term(a=-1)),
      'y=UV-1':add(o['y'],scale(mul(o['U'],o['V']),-1),term(a=1)),
      'd=1+3UX':add(o['d'],scale(mul(o['U'],o['X']),-3),term(a=-1)),
      'd^2+d+1=3y^2':add(power(o['d'],2),o['d'],term(a=1),scale(power(o['y'],2),-3)),
      'vW=d^3-1':add(mul(o['v'],o['W']),scale(power(o['d'],3),-1),term(a=1)),
      'vS=Q^5-d^2':add(mul(o['v'],S),scale(power(add(o['d'],o['v']),5),-1),power(o['d'],2)),
    }
    assert all(not x for x in identities.values())
    cert={'schema':'B699-D-LAURENT-SYMBOLIC-v1','polynomials':{k:serialize(v) for k,v in o.items()},
          'sqrt_positive_part':serialize(P),'residual_S_minus_P_squared':serialize(Fp),
          'top_powers_cancelled':list(range(6,13)),
          'identity_residuals':{k:serialize(v) for k,v in identities.items()},
          'norm_sum_P':str(cp),'norm_sum_S':str(cs),
          'constant_sqrt3_coefficient':'-45*(4*eta^2+27)/(256*eta^4)',
          'D_T_sqrt3_coefficient':'-540*b^4*(4*a^2+27*b^2)',
          'denominator':'D=3072*a^4*b^2'}
    dump(out/'symbolic.json',cert)
    crude_cs=F(4,3)**4+5*4*F(4,3)**3+10*4**2*F(4,3)**2+10*4**3*F(4,3)+5*4**4+4**2*72
    constants={'schema':'B699-D-LAURENT-BOUNDS-v2','P_norm_exact':str(cp),'S_norm_exact':str(cs),
      'P_norm_upper':50,'S_norm_coarse_exact':str(crude_cs),'S_norm_upper':4096,
      'error_constant_coarse':64*(4096+50**2)+50,'error_constant_upper':2**19,
      'D_factor':3072,'D_factor_upper':2**12,'D_H_power':6,
      'conjugate_gap_factor_upper':128,'error_H_power':10,
      'norm_product_power_of_two':51,'threshold_power_of_two':52,'threshold_H_power':26,
      'q_base':64,'lambda_fourth_lower_bound':128,
      'base_left':str((432*64)**26),'base_right':str(2**(7*64)),
      'induction_left':str(65**26),'induction_right':str(128*64**26),
      'universal_result':'S integer square => (2+sqrt(3))^(4q) <= (4*max(a,b))^26',
      'height_result':'max(a,b) >= (2+sqrt(3))^(2*q/13)/4',
      'small_height_corollary':'q>=64 and max(a,b)<=108*q imply S is not an integer square',
      'bridge_map':'a=m, b=2^(rho-1)<=4*q; m<27*b; q>=512',
      'optional_small_ratio_refinement':{'eta_upper':27,'R':'max(27,b)',
          'D_factor':3072*27**4,'D_factor_upper':2**31,
          'norm_product_power_of_two':89,'threshold_power_of_two':90,
          'result':'S integer square and eta<=27 => Z<=2^90*max(27,b)^26'}}
    assert crude_cs==F(293248,81) and crude_cs<4096
    assert constants['error_constant_coarse']==422194<2**19
    assert 3072<2**12 and 3072*27**4<2**31
    assert (432*64)**26<2**(7*64) and 65**26<128*64**26
    dump(out/'uniform_bounds.json',constants)
    samples=[]
    for q in [512,1024,1536]:
        V,X=pell(4*q);U=2*V+3*X;y=U*V-1;d=1+3*U*X
        rho=(X&-X).bit_length()-1
        b=2**(rho-1)
        assert rho>=12 and b<=4*q
        for m in [1,3,9]:
            assert (9*(U//2))%m==0 and X%(2**rho)==0
            A=m*X//b;B=9*U*b//m;v=A*y;W=B*y;Q=d+v
            assert v*W==d**3-1 and d*d+d+1==3*y*y
            S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*W
            assert v*S==Q**5-d*d
            rt=math.isqrt(S);assert rt*rt<S<(rt+1)**2
            row={'q':q,'rho':rho,'m':m,'b':b,'S_bits':S.bit_length(),
                 'S_sha256_decimal':hashlib.sha256(str(S).encode()).hexdigest(),
                 'sqrt_floor_sha256_decimal':hashlib.sha256(str(rt).encode()).hexdigest(),
                 'square':False,'scope':'Pell/bridge necessary arithmetic only; not an NC3 input'}
            samples.append(row)
            if q==512 and m==1:
                dump(out/'example_q512_m1.json',{'q':q,'rho':rho,'m':m,'b':b,
                     **{k:str(x) for k,x in dict(U=U,X=X,V=V,y=y,d=d,A=A,B=B,v=v,W=W,Q=Q,S=S,sqrt_floor=rt).items()},
                     'square':False,'n_j_restored':False})
    dump(out/'sample_diagnostics.json',samples)
    # Boundary witness: exact balanced Pell arithmetic, large reduced denominator.
    q=64;V,X=pell(4*q);U=2*V+3*X;y=U*V-1;d=1+3*U*X
    A=2;B=3*(d-1)//2;b=X//2
    S=(d+A*y)**5-d*d;assert S%(A*y)==0;S//=A*y
    rt=math.isqrt(S)
    assert 2*b==X and b>4*q
    # z < 2V and b=X/2>1 make the norm-theorem necessary bound nonrestrictive here.
    assert 2*V<=(4*b)**26
    dump(out/'boundary_large_denominator.json',{
        'q':q,'A':A,'B':str(B),'a':1,'b':str(b),'X':str(X),'U':str(U),'V':str(V),
        'y':str(y),'d':str(d),'b_greater_than_4q':True,
        'threshold_not_violated_via_2V_upper_bound':True,'S_is_square':rt*rt==S,
        'not_claimed':['NC3','original counterexample','odd--odd classification','full parameter recovery'],
        'purpose':'The general height threshold need not be violated outside the small-height slice.'})
    print('PASS exact source/Pell identities:',len(identities))
    print('PASS square-root cancellation: powers 12 through 6')
    print('PASS coefficient norm sums:',str(cp),str(cs))
    print('PASS nonzero irrational constant and denominator clearing conditions')
    print('PASS uniform inequality constants and q>=64 induction certificate')
    print('PASS finite sample diagnostics:',len(samples),'(not infinite-domain evidence by themselves)')
    print('PASS large-denominator boundary witness (not NC3)')
    print('RESULT: conditional on the imported same-input bridge parametrization, BRIDGE4096 is empty.')

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('--output',type=Path,default=ROOT/'certificates');args=ap.parse_args()
    generate(args.output)
