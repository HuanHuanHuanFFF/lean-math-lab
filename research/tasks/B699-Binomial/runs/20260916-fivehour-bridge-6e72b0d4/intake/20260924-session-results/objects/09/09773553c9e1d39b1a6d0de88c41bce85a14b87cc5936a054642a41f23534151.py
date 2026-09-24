"""Check all new finite obligations, using a different local algorithm.

No floating point, network, probabilistic primality, or upstream campaigns.
The analytic universal inequalities are proved in PROOFS.md; rational endpoint
budgets here are checks of the stated constants, not a proof-assistant claim.
"""
from fractions import Fraction as Q
from pathlib import Path
from math import isqrt,gcd
from collections import Counter
from functools import lru_cache
import argparse,copy,json

def require(condition,detail='check failed'):
    if not condition: raise AssertionError(detail)

def prime(p):
    return p>=2 and all(p%a for a in range(2,isqrt(p)+1))

@lru_cache(maxsize=None)
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
    require(cert['schema']=='B699-D-round23-cubic-C-terminal-v1')
    require(cert['q_max']==22)
    require(cert['C_condition']=='0<C<=q^3 and 4 divides C')
    require(cert['q_allowed_mod3']==[0,2])
    require(cert['same_origin_J_mod16']=={'even':[4,8],'odd':[0,12]})
    full=set()
    needed=set()
    for q in range(1,23):
        if (8*q+1)%3==0: continue
        for c in range(1,q**3+1):
            if c%4:continue
            full.add((q,c))
            good=((-c)%16 in {0,12}) if q%2 else ((-c)%16 in {4,8})
            if good:needed.add((q,c))
    require(len(full)==9697 and len(needed)==4847)
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

def delta_data(a,b,c):
    Z=20*b-320*a-c
    F=3*Z*Z-64*(c*a+15)**2
    D=5*(c*c-4800)
    N=-42*c**4+489600*c*c
    T=720*c*(c*c-20800)
    Delta=(D*F-N)**2-3*T*T
    return Z,F,D,N,T,Delta

def primitive(cstar,fstar):
    return (25*(cstar*cstar-300)*fstar*fstar
            +(420*cstar**4-306000*cstar*cstar)*fstar
            +1764*cstar**6-2138400*cstar**4+547560000*cstar*cstar)

def invariant_regression():
    rows=0
    cvalues=[4,8,12,16,64,68,72,120,144,148,256,1024,2**36,2**40]
    for c in cvalues:
        for a in [2,6,32,1967108]:
            for b in [4,12,64,2048]:
                z,f,D,N,T,Delta=delta_data(a,b,c)
                require(z%4==0 and f%16==0)
                cs,fs=c//4,f//16
                pi=primitive(cs,fs)
                w=5*fs+42*cs*cs-18000
                V=w*w-97200*cs*cs+194400000
                require(Delta==2**12*(c*c-4800)*pi)
                require(pi==(cs*cs-300)*V-10800000*(w+3600))
                require(Delta!=0 and pi!=0 and V!=0)
                rows+=1
    # Full finite-ring corroboration of the elementary v5 proof.
    modulus=625
    sq={i*i%modulus for i in range(modulus)}
    survivors=[v for v in range(modulus) if (3*v*v-6000)%modulus in sq]
    require(survivors==[])
    return {'status':'PASS','arbitrary_integer_samples':rows,
            'sample_scope':'algebraic integer identities only, not NC inputs',
            'five_adic_modulus':modulus,'all_v_residues':625,
            'surviving_u_square_classes':0}

def budgets():
    t=2**34
    tests={
      'D_nonzero':69**2<4800<70**2,
      'T_nonzero':144**2<20800<145**2,
      'T_uniform_budget':20800<3*84**2,
      'conjugate_budget_small_gap':11521<2**14,
      'conjugate_budget_gap_below_one':Q(8,84)+11520<2**14,
      'normalized_gap':Q(2**12,5*2**14)>Q(1,32),
      'large_gap_branch':32*84>8,
      'quintic_constant':2**11*32==2**16,
      'small_A_trivial':32<2**16*84**5,
      'large_threshold':t>3602 and t*t>5400300 and t*t>1300,
      'a_above_three_quarters':t*t-300>Q(3,4)*t*t,
      'wplus_constant':10800000*361<2**32,
      'norm_Pi_gain':Q(2**32,t)<=Q(1,4),
      'M_vs_cstar':80<=t,
      'linear_gap_budget':Q(1,1000)>Q(1,1024),
      'large_C_cubic_constant':2**11*1024==2**21,
      'small_C_M_bound':2**36+80<2**37,
      'global_cubic_constant':16+2*37==90,
      'cone11_constant':28**5<2**25,
      'cone7_constant':28**3<2**15,
      'height_quintic_alpha':19+3*16==67,
      'height_cubic_alpha':19+3*90==289,
      'C_cube_start':5**3>80,
      'C_cube_tail_first':3**185>2**82*23**45,
      'C_cube_tail_monotonic':3**8*5**45>6**45,
      'exponent_improvement':Q(3,7)<Q(5,11)<Q(7,15),
      'q4096_strong_cone':4096**3==2**36,
    }
    require(all(tests.values()),tests)
    return {'status':'PASS','checks':tests,'check_count':len(tests),
            'quintic_constant':2**16,'cubic_constant':2**90,
            'large_C_threshold':2**36,'large_C_cubic_constant':2**21,
            'cone11_exact_constant':2**16*28**5,'cone11_power2_constant':2**41,
            'cone7_exact_constant':2**90*28**3,'cone7_power2_constant':2**105,
            'large_C_cone7_power2_constant':2**36,
            'q_exclusive_under_C_le_q_cubed':23,
            'q_tail_margin':str(3**185-2**82*23**45),
            'q_tail_ratio_margin':str(3**8*5**45-6**45)}

def check_projection(row):
    p=row['p'];a=row['A'];b=row['B'];d=row['d'];y=row['y'];h=row['h'];nu=row['nu']
    q=row['q_residue'];s=row['s_residue']
    dd,yy=pell(q)
    require(d%p==dd%p and y%p==yy%p)
    v=a*y;Qq=d+v;P=Qq+h*v;n=P*Qq*nu+2
    C=4*b*h-16*a*d-120*y-27*b
    require((a*b-3*(d-1))%p==0)
    require((d*d+d+1-3*y*y)%p==0)
    require((2*nu-h*d+Qq)%p==0)
    require((v*nu*nu-P*Qq*Qq+1)%p==0)
    require((nu*nu-b*y-(h+3)*d*d-(2*h+3)*d*v-(h+1)*v*v)%p==0)
    require(n%p==pow(2,s,p))
    require(C%p==row['C'])
    _,F,D,N,T,Delta=delta_data(a,b,C)
    require(Delta%p==row['Delta_mod_p'] and Delta%p!=0)
    cs=C*pow(4,-1,p)%p;fs=F*pow(16,-1,p)%p
    require(primitive(cs,fs)%p!=0)
    return {**row,'normalized_Pi_mod_p':primitive(cs,fs)%p,
            'P_mod_p':P%p,'Q_mod_p':Qq%p,'n_mod_p':n%p}

def source_divisibility_boundary():
    examples=[
      {'kind':'p_divides_A','p':11,'q_residue':0,'A':0,'B':7,'d':1,'y':1,'h':5,'nu':2,'s_residue':2,'C':7,'Delta_mod_p':9},
      {'kind':'p_divides_B','p':11,'q_residue':0,'A':1,'B':0,'d':1,'y':1,'h':4,'nu':1,'s_residue':8,'C':7,'Delta_mod_p':6},
    ]
    out=[check_projection(row) for row in examples]
    # A=0 exact weak algebraic tuple extends the first residue to every 11-adic precision.
    z,f,D,N,T,Delta=delta_data(0,-4,-92)
    require(Delta==-2**16*3**2*229*9337*54083 and Delta%11!=0)
    return {'status':'PASS','examples':out,'A_zero_weak_Delta':Delta,
            'scope':'local modular necessary-equation projections only; NOT original NC inputs; no prime-power or real recovery asserted',
            'conclusion':'p|A or p|B does not by itself force p|Delta or p|Pi in these local equations'}

def failure_projection():
    q=5;d,y=pell(q);a=1967108;b=3*(d-1)//a
    require(a*b==3*(d-1) and b==186055766575973532)
    require(y<2**17*a**3 and a//4>q*q and b>16*a and b%16==12)
    require(a**11<2**41*d**5 and a**7<2**105*d**3)
    v,w=a*y,b*y
    S=v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*w
    z=isqrt(S);require(z*z<S<(z+1)**2)
    return {'scope':'old cofactor projection; no restored integer C or h asserted',
            'q':q,'A':a,'B':b,'d':d,'y':y,'new_A11_cone':True,'new_A7_cone':True,
            'full_square':False,'S_floor_sqrt':z,'gap_above':S-z*z,'gap_below':(z+1)**2-S,
            'not_claimed':['full new integer-C tests','all historical gates','NC3','an original (n,j)']}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();cert=json.loads(args.certificate.read_text())
    out={'terminal':terminal_check(cert),'rational_budgets':budgets(),'source_parity':parity_regression(),
         'integer_invariants':invariant_regression(),'source_divisibility_boundary':source_divisibility_boundary(),
         'failure_projection':failure_projection()}
    broken=copy.deepcopy(cert);broken['witnesses']=broken['witnesses'][:-1]
    try:terminal_check(broken)
    except AssertionError:out['missing_cell_rejected']=True
    else:raise AssertionError('incomplete certificate accepted')
    false=None
    for row in cert['witnesses'][:20]:
        for p in [5,7,11,13]:
            empty,_,witness=local_empty(p,row['q'],row['C'])
            if not empty:
                false={**row,'p':p,'witness':witness};break
        if false:break
    require(false is not None)
    bad=copy.deepcopy(cert)
    for row in bad['witnesses']:
        if (row['q'],row['C'])==(false['q'],false['C']):row['p']=false['p'];break
    try:terminal_check(bad)
    except AssertionError:out['false_local_exclusion_rejected']=false
    else:raise AssertionError('false local exclusion accepted')
    out['proof_level']='paper derivations + exact finite checks by author; not Lean or external review'
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(out,sort_keys=True,indent=2)+'\n')
    print('NORMALIZED_INTEGER_NORM=PASS; SAMPLES='+str(out['integer_invariants']['arbitrary_integer_samples']))
    print('FIVE_ADIC_ZERO_OBSTRUCTION=PASS; MODULUS=625; SURVIVORS=0')
    print('RATIONAL_BUDGETS=PASS; CHECKS='+str(out['rational_budgets']['check_count']))
    print('SAME_ORIGIN_PARITY16=PASS; STATES=14')
    print('C_LE_Q3_TERMINAL=PASS; GRID=9697; PARITY_EXCLUDED=4850; EMPTY_CELLS=4847; UNCOVERED=0')
    print('SOURCE_DIVISIBILITY_WEAK_PROJECTIONS=PASS; NOT_NC_INPUTS')
    print('BAD_CERTIFICATES_REJECTED=PASS')
    print('ROUND23_VERIFY=PASS')
if __name__=='__main__':main()
