#!/usr/bin/env python3
"""Non-asymptotic regressions and exact integer witnesses; not the infinite proof."""
import argparse, json, math
from pathlib import Path

def val(n,p):
    if n<=0:raise ValueError('positive argument')
    e=0
    while n%p==0:e+=1;n//=p
    return e

def prime(n):return n>=2 and all(n%d for d in range(2,math.isqrt(n)+1))
def odd(n):return n//(n&-n)

def vbinom(n,j,p):
    total=0;q=p
    while q<=n:total+=n//q-j//q-(n-j)//q;q*=p
    return total

def carry(n,j,p):
    # Independent digit-wise addition, without factorial floors.
    a=j;b=n-j;z=0;cnt=0
    while a or b or z:
        z=(a%p+b%p+z)//p;cnt+=z;a//=p;b//=p
    return cnt

def W(n,j):
    if n%4 or not 4<=j<=n//2:raise ValueError('legal 4-multiple required')
    g=math.gcd(n,j);alpha=n//g;cn=n*(n-1)*(n-2)//6
    lam=3 if val(n-1,3)==1 else 1
    M=(n-2)//2;mu=3 if val(M,3)==1 else 1
    N=(n-1)//lam;K=M//mu
    e1=N//math.gcd(N,j*(j-1));e2=K//math.gcd(K,j*(j-1)*(j-2))
    w=odd(math.gcd(cn,alpha))*math.gcd(cn,e1)*math.gcd(cn,e2)
    return w, {'alpha':alpha,'N':N,'K':K,'E1':e1,'E2':e2}

def run(out):
    count=0
    for n in range(8,257,4):
        cn=math.comb(n,3)
        for j in range(4,n//2+1):
            w,_=W(n,j); actual=math.gcd(cn,math.comb(n,j))
            assert w%2 and actual%w==0
            count+=1
    # Large n remains polynomially represented; no huge C(n,j) is constructed.
    binary_patterns=0
    for e in range(2,14):
        x=1<<e;n=x*x
        for sign in (1,-1):
            for a in range(1,x-sign):
                z=a*(x+sign);j=min(z,n-z)
                if j<4:continue
                w,_=W(n,j);assert w>1
                binary_patterns+=1
    rowcases=set()
    for p in range(3,32,2):
        if not prime(p):continue
        for e in range(1,6):
            if p**e>33:break
            for s in (-1,1):
                n=(p**e+s)**2
                if n>1024:continue
                for j in range(4,n//2+1):
                    rowcases.add((n,j))
    for n,j in rowcases:
        w,_=W(n,j)
        assert w>1 and math.comb(n,j)%w==0
    # Concrete mixed, high-complexity, first-window-compatible input.
    x=1<<24;a=92183;n=x*x;j=a*(x+1);g=math.gcd(n,j)
    beta=j//g;gamma=(n-j)//g
    fb={7:1,13:1,97:1,257:1,673:1,1013:1}
    fc={3:2,5:1,17:1,223:1,241:1,827:1,8233:1}
    for z,f in ((beta,fb),(gamma,fc)):
        assert math.prod(p**e for p,e in f.items())==z
        assert all(prime(p) for p in f)
    assert 3*j*(j-1)%(n-1)==0
    assert j*(j-1)%(n-1)==0 # no isolated 3 cancellation in this example
    w,normal=W(n,j);assert w>1
    witness=2351;assert prime(witness)
    vv=[vbinom(n,k,witness) for k in (3,j)]
    assert vv==[carry(n,k,witness) for k in (3,j)]==[1,1]
    # Verify the word has no shorter period: exactly two primitive 24-bit blocks.
    word=f'{j:048b}'
    periods=[d for d in range(1,49) if 48%d==0 and word==word[:d]*(48//d)]
    assert periods==[24,48]
    mix={'x':x,'block':a,'n':n,'j':j,'g':g,'beta':beta,'gamma':gamma,
      'beta_factorization':{str(p):e for p,e in fb.items()},'gamma_factorization':{str(p):e for p,e in fc.items()},
      'beta_cofactor':beta//max(p**e for p,e in fb.items()),'gamma_cofactor':gamma//max(p**e for p,e in fc.items()),
      'beta_e':beta//math.gcd(beta,n-1),'gamma_e':gamma//math.gcd(gamma,n-1),
      'popcount':j.bit_count(),'run_count':(j & ~(j<<1)).bit_count(),'word_periods':periods,
      'witness_prime':witness,'valuations':vv,'normalized_common_divisor':w,'normalization':normal,
      'Pi_passes':False,'first_normalized_window_passes':True}
    assert 6*j*(j-1)*(j-2)%(n-2)!=0
    endpoint={}
    for j in (5,9):
        n=28;w,N=W(n,j)
        endpoint[str(j)]={'W':w,**N,'vp3_choose3':vbinom(n,3,3),'vp3_choosej':vbinom(n,j,3)}
    assert endpoint['5']['E1']==27 and math.comb(28,3)%27!=0
    assert endpoint['9']['E1']==3 and (3*9*8)%27==0 and (9*8)%27!=0
    w,_=W(56,11); gg=math.gcd(math.comb(56,3),math.comb(56,11))
    assert w==21 and gg==840
    result={'status':'PASS_REGRESSIONS','direct_common_divisor_pairs':count,
        'binary_square_patterns':binary_patterns,'primepower_square_row_pairs':len(rowcases),
        'mixed_example':mix,'p3_endpoint_checks':endpoint,
        'proper_divisor_example':{'n':56,'j':11,'W':w,'actual_gcd':gg}}
    out.mkdir(parents=True,exist_ok=True);(out/'regressions.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ['status','direct_common_divisor_pairs','binary_square_patterns','primepower_square_row_pairs']},sort_keys=True))

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',type=Path,required=True);run(p.parse_args().out)
