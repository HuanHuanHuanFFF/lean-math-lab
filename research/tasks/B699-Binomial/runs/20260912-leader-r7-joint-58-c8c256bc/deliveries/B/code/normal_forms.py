"""Exact row solver for the TWO PROJECTIONS, not for noCommon.
It factors K only, does not factor N, and has at most 1/7 linear-admissible numerator triples per partition (ell=1/3).
"""
import argparse,itertools
from math import gcd
from exact import require,write_json,factors,lambdas,vchoose

def allocations(K):
    blocks=[p**e for p,e in factors(K)]
    for assignment in itertools.product(range(3), repeat=len(blocks)):
        C=[1,1,1]
        for q,s in zip(blocks,assignment):C[s]*=q
        yield C

def candidates(n,detail=False):
    lam,mu,N,K=lambdas(n);ell=lam*mu;rows=[];stats=[0,0,0,0]
    for C in allocations(K):
        stats[0]+=1
        choices=[]
        for s in range(3):
            d=C[s]
            r=0 if d==1 else lam*pow(K//d,-1,d)%d
            choices.append([h for h in range(r,ell*d,d) if 0<h<ell*d])
        linear_here=0
        for h0,h1,h2 in itertools.product(*choices):
            stats[1]+=1;C0,C1,C2=C
            if h0*C1*C2+h1*C0*C2+h2*C0*C1 != ell*K+lam:continue
            stats[2]+=1;linear_here+=1
            if h1*h1*C0*C2-4*h0*h2*C1*C1 != lam*h1:continue
            stats[3]+=1
            delta=C1*(h0*C2-h2*C0)
            if delta%lam:continue
            j=mu*K+1-delta//lam
            if not (4<=j and 2*j<n):continue
            require(j*(j-1)%N==0,'normal form failed first projection')
            require(j*(j-1)*(j-2)%K==0,'normal form failed second projection')
            require(C==[gcd(K,j-s) for s in range(3)],'not canonical factors')
            if detail:rows.append(dict(n=n,j=j,C=C,h=[h0,h1,h2],lam=lam,mu=mu,N=N,K=K,g=gcd(n,j)))
            else:rows.append(j)
        require(linear_here <= (1 if ell==1 else 7),'constant lift count')
    return sorted(rows,key=lambda z:z['j'] if detail else z),stats

def run():
    all_stats=[0]*4;checked=0;roots=0;small_nonempty=[]
    for n in range(8,4097,4):
        lam,mu,N,K=lambdas(n)
        direct=[]
        for j in range(4,(n-2)//2+1):
            checked+=1
            if j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0:direct.append(j)
        got,stats=candidates(n)
        require(got==direct,'row solver lost or added a projection root')
        all_stats=[a+b for a,b in zip(all_stats,stats)];roots+=len(got)
        if got:small_nonempty.append([n,got])
    large,stats=candidates(18610024,True)
    require(any(r['j']==7865522 for r in large),'missing nonempty historical weak root')
    for r in large:
        r['alpha']=r['n']//r['g']
        r['odd_alpha']=r['alpha']//(r['alpha']&-r['alpha'])
        witnesses=[]
        for p in [1453,1601]:
            a,b=vchoose(r['n'],3,p),vchoose(r['n'],r['j'],p)
            if a>0 and b>0:witnesses.append([p,a,b])
        r['common_prime_regression']=witnesses
    # A genuinely new whole-row example; the theorem, not this factorization, covers all P,Q.
    newrow,st=candidates(1241513984,True)
    require(newrow==[],'new full row unexpectedly has a projection root with all allocated factors nonempty')
    return dict(status='PASS',small_row_limit=4096,small_rows=1023,brute_j_tests=checked,projection_roots=roots,small_nonempty=small_nonempty,solver_counts=dict(zip(['factor_assignments','numerator_triples','linear_pass','quadratic_pass'],all_stats)),nonempty_weak=large,large_weak_stats=stats,new_row_solver=newrow,new_row_stats=st,warning='Projection equivalence only. Alpha restriction and high prime-power carries are additional.')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
    data=run();write_json(a.out,data);print({k:v for k,v in data.items() if k not in ['small_nonempty','nonempty_weak']})
