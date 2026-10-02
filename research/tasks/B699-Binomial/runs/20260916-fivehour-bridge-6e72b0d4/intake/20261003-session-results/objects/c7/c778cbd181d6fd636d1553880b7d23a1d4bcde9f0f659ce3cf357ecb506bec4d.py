"""Generate a sparse deterministic prime chain; never enumerate (n,i,j)."""
from pathlib import Path
import json
from exact import trial
ROOT=Path(__file__).resolve().parents[1]

def prevprime(n:int)->int:
    if n<2:raise ValueError('no prime below 2')
    if n==2:return 2
    n-=int(n%2==0)
    while not trial(n):n-=2
    return n

def main():
    lower=9768;upper=2**30;p=prevprime(lower);ps=[p]
    while (32*p-1)//31<upper:
        q=prevprime((32*p-1)//31)
        if q<=p:raise RuntimeError('chain stalled')
        ps.append(q);p=q
    out={'lower_real_endpoint':lower,'upper_real_endpoint':upper,'alpha_numerator':31,'alpha_denominator':32,
         'primes':ps,'generator':'deterministic previous-prime search by complete trial division',
         'claim':'for every real x in [lower,upper], some listed actual prime satisfies 31*x/32<p<=x'}
    dst=ROOT/'certificates/prime_chain.json';dst.write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'nodes':len(ps),'first':ps[0],'last':ps[-1],'last_integer_endpoint':(32*ps[-1]-1)//31}))
if __name__=='__main__':main()
