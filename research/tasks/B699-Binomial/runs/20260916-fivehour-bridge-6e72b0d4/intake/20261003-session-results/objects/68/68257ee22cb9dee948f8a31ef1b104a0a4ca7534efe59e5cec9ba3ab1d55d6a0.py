#!/usr/bin/env python3
"""Independent exact checker for D-R03; does not import the builder.
Uses quadratic-ring powering, division-free local enumeration, and a bounded-divisor lattice.
"""
from __future__ import annotations
import argparse, copy, json, math
from pathlib import Path

def dump(x):return json.dumps(x,ensure_ascii=False,sort_keys=True,indent=2)+'\n'
def need(ok,msg):
    if not ok:raise ValueError(msg)
def val(n,p):
    need(n>0,'positive valuation argument');r=0
    while n//p*p==n:r+=1;n//=p
    return r

def rmul(a,b):return (a[0]*b[0]+3*a[1]*b[1],a[0]*b[1]+a[1]*b[0])
def rpow(n):
    a=(2,1);z=(1,0)
    while n:
        if n&1:z=rmul(z,a)
        a=rmul(a,a);n//=2
    return z

def source(q):
    U,X=rpow(8*q+1)
    need(U%2==0 and X%2==1,'source half-integrality')
    return (3*X-1)//2,U//2

def local(ell,q,A):
    d,y=source(q);d%=ell;y%=ell;v=A*y%ell;Q=(d+v)%ell
    rows=[]
    # No modular inverses; includes every zero P,Q,H residue.
    for B in range(ell):
        if (A*B-3*(d-1))%ell:continue
        for H in range(ell):
            for h in range(ell):
                if (h*d-4*H-Q)%ell:continue
                P=(Q+h*v)%ell
                if (4*v*H*H-P*Q*Q+1)%ell:continue
                F=(4*d*v*H*H-4*v*Q*Q*H-Q**4+d)%ell
                N=(4*v*H**3+H+Q)%ell;n=(2*P*Q*H+2)%ell
                Z=(2*d*H-Q*Q)%ell
                S=(v**4+5*d*v**3+10*d*d*v*v+10*d**3*v+5*d**4+d*d*B*y)%ell
                if F or (2*N-n*Q)%ell or (Z*Z-S)%ell:continue
                rows.append(dict(ell=ell,q_mod_period=q,A=A,d=d,y=y,B=B,v=v,H=H,h=h,P=P,Q=Q,
                                 E=0,F=F,N=N,n=n,Z=Z,S=S))
    return sorted(rows,key=lambda x:(x['H'],x['h'],x['B']))

# A separate multivariate integer polynomial implementation, with positional exponent tuples.
VARS=('P','Q','v','nu','A','B','d','y','h','D','c','b','a')
Z=(0,)*len(VARS)
class Poly:
    def __init__(self,x=0):
        if isinstance(x,dict):self.terms={k:v for k,v in x.items() if v}
        elif isinstance(x,str):
            a=list(Z);a[VARS.index(x)]=1;self.terms={tuple(a):1}
        else:self.terms={} if x==0 else {Z:x}
    def __add__(self,o):
        if not isinstance(o,Poly):o=Poly(o)
        r=dict(self.terms)
        for m,c in o.terms.items():r[m]=r.get(m,0)+c
        return Poly(r)
    __radd__=__add__
    def __neg__(self):return Poly({m:-c for m,c in self.terms.items()})
    def __sub__(self,o):return self+-poly(o)
    def __rsub__(self,o):return poly(o)+-self
    def __mul__(self,o):
        o=poly(o);r={}
        for a,ca in self.terms.items():
            for b,cb in o.terms.items():
                m=tuple(x+y for x,y in zip(a,b));r[m]=r.get(m,0)+ca*cb
        return Poly(r)
    __rmul__=__mul__
    def __pow__(self,n):
        r=Poly(1)
        while n:
            if n%2:r=r*self
            self=self*self;n//=2
        return r

def poly(x):return x if isinstance(x,Poly) else Poly(x)
def decode(rows):
    r={}
    for t in rows:
        need(t['coefficient']!=0,'zero serialized coefficient')
        m=tuple(t['monomial'].get(v,0) for v in VARS)
        need(all(isinstance(e,int) and e>=0 for e in m),'bad exponent')
        need(set(t['monomial'])<=set(VARS) and m not in r,'bad/duplicate monomial')
        r[m]=t['coefficient']
    return Poly(r)

def check_polys(rows):
    P,Q,v,nu=(Poly(x) for x in ('P','Q','v','nu'))
    err=v*nu**2-P*Q**2+1
    lin=P*(Q-v)-Q**2-2*v*nu
    n=P*Q*nu+2; j=(P+nu)*Q**2;k=(Q**2+v*nu)*P
    expected=[('original_j_plus_k',j+k-n,-2*err-nu*lin),
      ('original_first_window_factorization',(P+nu)*(Q**2+v*nu)-(n-1),-err-nu*lin),
      ('original_square_class_transfer',(n-1)*j*k-P*((n-1)*Q)**2,-P*Q**2*(n-1)*(err+nu*lin))]
    A,B,d,y,h=(Poly(x) for x in ('A','B','d','y','h'))
    QQ=d+A*y;PP=QQ+h*A*y;K=A*B-3*(d-1)
    expected += [('Q_minus_one_full_quotient',3*(QQ-1)-A*(B+3*y),-K),
                 ('P_minus_one_full_quotient',3*(PP-1)-A*(B+3*(h+1)*y),-K)]
    D,c,b,a=(Poly(x) for x in ('D','c','b','a'))
    for eps in (-1,1):
        J=b*D+eps*a;N=2*c*D
        expected.append(('square_root_divisor_epsilon_'+str(eps),J*(N-J)-a*a*(N-1),
                         D*(b*(2*c-b)*D+2*eps*(c-b)*a-2*c*a*a)))
    need(len(rows)==len(expected),'identity count')
    for row,(name,lhs,rhs) in zip(rows,expected):
        need(row['name']==name,'identity name')
        need(lhs.terms==rhs.terms,'rederived identity failed '+name)
        need(decode(row['lhs']).terms==lhs.terms and decode(row['rhs']).terms==rhs.terms,'identity coefficient mismatch '+name)

def primes_to(n):
    a=bytearray(b'\1')*(n+1);a[0:2]=b'\0\0'
    for p in range(2,math.isqrt(n)+1):
        if a[p]:a[p*p:n+1:p]=b'\0'*((n-p*p)//p+1)
    return [p for p in range(2,n+1) if a[p]]

def verify_terminal(t):
    q=6;bound=6**6;d,y=source(q);N=3*(d-1)
    need({k:t[k] for k in ('q','G_bound','d','y','N_for_A_divisibility','v3_A','v13_A','valuation_superset_v2_A')}==
         dict(q=q,G_bound=bound,d=d,y=y,N_for_A_divisibility=N,v3_A=3,v13_A=1,valuation_superset_v2_A=[1,2,3]),'terminal constants')
    # Factor only at primes <= bound. No primality claim about the leftover is needed.
    rem=N;fac=[]
    for p in primes_to(bound):
        if rem%p==0:
            e=0
            while rem%p==0:rem//=p;e+=1
            fac.append([p,e])
    divisors={1}
    for p,e in fac:
        if p in (2,3,13):continue
        options=[];pw=1
        for _ in range(e+1):
            if pw<=bound:options.append(pw)
            pw*=p
        divisors={a*b for a in divisors for b in options if a*b<=bound}
    metadata={'factors_extracted_up_to_bound':fac,'unfactored_remainder_with_no_small_prime_factor':rem,
              'coprime_78_divisors_up_to_bound':sorted(divisors)}
    need(t['divisor_lattice_metadata']==metadata,'bounded divisor lattice')
    rows=[];counts=[]
    for r in range(1,4):
        C=(1<<r)*27*13
        # Count the residue screening by one period, not by the builder's G grid.
        period=78*35;valid=[]
        for residue in range(1,period+1):
            if math.gcd(residue,78)==1 and (C*residue)%5==1 and (C*residue)%7 in (2,4):valid.append(residue)
        count=sum((bound-x)//period+1 for x in valid if x<=bound)
        counts.append(dict(v2_A=r,C=C,raw_G_candidates=bound,coprime_and_residue_candidates=count))
        for G in sorted(divisors):
            A=C*G
            if A%5!=1 or A%7 not in (2,4) or N%A:continue
            B=N//A;A0=A//13;expected=(-A0 if A%7==2 else 6*A0)%13
            rows.append(dict(v2_A=r,A=A,G=G,B=B,A0=A0,A_mod_7=A%7,normalized_q_mod_13=6,
                             required_normalized_q_mod_13=expected,true_13_unit_pass=expected==6,
                             old_y_bound_pass=y<2**17*A**3,y_minus_2pow17_Acube=y-2**17*A**3))
    need(t['counts']==counts,'residue counts')
    need(t['complete_divisibility_survivors']==rows,'independent terminal enumeration')
    need(t['survivors_after_true_13_unit']==sum(r['true_13_unit_pass'] for r in rows)==0,'terminal not empty')
    return len(divisors)

def modpow_repeat(base,exp,m):
    r=1
    # Separate right-to-left binary algorithm, with direct multiplication checks below.
    while exp:
        if exp&1:r=r*base%m
        base=base*base%m;exp>>=1
    return r

def verify(x):
    need(x['schema']=='B699-D-R03-certificate-v1','schema')
    need(x['scope']=='adopted same original n,j balanced canonical core; not a complete NC3 characterization','scope')
    expected=[]
    for c in (1,3):
        for b in range(1,c+1):
            N=b*(2*c-b)
            div=[a for a in range(1,N+1,2) if N%a==0 and math.gcd(a,c)==1]
            expected.append(dict(c=c,b=b,dividend=N,admissible_odd_a=div))
    need(x['square_root_divisor_cases']==expected,'square coefficient divisors')
    need(max(a for z in expected for a in z['admissible_odd_a'])==5,'square maximum')
    e5=[dict(q_mod_3=q,A_mod_5=A,roots=local(5,q,A)) for q in (0,2) for A in (1,4)]
    e7=[dict(A_mod_7=A,roots=local(7,0,A)) for A in (2,4)]
    need(x['mod5_factor_placement']==e5,'division-free mod5 roots')
    need(x['mod7_complete_Q']==e7,'division-free mod7 roots')
    need([len(z['roots']) for z in e5]==[2,2,1,0],'mod5 complete counts')
    selected=[r for r in e5[0]['roots'] if r['P']!=0]
    need(len(selected)==1 and selected[0]['H']==0 and selected[0]['Q']==2 and selected[0]['P']==4,'H-only five allocation')
    need(all(r['P']==0 for r in e5[2]['roots']),'q2 forces P-five')
    need(all(r['Q']==0 for r in e5[1]['roots']),'negative A forces Q-five')
    ee=[]
    for r in range(1,7):
        z=1
        for f in range(1,7):
            z=z*r%7
            if z in (3,5):ee.append(dict(base_mod_7=r,exponent_mod_6=f%6,Q_mod_7=z))
    need(x['complete_Q_exponent_table_7']==ee,'Q exponent six')
    need(all(math.gcd(r['exponent_mod_6'],6)==1 for r in ee),'Q exponent not coprime six')
    ee13=[];ep13=[]
    for r in range(1,13):
        z=1
        for f in range(1,13):
            z=z*r%13
            if z==1 and f in (1,5,7,11):ee13.append(dict(base_mod_13=r,exponent_mod_12=f,Q_mod_13=1))
            if z==1 and f%2:ep13.append(dict(base_mod_13=r,exponent_mod_12=f))
    need(x['complete_Q_base_table_13']==ee13 and {a['base_mod_13'] for a in ee13}=={1},'Q original base modulo 13')
    need(x['odd_P_base_table_13']==ep13 and {a['base_mod_13'] for a in ep13}=={1,3,9},'P odd base modulo 13')
    check_polys(x['symbolic_identities'])
    regs=[]
    for q in range(1,65):
        d,y=source(q);U,_=rpow(4*q+1);_,X=rpow(4*q)
        need(d-1==3*U*X,'Pell multiplication identity')
        z=dict(q=q,v2_3dminus3=val(3*(d-1),2),v3_3dminus3=val(3*(d-1),3),d_mod_4=d%4,y_mod_4=y%4)
        need(z['v2_3dminus3']==4+val(q,2) and z['v3_3dminus3']==2+val(q,3),'valuation constants')
        regs.append(z)
    need(x['valuation_regressions_not_uniform_proofs']==regs,'valuation samples')
    # Full congruence derivation of B mod4, before asserting B is a unit elsewhere.
    for A in (0,2):
        for H in range(4):
            Q=(1+A)%4;h=Q
            for B in range(4):
                div=(B+h+3+(2*h+3)*A+(h+1)*A*A-4*H*H)%4
                if div==0:need(B==0,'B must be divisible by 4')
    coeff=[]
    for am7,B,H in ((2,5,4),(4,9,1)):
        h=(4*H+1)%13
        # Avoid division: choose the unique coefficients from multiplication by 3.
        cq=next(z for z in range(13) if 3*z%13==(B+3)%13)
        cp=next(z for z in range(13) if 3*z%13==(B+3*(h+1))%13)
        need(cq!=0 and cp!=0,'zero source unit')
        coeff.append(dict(A_mod_7=am7,q_mod_3=0,d_mod_13=1,y_mod_13=1,B_mod_13=B,H_mod_13=H,
                          h_mod_13=h,P_mod_13=1,Q_mod_13=1,Q_minus_one_over_A_mod_13=cq,
                          P_minus_one_over_A_mod_13=cp,normalized_q_over_A0_mod_13=12 if am7==2 else 6))
    need(x['full_source_13_units']==coeff,'full source quotient units')
    lifts=[]
    for u in range(1,4):
        for t in range(3):
            for z in (1,2,5):
                for m in (1,5):
                    a=u+t;base=1+13**u*z;exp=13**t*m;mod=13**(a+1)
                    # Sum binomial coefficients exactly modulo the desired precision.
                    # Terms with exponent u*k >= a+1 vanish and are not evaluated.
                    out=0;max_k=min(exp,a//u)
                    for k in range(max_k+1):out=(out+math.comb(exp,k)*(base-1)**k)%mod
                    residue=(out-1)%mod
                    need(residue==modpow_repeat(base,exp,mod)-1,'binomial/power disagreement')
                    need(residue%13**a==0 and residue//13**a==m*z%13 and residue!=0,'full lift unit sample')
                    lifts.append(dict(base=base,exponent=exp,u=u,t=t,z=z,m=m,a=a,residue_mod_13pow_a_plus1=residue,unit=residue//13**a))
    need(x['binomial_lift_examples_not_uniform_proofs']==lifts,'lift samples')
    tail=dict(q_start=9,cofactor_degree=6,smooth_part_factor=468,denominator_power=21,base_numerator=37,base_denominator=10,
              base_strict_difference=37**73-(1<<19)*468**3*9**21*10**73,
              monotone_strict_difference=37**8*9**21-10**29)
    need(x['cofactor6_tail']==tail and tail['base_strict_difference']>0 and tail['monotone_strict_difference']>0,'uniform tail arithmetic')
    nd=verify_terminal(x['cofactor6_terminal'])
    need(x['boundary_fixtures']==dict(composite_P=65,composite_Q=1795,note='These violate the complete-prime-power hypothesis; not original inputs'),'boundary data')
    need(65%8==1 and 65%5==0 and math.isqrt(65)**2!=65,'composite P fixture')
    need(1795==5*359 and 1795%13==1 and 1795%7==3,'composite Q fixture')
    need(x['parent_entry']==dict(A_modulus=8190,A_residue=5616,old_labels=[[0,3,6],[2,3,6]],new_q_labels=[[0,3,6]],
                               refined_A_modulus=24570,refined_A_residue=5616,projection_not_actual_NC3_count=True),'parent entry')
    need([a for a in range(5616,24570,8190) if a%27==0]==[5616],'special A CRT')
    return dict(status='PASS',symbolic_identities=7,mod5_roots=5,mod7_roots=4,
                bounded_divisor_lattice_size=nd,terminal_exact_divisibility_survivors=1,terminal_full_13_survivors=0,
                valuation_regressions=64,lift_samples=len(lifts),paper_uniform_proofs_not_machine_formalized=True)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--certificate',type=Path,required=True)
    ap.add_argument('--output',type=Path);ap.add_argument('--negative-tests',action='store_true');a=ap.parse_args()
    x=json.loads(a.certificate.read_text(encoding='utf-8'));r=verify(x)
    if a.negative_tests:
        edits=[('drop_zero_P_root',lambda z:z['mod5_factor_placement'][2]['roots'].clear()),
          ('allow_square_P_divisor_9',lambda z:z['square_root_divisor_cases'][-1]['admissible_odd_a'].append(9)),
          ('alter_original_j_identity',lambda z:z['symbolic_identities'][0]['lhs'][0].__setitem__('coefficient',99)),
          ('allow_Q_even_exponent',lambda z:z['complete_Q_exponent_table_7'][0].__setitem__('exponent_mod_6',2)),
          ('allow_base5_under_13',lambda z:z['complete_Q_base_table_13'][0].__setitem__('base_mod_13',5)),
          ('swap_true_Q_13_unit',lambda z:z['full_source_13_units'][0].__setitem__('Q_minus_one_over_A_mod_13',4)),
          ('drop_terminal_candidate',lambda z:z['cofactor6_terminal']['complete_divisibility_survivors'].clear()),
          ('fake_terminal_13_pass',lambda z:z['cofactor6_terminal']['complete_divisibility_survivors'][0].__setitem__('true_13_unit_pass',True)),
          ('inflate_cofactor_constant',lambda z:z['cofactor6_tail'].__setitem__('smooth_part_factor',469)),
          ('change_lift_valuation',lambda z:z['binomial_lift_examples_not_uniform_proofs'][0].__setitem__('a',2)),
          ('revive_q2_branch',lambda z:z['parent_entry']['new_q_labels'].append([2,3,6])),
          ('claim_bad_new_A_lift',lambda z:z['parent_entry'].__setitem__('refined_A_residue',13806))]
        neg=[]
        for name,edit in edits:
            y=copy.deepcopy(x);edit(y)
            try:verify(y)
            except (ValueError,KeyError,IndexError,ArithmeticError):neg.append(dict(name=name,rejected=True))
            else:raise RuntimeError('Bad certificate not rejected: '+name)
        r['negative_tests']=neg
    text=dump(r)
    if a.output:a.output.parent.mkdir(parents=True,exist_ok=True);a.output.write_text(text,encoding='utf-8')
    print(text,end='')
if __name__=='__main__':main()
