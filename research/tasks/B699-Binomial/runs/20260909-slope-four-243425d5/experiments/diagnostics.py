"""Small exact diagnostics. No floating arithmetic; no inference beyond ranges."""
from math import comb, prod, isqrt
from pathlib import Path
import json
ROOT=Path(__file__).resolve().parent

def primes_upto(n):
    s=bytearray(b'\1')*(n+1); s[:2]=b'\0\0'
    for p in range(2,isqrt(n)+1):
        if s[p]: s[p*p:n+1:p]=b'\0'*((n-p*p)//p+1)
    return [p for p in range(2,n+1) if s[p]]

def v_p(x,p):
    e=0
    while x%p==0: e+=1; x//=p
    return e

def k4_primes(i,primes):
    return [p for p in primes if p>i and
            ((p%3==2 and p<=3*i-7) or (p%3==1 and p<=3*i-11))]

def run():
    ps=primes_upto(720)
    abstract=0
    for i in range(3,121):
        found=set()
        for a in range(i):
            for b in range(a+1):
                d=4*b-a
                for t in (1,2):
                    if d>0 and d%t==0 and d//t>i and d//t in ps:
                        found.add(d//t)
                abstract+=1
        assert found==set(k4_primes(i,ps)),(i,found,k4_primes(i,ps))
    actual=0; nontrivial=0; at_boundary=[]; high_power=[]
    counter_t1=None; counter_2i=None; common_fail=[]
    for j in range(4,181):
        n=4*j; cj=comb(n,j)
        for i in range(3,j):
            c=comb(n,i); D=1; support=[]; common=[]
            for p in ps:
                if p<i or p>n: continue
                if c%p: continue
                e=v_p(c,p)
                if cj%p==0: common.append(p); continue
                delta=int(p==i); Q=p**(e+delta)
                a=n%Q; b=j%Q; d=4*b-a
                assert a<i and b<=a and d%Q==0
                rec=dict(i=i,j=j,n=n,p=p,e=e,delta=delta,Q=Q,a=a,b=b,determinant=d,
                         v_target=v_p(cj,p))
                if p==i and len(at_boundary)<8: at_boundary.append(rec)
                if e>1 and len(high_power)<8: high_power.append(rec)
                if d:
                    assert Q==p and e==1 and p>i and d//p in (1,2)
                    if d==2*p and counter_t1 is None: counter_t1=rec
                    if p>2*i and counter_2i is None: counter_2i=rec
                else:
                    assert comb(j,(i+3)//4)%Q==0
                D*=p**e; support.append(rec)
            z=(i+3)//4; K=prod(k4_primes(i,ps))
            assert (K*comb(j,z))%D==0,(i,j,D,K)
            h=i-2*z; u=h//2; v=h-u
            assert comb(n,i)>=comb(j,z)**2*comb(j,u)*comb(j,v)
            pi=sum(p<i for p in ps)
            E=i-pi-z
            assert E>=1
            if not common: common_fail.append([i,j])
            actual+=1; nontrivial+=D>1
    guards=[]
    for i,j,p in [(3,9,3),(3,27,3),(8,23,17),(11,22,13)]:
        n=4*j; c=comb(n,i); cj=comb(n,j); e=v_p(c,p); Q=p**(e+int(p==i))
        guards.append(dict(i=i,j=j,p=p,Cni=str(c),Cnj=str(cj),e=e,
                           target_valuation=v_p(cj,p),Q=Q,a=n%Q,b=j%Q,
                           determinant=4*(j%Q)-(n%Q)))
    out=dict(scope='exact finite diagnostics only',abstract_i=[3,120],
             abstract_pairs=abstract,actual_j=[4,180],actual_inputs=actual,
             nontrivial_avoiding_parts=nontrivial,transfer_failures=[],
             original_target_failures=common_fail,
             p_equals_i_examples=at_boundary,full_binomial_power_examples=high_power,
             counterexample_to_determinant_equals_p=counter_t1,
             counterexample_to_nonzero_prime_le_2i=counter_2i,fixed_guards=guards)
    assert not common_fail
    (ROOT/'diagnostics.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if not isinstance(v,list)},indent=2))
if __name__=='__main__': run()
