"""Independent eight-state minimum-carry DP; no closed formula or predecessor table."""
from itertools import product
from math import isqrt
from pathlib import Path
import sys,json
ALL=list(product((0,1),repeat=3));ZERO=(0,0,0)

def trial_primes(N):return [x for x in range(2,N+1) if all(x%d for d in range(2,isqrt(x)+1))]
def factorial_order(n,p):
    z=0;q=p
    while q<=n:z+=n//q;q*=p
    return z
def binomial_order(n,k,p):return factorial_order(n,p)-factorial_order(k,p)-factorial_order(n-k,p)

def min_order(A,B,C,p):
    cur={ZERO:(0,0)};place=1
    while place<=A+B+C+1:
        a,b,c=(A//place)%p,(B//place)%p,(C//place)%p;nxt={}
        for (d,u,v),(cost,r) in cur.items():
            for dn,un,vn in ALL:
                total=a-d+p*dn
                lo=max(0,p*un-b-u,total-(p-1),total-(p*(vn+1)-c-v-1))
                hi=min(p-1,p*(un+1)-b-u-1,total,total-(p*vn-c-v))
                if lo>hi:continue
                st=dn,un,vn;score=cost+un+vn
                if st not in nxt or score<nxt[st][0]:nxt[st]=(score,r+place*lo)
        cur=nxt;place*=p
    e,r=cur[ZERO]
    assert 0<=r<=A
    assert e==binomial_order(A+C-r,C,p)+binomial_order(B+r,r,p)
    return e

def validate_record(record,primes):
    A,B,C=record['ABC'];N=A+B+C+1
    if min(A,B,C)<0:raise ValueError('negative degree')
    fs=record['factorization']
    if any(len(v)!=2 or v[1]<=0 for v in fs):raise ValueError('invalid exponent')
    if [v[0] for v in fs]!=sorted(set(v[0] for v in fs)):raise ValueError('unordered/duplicate primes')
    pset={p for p in primes if p<=N}
    if any(p not in pset for p,e in fs):raise ValueError('nonprime or out-of-range factor')
    want=dict(fs);count=0
    for p in primes:
        if p>N:break
        got=min_order(A,B,C,p)
        if got!=want.get(p,0):raise ValueError(('mismatch',A,B,C,p,got,want.get(p,0)))
        count+=1
    return count

def main():
    data=json.loads(Path(sys.argv[1]).read_text());records=data['random_cases']+data['large_cases']
    M=max(sum(r['ABC'])+1 for r in records);ps=trial_primes(M)
    count=sum(validate_record(r,ps) for r in records)
    out={'status':'passed','algorithm':'all-eight-state minimum-carry DP; no closed formula or predecessor table',
         'records':len(records),'all_prime_minimum_comparisons':count,'prime_generation':'complete trial division','largest_prime_domain':M}
    p=Path(sys.argv[2]);p.parent.mkdir(parents=True,exist_ok=True);p.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
