import math,json
from bisect import bisect_left
import numpy as np
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
MAX=1000000
sieve=bytearray(b'\1')*(MAX+1);sieve[:2]=b'\0\0'
for p in range(2,math.isqrt(MAX)+1):
    if sieve[p]:sieve[p*p::p]=b'\0'*((MAX-p*p)//p+1)
primes=[i for i in range(2,MAX+1) if sieve[i]]
lf=np.zeros(MAX+1)
lf[1:]=np.cumsum(np.log(np.arange(1,MAX+1)))
LB=np.cumsum(lf)

def profile(i):
    t=bisect_left(primes,i)
    best=None
    # A small parameter grid only diagnoses strength, not a proof.
    for rs in [0.20,0.25,0.30,1/3,0.35,0.40,0.45,0.50]:
        r=int(i*rs)
        for ss in [0.45,0.5,0.55,0.6,0.65,2/3,0.70,0.75,0.8]:
            s=int(i*ss);L=i-r-1;lam=2*s-r
            E=s*(s+1)+L*(L+1)//2;Delta=lam*(i-t)-E
            if Delta<=0:continue
            const=lam*lf[i]-s*(s+1)*math.log(2)-2*LB[s]-LB[L]
            logn=const/Delta
            if logn>500: continue
            N=max(math.exp(logn),2*i+2)
            for _ in range(8):
                # Large n asymptotic correction used ONLY as a diagnostic.
                offset=i*(i-1)/(2*N)+i*(i-1)*(2*i-1)/(12*N*N)
                N=max(math.exp(logn+lam/Delta*offset),2*i+2)
            rec={'i':i,'t':t,'r':r,'s':s,'lam':lam,'E':E,'Delta':Delta,'N_diagnostic':N,'ratio_diagnostic':N/i}
            if best is None or N<best['N_diagnostic']:best=rec
    return best
def main():
    rows=[]
    for i in [185,186,190,199,200,210,211,220,250,300,400,500,750,1000,2000,5000,10000,100000,999999,1000000]:
        row=profile(i);rows.append(row);print(row,flush=True)
    with open(ROOT/'outputs'/'middle_height_probe.json','w') as f:json.dump(rows,f,indent=2)

if __name__=='__main__': main()
