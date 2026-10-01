# Fixed-row conditional original consumer

Verifier `/root/runtime_review`, GPT-6.1 Sol/xhigh, 2026-10-01. **Accepted conditional interface**, not proof of its finite premise. Fixed source `../tail/SieveRowsConsumer.lean` SHA256 `59c2943aa04744d0a18e08fcf5fd5c072d9a7a0cd9dd02b11220f4e4c1272022`; stage `../tail/verification/20261001T165510200Z/stage-manifest.json`.

Source, actual execution snapshot, object, receipt, stdout and every stage member SHA256 independently agree. Actual exit 0, source unchanged, wall time 17.986 seconds, tree working-set peak 1706.00 MiB. All three printed public-root axiom sets are exactly propext, Classical.choice, Quot.sound. I read the fixed source and actual complete typed consumer stdout.

The fixed sieve set consists of the 16 primes 2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53. Its primality, maximum 53 and cardinality 16 are actual kernel decisions. `finiteSieveCertificates` is explicitly a Prop, requiring for each of the fixed 115 rows the complete 2^16-subset signed floor sum at b to be ≤T−15. The subtraction 15 comes from |P|−1, with integer signs and floor terms from the accepted exact formula.

Given that **unproved premise**, `row_primeCounting_bound` proves the actual inclusive π(b)≤T, and the final consumer states for every natural n,i,j with 1000≤i≤131071, i<j≤n/2 and n≥4096i that one same prime p≥i divides both binomial coefficients. It retains p=i and all natural quantifiers; no hidden extra normalization, EC or Gap hypothesis is introduced. The only remaining data premise is stated at the front of the actual printed type.

The module does not supply a proof of finiteSieveCertificates. Defining the proposition and proving its consumer does not establish it. All 115 concrete floor sums remain pending; therefore this package adds no unconditional original region. The separately accepted i≥131072 region is unchanged, and complete original-index increment remains 0.
