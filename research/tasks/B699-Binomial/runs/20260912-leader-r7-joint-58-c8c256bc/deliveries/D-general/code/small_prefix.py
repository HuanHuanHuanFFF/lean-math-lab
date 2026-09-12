"""Complete small-n consumers recovered by quadratic roots, not j scans."""
from math import gcd,isqrt,comb
from pathlib import Path
import json
from allocation_certificate import params
ROOT=Path(__file__).resolve().parents[1]
B=4096

def canonical(n):
    M=(n-2)//2
    lam=3 if (n-1)%3==0 and (n-1)%9 else 1
    mu=3 if M%3==0 and M%9 else 1
    return lam,mu,(n-1)//lam,M//mu

def run():
    count=0;roots=[]; accepted=[]
    for C,ell,pos,h,g,c in params():
        n=2*c*g;s=1
        while n<=B:
            if n>=12 and n%4==0:
                count+=1;D=(n-1)*(n-2);w=ell*C
                R=(w-2*h)*n*n+6*h*n-4*h if pos==1 else 4*h*D+w
                if R>=0 and R%w==0:
                    Y=isqrt(R//w)
                    if w*Y*Y==R:
                        j=(n-Y)//2 if pos==1 else ((Y+1)//2 if pos==2 else n-(Y+1)//2)
                        rec=dict(C=C,ell=ell,position=pos,h=h,g=g,c=c,s=s,n=n,Y=Y,j=j)
                        roots.append(rec)
                        if (pos==1 and (n-Y)%2) or (pos!=1 and Y%2!=1):pass
                        elif 4<=j<n//2 and gcd(n,j)==g:
                            lam,mu,N,K=canonical(n)
                            if lam*mu==ell and gcd(K,j-pos)==C and j*(j-1)%N==0 and j*(j-1)*(j-2)%K==0:
                                G=gcd(comb(n,3),comb(n,j));odd=G//(G&-G)
                                assert odd>1, 'potential ORIGINAL noCommon: independently verify!'
                                rec=dict(rec,actual_gcd=G,odd_common_part=odd);accepted.append(rec)
            n*=2;s+=1
    # n=8 is the only legal multiple-of-four input below12.
    assert gcd(comb(8,3),comb(8,4))%7==0
    return {'bound':B,'parameter_power_rows':count,'quadratic_root_count':len(roots),'roots':roots,'projection_candidates':accepted,'n8_witness':7}
if __name__=='__main__':
    obj=run();(ROOT/'outputs/small-prefix-certificate.json').write_text(json.dumps(obj,indent=2)+'\n')
    print({k:v for k,v in obj.items() if k!='roots'})
