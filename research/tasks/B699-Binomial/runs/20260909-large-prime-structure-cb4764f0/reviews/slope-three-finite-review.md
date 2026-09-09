# Exact slope-three finite implementation review

Reviewer: rational_structure, GPT-6 Astra / Max. Review checkpoint2026-09-08 19:19-19:35 UTC. The reviewer authored the paper reduction and original coefficient-cutoff proposal. This is an explicit **finite implementation review by the paper author**, not independent paper review, not fresh-context review and not human peer review. The valuation worker separately cross-checked the paper argument and reported no mathematical issue.

Scope: read the new `../experiments/slope-three/curve.py`, `curve.json`, `compress.py`, `compression.json`, and `adopted-prime-gap-evidence.json`; compare them with the exact(S3) contract in `../notes/rational/slope-three.md`. Read current file hashes. No scripts, sieves, binomial tests or Lean compilation were executed by this reviewer.

## Verdict and supported conclusion

No mathematical coverage or arithmetic defect was found in the reviewed pipeline. Combined with the paper reduction and its explicitly adopted EEES/Dusart inputs, the exact computation closes the entire original-target subfamily n=3j, for all previously unbounded i,j. This does not solve B699 for other ratios and does not establish novelty.

The evidence is paper reasoning plus exact finite computation. A complete Lean proof of the slope-three theorem is not yet established. The36 recorded residual witnesses are not, by themselves, a standalone certificate for every omitted finite input; their full coverage depends on the coefficient bounds and top-prime filtering reviewed below. The primary owns formal closure and final source correspondence.

## Coefficient table: exact strict cutoffs

The input index cap219 comes from the retained independent prime-gap artifact, not a B699 campaign receipt. The already proved paper cutoff n<=595104 gives j<=198368. Indices1,2 are separately settled.

`curve.py` visits every integer i=3,...,219 exactly once. Its trial-division prime list includes all primes through433=2*219-5. For each i, it computes z=(i+2)//3, h=i-2z and the exact product over i<p<=2i-5. The one h=0 case is i=4 and K=1, so the strict condition C(j,0)<K^2 has no solutions.

For every other h>=1 and j>=i+1>h, C(j,h) is strictly increasing in j. The binary search therefore locates precisely the largest permissible j at or below198368 satisfying C(j,h)<K^2. Its upper endpoint198369 is exclusive; the code checks the last admissible and first inadmissible values whenever the latter is inside the global domain. Empty intervals are retained explicitly, rather than skipped silently. No cutoff reaches the original cap in the observed output: its maximum row is28899.

The saved output has217 rows,213 nonempty intervals, the exact empty indices3,4,5,7, and800772 pre-filter candidate pairs represented as intervals. These800772 pairs were counted from coefficient cutoffs; they were not each tested as an original B699 pair.

## Prime-cover compression: every relevant row is included

For a current index cap I, the script takes N=max3*Jmax(i) over all stored i<=I. Its ordinary sieve and previous-prime table are used to construct interval certificates. The sieve marks every composite through N from its prime square with the correct step and retains every prime.

The subsequent certificate checker does not trust that construction: it independently trial-divides every retained p, checks that intervals start at j=1 and meet without gaps, that p<=3*j_first, that3*j_last-p<=G, and that the last interval ends at floor(N/3). Thus for every row n=3j<=N, some verified prime p<=n satisfies n-p<=G. A hypothetical original counterexample must have i<=G by the already proved top-prime lemma. Primes in other residue classes and omitted immediately-next primes do not weaken this soundness: only the displayed covering prime and distance are needed.

The observed exact steps are:

| current I | N from coefficient table | proved new I | interval certificates |
|---:|---:|---:|---:|
|219|28899|50|640|
|50|6678|32|233|
|32|2598|32|91|

A strict decrease is required to iterate; the final fixed point keeps the existing cap32. All previously possible indices and rows are therefore covered by either a proved exclusion or this final finite region. There is no cutoff chosen from runtime convenience.

## Final filtering and36 original-target witnesses

The final loop visits every j in each saved coefficient interval for every i<=32. It sets n=3j and verifies n<=2598. If i>n-prevprime(n), the top-prime lemma excludes that input. The local previous-prime sieve used for this filter is correct on its stated finite range; no entire-row B699 assertion is substituted for this lemma.

Exactly36 pairs remain after that filter. For each one the program computes A=math.comb(n,i), B=math.comb(n,j), and gcd(A,B) as unbounded exact integers. It selects a prime p>=i dividing that actual gcd, independently checks p by trial division, and checks both divisibilities. A failed witness assertion would prevent the PASS output.

The additional loop records positive prime-power carry exponents for both indices. Such a carry, whenever p divides a binomial, occurs at a power<=n; the explicit bound prevents an unbounded search from hiding a failed case. The recorded witnesses include higher second carries at several p=11 or31 cases and retain p=i at(n,i,j)=(126,11,42). That boundary uses e_i=2:126 mod121=5<11, while e_j=1 gives126 mod11=5<42 mod11=9. It would not survive an implementation that checked only the first power for the first binomial.

The final source prints PASS and original_pairs_checked=36. No original counterexample was found among this exhaustive residual set. The residual n values are123,126,210,222,303,306,327,330,477,519,534,537,540,1353,1356,1359; all other finite inputs are excluded by one of the previously proved stages.

## Kernel-packaging limit

The prime-cover lists in the three stages prove the uniform index caps. They do not automatically prove every individual omission in the final `i>n-prev[n]` filter. For a standalone Lean finite certificate, retain or reconstruct explicit top-prime witnesses for those omissions, or prove the local previous-prime/filter computation. Then verify all36 residue certificates against the already accepted modular-carry bridge. Merely loading the36 list and the uniform cap32 would leave a coverage gap in a kernel consumer. This is a formal-packaging obligation, not a defect in the reviewed exact Python pipeline.

The coefficient table also needs its own exact K/choose correspondence in such a consumer; neither the old219 artifact nor the new JSON files are Lean theorems. The current complete-slope conclusion is therefore stated at paper-plus-computation level.

## Artifact binding observed in this review

Current SHA256 values:

- curve.py: `4af584272a689773e2d1dc08fc1e3cc7152ec99e770c5f98bc65402c40f92019`
- curve.json: `e8873c83540adf948a521887ab1971e92ef81b4b3a743b5962a5d523fc316deb`
- compress.py: `dc465bed2b1474fcbd6eb9b8293951a9e4fee6404fa2c9e1b94d0b390a78b50c`
- compression.json: `13683efbc44408028ed0cf2782f339b44b9f792c61fee0b1cb1764f0596c9a81`
- adopted-prime-gap-evidence.json: `d4c3137cf8d8249ff876c0bcf9b262f3a28f03e48a3b8faec967b55551ba4e0a`

The compression source hash embedded in compression.json matches the current compress.py. The curve/input hashes above were separately read to bind this review to the actual inspected files. The archival219 inputs are identified by exact ZIP entry paths, byte lengths and SHA256 in the adoption JSON; this reviewer had already read those raw entries and the independent odd-sieve implementation.

No new theorem sources were introduced during this implementation review. EEES, the exact Dusart endpoint and the paper normalization are adopted from the owning note and prior source/cross-route checks, rather than re-proved by the finite scripts.
