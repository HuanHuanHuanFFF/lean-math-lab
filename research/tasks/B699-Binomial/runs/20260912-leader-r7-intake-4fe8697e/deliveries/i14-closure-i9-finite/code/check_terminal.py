"""Full receiving of all candidates via window stripping, independent of binomial generation."""
from pathlib import Path
from math import comb,isqrt
import json,hashlib,time
R=Path(__file__).resolve().parents[1];SMALL=(2,3,5,7,11,13)
def demand(ok,msg):
    if not ok:raise ValueError(msg)
def trial_prime(x):
    if x<2:return False
    d=2
    while d*d<=x:
        if x%d==0:return False
        d+=1
    return True

def receive(cert,intervals):
    f=1;prod_f=1
    for h in range(1,10):f*=h;prod_f*=f
    K=(1<<90)*prod_f**3
    exceptions=cert['exceptions'];lookup={r['n']:r for r in exceptions};demand(len(lookup)==len(exceptions),'duplicate exception')
    seen=set();primes=set();digest=hashlib.sha256();total=normal=direct_j=0
    for lo,hi in intervals:
        demand(30<=lo<=hi,'invalid candidate interval')
        for n in range(lo,hi+1):
            total+=1;V=1
            for a in range(14):
                u=n-a
                for p in SMALL:
                    while u%p==0:u//=p
                V*=u
            if n not in lookup:
                demand(K*V**14>n**135,'missing full-j scalar exclusion')
                normal+=1;digest.update(f'{n}:{V}\n'.encode())
            else:
                seen.add(n);rec=lookup[n];demand(V==int(rec['V']),'incorrect full-power V')
                p=rec['top_prime'];demand(isinstance(p,int) and trial_prime(p),'top witness not prime')
                demand(p>=14 and n-14<p<=n and 2*p>n,'top witness range')
                primes.add(p)
                # This is an additional finite regression; the all-j proof is the endpoint lemma.
                demand(comb(n,14)%p==0,'first binomial not divisible')
                for j in range(15,n//2+1):
                    demand(comb(n,j)%p==0,'top witness fails j');direct_j+=1
    demand(seen==set(lookup),'extraneous/unconsumed exception')
    demand(total==cert['total_candidates'] and normal==cert['scalar_rejected'],'candidate/default counts')
    demand(digest.hexdigest()==cert['default_witness_sha256'],'default canonical witness hash')
    return {'status':'PASS_EVERY_CANDIDATE_ALL_J_CONSUMER','candidates':total,'scalar_rejections':normal,'top_prime_exceptions':len(seen),'distinct_top_primes':len(primes),'largest_top_prime':max(primes,default=0),'max_exception_n':max(seen,default=0),'direct_j_regression_cases':direct_j,'residual_candidates':0,'default_witness_sha256':digest.hexdigest()}
if __name__=='__main__':
    t0=time.monotonic();cert=json.loads((R/'evidence/terminal_certificate.json').read_text());ivs=[list(map(int,l.split())) for l in (R/'evidence/candidates.tsv').read_text().splitlines()]
    out=receive(cert,ivs);out['seconds']=round(time.monotonic()-t0,3);(R/'evidence/terminal_check.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out),flush=True)
