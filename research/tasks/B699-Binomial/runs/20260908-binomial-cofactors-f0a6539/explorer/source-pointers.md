# Fresh source pointers, accessed 2026-09-08

These are discovered source claims, NOT accepted local coverage.

- Original paper: https://users.renyi.hu/~p_erdos/1978-46.pdf and https://static.renyi.hu/~p_erdos/1978-46.pdf . Exact weak/strict statements checked against original pp.97-98 text.
- Current source index: https://www.erdosproblems.com/699 . Search reader exposes text; direct forum open failed.
- Posted-proof warning: https://www.erdosproblems.com/forum/thread/699 . Search query `Erdos 699 proof binomial 2026` returned a comment saying a purported proof was invalid and its Lean statement did not match. Original files not audited here.
- Claimed complete n<=100000 computation: https://api.scinet.pub/f/76626b5c-caf4-4c69-bb03-4507e376a274 . Search title: Erdos #699 (Erdos-Szekeres): verified for all n <= 100,000 -- 41.7 trillion pairs, zero counterexamples -- with the complete census of strong-form (p > i) exceptions. Source says published 2026-07-22. Code pointer in that claim: https://github.com/scinet-ai/math-number-theory at 8034abfbde689fed9731fca5d8f7964299710c07, erdos-699/src/erdos699.c . Run not reproduced, code not reviewed here.
- Claimed complete interval [10^7,10^8): https://github.com/techno-optimist/erdos-frontier-atlas/blob/main/book/BOOK.md . Search query above returned this title and a table claim of all 90,000,000 rows, each pair decided, no counterexample, 119.53 core-hours; linked certificates/erdos-699 and PR129, dated 2026-07-27. Not adopted as verified scope.
- Gcd-size lower bound, distinct from largest-prime target: G.M.Bergman, https://arxiv.org/html/0806.0607 . Theorem2 was read; its smooth-prime possibilities leave #699 unresolved.
- Untested odd-product theorem match: https://www.isobeldavies.co.uk/_files/ugd/b2fe61_da594d94a2ac48038fcbbd22adc6df72.pdf . Thesis summary of Schur 1929 says for p=2k+1 prime>5 a run of k consecutive odd integers all>p has a factor>p; p=5 exception25,27 and p=3 prime powers. Need original theorem/hypotheses before acceptance.

## Correction preserved

An exploratory chat message initially said s=n/gcd(n,j) must have all primes<i. Correct condition: all primes<=i; when i is prime and v_i(n)=1, the denominator of choose(n,i) may remove the i factor. If v_i(n)>=2, a counterexample also requires v_i(j)>=v_i(n). The CRT code already treats p=i separately and was not affected. The corrected downstream constraint for p>i is p^e|(a*t-b*s), for some b in[0,a], with n=s*d,j=t*d and gcd(s,t)=1.
