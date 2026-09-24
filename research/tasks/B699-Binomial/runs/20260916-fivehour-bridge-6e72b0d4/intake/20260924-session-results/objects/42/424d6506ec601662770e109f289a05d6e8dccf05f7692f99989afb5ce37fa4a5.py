from probe import mul,pow_alpha,v2,Rpoly
import json,sys,time

def fmod(d,chi,m,bits):
    rb=bits+3; mod=1<<rb
    R=Rpoly(d%mod,(2*(chi%mod)*m)%mod,mod)
    assert R%8==0
    return (R//8)% (1<<bits)

def scan(rho,valbits=80):
    L=56-rho; rows=1<<(L-1); K=rho+4
    coordbits=valbits+rho+10; mod=1<<coordbits
    q0=1<<(rho-3)
    V,X=pow_alpha(4*q0,mod)
    step=pow_alpha(1<<rho,mod)
    bound=27*(1<<(rho-1))
    inrange=0; passed=0; maxval=0
    w=1; st=time.time()
    for _ in range(rows):
        assert v2(X)==rho
        U=(2*V+3*X)%mod
        x=X>>rho
        y=(U*V-1)%mod
        d=(3*U*X+1)%mod
        chi=(x*y)%mod
        m=1
        for k in range(1,K):
            a=fmod(d,chi,m,k+1)
            b=fmod(d,chi,m+(1<<k),k+1)
            assert (a==0)^(b==0)
            if b==0:m+=1<<k
        if m<bound:
            inrange+=1
            z=fmod(d,chi,m,valbits)
            val=valbits+3 if z==0 else v2(z)+3
            maxval=max(maxval,val)
            if z==0: passed+=1
        V,X=mul((V,X),step,mod); w+=2
    return dict(rho=rho,rows=rows,inrange=inrange,pass_valbits=passed,max_v2R=maxval,valbits=valbits,seconds=time.time()-st,implementation='python-exact')

if __name__=='__main__':
    r=int(sys.argv[1]); print(json.dumps(scan(r),sort_keys=True))
