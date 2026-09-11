
"""Formal coefficient identities and exact boundary/consumer regressions."""
import json,sys
from math import gcd,comb,isqrt
from pathlib import Path

# Exact sparse polynomial ring Z[a,d,q,h,t]; no evaluation is used for identities.
NV=5
def const(c):return {} if c==0 else {(0,)*NV:c}
def var(i):
    m=[0]*NV;m[i]=1
    return {tuple(m):1}
def add(*ps):
    o={}
    for p in ps:
        for m,c in p.items():o[m]=o.get(m,0)+c
    return {m:c for m,c in o.items() if c}
def sc(c,p):return {m:c*v for m,v in p.items() if c*v}
def mul(p,r):
    o={}
    for m,c in p.items():
        for n,d in r.items():
            k=tuple(x+y for x,y in zip(m,n))
            o[k]=o.get(k,0)+c*d
    return {m:c for m,c in o.items() if c}
def pw(p,n):
    z=const(1)
    for _ in range(n):z=mul(z,p)
    return z
def equal(p,r):
    if add(p,sc(-1,r)):raise AssertionError("polynomial identity")

def val_choose(n,j,p):
    q=p;v=0
    while q<=n:
        v+=n//q-j//q-(n-j)//q
        q*=p
    return v
def is_prime(p):
    return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def main(out):
    a,d,q,h,t=(var(i) for i in range(NV))
    y=mul(a,add(q,const(1)))
    left=sc(6,mul(mul(add(y,sc(3,d)),y),add(y,sc(-3,d))))
    right=add(sc(6,mul(a,add(pw(a,2),sc(-9,pw(d,2))))),
              sc(6,mul(mul(a,q),add(mul(pw(a,2),add(pw(q,2),sc(3,q),const(3))),sc(-9,pw(d,2))))))
    equal(left,right)
    y=mul(t,add(q,const(1)))
    left=sc(6,mul(mul(y,add(y,sc(-1,h))),add(y,sc(-2,h))))
    right=add(sc(6,mul(mul(t,add(t,sc(-1,h))),add(t,sc(-2,h)))),
      sc(6,mul(q,add(mul(pw(t,3),add(pw(q,2),sc(3,q),const(3))),
        sc(-3,mul(mul(h,pw(t,2)),add(q,const(2)))),sc(2,mul(pw(h,2),t))))))
    equal(left,right)
    equal(add(sc(243,pw(d,3)),sc(-24,mul(a,add(sc(9,pw(d,2)),sc(-1,pw(a,2)))))),
          mul(add(sc(3,d),sc(-2,a)),add(sc(81,pw(d,2)),sc(-18,mul(a,d)),sc(-12,pw(a,2)))))
    assert 12*1296**2==20155392
    assert 12*1296==15552
    assert 243*32**3//4+2 <2097153
    assert 15552 <1048576
    assert 11**2>108
    assert 6*(isqrt(648*7**3)*15552*7**6)**3 <2**128
    weak=[]
    for n in range(8,2200,4):
        for j in range(4,n//2+1):
            if 3*j*(j-1)%(n-1) or 6*j*(j-1)*(j-2)%(n-2):continue
            g=gcd(n,j);alpha=n//g;beta=j//g
            dd=gcd(beta,n-1);ee=beta//dd;hh=(n-1)//dd
            assert gcd(hh,g*ee)==1
            assert 3*(alpha-beta)%hh==0
            aa=3*dd-g*(3*(alpha-beta)//hh)
            assert 3*j==aa*hh+3 and 0<2*aa<3*dd
            assert 6*aa*(aa*aa-9*dd*dd)%(n-2)==0
            assert 4*(n-2)<243*dd**3
            assert hh>2*g*ee
            assert 6*ee*(g*ee-hh)*(g*ee-2*hh)%(n-2)==0
            assert dd<=12*ee*hh
            ff=gcd(ee,(n-2)//2)
            assert ((n-2)//(2*ff))>0
            assert (3*(g*ee-hh)*(g*ee-2*hh))%((n-2)//(2*ff))==0
            assert dd<=12*ff*hh and gcd(dd,ff)==1
            weak.append([n,j,g,alpha,beta,dd,ee,hh,aa])
    # The 4|n cancellation cannot silently be applied to n=2 mod 4.
    n,j=146,30;g=gcd(n,j);beta=j//g;dd=gcd(beta,n-1);ee=beta//dd;hh=(n-1)//dd
    assert 3*j*(j-1)%(n-1)==0 and 6*j*(j-1)*(j-2)%(n-2)==0
    assert 6*ee*(g*ee-hh)*(g*ee-2*hh)%(n-2)!=0
    # p=i=3, denominator compensation: a real weak pair, not a counterexample.
    assert val_choose(56,3,3)==2 and val_choose(56,11,3)==1
    prime=1000000007
    assert is_prime(prime)
    samples=[]
    ps=[p for p in range(3,2000,2) if is_prime(p)]
    for m in (1,3,5,7):
        beta=m*prime
        n=1 << (2*beta-1).bit_length()
        j=beta
        assert gcd(n,j)==1 and 4<=j<=n//2
        witnesses=[p for p in ps if val_choose(n,3,p)>0 and val_choose(n,j,p)>0]
        assert witnesses
        p=witnesses[0]
        samples.append({"n":n,"j":j,"beta":beta,"m":m,"prime_factor":prime,
                        "common_prime":p,"valuations":[val_choose(n,3,p),val_choose(n,j,p)]})
    ans={"status":"PASS","formal_polynomial_identities":3,
        "weak_pair_regressions":weak,"drop_four_divisibility_example":[146,30],
        "endpoint_prime_three":{"n":56,"j":11,"v3_choose3":2,"v3_choosej":1},
        "prime_cofactor_samples":samples,
        "d32_height_strict":243*32**3//4+2,"e1_beta_strict":15552,
        "certified_cpp_uint128_bound":True}
    Path(out).write_text(json.dumps(ans,indent=2,sort_keys=True)+"\n")
    print(json.dumps({"status":"PASS","identities":3,"weak_regressions":len(weak),"samples":len(samples)}))
if __name__=="__main__":main(sys.argv[1])
