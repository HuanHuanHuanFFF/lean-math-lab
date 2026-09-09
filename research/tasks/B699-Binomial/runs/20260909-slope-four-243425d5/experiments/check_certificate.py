"""Independent arithmetic checker for the saved finite certificates.

Does not import either generator. Uses a new small sieve for the K/prime-count
identity, trial-division prime proofs for covers, direct integer binomials for
both residual divisibilities, and base-p carries to cross-check valuations.
No publication theorem or infinite analytic argument is proved by this script.
"""
from pathlib import Path
from math import comb, factorial, prod, isqrt
from functools import lru_cache
from fractions import Fraction
import hashlib,json,sys
sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parent

@lru_cache(None)
def is_prime(n):
    if n<2: return False
    if n%2==0: return n==2
    d=3
    while d*d<=n:
        if n%d==0: return False
        d+=2
    return True

def valuation(x,p):
    e=0
    while x%p==0:
        x//=p; e+=1
    return e

def addition_carries(n,k,p):
    # Digit addition of k and n-k, independently of Legendre floor sums.
    a,b=k,n-k; carry=0; e=0; q=1; levels=[]
    while a or b or carry:
        total=a%p+b%p+carry
        carry=int(total>=p); q*=p
        if carry: e+=1; levels.append(q)
        a//=p; b//=p
    return e,levels

def run():
    raw={name:(ROOT/name).read_bytes() for name in
         ('height-certificate.json','finite-cover.json','witnesses.json')}
    height,cover,witness=(json.loads(raw[name]) for name in raw)
    # Independent small prime enumeration: sieve, not generator's trial division.
    flags=[True]*3070; flags[0]=flags[1]=False
    for k in range(2,3070):
        if flags[k]:
            for m in range(2*k,3070,k): flags[m]=False
    small_primes=[k for k in range(3070) if flags[k]]
    rows={r['i']:r for r in height['rows']}
    assert sorted(rows)==list(range(3,1024))
    for i,r in rows.items():
        s=sum(1 for p in small_primes if p<i)
        z=(i+3)//4; E=i-s-z
        fs=[p for p in small_primes if p>i and
            ((p%3==2 and p<=3*i-7) or (p%3==1 and p<=3*i-11))]
        K=prod(fs); A=3**i*factorial(z); R=K*4**s*factorial(i)
        assert [r['s'],r['z'],r['E']]==[s,z,E] and E>=1
        assert r['K_factors']==fs and int(r['K'])==K
        J=r['j_max']
        assert 0<=J<1024*i
        assert A*J**E<R<=A*(J+1)**E
        assert A*(1024*i)**E>=R
        assert r['n_max']==4*J and r['candidate_count']==max(0,J-i)
    # Constants at the analytic endpoint, exact rational arithmetic.
    assert Fraction(3001,1000)>3*Fraction(36261,36260)
    assert Fraction(73,60)==1+Fraction(13,10)/6
    assert Fraction(12403,3000)==Fraction(3001,1000)+Fraction(73,60)+Fraction(1,4)-Fraction(1,3)
    assert (Fraction(1024,2)-1)*Fraction(224,27)>Fraction(12403,3000)*1024+2
    assert 5*68**13<6*396738*25**13
    assert 4*((396737-1)//3)==528980
    # Cover only requires lower prime witnesses, not proof of consecutive primes.
    stages=cover['stages']; prev_cap=None; cover_intervals=0
    for t,c in enumerate(stages):
        N,G=c['n_max'],c['index_cap']
        assert c['n_min']==16 and c['step']==4
        if t==0:
            assert N==528980 and c['source']=='FINITE4'
        else:
            assert c['input_index_cap']==prev_cap
            expected=max(r['n_max'] for i,r in rows.items()
                         if i<=prev_cap and r['j_max']>i)
            assert N==expected
        next_row=16
        for first,last,p in c['intervals']:
            assert first==next_row and first%4==last%4==0
            assert first<=last<=N and p<=first and last-p<=G
            assert is_prime(p)
            next_row=last+4; cover_intervals+=1
        assert next_row==N+4
        if t>0: assert G<=prev_cap
        prev_cap=G
    I=cover['final_i_cap']; N=cover['final_n_cap']
    assert I==stages[-1]['input_index_cap']==prev_cap
    assert N==stages[-1]['n_max'] and I<=1023
    # Independently account for every pair in the derived final domain.
    covered={i:bytearray(max(0,min(rows[i]['j_max'],N//4)-i)) for i in range(3,I+1)}
    omitted_count=0
    for i,first,last,p in cover['omitted_intervals']:
        assert i in covered and i<first<=last<=min(rows[i]['j_max'],N//4)
        assert is_prime(p) and p<=4*first and 4*last-i<p
        assert p>=i and p>last
        for j in range(first,last+1):
            at=j-i-1
            assert covered[i][at]==0
            covered[i][at]=1; omitted_count+=1
    pairs=[tuple(a) for a in cover['residual_pairs']]
    assert len(pairs)==len(set(pairs))==cover['residual_pair_count']
    for i,j in pairs:
        at=j-i-1
        assert i in covered and 0<=at<len(covered[i]) and covered[i][at]==0
        covered[i][at]=2
    assert all(all(a) for a in covered.values())
    assert sum(map(len,covered.values()))==cover['pre_filter_pairs']
    assert omitted_count==cover['top_prime_omitted_pairs']
    # Residual prime witnesses checked via actual arbitrary-precision binomials.
    ws={(w['i'],w['j']):w for w in witness['witnesses']}
    assert len(ws)==len(witness['witnesses'])==len(pairs)
    assert set(ws)==set(pairs)
    row_cache={}; boundary=[]; checks_hash=hashlib.sha256()
    for i,j in pairs:
        w=ws[i,j]; n=4*j; p=w['p']
        assert w['n']==n and p>=i and is_prime(p)
        # First coefficient by falling product/factorial, not math.comb.
        Ci=prod(range(n-i+1,n+1))//factorial(i)
        if j not in row_cache: row_cache[j]=comb(n,j)
        Cj=row_cache[j]
        assert Ci==int(w['Cni']) and Ci%p==Cj%p==0
        vi,vj=valuation(Ci,p),valuation(Cj,p)
        assert vi==w['valuation_i']>=1 and vj==w['valuation_j']>=1
        assert addition_carries(n,i,p)==(vi,w['carry_powers_i'])
        assert addition_carries(n,j,p)==(vj,w['carry_powers_j'])
        checks_hash.update(f'{i},{j},{p},{Ci},{Cj}\n'.encode())
        if p==i:
            boundary.append(dict(i=i,j=j,n=n,p=p,valuation_i=vi,valuation_j=vj,
                                 Cni=str(Ci),Cnj=str(Cj),
                                 carry_powers_i=w['carry_powers_i'],
                                 carry_powers_j=w['carry_powers_j']))
    assert len(boundary)==witness['p_equals_i_count']==3
    out=dict(status='PASS',checker_scope='saved finite certificates and exact constants; not an analytic-theorem verifier',
             independence='separate implementation, same execution session; no independent human/model review claimed',
             height_rows_checked=len(rows),prime_cover_intervals_checked=cover_intervals,
             distinct_cover_domains=len({c['n_max'] for c in stages}),
             omission_intervals_checked=len(cover['omitted_intervals']),
             omitted_pairs_checked=omitted_count,residual_pairs_checked=len(pairs),
             total_final_pairs_accounted_for=sum(map(len,covered.values())),
             distinct_Cnj_computed=len(row_cache),p_equals_i_witnesses=boundary,
             direct_binomial_check_stream_sha256=checks_hash.hexdigest(),
             input_sha256={k:hashlib.sha256(v).hexdigest() for k,v in raw.items()})
    (ROOT/'independent-check.json').write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='p_equals_i_witnesses'},indent=2))
if __name__=='__main__': run()
