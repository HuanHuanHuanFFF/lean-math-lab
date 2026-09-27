#!/usr/bin/env python3
for c,p in ((1,109),(5,233)):
    mod=p*p;x=1
    for k in range(1,2*p*(p-1)+1):
        x=x*5%mod
        if (k%2==0)!=(c==1):continue
        N=(pow(x,4,mod)+4)%mod
        if N%p:continue
        if c==1:F=(16*pow(x,8,mod)+139*pow(x,4,mod)-18*pow(x,3,mod)+3*x*x+36*x+208)%mod
        else:F=(16*pow(x,8,mod)+115*pow(x,4,mod)+6*pow(x,3,mod)+3*x*x-12*x+112)%mod
        if F==0:
            print(c,p,'k',k,'Nmodp2',N,flush=True);break
    else:print(c,p,'none')
