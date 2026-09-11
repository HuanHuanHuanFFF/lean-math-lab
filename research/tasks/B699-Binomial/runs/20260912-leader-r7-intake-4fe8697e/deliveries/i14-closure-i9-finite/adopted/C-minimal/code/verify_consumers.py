"""New adjacent-endpoint certificate + bounded regression of new consumers.
Unbounded consumer implications are proved in CONSUMERS.md and adopt source A/B;
this program does not reverify those upstream results.
"""
from pathlib import Path
from math import comb,gcd,factorial,isqrt
import json,copy
ROOT=Path(__file__).resolve().parents[1]

def prime(p):return p>=2 and all(p%d for d in range(2,isqrt(p)+1))

def first_large(n,k):
    x=comb(n,k)
    for p in range(k+1,n+1):
        if x%p==0 and prime(p):return p
    raise ValueError(('no large prime',n,k))

def generate():
    families=[]
    for k in (4,10):
        small=[p for p in range(2,k+1) if prime(p)]
        constant=2**k*factorial(k);N=2*k
        while N**(k-len(small))<constant:N+=1
        rows=[{'n':n,'p':first_large(n,k)} for n in range(2*k,N)]
        families.append(dict(k=k,small_primes=small,tail_from=N,tail_constant=constant,rows=rows))
    return dict(kind='ADJACENT_ENDPOINT_LARGE_PRIME',families=families)

def check(cert):
    if cert.get('kind')!='ADJACENT_ENDPOINT_LARGE_PRIME':raise ValueError('kind')
    if [f['k'] for f in cert['families']]!=[4,10]:raise ValueError('families')
    count=0
    for f in cert['families']:
        k=f['k'];N=f['tail_from'];ps=[p for p in range(2,k+1) if prime(p)]
        if ps!=f['small_primes'] or f['tail_constant']!=2**k*factorial(k):raise ValueError('constants')
        if N<2*k or N**(k-len(ps))<2**k*factorial(k):raise ValueError('tail')
        if [r['n'] for r in f['rows']]!=list(range(2*k,N)):raise ValueError('coverage')
        for row in f['rows']:
            n,p=row['n'],row['p']
            # Independent binomial evaluation from numerator and denominator.
            num=1
            for x in range(n-k+1,n+1):num*=x
            c,rem=divmod(num,factorial(k))
            if rem or not p>k or not prime(p) or c%p:raise ValueError('witness')
            count+=1
    return count

def smooth(x,ps):
    if x<1:return False
    for p in ps:
        while x%p==0:x//=p
    return x==1

def main():
    cert=generate();ct=check(cert)
    (ROOT/'evidence/endpoint_certificate.json').write_text(json.dumps(cert,indent=2)+'\n')
    negative=[]
    for name in ('missing_endpoint','composite_witness','invalid_tail'):
        b=copy.deepcopy(cert)
        if name=='missing_endpoint':b['families'][0]['rows'].pop()
        elif name=='composite_witness':b['families'][0]['rows'][0]['p']=6
        else:b['families'][0]['tail_from']=19
        try:check(b)
        except ValueError:negative.append(name)
        else:raise RuntimeError('bad endpoint certificate accepted')
    counts={};counterexamples=[]
    for k,ps in [(4,[2,3]),(10,[2,3,5,7])]:
        target=k-1;instances=0;rowcount=0
        for n in range(2*k,801):
            if not smooth(n-target,ps):continue
            rowcount+=1
            for j in range(k,n//2+1):
                g=gcd(gcd(comb(n,target),comb(n,k)),comb(n,j))
                w=None
                for p in range(k+1,n+1):
                    if g%p==0 and prime(p):w=p;break
                if w is None:counterexamples.append([n,target,j])
                instances+=1
        counts[str(target)]=dict(rows=rowcount,triples=instances,max_n=800)
    if counterexamples:raise ValueError(counterexamples[:3])
    result=dict(status='PASS_FRESH_ENDPOINT_AND_BOUNDED_CONSUMER_REGRESSION',
                endpoint_rows=ct,endpoint_tail_thresholds={'4':20,'10':40},
                negative_tests_rejected=negative,bounded_consumers=counts,
                upstream_A_B_reverified=False,new_full_indices=0,lean=False)
    (ROOT/'evidence/consumer_check.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(result),flush=True)
if __name__=='__main__':main()
