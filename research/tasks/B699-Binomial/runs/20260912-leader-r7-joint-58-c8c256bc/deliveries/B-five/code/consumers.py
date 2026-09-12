"""Exact scope and endpoint checks; finite examples do not prove infinite families."""
from math import gcd,isqrt,comb
from pathlib import Path
import argparse,json

def prime(p):
    if p<2:return False
    if p%2==0:return p==2
    return all(p%d for d in range(3,isqrt(p)+1,2))
def vp(n,p):
    assert n>0
    e=0
    while n%p==0:n//=p;e+=1
    return e
def val_choose(n,j,p):
    q=p;v=0
    while q<=n:v+=n//q-j//q-(n-j)//q;q*=p
    return v

def verify_factors(a,fs):
    prod=1
    for p,e in fs:
        assert prime(p) and e>0
        prod*=p**e
    assert len({p for p,e in fs})==len(fs) and prod==a
    return max(p**e for p,e in fs)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('example');ap.add_argument('output');a=ap.parse_args()
    d=json.loads(Path(a.example).read_text());n=d['n'];j=d['j'];P,Q=d['row_primes']
    assert n==3*2**46==10*P*Q+2 and prime(P) and prime(Q)
    assert 4<=j<n//2 and gcd(n,j)==1 and n%3==0
    M=(n-2)//2;N=n-1;assert M==5*P*Q and vp(M,5)==1
    nf=[[37,1],[17519,1],[325679197,1]];verify_factors(N,nf)
    mb=verify_factors(j,d['beta_factors']);mg=verify_factors(n-j,d['gamma_factors'])
    cb=j//mb;cg=(n-j)//mg;assert min(cb,cg)>=23
    assert N*Q**2<2*(n-2)**2  # D's earlier sufficient maximum-block size test fails.
    assert vp(M,3)==0 and isqrt(n)**2!=n
    maxden=0
    while 512*(maxden+1)**6<=n:maxden+=1
    hits=[]
    for b in range(3,maxden+1):
        for u in range(1,(b-1)//2+1):
            if 8*abs(b*j-u*(n-1))**3<=n*n:hits.append([u,b])
    assert not hits and 3*j**4>n**3 and 6*(n-2*j)**4>n**3
    witness=next(p for p in [5,7,11,13,17,19,23,29,31,37] if val_choose(n,3,p)>0 and val_choose(n,j,p)>0)
    bounds=[val_choose(n,3,witness),val_choose(n,j,witness)]
    # Endpoint example: common prime p=i=3 genuinely occurs at full modulus 27.
    assert val_choose(56,3,3)==2 and val_choose(56,11,3)==1 and 56%27==2
    # C=5 is not forbidden outside noCommon; this ordinary legal pair has common 11.
    assert gcd((12-2)//2,5)==5 and gcd(comb(12,3),comb(12,5))==44
    # Ordered nonempty allocation: all <=3 complete prime blocks, one is 5.
    alloc=0
    from itertools import product
    for cnt in range(1,4):
        for assignment in product(range(3),repeat=cnt):
            boxes=[[] for _ in range(3)]
            for i,s in enumerate(assignment):boxes[s].append(i)
            if all(boxes):
                alloc+=1;assert len(boxes[assignment[0]])==1
    assert pow(2,100,125)==1
    assert [v for v in range(100) if pow(2,v,125)==32]==[5]
    assert [v for v in range(1800) if v%100==5 and v%360==5]==[5]
    out={'cube_filter_residue':{'modulus':1800,'residue':5},'example':d,'canonical_cofactors':[cb,cg], 'shared_prime':witness,'valuations':bounds,
         'old_geometric_tests_hit':False,'old_maximum_primepower_row_test_hit':False,
         'max_allowed_rational_denominator':maxden,'nonempty_three_block_assignments':alloc,
         'full_p_equals_i_example':[56,11,3,2,1,27], 'not_noCommon_example':[12,5,44],
         'warning':'Examples are neither counterexamples nor proofs of the unrestricted family; proof in notes/PROOFS.md',
         'status':'PASS'}
    Path(a.output).write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print('PASS exact mixed-region example; both canonical cofactors >=23; original p=3 endpoint checked')
if __name__=='__main__':main()
