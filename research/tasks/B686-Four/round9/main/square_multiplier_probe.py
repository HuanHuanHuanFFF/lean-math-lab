"""Bounded falsification probe for a stronger proposed square-ratio inequality.

Candidate, not a theorem: P_k(m)=h^2 P_k(n), m>=n+k implies h>=k.
A counterexample at h=2 would solve B686; other h only refute this stronger route.
No absence in this finite box is promoted to an unrestricted result.
"""
import json
import math
from datetime import datetime, timezone
from pathlib import Path

MAX_K = 40
MAX_START = 5000
HERE = Path(__file__).resolve().parent
rows = []
counterexamples = []
controls = []
for k in range(3, MAX_K + 1):
    products = []
    value = math.factorial(k)
    for n in range(MAX_START + 1):
        products.append(value)
        value = value * (n + k + 1) // (n + 1)
    location = {value: n for n, value in enumerate(products)}
    if k == 3:
        for n, m, h in [(11, 25, 3), (4, 13, 4), (0, 1, 2)]:
            assert location[h*h*products[n]] == m
            assert math.prod(range(m+1,m+k+1)) == h*h*math.prod(range(n+1,n+k+1))
            controls.append(dict(k=k,n=n,m=m,h=h,nonoverlapping=(m>=n+k)))
        assert controls[-1]['nonoverlapping'] is False
    hits = 0
    for n, lower in enumerate(products):
        for h in range(2, k):
            m = location.get(h * h * lower)
            if m is not None and m >= n + k:
                upper_direct = math.prod(range(m + 1, m + k + 1))
                lower_direct = math.prod(range(n + 1, n + k + 1))
                assert upper_direct == h*h*lower_direct
                hits += 1
                counterexamples.append(dict(k=k,n=n,m=m,h=h,
                    lower=lower_direct,upper=upper_direct,
                    original_b686_witness=(h == 2)))
    rows.append(dict(k=k,counterexample_count=hits))

report = dict(created_utc=datetime.now(timezone.utc).isoformat(),
    conjectural_route='Nonoverlapping square multiplier h must satisfy h>=k',
    exact_scope=dict(k_min=3,k_max=MAX_K,n_min=0,n_max=MAX_START,
                     m_min=0,m_max=MAX_START,h_min=2,h_max='k-1'),
    method='Exact sliding products and dictionary lookup; direct original-product substitution for each hit',
    rows=rows,counterexamples=counterexamples,controls=controls,
    finite_only=True, unrestricted_claim_proved=False,
    lean_verified=False)
(HERE/'square-multiplier-probe.json').write_text(
    json.dumps(report,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'counterexamples':len(counterexamples),
    'first':[{k:x[k] for k in ('k','n','m','h')} for x in counterexamples[:10]],
    'unrestricted_claim_proved':False}))
