"""Exact original-binomial check of the retained Q=3 weak shell."""
from math import comb, gcd, prod


def vp_factorial(n,p):
    total=0
    while n:
        n//=p;total+=n
    return total

def check():
    P,Q,v,nu,h=89,3,2,20,43
    assert P==Q+h*v and h*Q==P+2*nu and v*nu*nu==P*Q*Q-1
    n=P*Q*nu+2;j=(P+nu)*Q*Q;k=P*(Q*Q+v*nu)
    assert (n,j,k)==(5342,981,4361) and j+k==n and 3<j<=n//2
    factors={2:2,5:1,7:2,89:1,109:1,2671:1}
    assert prod(p**e for p,e in factors.items())==comb(n,3)
    for p in factors:
        assert all(p%d for d in range(2,__import__('math').isqrt(p)+1))
    common=gcd(comb(n,3),comb(n,j))
    valuations={p:vp_factorial(n,p)-vp_factorial(j,p)-vp_factorial(k,p) for p in factors}
    other=prod(p**min(e,valuations[p]) for p,e in factors.items())
    assert common==other==2617580
    assert gcd(n,j)==1
    assert (n-2)//2==2670 and 2670%3==0 and 2670%9!=0 and nu%6!=0
    # Maximal-ring fifth root counterexample; (1-sqrt(-2))^5=1+11sqrt(-2).
    aa,bb=1,0
    for _ in range(5):aa,bb=aa+2*bb,bb-aa
    assert (aa,bb)==(1,11) and 1+242==3**5
    return dict(status='PASS_ORIGINAL_BOUNDARY_RECHECK',n=n,j=j,k=k,binomial_gcd=common,all_common_odd_primes=[p for p in factors if p%2 and valuations[p]>0],C_n_3_factorization={str(p):e for p,e in factors.items()},binomial_valuations={str(p):e for p,e in valuations.items()},not_NC3=True,not_alpha_shape=True,real_mu=3,nu_over_2mu_not_integer=True,maximal_root_example=dict(d=2,Q=3,real=aa,sqrt_coefficient=bb,v_order=242))

if __name__=='__main__':
    import json
    print(json.dumps(check(),indent=2))
