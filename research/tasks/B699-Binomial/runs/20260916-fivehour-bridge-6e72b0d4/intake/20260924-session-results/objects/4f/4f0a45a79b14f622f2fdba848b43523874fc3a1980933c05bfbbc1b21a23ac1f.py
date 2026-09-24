"""Check all new finite obligations, using a different local algorithm.

No floating point, network, probabilistic primality, or upstream campaigns.
The analytic universal inequalities are proved in PROOFS.md; rational endpoint
budgets here are checks of the stated constants, not a proof-assistant claim.
"""
from fractions import Fraction as Q
from pathlib import Path
from math import isqrt,gcd
from collections import Counter
import argparse,copy,json

def require(condition,detail='check failed'):
    if not condition: raise AssertionError(detail)

def prime(p):
    return p>=2 and all(p%a for a in range(2,isqrt(p)+1))

def pell(q):
    u,x=1,0
    for _ in range(8*q+1): u,x=2*u+3*x,u+2*x
    require(u%2==0 and x%2==1)
    d,y=(3*x-1)//2,u//2
    require(d*d+d+1==3*y*y)
    return d,y

def local_empty(p,q,c):
    """Algorithm B: solve J=-C linearly, then check unsquared DIVNORM."""
    require(p>3 and prime(p))
    dd,yy=pell(q); d,y=dd%p,yy%p
    target=3*(d-1)%p
    inv2=pow(2,-1,p)
    tested=0
    for a in range(p):
        if a: bs=[target*pow(a,-1,p)%p]
        else: bs=range(p) if target==0 else []
        for b in bs:
            rhs=(16*a*d+120*y+27*b+c)%p
            if b: hs=[rhs*pow(4*b,-1,p)%p]
            else: hs=range(p) if rhs==0 else []
            for h in hs:
                v=a*y%p; qq=(d+v)%p
                nu=(h*d-qq)*inv2%p
                E=(nu*nu-b*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v)%p
                tested+=1
                if E==0: return False,tested,[a,b,h,nu]
    return True,tested,None

def terminal_check(cert):
    require(cert['schema']=='B699-D-round22-small-C-terminal-v1')
    require(cert['q_max']==25)
    require(cert['C_condition']=='0<C<=q^2 and 4 divides C')
    require(cert['q_allowed_mod3']==[0,2])
    require(cert['same_origin_J_mod16']=={'even':[4,8],'odd':[0,12]})
    full=set()
    needed=set()
    for q in range(1,26):
        if (8*q+1)%3==0: continue
        for c in range(1,q*q+1):
            if c%4:continue
            full.add((q,c))
            good=((-c)%16 in {0,12}) if q%2 else ((-c)%16 in {4,8})
            if good:needed.add((q,c))
    require(len(full)==864 and len(needed)==430)
    require(cert['grid_count']==len(full) and cert['after_parity']==len(needed))
    seen=set(); tested=0; counts=Counter()
    for row in cert['witnesses']:
        q,c,p=row['q'],row['C'],row['p']
        require((q,c) in needed and (q,c) not in seen,('bad or duplicate record',row))
        empty,n,w=local_empty(p,q,c)
        require(empty,('false local exclusion',row,w))
        seen.add((q,c));tested+=n;counts[p]+=1
    require(seen==needed,('incomplete cover',sorted(needed-seen)))
    return {'status':'PASS','grid':len(full),'source_parity_excluded':len(full)-len(needed),
            'local_empty_cells':len(seen),'uncovered':0,
            'checked_local_h_candidates':tested,
            'prime_counts':{str(p):counts[p] for p in sorted(counts)},
            'max_auxiliary_prime':max(counts)}

def parity_regression():
    total=0
    for qr in range(4):
        d,y=1,1+8*(qr%2)
        for branch in ['low','high']:
            count=0
            for a in range(16):
                good_a=(a==(0 if qr==0 else 8)) if branch=='low' and qr%2==0 else (a%8==4) if branch=='low' else (a%4==2)
                if not good_a: continue
                for b in range(16):
                    good_b=(b%8==4) if branch=='low' else (b==(8 if qr%2 else 0))
                    if not good_b:continue
                    for h in range(16):
                        if not h%2:continue
                        for nu in range(16):
                            v=a*y;qq=d+v;pp=qq+h*v
                            if (2*nu-h*d+qq)%16 or (pp*qq*nu+2)%16:continue
                            if (nu*nu-b*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v)%16:continue
                            j=(16*a*d+120*y+27*b-4*b*h)%16
                            require(j in ({0,12} if qr%2 else {4,8}))
                            count+=1
            require(count>0)
            total+=count
    require(total==14)
    return {'status':'PASS','states':total}

def budgets():
    tests={
      'sqrt3_lower_for_sigma':Q(75)>64,
      'sqrt3_upper_for_13':Q(675)<676,
      's_ratio_below_3_over_5':Q(1,3)*(1+Q(1,17)+Q(1,17**2))<Q(9,25),
      'full_norm_lower_E':17**3>40,
      'u_small':Q(3,16*32**2)<Q(1,16),
      'sqrt_remainder':Q(1,8)+Q(1,32)<1,
      'inverse_sqrt_remainder':Q(3,8)+Q(1,32)<1,
      'E_Taylor_remainder':Q(5,32)+Q(432,16**3*32**5)<Q(1,4),
      'E_substitution_error':Q(1,4)+Q(45,64*16)+(Q(12,16**2)+Q(1,16))/32<1,
      'C_expansion_error':4+(Q(144)+Q(720,32))/16**3<8,
      'first_inverse_error':1+Q(2,32)+Q(8,32**2)<2,
      'second_inverse_error':Q(1,2)+2+Q(8,32)<3,
      'third_inverse_error':Q(10,4)<3,
      'k2_bound':Q(21,320)+Q(3,84)<Q(1,8),
      'Z_error':Q(20,8)+Q(60,32)<5,
      'integer_norm_error':Q(1200,84)+1800+Q(75,32)<2**11,
      'irrational_gap_budget':11521<2**14,
      'D_nonzero':69**2<4800<70**2,
      'T_nonzero':144**2<20800<145**2,
      'cone_constant':28**7<2**34,
      'q_tail_first_point':3**209>2**124*26**42,
      'q_tail_monotonic':3**8*9**42>10**42,
    }
    require(all(tests.values()),tests)
    return {'status':'PASS','checks':tests,'A_bound_constant':2**28,
            'q_exclusive_bound_under_C_le_q_squared':26,
            'tail_margin':str(3**209-2**124*26**42),
            'cone_exact_constant':2**28*28**7,'cone_power_two_constant':2**62}

def failure_projection():
    q=5;d,y=pell(q)
    a=1967108;b=3*(d-1)//a
    require(a*b==3*(d-1) and b==186055766575973532)
    require(y<2**17*a**3 and a//4>q*q and b>16*a and b%16==12)
    require(a**15<2**62*d**7)
    v,w=a*y,b*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*w
    z=isqrt(S)
    require(z*z<S<(z+1)**2)
    return {'scope':'cofactor/exponent-cone projection only; NO integer C or h asserted',
            'q':q,'A':a,'B':b,'d':d,'y':y,
            'new_A15_cone':True,'full_square':False,
            'S_floor_sqrt':z,'gap_above':S-z*z,'gap_below':(z+1)**2-S,
            'not_claimed':['C7 with a restored integer C','all historical gates','NC3','an original (n,j)']}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();cert=json.loads(args.certificate.read_text())
    out={'terminal':terminal_check(cert),'rational_budgets':budgets(),'source_parity':parity_regression(),
         'failure_projection':failure_projection()}
    broken=copy.deepcopy(cert);broken['witnesses']=broken['witnesses'][:-1]
    try: terminal_check(broken)
    except AssertionError: out['missing_cell_rejected']=True
    else: raise AssertionError('incomplete certificate accepted')
    # Fixed existing weak local state from the earlier divided-norm interface.
    empty,_,w=local_empty(5,0,-68)
    require(not empty and w is not None)
    out['false_local_exclusion_rejected']={'p':5,'q':0,'C':-68,'witness':w,
                                         'scope':'checker mutation test, not a positive-C candidate'}
    out['proof_level']='paper inequalities + exact finite checks; not Lean or external review'
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
    print('RATIONAL_REMAINDER_BUDGETS=PASS')
    print('SAME_ORIGIN_PARITY16=PASS; STATES=14')
    print('C_LE_Q2_TERMINAL=PASS; GRID=864; PARITY_EXCLUDED=434; EMPTY_CELLS=430; UNCOVERED=0')
    print('BAD_CERTIFICATES_REJECTED=PASS')
    print('ROUND22_VERIFY=PASS')
if __name__=='__main__':main()
