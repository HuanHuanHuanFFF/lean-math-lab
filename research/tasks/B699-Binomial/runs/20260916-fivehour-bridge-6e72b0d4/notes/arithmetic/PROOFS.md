# Arithmetic proof map

This is a navigation and dependency record. It does not replace the fixed statements or evidence in the linked files. Parent independent acceptance is recorded separately; nothing here claims Lean acceptance.

## Fixed-cofactor and canonical families

| manuscript | statement / dependency boundary | frozen manifest |
|---|---|---|
| [02 fixed 7](02-fixed7-proof.md) | n=7*2^A, all A, i5; Bugeaud Theorem 2, QIG, 18-level lift, original p=5 retained | [stage 1](../../reviews/arithmetic/stage1-freeze.json) |
| [03 fixed-cofactor interface](03-fixed-cofactor-interface.md) | General fixed d exponent cap; d remains free globally | stage 1 |
| [04 mixed powers](04-mixed-powers-proof.md) | Ten d, all 2/3 exponents, separate i4/i5 | [stage 2](../../reviews/arithmetic/stage2-freeze.json) |
| [05 shifted mixed powers](05-shifted-mixed-proof.md) | Same d and h=0,...,3; signed p-adic ratios and complete endpoints | [stage 3](../../reviews/arithmetic/stage3-freeze.json) |
| [06 normalized ratio and obstruction](06-normalized-ratio-and-obstruction.md) | A/log d bound and why it does not bound d; no new full NC5 family | [stage 4](../../reviews/arithmetic/stage4-freeze.json) |
| [07 i7 three-power family](07-i7-three-power-proof.md) | d=7; old two-position premise only for the multi-high part | stage 4 |
| [08 i7 unit window](08-window-unit-proof.md) | All seven shifts of d=1 or7 times a 235-smooth core; same inherited multi-high premise | [stage 5](../../reviews/arithmetic/stage5-freeze.json) |
| [09 i6 unit window](09-i6-window-unit-proof.md) | Native q_r=1, no old position premise; Bugeaud Theorem 3 and exact 2D lattices | [stage 6](../../reviews/arithmetic/stage6-freeze.json) |
| [10 i5 unit window](10-i5-window-unit-proof.md) | Native q_r=1 across five positions; i4 separately; no SIXG for i5 | [stage 7](../../reviews/arithmetic/stage7-freeze.json) |
| [11 i8 affine bridge](11-i8-affine-three-log-proof.md) | n=6*5^A*7^B, A,B>=2; Yu three logs, affine global stop, 13 SIXG pairs | [stage 8](../../reviews/arithmetic/stage8-freeze.json) |
| [13 i8 at most two high](13-i8-at-most-two-high-proof.md) | h=0,...,7, thresholds (3,2,2,2), full zero/one/two-high components and direct four-high exclusion | [stage 9](../../reviews/arithmetic/stage9-freeze.json) |
| [14 ninth source position](14-i9-last-shift-at-most-two-high.md) | h=8, thresholds (4,2,2,2), full zero/one/two-high components and direct four-high exclusion | [stage 10](../../reviews/arithmetic/stage10-freeze.json) |

## Proof mechanisms that must remain distinct

1. **NC source transfer.** The native coarse blocks keep every relevant complete prime power. Under the negated original common-prime statement, these blocks divide the integer polynomial coefficients at the same n,j.
2. **QIG and SIXG.** A positive integer invariant cannot be below 1. Strict inequalities prove the whole legal row. SIXG is used only when its degree-six source is inside the target source window; in particular it is not used for i5.
3. **Explicit height.** Bugeaud Theorem 2 handles one variable and a fixed rational coefficient; Theorem 3 handles the homogeneous two-logarithm case without a spurious gcd restriction. Yu section 0.1 handles two or three fixed rational logarithms, including coefficient 1 and multiplicative dependence.
4. **Exact arithmetic termination.** A proved global cap precedes every lift search. All period lifts are covered. Exact valuation is used for finite candidates; valuation at least v is used for final exclusion. Principal-group nonmembership is an entire-form exclusion, not a missing logarithm.
5. **Original endpoint.** Complete source factorizations, deterministic prime checks, source binomial valuations, and continuous prime-power carry intervals cover every legal j. A large interval count is not a brute-force enumeration of all pairs.

## Fixed external and historical sources

* Bugeaud 2002, *Linear Forms in two m-adic Logarithms and Applications to Diophantine Problems*, printed pp138--141. Exact publisher PDF SHA256 `eeb78b2b94ba6d799d56d1f3c44222d0cfe2f168e2ac8c2ceb89ff1e49ab87b6`; parameters and visual page paths are fixed in 02/09. The tuning parameter is mu, not the modulus m.
* Yu 1994, *Linear forms in p-adic logarithms III*, section 0.1, printed pp241--242. Exact NUMDAM PDF SHA256 `caea575fec7e5abb1fc7c4397cbd7a5f0f76e2b81a30aeb275b7c60ad8a1d846`; the complete parameter map is in 11 and its extensions in 13/14.
* QIG selected source `D-quartic-gap/notes/PROOFS.md`, SHA256 `47cf4282825a4aa467973c0b27b1de914719beef17c162638107dedfb2568707`; sections 1--3 were reconstructed.
* SIXG selected source exact object SHA256 `5e6bf2e598b276d2b127a189e537a91d029d85c08a9cc9f158a3ebb16eef411a`; the adopted identity and inequalities have the fresh stdlib exact reconstruction `sixg_identity_verify.py/.json`.
* Historical i7 two-position source `D-odd-full-window/notes/PROOFS.md`, SHA256 `e2fae2c41fd986aba1c058e0c87ab50b9a1c1165fdd9aba7e101f81e1c2cf07a`. Only the named sections and exact statement were read. Its whole old certificate was not re-audited, and this proof map does not raise its evidence grade.
