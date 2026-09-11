"""Finite route diagnostic only; no unbounded inference."""
import json, math, time
from pathlib import Path

def primes(B):
    a=bytearray(b'\1')*(B+1); a[:2]=b'\0\0'
    for p in range(2,math.isqrt(B)+1):
        if a[p]:a[p*p::p]=b'\0'*(((B-p*p)//p)+1)
    return [p for p in range(2,B+1) if a[p]]
def cubert(n):
    a,b=0,1<<((n.bit_length()+2)//3)
    while a<b:
        t=(a+b+1)//2
        if t**3<=n:a=t
        else:b=t-1
    return a

def run(B):
    cnt=dict(primes=0,power_rows=0,normalized_candidates=0,first_pass=0,second_pass=0)
    first=[]
    for q in primes(B):
        if q<=1024:continue
        cnt['primes']+=1; beta=q*q
        for c in [1,3]:
            alpha=2*c
            while alpha<=2*beta:alpha*=2
            while c**4*alpha**2<108*beta**3:
                cnt['power_rows']+=1
                if alpha%q:
                    g=pow(alpha,-1,q)
                    upper=cubert((108*beta**3-1)//(c**4*alpha**2))
                    if g<=upper:
                        n=alpha*g;j=beta*g
                        if n%4==0 and (c==1 or g%3) and math.gcd(alpha,beta)==1 and math.gcd(beta,n-1)==q:
                            cnt['normalized_candidates']+=1
                            if 3*j*(j-1)%(n-1)==0:
                                cnt['first_pass']+=1
                                sec=6*j*(j-1)*(j-2)%(n-2)==0
                                cnt['second_pass']+=sec
                                first.append({'n':n,'j':j,'q':q,'g':g,'alpha':alpha,'second':sec,'square_n':math.isqrt(n)**2==n})
                alpha*=2
    return {'status':'finite_diagnostic_only','q_upper':B,'counts':cnt,'first_pass_records':first}
if __name__=='__main__':
    import sys
    out=Path(sys.argv[1]);out.write_text(json.dumps(run(20000),indent=2)+'\n'); print(out.read_text()[:1200])
