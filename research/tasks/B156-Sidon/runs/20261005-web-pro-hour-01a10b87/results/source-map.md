# Source map — B156 A, 2026-10-05

## Input identity and scope

Original uploaded file: `Erdos-156-25-128-Web6Pro-1h-20261005-v1.zip`.
SHA-256: `582093b77ff88c58c921a0ac925c75bbf40d430e5ee17bb6cd90f4a37aec05ec`.

Only the Erdős 156 task was researched. `input/TASK.md` is the byte copy of `TASKS/B156.md`; `input/COMMON.md`, `input/FIXED-TARGETS.json`, and the B156 Lean reading file are copied from that ZIP. The full uploaded ZIP is not duplicated in this output. No other conversation's research was used as evidence.

The reading source contains `sorry` and `answer(sorry)`. Its “research solved” labels on auxiliary results are not formal verification. The copied Apache-2.0 license accompanies it.

## S0 — Exact platform target and reading version

- Platform: https://conjectures.io/problems/erdos156-erdos-156
- Checked live on 2026-10-05, during this task, including a second read near 21:17 Beijing time.
- Original frozen target: `True ↔ (fun N => ↑(Erdos156.minMaximalSidonSet N)) =O[Filter.atTop] fun N => ↑N ^ (1 / 3)`.
- Platform synthesized FormalConjectures commit: `6a786f997e18e8f095762a2830d191b7e25e505e`.
- Type SHA-256: `69fff1f4ac55d0ed271ae93c03d155a308965a4a265c87207817f12eecb3687a`.
- Task id: `fc-6a786f99-erdos156-erdos-156-ad44b0c79c-formalized-v1`.
- Task commitment: `3c045d21f12154a26cca8db1ca9a88d14188cd3c5af8eefb4f641717dd4b7e61`.
- The supplied upstream reading copy instead comes from commit `89294ea02bd7cd678d59984add52cb4baef3dbf4`. These are not interchangeable compile inputs.
- Input's environment record: mathlib `0df444a360eaa60ab8c11dca51a86af692955474`, Lean `v4.33.1`. Not installed, reconstructed, or checked here.
- The live page displayed no published contribution/proof against this task. This is a fact about the page, not proof that no unpublished/public work exists anywhere.

## S1 — Original Ruzsa paper

Imre Z. Ruzsa, *A Small Maximal Sidon Set*, The Ramanujan Journal **2** (1998), 55–58.
DOI: https://doi.org/10.1023/A:1009757824153
Publisher: https://link.springer.com/article/10.1023/A%3A1009757824153

Original article read in the anthology at:
https://rexresearch1.com/ErdosMath/Analytic%20and%20Elementary%20Number%20Theory%20A%20Tribute%20to%20Mathematical%20Legend%20Paul%20Erdos.pdf

Consulted printed pages 55–58, using PDF screenshots at zero-based PDF pages 27–29 (the scan has two printed pages per PDF page). The full copyrighted anthology is not bundled.

Used for: the existing O((N log N)^(1/3)) bound; Singer-base random integer lifting; the original paper already includes a valid completion of points in base residue classes via unique q-multiple differences. This original repair argument is not claimed as a discovery of this session. The report's random-lift hole lower bound and paired-lift tests are separate arguments.

## S2 — Singer base dependency

This session uses the perfect-difference-set fact as an established input in S1: q=p²+p+1 and |B|=p+1, with every nonzero ordered difference modulo q occurring once.

`code/core.py:singer` independently constructs each finite example from a primitive cubic extension, takes the projective trace-zero exponents, then verifies the size, all ordered nonzero differences, and all unordered pair sums including doubles. This is finite checking, not a new proof/formalization of the Singer theorem for all prime powers.

## S3 — Characteristic-two comparison, not a transfer theorem

Maximus Redman, Lauren Rose, Raphael Walker, *A Small Maximal Sidon Set In Z_2^n*.
https://arxiv.org/abs/2109.00292
https://epubs.siam.org/doi/10.1137/21M1454663

The article uses the distinct-element-sum version natural in characteristic two and obtains a logarithmic-factor bound in that setting. It does not supply an integer strong-Sidon/no-log transfer used here. Only its abstract/HTML information was needed; no theorem from it is an unproved input in this report's arguments.

## S4 — Current general platform terms

https://conjectures.io/terms
Effective date displayed: August 13, 2026. Checked on 2026-10-05.

The general terms distinguish checking an exact formal statement from novelty, publication, broader acceptance or payment. Displayed rewards are conditional, and submission-specific API terms can control. This session did not create a submission intent, inspect an actual personalized eligibility decision, pay, post, submit or contact anyone. Thus no bounty eligibility/payment promise is made. The input's NOT_NOVEL warning has not been converted into a claim that these partial arguments qualify or fail qualification.

## S5 — Availability and priority limitations

- https://www.erdosproblems.com/156 returned HTTP 403 in this environment. The supplied original reading file, live Conjectures.io target and original Ruzsa paper were readable.
- The Files search service did not index the ZIP title; its exact mounted bytes were fully readable and extracted directly. This did not prevent reading the task or producing evidence.
- Focused public searches covered the exact problem/title and odd-characteristic, cyclic, and two-parabola maximal-Sidon variants. No identical full integer no-log proof was located. This is not an exhaustive novelty search or a certification of global open status.
- Priority of the odd-field two-parabola construction, the static-certificate obstruction, the paired-lift criterion and the cyclic-interface obstruction remains unestablished. Label them “paper arguments independently derived in this session,” not “first-ever theorems.”

## S6 — Standard Bertrand dependency for the all-N reduction only

Official mathlib documentation:
https://leanprover-community.github.io/mathlib4_docs/Mathlib/NumberTheory/Bertrand.html

Checked on 2026-10-05. It states the standard result: for a positive natural n there is a prime p with n<p≤2n. Used in PROOFS §11.1 solely as a standard mathematical theorem. This current documentation is not proof that the frozen B156 environment contains a particular identical signature; no Lean file importing it was compiled here.

## Source/result separation

Published known: S1's logarithmic upper bound; Singer's perfect difference sets; standard finite-field facts and Bertrand.

Session paper proofs: complete legal-point/update formulas, static certificate lemma and obstruction, finite-fiber probability theorem, odd-field construction, explicit interface failures, paired-lift characterization, short-tail/all-N reduction. Novelty not certified.

Finite computations: exactly the code/data spaces in REPORT.md and DATA_DICTIONARY.md. They do not prove an infinite statement.

Lean verification: none. No new `.lean` proof file is presented as a theorem implementation; the only `.lean` file is the marked input reading copy.
