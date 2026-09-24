from math import ceil, log2

def mul(z,w,mod):
    a,b=z; c,d=w
    return ((a*c+3*b*d)%mod,(a*d+b*c)%mod)

def pow_alpha(n,mod):
    res=(1,0); base=(2%mod,1%mod)
    while n:
        if n&1: res=mul(res,base,mod)
        base=mul(base,base,mod); n//=2
    return res

def v2(n):
    return (n & -n).bit_length()-1

def Rpoly(d,v,mod):
    Q=(d+v)%mod
    # exact expression modulo mod
    return (pow(Q,10,mod)-12*pow(Q,7,mod)+15*d*pow(Q,6,mod)-4*d*d*pow(Q,5,mod)-4*d*pow(Q,3,mod)+12*d*d*pow(Q,2,mod)-12*d*d*d*Q+4*pow(d,4,mod))%mod

def data_q(q,Kextra=8):
    rho=v2(q)+3
    # enough modulus for x after dividing 2^rho and root quotient /8
    K=ceil(log2(108*q))+1
    mod=1<<(K+rho+Kextra)
    V,X=pow_alpha(4*q,mod)
    U,_=pow_alpha(4*q+1,mod)
    # verify valuation X
    assert v2(X)==rho, (q,rho,v2(X))
    x=(X>>rho)%(1<<(K+Kextra))
    y=(U*V-1)%(1<<(K+Kextra))
    d=(3*U*X+1)%(1<<(K+Kextra))
    chi=(x*y)%(1<<(K+Kextra))
    return rho,K,d,chi

def root_m(q):
    rho,K,d,chi=data_q(q)
    # solve R(d,2chi*m)/8 ==0 mod 2^K among odd m
    r=1
    for k in range(1,K): # r solution mod2^k, lift to 2^(k+1)
        modR=1<<(k+4) # R mod2^(k+4), quotient /8 mod2^(k+1)
        dd=d%modR; cc=chi%modR
        def f(mm):
            rr=Rpoly(dd,(2*cc*mm)%modR,modR)
            assert rr%8==0
            return (rr//8)%(1<<(k+1))
        if f(r)%(1<<(k+1))!=0:
            r += 1<<k
            assert f(r)%(1<<(k+1))==0, (q,k,r,f(r))
    return rho,K,r

def pell_U_mod(n,m):
    return pow_alpha(n,m)[0]

def check(q):
    rho,K,m=root_m(q)
    bound=27*(1<<(rho-1)) # exact old bound, much smaller than 108q if w>1
    div = ((9*(pell_U_mod(4*q+1,m)*pow(2,-1,m)))%m==0) if m>1 else True
    return rho,K,m,bound,m<bound,div

if __name__=='__main__':
    for q in [512,1024,1536,2048,2560,3072,4096,5120,8192,16384,32768,65536]:
        print(q,check(q))
    print('scan')
    surv=[]
    for q in range(512,200000+1,512):
        rho,K,m,bound,small,div=check(q)
        if small:
            surv.append((q,rho,m,bound,div))
    print('small',len(surv),surv[:50])
    print('div',sum(x[-1] for x in surv),[x for x in surv if x[-1]][:20])
