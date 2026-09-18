"""Standard-library receiver for the new algebraic and original-input obligations.

This verifies exact algebra and the stated finite certificates. The all-integer
quantifiers are justified by PROOFS.md, not by testing many original inputs.
"""
from __future__ import annotations
from collections import Counter
from fractions import Fraction as F
from hashlib import sha256
from math import gcd, isqrt, prod
from pathlib import Path
import argparse
import json
import sys

from poly_exact import const, add, sub, scale, mul, power
from consumer import inspect, prove_if_triggered, rough6, source_defect

ROOT=Path(__file__).resolve().parents[1]
X={(1,0):F(1)}; Y={(0,1):F(1)}
ONE=const(1)


def eq(a,b,label):
    d=sub(a,b)
    if d:
        raise AssertionError(f"{label}: nonzero exact coefficient {next(iter(d.items()))}")


def comp(p,a,b):
    return add(*(scale(mul(power(a,i),power(b,j)),c) for (i,j),c in p.items()))


def terms(p):
    return [[i,j,c.numerator,c.denominator] for (i,j),c in sorted(p.items())]


def evaluate(p,a,b=0):
    return sum(c*a**i*b**j for (i,j),c in p.items())


def coefficient_x(p,k):
    return {(j,0):c for (i,j),c in p.items() if i==k}


def as_univariate_list(p):
    return [[i,c.numerator,c.denominator] for (i,j),c in sorted(p.items()) if j==0]


def positive_coefficients(p,label):
    assert p.get((0,0),0)>0,label+' constant'
    assert all(c>0 for c in p.values()),label+' coefficients'


def make_polynomials():
    n,u=X,Y
    P=add(scale(mul(sub(n,const(3)),sub(n,const(4))),4),scale(mul(n,u),-9),scale(power(u,2),27))
    H=add(scale(mul(sub(n,const(3)),sub(n,const(4))),16),scale(mul(sub(n,const(3)),u),-36),scale(power(u,2),27))
    T=sub(scale(mul(sub(n,const(5)),sub(n,const(4)),sub(n,const(3))),8),mul(sub(u,ONE),H))
    K=add(scale(power(n,2),10),scale(mul(n,u),-36),scale(n,-34),scale(power(u,2),27),scale(u,81),const(12))
    return P,T,H,K


def hash_check():
    sums=ROOT/'SHA256SUMS'
    if not sums.exists():
        raise AssertionError('Missing SHA256SUMS')
    seen=set()
    for line in sums.read_text().splitlines():
        digest,name=line.split('  ',1)
        assert name not in seen and not name.startswith('/') and '..' not in Path(name).parts
        seen.add(name)
        p=ROOT/name
        assert p.is_file(),name
        assert sha256(p.read_bytes()).hexdigest()==digest,'hash '+name
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
    assert actual==seen,{'missing':sorted(seen-actual),'unlisted':sorted(actual-seen)}
    return len(seen)


def check_algebra():
    c=json.loads((ROOT/'evidence/algebra.json').read_text())
    P,T,H,K=make_polynomials(); n,u=X,Y
    for name,p in [('P',P),('T',T),('H7',H),('K',K)]:
        assert terms(p)==c[name],name
    # Positivity and strict upper bounds on n>=14, 0<U<n/3.
    eq(P,add(scale(power(sub(u,scale(n,F(1,6))),2),27),scale(power(n,2),F(13,4)),scale(n,-28),const(48)),'P square completion')
    positive_coefficients(comp(add(scale(power(n,2),F(13,4)),scale(n,-28),const(48)),add(X,const(14)),Y),'P positive tail')
    eq(T,add(mul(sub(sub(n,const(3)),u),P),mul(sub(n,const(3)),sub(n,const(4)),sub(scale(sub(n,const(3)),4),scale(u,3)))),'T positive division')
    V=add(scale(power(u,2),27),scale(mul(n,u),-36),scale(u,81),scale(power(n,2),16),scale(n,-76),const(84))
    eq(sub(scale(power(n,3),8),T),add(mul(u,V),scale(power(n,2),80),scale(n,-264),const(288)),'T upper bound')
    positive_coefficients(comp(V,add(X,const(14)),sub(scale(add(X,const(14)),F(1,3)),Y)),'V positive quadrant')
    positive_coefficients(comp(add(scale(power(n,2),80),scale(n,-264),const(288)),add(X,const(14)),Y),'T upper positive tail')
    eq(sub(scale(mul(sub(n,const(3)),sub(n,const(4))),4),P),scale(mul(u,sub(n,scale(u,3))),9),'strict central gap')
    # Actual centre squared precision, not two independent constraints.
    W=sub(add(scale(n,2),const(4)),scale(u,9))
    eq(add(scale(add(mul(sub(n,ONE),sub(u,const(2))),const(2)),9),mul(sub(n,ONE),W)),scale(power(sub(n,const(4)),2),2),'centre equivalence')
    cp=scale(comp(P,add(X,const(4)),scale(sub(add(scale(X,2),const(12)),Y),F(1,9))),3)
    ct=scale(comp(T,add(X,const(4)),scale(sub(add(scale(X,2),const(12)),Y),F(1,9))),27)
    assert terms(cp)==c['centre_P_3']
    assert terms(ct)==c['centre_T_27']
    assert all(i+2*j>=2 for i,j in cp),'P centre C^2'
    assert all(i+2*j>=2 for i,j in ct),'T centre C^2'
    # Whole row and endpoint divisibility.
    eq(comp(P,const(3),Y),scale(mul(Y,sub(Y,ONE)),27),'P row3')
    eq(comp(P,const(4),Y),scale(mul(Y,sub(scale(Y,3),const(4))),9),'P row4')
    assert all(i+j>=2 for i,j in comp(T,add(X,const(3)),Y)),'T E3 full square'
    for r,val in [(3,1),(4,0),(4,1),(5,1)]:
        assert evaluate(T,F(r),F(val))==0
    # Prime-power contacts for coprimality after normalizing full blocks.
    cases={
      'E3':(add(X,const(3)),mul(X,Y),1,2),
      'I3':(add(X,const(3)),add(ONE,mul(X,Y)),1,1),
      'E4':(add(X,const(4)),mul(X,Y),1,1),
      'C':(add(X,const(4)),scale(sub(add(scale(X,2),const(12)),mul(Y,power(X,2))),F(1,9)),2,2),
    }
    contacts={}
    for name,(a,b,op,ot) in cases.items():
        pp,tt=comp(P,a,b),comp(T,a,b)
        assert all(i>=op for i,j in pp) and all(i>=ot for i,j in tt),name+' lower terms'
        pi,ti=coefficient_x(pp,op),coefficient_x(tt,ot)
        cc={'P_order':op,'T_order':ot,'P_initial':as_univariate_list(pi),'T_initial':as_univariate_list(ti)}
        assert cc==c['contacts'][name],name
        contacts[name]=(pi,ti)
    assert evaluate(contacts['E3'][1],F(-4,27))==F(-40,9)
    eq(add(*contacts['I3']),const(3),'I3 coprimality')
    eq(sub(contacts['E4'][1],contacts['E4'][0]),const(4),'E4 coprimality')
    eq(add(contacts['C'][0],scale(contacts['C'][1],3)),const(10),'C coprimality')
    assert evaluate(P,4,1)==-9
    eq(comp(P,X,scale(sub(X,const(3)),F(4,3))),scale(mul(sub(X,const(3)),sub(X,const(4))),40),'off-source coprimality')
    assert [evaluate(P,F(5),q) for q in (F(0),F(1),F(3,2))]==[8,-10,F(5,4)]
    # Nu cannot be forced into L3 or L4: the relevant full local expansions.
    eq(comp(K,X,ONE),scale(mul(sub(X,const(3)),sub(X,const(4))),10),'K at U=1')
    ki=comp(K,add(X,const(3)),add(Y,ONE))
    ka=comp(K,add(X,const(4)),add(Y,ONE))
    assert ki.get((1,0))==-10 and ka.get((1,0))==10
    assert evaluate(K,0,0)%9==3
    for u0 in range(9): assert evaluate(K,0,u0)%9==3
    # Prime 3 in L3 when 3|nu; the other small primes are excluded by U.
    for u0 in (1,4,7): assert (-3*u0)%9==6
    return {'algebra_tables':len(c),'complete_contact_types':len(cases),'new_identities':'all exact'}


def check_small_parts_and_factorization():
    c=json.loads((ROOT/'evidence/claims.json').read_text())
    assert c['tail_small_parts']=={'1280':[1,1,4],'1530':[1,3,2]}
    assert c['old_mass_constants']=={'1280':9,'1530':125}
    assert c['even_multipliers']=={'1280':256,'1530':1152}
    assert c['RES10_nearside_inequality']=={'left_coefficient':4608,'right_coefficient':5}
    P,T,H,K=make_polynomials()
    # Complete residue cells; these are polynomial congruence proofs, not exponent scans.
    cells=0
    for n0 in range(32):
      for u0 in range(32):
        if n0%8==0 and u0%4==0:
            assert evaluate(P,n0,u0)%16==0 and evaluate(T,n0,u0)%16==0;cells+=1
        if n0%8==2 and u0%8==0:
            assert evaluate(P,n0,u0)%16==8 and evaluate(T,n0,u0)%32==16;cells+=1
    for u0 in range(9):
        assert evaluate(P,0,u0)%9==3 and evaluate(T,0,u0)%3==0
    assert evaluate(P,0,0)%5==3
    assert F(1)-F(41,1280)>F(8,9)
    assert F(1)-F(41,1530)>F(243,250)
    assert F(1**5*4**4,32)==8
    assert F(3**5*2**4,32)==F(243,2)
    assert 16*16==256 and 24*48==1152
    # Exact monomial identity after the proven positive integer substitutions.
    U=Counter(g=2,E3=1,E4=1,Q50=1,zeta=1)
    W=Counter(I3=1,A4=1,Q51=1,nu=1)
    PP=Counter(E3=1,I3=1,E4=1,C=2,LP=1)
    TT=Counter(E3=2,I3=1,E4=1,A4=1,C=2,Q51=1,L6=1)
    total=Counter(N=10)
    for p,m in ((U,2),(W,3),(PP,1),(TT,1)):
        for key,value in p.items():total[key]+=m*value
    expected=Counter(g=4,N=10,E3=5,I3=5,E4=4,A4=4,C=4,Q50=2,Q51=4,zeta=2,nu=3,LP=1,L6=1)
    assert total==expected
    assert F(125,1152*100)==F(5,4608)
    assert F(9*3*10,4*3*2)==F(45,4),'gap coefficient'
    assert c['absolute_global_bound'] is False and c['finite_bottom'] is None
    return {'residue_cells':cells,'factorization_variables':len(total),'finite_bottom':'not needed'}


def is_prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))


def val_binom(n,j,p):
    ans=0;P=p
    while P<=n:
        ans+=n//P-j//P-(n-j)//P;P*=p
    return ans


def check_data(n,j,data):
    a=inspect(n,j)
    for key in ('n','j','g','E3','E4','A4','C','Q50','Q51','old_mass'):
        assert a[key]==data[key],key
    for r,d in data['source_defects'].items():assert source_defect(n,j,int(r))==d
    return a


def check_witnesses():
    w=json.loads((ROOT/'evidence/witnesses.json').read_text())
    f=w['all_five_slots_family'];B=7*11*13*17;a=13938
    assert (f['B'],f['j_coefficient'],f['exponent_base'],f['exponent_step'])==(B,a,7,4200)
    for p in (7,11,13,17,19,29,41):assert is_prime(p)
    for m in (9000,7,11,13,17,29):assert pow(19,4200,m)==1
    P=19**7;n=2*B*P+4;j=a*P+2
    z=check_data(n,j,f['base'])
    assert n%9000==5130 and j%2==0 and 7<=j<=n//2
    q4=rough6(n-4); assert q4==B*P
    for p,b in f['slots'].items():assert j%(P if int(p)==19 else int(p))==b
    assert z['C']==P and z['A4']==221 and z['E4']==77
    assert z['old_mass']<125*n and (n-5)%29==0
    assert prove_if_triggered(n,j)['consumer']=='CENTRE_LT_NEARSIDE'
    assert val_binom(n,6,41)>0 and val_binom(n,j,41)>0
    bound=(4*(B-a))**4*((a+4*B)*(6*B-a))**2*((a+2*B)*(4*B-a))**4
    assert bound==f['uniform_old_mass_bound']
    assert 7+4200>=847 and bound<125*(2*B*19**847+4)
    # Exact first-window/square input on which the centre comparison does not trigger.
    e=w['first_row_amplification_example'];v=e['w']
    assert len(e['moduli'])==len(e['residues'])
    assert all(v%m==r for m,r in zip(e['moduli'],e['residues']))
    assert is_prime(1399) and 145**2%1399==40 and (70*701*40-3)%1399==0
    n=70*(701**2*v*v-10);j=70*701*v*v;k=n-j
    z=check_data(n,j,e['data'])
    assert (n-1)*j*k==10*e['Y']**2
    assert e['Y']==70*(n-1)*v and z['first_window']
    assert z['g']==70 and z['C']==1<1399==z['A4']
    assert z['old_mass']<125*n and z['amplified_mass']>=125*n
    assert rough6(n-5)%47==0 and (n//70)%13==0
    assert prove_if_triggered(n,j)['consumer']=='RESIDUAL_AMPLIFICATION'
    assert val_binom(n,6,7)>0 and val_binom(n,j,7)>0
    # Balanced three-growing-block q4 example. No individual q4 source power dominates.
    b=w['balanced_all_five_example'];ee=b['exponent']
    assert ee==468 and b['exponent_step']==700
    qq=403*(7*19*23)**ee; nb=2*qq+4
    mods=[7**ee,13,19**ee,23**ee,31]; rs=[0,1,2,4,3]
    root=0; modulus=1
    for mm,rr in zip(mods,rs):
        root+=modulus*((rr-root)*pow(modulus,-1,mm)%mm);modulus*=mm
    assert modulus==qq
    jb=root if root%2==0 else (4-root)%qq
    for mm,rr in zip(mods,rs):
        assert jb%mm==(rr if root%2==0 else (4-rr)%mm)
    ab=inspect(nb,jb)
    assert nb%9000==5130 and jb%2==0 and 7<=jb<=nb//2
    assert ab['C']==19**ee and ab['A4']==403 and ab['central_balance_trigger']
    assert ab['g']==b['g']==10 and ab['Q50']==b['Q50']==29 and ab['Q51']==b['Q51']==1
    assert ab['old_mass']<125*nb and not ab['first_window']
    assert all((nb-1)*gcd(nb-4,jb-bb)**2 < 12*(nb-4)**2 for bb in range(5))
    assert all((qq//mm)**3>nb for mm in mods)
    assert rough6(nb-5)%29==0
    assert is_prime(73) and (nb-1)%73==0 and (nb-1)%(73*73)!=0
    assert val_binom(nb,jb,73)==b['target_valuation']==437
    assert val_binom(nb,6,73)==1 and jb%73>1
    assert prove_if_triggered(nb,jb)['consumer']=='CENTRE_LT_NEARSIDE'
    for mm in (9000,29): assert pow(3059,700,mm)==1
    # A quantified failure of the scalar-recovery shortcut, not an NC model.
    d=w['scalar_gap_diagnostic'];g=d['g'];C=d['C'];L3=d['L3']
    assert g==190 and C==7 and L3==11
    A4=C+45*g**3*L3//4;E3=A4*41+g*C*L3
    assert d['A4']==A4 and d['E3']==E3
    Bterm=E3*C
    assert 5**21>Bterm and Bterm%2==1 and gcd(Bterm,5)==1
    assert gcd(E3,C)==gcd(E3,A4)==gcd(A4,C)==1
    ell7=5**21-Bterm
    assert ell7>0 and ell7%2==0 and gcd(ell7,Bterm)==1
    assert A4-C==45*g**3*L3//4 and E3==A4*41+g*C*L3
    assert is_prime(41) and gcd(41,13*17*23*61)==1
    return {'original_input_certificates':3,'all_five_q4_slots':True,
            'uniform_symbolic_family':'E=7+4200t, all t>=0',
            'scalar_diagnostic':'not an original NC input'}


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--json',action='store_true')
    ap.add_argument('--skip-hashes',action='store_true',help='development only; not release verification')
    args=ap.parse_args()
    count=None if args.skip_hashes else hash_check()
    result={'status':'PASS_CENTRE_BALANCE_RESIDUAL_AMPLIFICATION',
            'hash_members':count,'algebra':check_algebra(),
            'integer_normalization':check_small_parts_and_factorization(),
            'witnesses':check_witnesses(),
            'evidence_grade':'author paper + same-session deterministic replay; no Lean',
            'general_RES10_closed':False,'absolute_global_bound':False}
    if not args.skip_hashes:assert count==hash_check()
    print(json.dumps(result,ensure_ascii=False,indent=2) if args.json else result['status'])

if __name__=='__main__':
    main()
