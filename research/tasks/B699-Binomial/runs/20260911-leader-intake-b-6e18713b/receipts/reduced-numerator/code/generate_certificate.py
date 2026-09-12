"""Generate a complete reduced-numerator certificate. Integer arithmetic only."""
import argparse, json
from math import gcd,isqrt
from pathlib import Path
from estimate_fraction import rows

def prime_sieve(N):
    a=bytearray(b'\1')*(N+1); a[:2]=b'\0\0'
    for p in range(2,isqrt(N)+1):
        if a[p]: a[p*p::p]=b'\0'*((N-p*p)//p+1)
    return [p for p in range(2,N+1) if a[p]]

def factors(n, primes):
    f=[]
    for p in primes:
        if p*p>n: break
        if n%p==0:
            e=0
            while n%p==0: n//=p; e+=1
            f.append([p,e])
    if n>1: f.append([n,1])
    return f

def b_roots(g, fs):
    rr=[0]; mod=1
    for p,e in fs:
        q=p**e; inv=pow(g,-1,q); step=pow(mod,-1,q)
        rr=[r+mod*((z-r)*step%q) for r in rr for z in (0,inv)]
        mod*=q
    return sorted(rr),mod

def generate(B):
    if not isinstance(B,int) or not 1<=B<=2**24: raise ValueError('1<=B<=2^24 required')
    rs=list(rows(B))
    ps=prime_sieve(isqrt(max((r[3] for r in rs),default=8))+1)
    data=[]; first=[]; second=[]; choices=0; biggest=0
    for c,g,alpha,n,low,high in rs:
        M=(n-1)//gcd(3,n-1); fs=factors(M,ps); rr,mod=b_roots(g,fs)
        assert mod==M
        choices+=len(rr); biggest=max(biggest,len(rr))
        data.append([c,g,alpha,n,low,high,fs])
        for r in rr:
            left=-((r-low)//M); right=(high-r)//M
            for z in range(left,right+1):
                b=r+z*M
                if gcd(alpha,b)!=1: continue
                j=g*b; row=[n,j,c,g,alpha,b]
                assert (3*j*(j-1))%(n-1)==0
                first.append(row)
                if (6*j*(j-1)*(j-2))%(n-2)==0: second.append(row)
    first.sort();second.sort()
    cert={'schema':'B699-i3-reduced-numerator-v1','B':B,'coefficient':108,'c_exponent':4,
          'rows':data,'first_candidates':first,'second_candidates':second}
    summary={'B':B,'parameter_rows':len(data),'max_n_in_rows':max((r[3] for r in rs),default=0),
             'root_choices':choices,'largest_root_count':biggest,
             'first_candidates':len(first),'second_candidates':len(second)}
    return cert,summary

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--B',type=int,default=2**20);ap.add_argument('--out',type=Path,required=True)
    args=ap.parse_args();args.out.mkdir(parents=True,exist_ok=True)
    c,s=generate(args.B)
    (args.out/'certificate.json').write_text(json.dumps(c,ensure_ascii=False,separators=(',',':'))+'\n')
    (args.out/'generation.json').write_text(json.dumps(s,sort_keys=True,indent=2)+'\n')
    print(json.dumps(s,sort_keys=True))
if __name__=='__main__':main()
