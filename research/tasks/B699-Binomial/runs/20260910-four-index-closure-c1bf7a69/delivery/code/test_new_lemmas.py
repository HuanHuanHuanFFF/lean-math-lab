"""Finite diagnostics for new algebra, boundaries, and bad-certificate rejection.
They are not the infinite proofs, which are written in notes/PROOFS.md.
"""
from pathlib import Path
from math import factorial,prod,gcd,isqrt,comb
from random import Random
from copy import deepcopy
import json,time
from check_blocks import check as check_blocks
from check_four_certificate import check_symbolic_stage
from check_certificate import make_parameters,check_large_row,check_top_interval,require
ROOT=Path(__file__).resolve().parents[1]

def factors(n):
    ans={};p=2
    while p*p<=n:
        while n%p==0:ans[p]=ans.get(p,0)+1;n//=p
        p+=1
    if n>1:ans[n]=ans.get(n,0)+1
    return ans

def fv(n,p):
    s=0
    while n:n//=p;s+=n
    return s

def algebra_test(i,n,j):
    k=n-j;t=len([p for p in range(2,i) if len(factors(p))==1 and factors(p).get(p)==1]);s=i-t
    w=[2*s-a for a in range(i)];bb=[max(s-b,0) for b in range(i)]
    assert min(w)>0
    for a in range(i):
        for b in range(a+1):assert bb[b]+bb[a-b]>=w[a]
    ff=[factors(n-a) for a in range(i)];D=[1]*i;V=[1]*i;boundary=None
    for a,f in enumerate(ff):
        for p,e in f.items():
            if p<i:continue
            e-=int(p==i)
            if e<=0:continue
            V[a]*=p**e
            avoid=fv(n,p)-fv(j,p)-fv(k,p)==0
            if avoid:D[a]*=p**e
            if p==i and e>=2 and avoid:boundary=dict(p=p,e=e,q=p**(e+1),a=a,b=j%(p**(e+1)),c=k%(p**(e+1)))
    P=prod(D[a]**w[a] for a in range(i))
    T=prod((j-b)**bb[b]*(k-b)**bb[b] for b in range(i))
    assert T%P==0
    small=[p for p in range(2,i) if factors(p)=={p:1}]
    Q=[];rp=[]
    for p in small:
        m=max(f.get(p,0) for f in ff);r=next(a for a,f in enumerate(ff) if f.get(p,0)==m)
        assert sum(f.get(p,0) for a,f in enumerate(ff) if a!=r)<=fv(i-1,p)
        Q.append(p**m);rp.append(r)
    lhs=prod((n-a)**w[a] for a in range(i))
    rhs=factorial(i)**max(w)*prod(v**w[r] for v,r in zip(Q,rp))*prod(V[a]**w[a] for a in range(i))
    assert lhs<=rhs
    unconditional_V_failure=T%prod(V[a]**w[a] for a in range(i))!=0
    return dict(i=i,n=n,j=j,boundary=boundary,actual_D_nontrivial=P>1,unconditional_V_fails=unconditional_V_failure,
       maximal_positions_distinct=len(set(rp))==len(rp))

def expect_reject(fn,label,out):
    try:fn()
    except (ValueError,AssertionError,KeyError):out.append(label);return
    raise AssertionError('accepted bad certificate: '+label)

if __name__=='__main__':
    start=time.monotonic();rng=Random(69920260909);examples=[]
    examples.append(algebra_test(19,2*19**3,19**3))
    for i in [19,22,24,25]:
        for _ in range(30):
            n=rng.randrange(2*i+2,100000);j=rng.randrange(i+1,n//2+1)
            examples.append(algebra_test(i,n,j))
    assert examples[0]['boundary'] and examples[0]['boundary']['e']==2
    assert any(e['actual_D_nontrivial'] for e in examples)
    assert any(e['unconditional_V_fails'] for e in examples)
    blocks=json.loads((ROOT/'outputs/block_certificate.json').read_text());bad=[]
    b=deepcopy(blocks);b['rows'].pop();expect_reject(lambda:check_blocks(b),'missing prime pair',bad)
    b=deepcopy(blocks);b['rows'][0]['blocks'].pop();expect_reject(lambda:check_blocks(b),'missing exponent tail',bad)
    b=deepcopy(blocks);b['rows'][0]['blocks'][1]['K']+=1;expect_reject(lambda:check_blocks(b),'exponent gap',bad)
    b=deepcopy(blocks);b['rows'][0]['blocks'][0]['inverse_hex']='0x0';expect_reject(lambda:check_blocks(b),'wrong inverse',bad)
    b=deepcopy(blocks);b['rows'][0]['blocks'][0]['B']*=3;expect_reject(lambda:check_blocks(b),'modulus too large',bad)
    b=deepcopy(blocks);b['rows'][0]['small_exponent_height_bits']=5;expect_reject(lambda:check_blocks(b),'small branch false height',bad)
    b=deepcopy(blocks);b['source_height_bits']=11000;expect_reject(lambda:check_blocks(b),'source height mismatch',bad)
    b=deepcopy(blocks);b['rows'][0]['blocks'][0]['L']+=1000;expect_reject(lambda:check_blocks(b),'oversized block',bad)
    four=json.loads((ROOT/'outputs/four_index_certificate.json').read_text());profile=four['profiles'][0]
    par=make_parameters(profile['i'],profile['r'],profile['s'])
    st=deepcopy(profile['bound_stages'][-1]);st['M']='1';expect_reject(lambda:check_symbolic_stage(par,st),'understated CRT cofactor bound',bad)
    n,d=profile['large_divisor_rows'][0];expect_reject(lambda:check_large_row(par,n,int(d)*2),'small-prime contaminated divisor',bad)
    a,z,p=profile['top_prime_intervals'][0];expect_reject(lambda:check_top_interval(profile['i'],a,p+profile['i'],p,set(four['prime_witnesses'])),'top-prime closed right endpoint',bad)
    # Same-position source branch and zero exponent are genuinely possible, never discarded.
    N=7**2*13**2;Qp=7**2;Qq=13**2;Ap=N//Qp;Aq=N//Qq
    assert Qp*Qq==N and Ap*Aq==N and max(Ap,Aq)**2>=N
    out=dict(status='PASS',algebra_examples=examples,number_of_examples=len(examples),bad_certificates_rejected=bad,
       warning='Tests do not replace the symbolic proofs; no original-triple exhaustive scan')
    (ROOT/'outputs/new_lemma_tests.json').write_text(json.dumps(out,indent=2))
    print(json.dumps(dict(status='PASS',examples=len(examples),bad_certificates=len(bad),seconds=time.monotonic()-start)))
