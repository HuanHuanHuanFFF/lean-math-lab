"""Generate/receive all-j consumers for canonical direct-local candidate unions.

Discovery uses math.comb; receiving forms V from stripped individual window terms
and uses an integer binomial recurrence for finite-j exception certificates.
This is ordinary exact arithmetic, not a Lean/kernel verification.
"""
from pathlib import Path
from math import comb, factorial, prod, isqrt
import json, time, hashlib, sys
R = Path(__file__).resolve().parents[1]
def data(i):
    if i == 14: return R/'evidence/direct', (2,3,5,7,11,13), 9, 14, 135
    if i == 9: return R/'evidence/i9/direct', (2,3,5,7), 6, 10, 63
    raise ValueError('unsupported index')
def prime(n):
    return n >= 2 and all(n % d for d in range(2, isqrt(n)+1))
def generate(i):
    t0 = time.monotonic(); dest, ps, s, lam, E = data(i)
    K = 2**(s*(s+1))*prod(factorial(h)**3 for h in range(1,s+1))
    digest = hashlib.sha256(); total = normal = 0; exceptions = []
    for line in (dest/'candidates.tsv').read_text().splitlines():
        l,h = map(int,line.split())
        for n in range(l,h+1):
            total += 1; first = comb(n,i); V = first
            for p in ps:
                while V % p == 0: V //= p
            if K*V**lam > n**E:
                normal += 1; digest.update(f'{n}:{V}\n'.encode()); continue
            p = next((p for p in range(n,n-i,-1) if prime(p)), None)
            rec = {'n':n, 'V':str(V), 'consumer':'top_prime' if p else 'finite_j', 'p':p}
            if p is None:
                if n > 100000: raise ValueError('finite-j discovery guard: seek a symbolic consumer')
                factors = [q for q in range(i,n+1) if prime(q) and first % q == 0]
                runs = []
                for j in range(i+1,n//2+1):
                    q = next((q for q in reversed(factors) if comb(n,j) % q == 0), None)
                    if q is None: raise ValueError(f'No witness at i,n,j={i,n,j}')
                    if runs and runs[-1][2] == q: runs[-1][1] = j
                    else: runs.append([j,j,q])
                rec['j_runs'] = runs
            exceptions.append(rec)
    out = {'status':'GENERATED_DIRECT_ALL_J_TERMINAL', 'i':i, 'K':str(K), 'lambda':lam, 'E':E,
           'total':total, 'scalar_rejections':normal, 'exceptions':exceptions,
           'without_top_prime':sum(e['p'] is None for e in exceptions),
           'max_exception_n':max((e['n'] for e in exceptions),default=0),
           'default_sha256':digest.hexdigest(), 'seconds':round(time.monotonic()-t0,3)}
    (dest/'terminal_certificate.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='exceptions'}),flush=True)
def receive(i):
    if not __debug__: raise RuntimeError('Do not use python -O for certificate receiving')
    t0 = time.monotonic(); dest, ps, s, lam, E = data(i)
    cert = json.loads((dest/'terminal_certificate.json').read_text()); f = ff = 1
    for h in range(1,s+1): f *= h; ff *= f
    K = 2**(s*(s+1))*ff**3
    assert cert['i']==i and cert['K']==str(K) and cert['lambda']==lam and cert['E']==E
    exceptions = {e['n']:e for e in cert['exceptions']}
    assert len(exceptions)==len(cert['exceptions'])
    seen=set(); primes=set(); total=normal=direct_j=finite_j=top_count=finite_count=modular_intervals=0
    digest=hashlib.sha256(); previous=2*i
    for line in (dest/'candidates.tsv').read_text().splitlines():
        l,h=map(int,line.split()); assert 2*i+2<=l<=h and l>previous+1; previous=h
        for n in range(l,h+1):
            total+=1; V=1
            for a in range(i):
                z=n-a
                for p in ps:
                    while z%p==0: z//=p
                V*=z
            if n not in exceptions:
                assert K*V**lam>n**E
                normal+=1; digest.update(f'{n}:{V}\n'.encode()); continue
            rec=exceptions[n]; assert str(V)==rec['V']
            if rec['consumer']=='top_prime':
                p=rec['p']; assert isinstance(p,int) and p>=i and n-i<p<=n and 2*p>n
                d=2
                while d*d<=p: assert p%d; d+=1
                assert comb(n,i)%p==0
                for j in range(i+1,n//2+1): assert comb(n,j)%p==0; direct_j+=1
                primes.add(p); top_count+=1
            else:
                assert rec['consumer']=='finite_j' and rec['p'] is None
                runs=rec['j_runs']; assert runs and runs[0][0]==i+1 and runs[-1][1]==n//2
                boundary=i
                for lo,hi,p in runs:
                    assert lo==boundary+1 and lo<=hi<=n//2 and p>=i
                    d=2
                    while d*d<=p: assert p%d; d+=1
                    assert p>=2
                    # One base-p carry covers the WHOLE run: no per-j hypothesis.
                    assert p>i and n%p<i and lo//p==hi//p and lo%p>n%p
                    modular_intervals+=1
                    # Form C(n,i) independently of discovery's math.comb call.
                    first=1
                    for k in range(1,i+1):
                        num=first*(n-k+1); assert num%k==0; first=num//k
                    assert first%p==0; boundary=hi
                ri=0; value=1
                for j in range(1,n//2+1):
                    num=value*(n-j+1); assert num%j==0; value=num//j
                    if j<i+1: continue
                    while j>runs[ri][1]: ri+=1
                    assert runs[ri][0]<=j<=runs[ri][1] and value%runs[ri][2]==0
                    finite_j+=1
                finite_count+=1
            seen.add(n)
    assert seen==set(exceptions) and normal==cert['scalar_rejections'] and total==cert['total']
    assert digest.hexdigest()==cert['default_sha256']
    assert cert['without_top_prime']==finite_count
    assert cert['max_exception_n']==max(seen,default=0)
    out={'status':'PASS_EVERY_DIRECT_CANDIDATE_ALL_J', 'i':i, 'candidates':total,
         'scalar_rejections':normal, 'top_prime_exceptions':top_count,
         'finite_j_exceptions':finite_count, 'finite_j_certificate_cases':finite_j,
         'finite_j_modular_interval_certificates':modular_intervals,
         'distinct_top_primes':len(primes), 'largest_top_prime':max(primes,default=0),
         'max_exception_n':max(seen,default=0), 'direct_j_regression_cases':direct_j,
         'residual':0, 'default_sha256':digest.hexdigest(), 'seconds':round(time.monotonic()-t0,3)}
    (dest/'terminal_check.json').write_text(json.dumps(out,indent=2)+'\n'); print(json.dumps(out),flush=True)
if __name__=='__main__':
    i=int(sys.argv[1]); receive(i) if len(sys.argv)>2 and sys.argv[2]=='--check' else generate(i)
