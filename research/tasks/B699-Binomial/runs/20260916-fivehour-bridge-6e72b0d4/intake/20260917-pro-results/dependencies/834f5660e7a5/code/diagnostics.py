"""Finite diagnostics of full prime-power transfer; not infinite proofs."""
from math import gcd,prod,isqrt,comb

def vp_fact(n,p):
    z=0
    while n:n//=p;z+=n
    return z

def vp_binom(n,j,p):return vp_fact(n,p)-vp_fact(j,p)-vp_fact(n-j,p)

def vset(r):return tuple(s*(r-s) for s in range(r//2+1))

def diagnostics():
    cases=good=partial=erased=0;upper=0;maxbits=0
    for p in (31,37,41,43):
        for e in range(1,9):
            q=p**e
            for r in range(3,9):
                for s in range(r//2+1):
                    z=s*(r-s)
                    for b in range(1,10):
                        n=20*q+r;j=b*q+s;J=j*(n-j);h=(J-z)//q
                        assert (J-z)%q==0 and 10<=j<=n//2
                        assert vp_binom(n,j,p)==0 and (n-r)%q==0 and (n-r)//q%p
                        # H0(N,X)=20(X-z)^2-q*h^2(N-r); also p*H0.
                        # H1(N,X)=20qX^2-J^2(N-r).
                        assert 20*(J-z)**2-q*h*h*(n-r)==0
                        assert 20*q*J*J-J*J*(n-r)==0
                        for kind in range(3):
                            values=[(20*(x-z)**2)*(p if kind==1 else 1) if kind<2 else 20*q*x*x for x in vset(r)]
                            roots=[x for x,v in zip(vset(r),values) if v==0]
                            bad=prod(v for v in values if v)
                            d=q//gcd(q,abs(bad))
                            assert prod(J-x for x in roots)%d==0
                            cases+=1;good+=d==q;partial+=1<d<q;erased+=d==1;maxbits=max(maxbits,n.bit_length())
                    n=q*(p+3)+r;j=4*q+s
                    assert j%q==s and n%q==r and s<=r
                    assert vp_binom(n,j,p)==1
                    upper+=1
    # True original-problem instances on (N²-4X)²-N=0.
    def factors(m):
        out=[];p=2
        while p*p<=m:
            if m%p==0:
                out.append(p)
                while m%p==0:m//=p
            p+=1 if p==2 else 2
        if m>1:out.append(m)
        return out
    witnesses=[]
    for s in (10,20,30,40,50,60):
        n=s**4;j=(s**4-s)//2;J=j*(n-j)
        assert n%400==0 and (n*n-4*J)**2==n and 10<=j<=n//2
        pset=sorted({p for r in range(9) for p in factors(n-r) if p>=11})
        p=next(p for p in pset if vp_binom(n,9,p)>0 and vp_binom(n,j,p)>0)
        witnesses.append({'s':s,'n':n,'j':j,'p':p,'source_valuation':vp_binom(n,9,p),'target_valuation':vp_binom(n,j,p)})
    # The explicit remaining geometric model: nonsquare discriminant at N=0.
    assert 20164**2<20165**2-16<20165**2
    return {'status':'PASS_NEW_FINITE_DIAGNOSTICS','full_power_polynomial_transfer_cases':cases,'full_modulus_retained':good,'partial_modulus_retained':partial,'modulus_erased':erased,'nonzero_upper_carry_cases':upper,'exponents':list(range(1,9)),'max_n_bits':maxbits,'true_curve_witnesses':witnesses,'warning':'finite diagnostics are not proofs of the unlimited quantifiers'}

if __name__=='__main__':
    import json
    print(json.dumps(diagnostics(),ensure_ascii=False,indent=2))
