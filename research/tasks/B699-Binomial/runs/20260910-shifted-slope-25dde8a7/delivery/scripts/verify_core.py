#!/usr/bin/env python3
"""Supplemental exact tests: full powers, two polynomial identities, zero branches, strips.
Finite tests are diagnostics; the universal arguments are in REPORT.md.
"""
import json, math
from pathlib import Path
from local_digit_probe import spf_sieve, blocks, bottom_candidates

def full_power_tests(N=160):
    spf=spf_sieve(N); checked=0; avoiding=0; equality_boundary=0
    for i in range(3,11):
        for n in range(2*i+2,N+1):
            B=blocks(n,i,spf)
            C=math.comb(n,i)
            for p,a,q,r,e in B:
                z=C; actual=0
                while z%p==0: z//=p; actual+=1
                assert actual==e and (n-r)%q==0
            literal=[]
            for j in range(i+1,n//2+1):
                if all(j%q<=r for p,a,q,r,e in B): literal.append(j)
                Cj=math.comb(n,j)
                for p,a,q,r,e in B:
                    checked+=1
                    if Cj%p:
                        avoiding+=1; equality_boundary+=(p==i)
                        assert j%q<=r
            assert literal==bottom_candidates(n,i,B)
    return dict(N=N,selected_prime_triple_checks=checked,avoiding_prime_checks=avoiding,
                avoiding_p_equals_i_checks=equality_boundary,bottom_seed_vs_literal=True)

def identities():
    import sympy as S
    a,b,g,u,t=S.symbols('a b g u t')
    R0=6*b*(a-b)*(2*a-b); R1=6*b*(a*a-b*b)
    E0=(u*t-36*b*b)*a*a+(3*u+54*b**3)*a-(3*b*u+18*b**4)
    E1=(u*t-18*b*b)*a*a-3*u*(a+b)+18*b**4
    assert S.expand(3*b*(u*(a*g-1)-R0).subs(g,(t*a+3)/(3*b))-E0)==0
    assert S.expand(3*b*(u*(a*g-1)-R1).subs(g,(t*a-3)/(3*b))-E1)==0
    # Independent integer evaluations without SymPy: t need not be integral for the expanded identity;
    # instead compare after replacing t*a by 3gb +/- 3 and multiplying through a.
    count=0
    for bv in range(1,15):
        for av in range(2*bv+1,2*bv+20):
            for gv in range(1,10):
                for uv in (1,6*bv**3,17):
                    for s in (0,1):
                        R=6*bv*((av-bv)*(2*av-bv) if s==0 else av*av-bv*bv)
                        ta=3*gv*bv+(-3 if s==0 else 3)
                        expanded=(uv*ta*av-(36 if s==0 else 18)*bv*bv*av*av)
                        expanded+=((3*uv+54*bv**3)*av-3*bv*uv-18*bv**4) if s==0 else (-3*uv*(av+bv)+18*bv**4)
                        assert expanded==3*bv*(uv*(av*gv-1)-R)
                        count+=1
    return dict(symbolic_identities=2,independent_integer_identity_checks=count)

def b1_certificate():
    # n/m-first enumeration, distinct from the u-first generator.
    stageA=[]; finalA=[]; stageB=[]
    for m in range(2,42):
        bound=6*(m-1)*(2*m-1)
        for j in range(4,(bound+1)//m+1):
            n=m*j+1
            if n%4 or 2*j>n or bound%(n-2): continue
            u=bound//(n-2)
            if u>35:continue
            stageA.append(dict(n=n,j=j,m=m,u=u))
            if 3*(j-1)%m==0: finalA.append(dict(n=n,j=j,m=m,u=u))
    for m in range(3,19):
        bound=6*(m*m-1)
        for j in range(4,(bound+1)//m+2):
            n=m*(j-1)+1
            if n%4 or 2*j>n or bound%(n-2): continue
            u=bound//(n-2)
            if u>24:continue
            stageB.append(dict(n=n,j=j,m=m,u=u))
    stageA.sort(key=lambda z:(z['n'],z['j']))
    assert stageA==[dict(n=56,j=11,m=5,u=4),dict(n=92,j=7,m=13,u=20)]
    assert finalA==[dict(n=56,j=11,m=5,u=4)] and not stageB
    assert math.comb(56,3)%3==math.comb(56,11)%3==0
    return dict(caseA_before_first_divisibility=stageA,caseA_final=finalA,caseB_before_first_divisibility=stageB,
                exceptional_caseB_u6=dict(m=3,j=4,n=10,rejected='4 does not divide n'))

def strip_diagnostic(N=3000):
    counts={1:0,3:0}
    for n in range(8,N+1,4):
        D=n-1
        for j in range(4,n//2+1):
            for kappa in (1,3):
                if kappa*j*(j-1)%D:continue
                if D%j==0 or D%(j-1)==0:continue
                m=D//j
                A=min(abs(D-m*j),abs(D-(m+1)*j))
                assert A>0 and n<=(kappa**3+2*kappa)*A*A
                counts[kappa]+=1
    return dict(N=N,nonzero_branch_checks=counts,nearest_multiple_suffices_for_all_integer_m=True)

if __name__=='__main__':
    out={'full_powers':full_power_tests(),'identities':identities(),'b1_certificate':b1_certificate(),'strip_diagnostic':strip_diagnostic()}
    path=Path(__file__).resolve().parents[1]/'evidence'/'core_verification.json'
    path.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
