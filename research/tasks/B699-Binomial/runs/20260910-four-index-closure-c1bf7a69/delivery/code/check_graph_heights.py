"""Exhaustive order checker (no pruning) and integer height consumers.
The graph data are necessary cofactor inequalities, not noCommon equivalents.
"""
from pathlib import Path
from itertools import permutations
from math import factorial,prod,isqrt
import json,time
ROOT=Path(__file__).resolve().parents[1]
EDGES=[(2,3,285),(2,5,258),(2,7,259),(2,11,59),(2,13,54),
 (3,5,216),(3,7,38),(3,11,329),(3,13,231),(5,7,227),(5,11,199),(5,13,163),
 (7,13,98),(11,13,37),(2,17,330),(17,19,190),(11,23,110)]
INDICES=[(19,6,13),(22,7,15),(24,7,16),(25,8,17)]
def primes_below(n):return[p for p in range(2,n) if all(p%d for d in range(2,isqrt(p)+1))]
def factorials(n):return prod(factorial(h) for h in range(1,n+1))
def integer_height(rhs,denominator,exponent):
    """Produce h with denominator*2^(h*exponent)>rhs, exact integers."""
    assert rhs>0 and denominator>0 and exponent>0
    q=rhs//denominator
    h=(max(1,q.bit_length())+exponent-1)//exponent
    assert denominator*(1<<(h*exponent))>rhs
    return h

def check(i,r,s):
    ps=primes_below(i);t=len(ps);k=i-t;w=[2*k-a for a in range(t)]
    assert all(x>0 for x in w) and 2*k>=i
    costs={(min(a,b),max(a,b)):v for a,b,v in EDGES}
    sigma=None;tau=None;sw=None;tw=None;number=0
    for order in permutations(ps):
        number+=1;v=[];last=0
        for ix,p in enumerate(order):
            last=max([last]+[costs.get((min(p,q),max(p,q)),0) for q in order[:ix]])
            v.append(last)
        a=sum(v);b=sum(x*y for x,y in zip(w,v))
        if sigma is None or a<sigma:sigma=a;sw=[list(order),v]
        if tau is None or b<tau:tau=b;tw=[list(order),v]
    # Cross-check against prior branch-and-bound implementation's output, not imported code.
    prior=json.loads((ROOT/'outputs/graph_select.json').read_text())
    p=next(x for x in prior['final'] if x['i']==i)
    assert sigma==p['sigma'][0] and tau==p['weighted'][0]
    lam=2*s-r;ell=i-r-1;E=s*(s+1)+ell*(ell+1)//2
    K=(1<<(s*(s+1)))*factorials(s)**2*factorials(ell)
    delta=E-lam*(i-t)
    W=2*k;S=sum(2*k-a for a in range(i));T=sum(w)
    gamma=1000*(S-k*(k+1)-T)+tau
    assert gamma>0
    h_dist=integer_height(factorial(i)**(1000*W)*(1<<(1000*S+tau)),1,gamma)
    sigma_collision=sigma+500-max(v for _,_,v in EDGES)
    delta_collision=1000*(lam*(i-t)-E)+sigma_collision*lam
    assert delta_collision>0
    h_coll=integer_height(factorial(i)**(1000*lam)*(1<<((1000+sigma_collision)*lam)),K**1000,delta_collision)
    # Source graph valid when n>=2^11001; small branch explicitly included in final bound.
    h_absolute=max(11001,h_dist,h_coll,22)
    # At most one small-prime choose component >= n^(3/4) yields n^J <= (2i!)^(4lambda)/K^4.
    J=4*lam*i-lam*(3*t+1)-4*E
    assert J>0
    h_two=integer_height((2*factorial(i))**(4*lam),K**4,J)
    while (1<<h_two)<max(16,i*(i-1)):h_two+=1
    return dict(i=i,r=r,s=s,t=t,primes=ps,lambda_=lam,E=E,K=str(K),delta=delta,
        graph_orders=number,sigma_mill=sigma,tau_mill=tau,sigma_witness=sw,tau_witness=tw,
        position_weights=dict(slope=k,W=W,S=S,T=T,gamma=gamma,strict_height_bits=h_dist),
        collision=dict(sigma_mill=sigma_collision,delta=delta_collision,strict_height_bits=h_coll),
        absolute_height_bits=h_absolute,two_large_powers=dict(exponent=J,threshold_bits=h_two),
        status='exact integer heights and complete graph orders verified')
if __name__=='__main__':
    ts=time.monotonic();rows=[check(*arg) for arg in INDICES]
    (ROOT/'input/cofactor_edges.json').write_text(json.dumps(dict(scale=1000,edges=EDGES,new_source_height_bits=11000),indent=2))
    (ROOT/'outputs/absolute_heights.json').write_text(json.dumps(rows,indent=2))
    print(json.dumps(dict(seconds=time.monotonic()-ts,rows=[{k:v for k,v in r.items() if k in ['i','sigma_mill','tau_mill','position_weights','collision','absolute_height_bits','two_large_powers']} for r in rows]),indent=2))
