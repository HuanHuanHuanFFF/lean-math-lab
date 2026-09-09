#!/usr/bin/env python3
"""Exact constant checks and non-vacuous full-prime-power examples.
These examples audit local interfaces; they do NOT prove B699 by scanning.
"""
from fractions import Fraction as F
from math import comb, prod
from pathlib import Path
import json
ROOT = Path(__file__).resolve().parents[1]

def factor(n):
    assert n > 0
    out = {}; p = 2
    while p*p <= n:
        while n % p == 0:
            out[p] = out.get(p, 0)+1; n //= p
        p += 1
    if n > 1: out[n] = out.get(n, 0)+1
    return out

def valuation(n, p):
    e = 0
    while n % p == 0:
        e += 1; n //= p
    return e

def main():
    checks = {}
    def positive(name, q):
        assert q > 0, (name, q)
        checks[name] = {"numerator": str(q.numerator), "denominator": str(q.denominator)}
    positive('log1000_lower_vs_20_over_3', 9*F(56,81)+3*F(1,5)-F(20,3))
    assert 9*F(25,36)+3*F(1,4) == 7
    positive('uniform_logX_coefficient_vs_61_over_400', F(1,3)-F(1,600)-F(357429,2000000)-F(61,400))
    positive('contradiction_margin', F(61,50)-(F(119143,100000)+F(21,1000)+F(1,4000)))
    positive('tail_bound_1_over_4095_vs_1_over_4000', F(1,4000)-F(1,4095))
    positive('logK_first_group', 666*F(5,96)-F(2))
    positive('log2_lower_vs_2_over_3', F(56,81)-F(2,3))
    positive('e_series_upper_vs_11_over_4', F(11,4)-F(87,32))
    positive('exp12_vs_400000', F(400000)-F(11,4)**12)
    positive('exp8_vs_3600', F(3600)-F(11,4)**8)
    positive('4900_vs_4095', F(4900-4095))
    # c is finite, while m is unbounded. The displayed slopes/intercepts
    # prove the inequalities for ALL m >= 333, not just sampled m.
    residue_certificates=[]
    for c in (1,2,3):
        # (2i+5)*lambda - 3E = 12m + (2c+5)(1-c).
        slope=12; intercept=(2*c+5)*(1-c)
        assert slope>0 and slope*333+intercept>0
        # i - 3*zeta*q/2 = 1-(c-1)^2/lambda,
        # lambda >= 3*333-c+1 > (c-1)^2.
        assert 3*333-c+1 > (c-1)**2
        residue_certificates.append(dict(c=c,degree_margin_slope=slope,
          degree_margin_intercept=intercept,degree_margin_at_m333=slope*333+intercept,
          lambda_min=3*333-c+1))
    samples=[]
    for n,i,j in [(12,2,4),(54,3,27),(50,3,25),(250,5,125)]:
        assert 1<=i<j<=n//2
        k=n-j; ci=comb(n,i); cj=comb(n,j)
        entries=[]; D=1
        for p,e in factor(ci).items():
            if p<i or cj%p==0:continue
            eps=int(p==i); Q=p**(e+eps)
            a=n%Q; b=j%Q; c=k%Q
            assert Q>i and a<i and a==b+c
            assert (n-a)%Q==(j-b)%Q==(k-c)%Q==0
            D*=p**e
            entries.append(dict(p=p,e=e,epsilon=eps,Q=Q,a=a,b=b,c=c))
        r=i//3; s=max(1,2*i//3); ell=i-r-1; lam=2*s-r
        assert 0<=r<i and 1<=s<i and lam>0
        Z=prod(comb(j,h)*comb(k,h) for h in range(1,s+1))*prod(comb(n-i+h,h) for h in range(1,ell+1))
        assert D>1 and Z%(D**lam)==0
        samples.append(dict(n=n,i=i,j=j,choose_i=ci,actual_D=D,
             factors=entries,r=r,s=s,ell=ell,lam=lam,Z=str(Z),
             exact_quotient=str(Z//D**lam),is_B699_counterexample=False))
        # These examples all have another common prime; record an exact witness.
        common=[p for p in factor(ci) if p>=i and cj%p==0]
        assert common
        samples[-1]['actual_common_prime_witness']=min(common)
    remaining=list(range(3,28))+[30,32,33]
    barriers=[]
    for i in remaining:
        m,c=divmod(i-1,3)
        if c==0: value=F(2*m+1)
        elif c==1: value=F(2*m+1)+F(2*m+1,3*m+2)
        else: value=F(2*m+2)+F(m+1,3*m+4)
        t=sum(1 for p in range(2,i) if factor(p)=={p:1})
        deficit=value-F(i-t)
        assert deficit>0
        barriers.append(dict(i=i,t=t,fractional_line_cover=str(value),
             small_part_exponent_needed=str(F(i)-value),
             deficit_for_positive_height=str(deficit)))
    out=dict(status='PASS',exact_positive_margins=checks,
             symbolic_residue_certificates=residue_certificates,
             nonvacuous_local_examples=samples,remaining_low_index_line_barriers=barriers,
             caution='Local examples are not a finite proof of the unrestricted problem; line barriers use the cited published theorem.')
    (ROOT/'outputs'/'constants_and_local_audit.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps(dict(status=out['status'],constant_checks=len(checks),
      residue_classes=len(residue_certificates),actual_D_examples=len(samples),
      low_index_barriers=len(barriers)),indent=2))
if __name__=='__main__': main()
