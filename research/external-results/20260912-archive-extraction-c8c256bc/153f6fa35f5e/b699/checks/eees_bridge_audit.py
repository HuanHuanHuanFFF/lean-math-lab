"""Exact finite checks of the reconstructed EEES-to-B699 elementary bridge.

This does not re-prove or computationally replay the published EEES theorem.
It checks every exceptional pair at every legal j, a bounded transfer slice,
the p=i localization boundary, and the Vandermonde comparison.
"""
from math import comb, gcd
from pathlib import Path
import json
import hashlib
from arithmetic_audit import factors

ROOT = Path(__file__).resolve().parents[1]
EXCEPTIONS = [(8,3),(9,4),(10,5),(12,5),(21,7),(21,8),(30,7),
              (33,13),(33,14),(36,13),(36,17),(56,13)]
WITNESSES = [7,7,7,11,19,19,29,31,31,31,31,53]

certificates = []
for (n,i), p in zip(EXCEPTIONS, WITNESSES):
    assert factors(p) == {p:1}
    assert n-i < p <= n
    js = list(range(i+1,n//2+1))
    assert all(p >= i and comb(n,i)%p == comb(n,j)%p == 0 for j in js)
    certificates.append({"n":n, "i":i, "p":p, "n_minus_i":n-i, "legal_js":js})

transfer_count = localization_count = localization_boundary_count = vandermonde_count = 0
for n in range(4,121):
    row = [comb(n,k) for k in range(n//2+1)]
    for i in range(1,n//2):
        fac = factors(row[i])
        for j in range(i+1,n//2+1):
            D = 1
            for p,e in fac.items():
                if row[j]%p:
                    D *= p**e
                    if p >= i:
                        delta = int(p == i)
                        Q = p**(e+delta)
                        alpha = n%p
                        r, s = j%Q, (n-j)%Q
                        assert alpha < i and (n-alpha)%Q == 0
                        assert r+s == alpha and r+s < i
                        localization_count += 1
                        localization_boundary_count += delta
            assert gcd(D,row[j]) == 1 and row[i]%D == 0 and comb(j,i)%D == 0
            transfer_count += 1
            if 2*j <= 3*i:
                r, s = i//2, i-i//2
                assert j-i <= r <= s <= j//2
                assert comb(j,r) >= comb(j,i) and comb(j,s) >= comb(j,i)
                assert row[i] >= comb(2*j,i) >= comb(j,r)*comb(j,s) >= comb(j,i)**2
                vandermonde_count += 1

found = []
for n in range(2,150):
    for i in range(1,n//2+1):
        A=comb(n,i)
        V=1
        for p,e in factors(A).items():
            if p>=i:
                V*=p**e
        if A > V*V:
            found.append((n,i))
assert found == EXCEPTIONS

result={
    "classification":"independent integer checks of elementary bridge; EEES global theorem not replayed",
    "exception_certificates":certificates,
    "exception_legal_triples":sum(len(r["legal_js"]) for r in certificates),
    "bounded_scope":{"n_min":4,"n_max":120},
    "transfer_checks":transfer_count,
    "localization_checks":localization_count,
    "localization_p_equals_i_checks":localization_boundary_count,
    "vandermonde_checks":vandermonde_count,
    "exception_list_cross_check_n_max":149,
    "source_sha256":hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
}
(ROOT/"checks"/"eees-bridge-results.json").write_text(json.dumps(result,indent=2)+"\n")
print(json.dumps({k:v for k,v in result.items() if k!="exception_certificates"},indent=2))
print("PASS")
