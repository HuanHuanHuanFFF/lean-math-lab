"""Optional finite comparison with source-reported old terminal factorizations.

This is not a replay of the old completeness/primality chain and is not a
premise of the new theorem. It confirms the stored exploratory outcome only.
"""
import json
from pathlib import Path
from consumer import small_part, rough, vp_binomial, make_row_certificate
root=Path(__file__).resolve().parents[1]
old=json.loads((root/'sources'/'overlap_frozen47.json').read_text())
found=[]
for row in old['rows']:
    n=row['n'];W=False;R3=False
    for r in (3,4):
        qr=rough(n-r,5)
        product=1
        for p,e in row['row_factorizations'][r]: product*=p**e
        assert product==n-r
        for p,e in row['row_factorizations'][r]:
            if qr%p==0:
                Q=p**e
                W |= (n-1)*Q**2>=r*(r-1)*small_part(n-1,5)*(n-r)**2
                R3 |= (qr//Q)**3<=n
    ps=sorted({p for fac in row['row_factorizations'] for p,e in fac if p>=5 and p*p<n})
    for p in ps:
        if not vp_binomial(n,5,p):continue
        X=p*p;H=2
        while X<n:
            cert=make_row_certificate(5,n,p,H)
            if cert:
                found.append({'n':n,'p':p,'H':H,'A':cert['A'],'C':cert['C'],
                              'old_W':W,'old_R3':R3})
            X*=p;H+=1
expected=json.loads((root/'evidence'/'overlap_selection.json').read_text())['positive_examples']
assert found==expected
print(json.dumps({'status':'PASS_OPTIONAL_OVERLAP_DIAGNOSTIC','matches':found,
                  'not_a_historical_prime_or_completeness_revalidation':True}))
