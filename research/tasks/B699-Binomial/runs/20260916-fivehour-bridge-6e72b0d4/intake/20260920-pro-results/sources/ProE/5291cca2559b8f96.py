"""Exact failure diagnostics; no diagnostic is claimed to be an NC3 input."""
import json,math
from fractions import Fraction

def main():
    P,p,n,j=15,5,512,5
    C3=math.comb(n,3); Cj=math.comb(n,j)
    assert C3%p==0 and Cj%p!=0 and j%P>n%P
    out={'composite_radix':dict(P=P,p=p,n=n,j=j,Cn3=C3,Cnj=Cj,
         source_p_divides_Cn3=True,source_p_divides_Cnj=False,
         j_mod_P=j%P,n_mod_P=n%P,actual_binomial_gcd=math.gcd(C3,Cj)),
         'dual_sum_shell':[]}
    for t in (1,2):
        D=11**(2*t); Q=(3*D+2)//5; X=3*D+1
        U,V,k,l,g,W,V0=3,5,1,1,1,11,1
        A=Fraction(D+1,6)
        assert D*U-Q*V==-2 and D*Q*U*V==X*X-1
        assert 2*U*V==k*V+l*U+2*g*g*W*V0
        assert A.denominator!=1
        out['dual_sum_shell'].append(dict(t=t,D=D,Q=Q,X=X,A=str(A),
            missing='integer A; full norm; alpha; Q prime-power property not asserted for the family'))
    print(json.dumps(out,indent=2))
if __name__=='__main__': main()
