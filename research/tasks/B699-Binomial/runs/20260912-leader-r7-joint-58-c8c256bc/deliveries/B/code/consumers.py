"""Finite regressions for infinite theorems proved in notes/PROOFS.md."""
import argparse
from math import gcd,comb,isqrt
from exact import require,write_json,factors,vchoose,vp,lambdas

def prime(p):return p>1 and all(p%d for d in range(2,isqrt(p)+1))
def a_star(z):
    fs=factors(z);return min(z//(p**e) for p,e in fs) if fs else 1

def quotient_values(n,j):
    lam,mu,N,K=lambdas(n);ell=lam*mu;k=n-j;D=(n-1)*(n-2)
    C=[gcd(K,j-t) for t in range(3)]
    nums=[ell*C[0]*k*(k-1),2*ell*C[1]*j*k,ell*C[2]*j*(j-1)]
    require(all(a%D==0 for a in nums),'regression is not a projection input')
    h=[a//D for a in nums]
    require(h[0]*C[1]*C[2]+h[1]*C[0]*C[2]+h[2]*C[0]*C[1]==ell*K+lam,'linear identity')
    require(h[1]**2*C[0]*C[2]-4*h[0]*h[2]*C[1]**2==lam*h[1],'quadratic identity')
    g=gcd(n,j)
    require(2*h[0]%g==0 and 2*h[2]%g==0 and h[1]%(g*g)==0,'g divisibility')
    for c,t in zip(C,h):
        require(gcd(c,t)==1,'gcd(h,C)')
        require((t*D-2*ell*c)%(c*c)==0,'C^2 congruence')
    require((h[1]*(n-2)-2*ell*C[1])%(C[1]**3)==0,'C^3 congruence')
    return dict(n=n,j=j,g=g,C=C,h=h,lam=lam,mu=mu)

def run():
    sample_rows=sorted(set(18*5**a*7**b+2 for a in range(5) for b in range(5)))
    trials=0;witnesses={}
    for n in sample_rows:
        primes=sorted(set(p for z in [n,n-1,n-2] for p,e in factors(z) if p>=3))
        js=range(4,n//2+1) if n<=5000 else sorted(set([4,5,6,7,n//5,n//3,n//2-2,n//2-1,n//2]))
        for j in js:
            if j<4 or 2*j>n:continue
            trials+=1
            good=[p for p in primes if vchoose(n,3,p)>0 and vchoose(n,j,p)>0]
            require(bool(good),'row-family regression found a counterexample')
            p=good[0];witnesses[str(p)]=witnesses.get(str(p),0)+1
    n=1241513984;M=(n-2)//2
    require(n==18*6577*10487+2 and prime(6577) and prime(10487),'demonstration row')
    require(factors(M)==[(3,2),(6577,1),(10487,1)],'complete M factorization')
    fN=factors(n-1);require(len(fN)>1,'old single-prime N row criterion')
    require(10487**2<2*n,'old maximal-prime-power row threshold')
    require((n-1)*10487**2<2*(n-2)**2,'old exact square-root row threshold')
    require(27*(1<<25)**4>=16*(n-1)**3,'old uniform content bound did not exclude row')
    # A designated input in the requested mixed-cofactor region.
    alpha=1<<25; example=None
    for beta in range(alpha//3|1,alpha//3+10000,2):
        gamma=alpha-beta
        if beta%23 or gamma%29:continue
        aa,bb=a_star(beta),a_star(gamma)
        if min(aa,bb)>=23:
            j=37*beta; require(gcd(n,j)==37,'example canonical g')
            witnesses2=[]
            for p in [3,37]+[p for p,e in fN]+[6577,10487]:
                a,b=vchoose(n,3,p),vchoose(n,j,p)
                if a and b:witnesses2.append([p,a,b])
            require(witnesses2,'mixed example witness')
            example=dict(n=n,j=j,g=37,beta=beta,gamma=gamma,a_beta=aa,a_gamma=bb,beta_factors=factors(beta),gamma_factors=factors(gamma),witnesses=witnesses2)
            break
    require(example is not None,'no mixed example in discovery window')
    weak=quotient_values(18610024,7865522)
    # Retain p=i and the distinction between canonical content and the actual gcd.
    H=gcd(*[comb(10,r)*comb(20,3-r) for r in range(4)])
    L=comb(30,3)//H;G=gcd(comb(30,3),comb(30,10))
    require((L,G)==(203,1015),'cross-layer regression')
    require([vchoose(56,3,3),vchoose(56,11,3)]==[2,1],'p=i exact exponents')
    return dict(status='PASS',family_rows=len(sample_rows),family_j_tests=trials,finite_witness_counts=witnesses,new_mixed_example=example,N_factorization=fN,nonempty_quotient_regression=weak,cross_layer=dict(n=30,j=10,L=L,gcd=G),p_i=dict(n=56,j=11,p=3,valuations=[2,1]),warning='Only the 22-state modular certificate carries an infinite finite-cover claim. The row samples are regressions, not a search bound or independent infinite proof.')

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
    r=run();write_json(a.out,r);print('row samples',r['family_rows'],'j samples',r['family_j_tests']);print('mixed example',r['new_mixed_example'])
