"""Bounded NEW diagnostics. Not proof of infinite claims and not NC testing."""
from fractions import Fraction as Q
from random import Random
from algebra import coefficients_case, rational_case, ueval, uadd, umul, uscale


def run():
    rng=Random(6990916)
    tuple_checks=0;bracket_checks=0;remainder_checks=0;positive_graphs=0
    for case in (0,1):
        for iteration in range(180):
            m=rng.randrange(2,10)
            # Coefficients by X degree, each itself a polynomial in N.
            aa=[[rng.randrange(-3,4) for _ in range(4)] for _ in range(m+1)]
            c=rng.randrange(2,10);d=-rng.randrange(1,c//2+1)
            if case==0:
                aa[m]=[c];aa[m-1]=[rng.randrange(-3,4),rng.randrange(-3,4),d]
                e,h=aa[m-2][3],aa[m-2][2]
                vals=(c,d,aa[m-1][1],aa[m-1][0],e,h)
            else:
                c0=rng.randrange(-3,4);aa[m]=[c0,c]
                aa[m-1]=[rng.randrange(-3,4),rng.randrange(-3,4),rng.randrange(-3,4),d]
                vals=(c,c0,d,aa[m-1][2],aa[m-1][1],aa[m-2][3])
            D,U,V,W=coefficients_case(case,vals)
            u,v,w=rational_case(case,vals)
            assert (u,v,w)==(Q(U,D),Q(V,D),Q(W,D))
            T=max(2,sum(abs(c) for a in aa for c in a))
            assert abs(D)+abs(U)+abs(V)+abs(W)<=T**4
            tuple_checks+=1
            n=4096*T**10+1+iteration
            y=u*n*n+v*n+w;eps=Q(128*T**6,n)
            def ee(z):
                out=Q(ueval(aa[m],n))*z+ueval(aa[m-1],n)
                for r in range(2,m+1):out+=Q(ueval(aa[m-r],n))/z**(r-1)
                return out
            lo=y-eps;hi=y+eps
            assert lo>2 and ee(lo)<=0<=ee(hi)  # c>0 in these diagnostics
            assert eps<Q(1,abs(D))
            bracket_checks+=1
            # Transpose to the four C_i(X), independently evaluate the remainder.
            cs=[[a[i] if i<len(a) else 0 for a in aa] for i in range(4)]
            B1=uadd(uadd(uscale(cs[1],U*U),uscale(cs[2],-U*V)),umul([V*V-U*W,U*D],cs[3]))
            B0=uadd(uadd(uscale(cs[0],U*U),umul([-U*W,U*D],cs[2])),umul([V*W,-V*D],cs[3]))
            # y always satisfies Q(n,y)=0, even when not an integer root of F.
            F=sum(ueval(a,n)*y**i for i,a in enumerate(aa))
            assert U*U*F==ueval(B1,y)*n+ueval(B0,y)
            assert sum(abs(x) for x in B1+B0)<=T**9
            remainder_checks+=1
    # Positive sanity tests: graph factors really must be allowed in R3.
    for case in (0,1):
        for d in range(2,10):
            # (8X-N^2+N)*(X^(d-1)+X+1), optionally multiplied by N+2.
            base=[[0,1,-1],[8]]
            fac=[1]*(1 if d==2 else 0)
            xx=[0]*d;xx[0]=1;xx[1]+=1;xx[-1]+=1
            aa=[[0] for _ in range(d+1)]
            for i,cc in enumerate(base):
                for j,dd in enumerate(xx):
                    if dd:aa[i+j]=uadd(aa[i+j],uscale(cc,dd))
            if case:aa=[umul(a,[2,1]) for a in aa]
            while len(aa)>1 and aa[-1]==[0]:aa.pop()
            T=max(2,sum(abs(x) for a in aa for x in a));n=8*((4096*T**10)//8+1)
            x=(n*n-n)//8
            assert (n*n-n)%8==0 and sum(ueval(a,n)*x**i for i,a in enumerate(aa))==0
            assert x**4>n**7 and 4*x<=n*n
            positive_graphs+=1
    return {'status':'PASS_NEW_BOUNDED_DIAGNOSTICS',
      'quartic_tuple_comparisons':tuple_checks,'exact_root_brackets':bracket_checks,
      'quadratic_remainder_comparisons':remainder_checks,
      'positive_graph_factor_examples':positive_graphs,
      'random_seed':6990916,'no_original_problem_scan':True,
      'finite_diagnostics_not_infinite_proof':True}
