# Final proof acceptance

Fresh successful evidence: [20260908T180159Z/evidence.json](20260908T180159Z/evidence.json).

Run from the repository root:

```sh
python3 research/tasks/B699-Binomial/runs/20260909-eees-chain-5a2e10/verify.py
```

- Actual accepted source closure: 9 project modules, freshly compiled in one new object root. The old transfer (2 modules) and old wheel count (1 module) were compiled only because the new consumer imports them. No unrelated research roots were re-audited.
- 6 modules belong to this run. `Acceptance.lean` has 12 new axiom guards, and imported `AxiomAudit.lean` has 9 guards for the recovered chain. The dependency closure additionally compiles the existing 6 transfer-consumer guards and 4 wheel guards.
- Every compile command records `--threads=1`; one serial pipeline. Pinned package caches only were reused; no package source rebuild was needed. Project objects from other sessions were not used.
- Lean `v4.33.1`; mathlib `0df444a360eaa60ab8c11dca51a86af692955474`. All 9 package pins and clean checkouts matched. All source hashes matched again after compilation.
- Source policy passed. Allowed transitive axiom union is exactly `propext`, `Classical.choice`, `Quot.sound`; three elementary power lemmas use only `propext`, `Quot.sound`. No project axiom, proof placeholder, or native decision shortcut.
- Actual usage checks include the whole `200<j≤999` range at `n=10000,i=200`, and a raw `p=i=2` boundary witness. Finite examples are not the basis of the unrestricted proofs.
- [Independent static AI review](../reviews/independent-review.md) found no mathematical blocker or domain mismatch. This is not human peer review or novelty certification. No separate independent kernel checker was run.

The source log headers are constructed by the inherited verifier before the serial wrapper adds its worker flag; the JSON `command` records contain the actual executed `--threads=1` command. Final JSON and successful logs are authoritative together.

Earlier runs are preserved as earlier states: `174604Z` accepted only the recovered chain; `175034Z` failed at an import-order header; `175139Z` failed at a Nat power API call and an overbroad rewrite. `dev-*` directories contain development commands, source snapshots and logs; they are not fresh-closure acceptance. No failure was relabeled a success.
