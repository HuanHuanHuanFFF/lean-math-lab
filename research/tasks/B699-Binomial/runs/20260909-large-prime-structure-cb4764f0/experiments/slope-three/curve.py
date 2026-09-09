import json
from math import comb, isqrt, prod

I_MAX = 219
J_CAP = 198368
small_primes = [p for p in range(2, 2*I_MAX-4)
                if all(p % q for q in range(2, isqrt(p)+1))]
rows = []
for i in range(3, I_MAX+1):
    z = (i+2)//3
    h = i-2*z
    factors = [p for p in small_primes if i < p <= 2*i-5]
    K = prod(factors)
    square = K*K
    if h == 0:
        assert i == 4 and K == 1
        last = i
    else:
        assert h >= 1
        lo, hi = i+1, J_CAP+1
        while lo < hi:
            mid = (lo+hi)//2
            if comb(mid, h) < square:
                lo = mid+1
            else:
                hi = mid
        last = lo-1
        if last > i:
            assert comb(last, h) < square
            assert 3*last < 4097*i
        if last < J_CAP:
            assert comb(last+1, h) >= square
    count = max(0, last-i)
    rows.append(dict(i=i, z=z, h=h, primes=factors, K=str(K),
                     j_first=i+1 if count else None,
                     j_last=last if count else None,
                     n_last=3*last if count else None,
                     candidate_count=count, at_global_cap=last == J_CAP))
nonempty = [r for r in rows if r['candidate_count']]
print(json.dumps(dict(
    scope='K3 and monotone binomial cutoffs only; no original B699 scan',
    adopted_gap_evidence='fixed ZIP evidence/atlas-independent-audit.json',
    i_max=I_MAX, j_global_cap=J_CAP,
    nonempty_index_count=len(nonempty),
    candidate_count_before_individual_prime_filter=sum(r['candidate_count'] for r in rows),
    maximum_n_after_S3=max((r['n_last'] for r in nonempty), default=0),
    empty_candidate_indices=[r['i'] for r in rows if not r['candidate_count']],
    rows=rows), indent=2))
