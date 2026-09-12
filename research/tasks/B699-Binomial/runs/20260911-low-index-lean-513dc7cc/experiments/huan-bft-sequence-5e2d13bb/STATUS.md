# BFT sequence preparation checkpoint

- Owner: `/root/bft_sequence_lemma`; sole write scope: this directory.
- Source baseline: `9d4228e3ed0de4bb6b8e555ca59af3f53d578c67`.
- Start: 2026-09-11T02:04Z (approximate first research read); checkpoint: 2026-09-11T02:09Z.
- Budget: no total duration specified; bounded deliverable is a self-contained uncompiled Lean candidate and exact source mapping. Lean execution is reserved for the primary task's serial verifier.
- Primary source: `../../../20260911-web-i18-6f4334c9/reviews/huan-i18-5e2d13bb/publication/BFTpaper0207.pdf`, SHA256 `0df18ee8d108f658812ac05d1f8947b3dcc28b70d17f268acd7c871e7e7c392c` (verified).
- Source correction: the supplied PDF's Lemma 4.1 (PDF page 10) bounds Padé polynomials Q_n and E_n. It is not a generic integer approximation-sequence lemma. The prompt's numbering/content mismatch was sent to the primary task before proof engineering.
- Expected contribution: isolate an integer determinant/approximation lower-bound core reusable downstream of the actual polynomial bounds. Global B699 unknown region is unchanged; no Stage B target is accepted by this preparation.
- Adopted inputs: the PDF above; the pinned local mathlib source; run frontier and phase-B dependency guide. No unpublished theorem is assumed.
- Current last verified result: source statement and PDF byte provenance only. Mathematical derivation and Lean candidate are pending. No Lean has been run.
- Next check: read the full definitions on PDF pages 5-6 and the integer determinant step on pages 26-27, then choose a precisely mapped finite-index core.
- Remaining full-route obligations: Padé constructions; actual Lemma 4.1 integral maxima bounds; G/nonarchimedean bounds (Proposition 5.1); the specific height assembly and final B699 consumer.
- Resource observation at 02:09Z: Windows free physical memory 4,534,912 KiB of 16,456,184 KiB visible; D: free 2,717,491,200 bytes; no local `lean`/`lake` process observed. This is a transient observation, not a resource authorization.
- Research: source-alignment correction found. Proof: pending. Review: none. Novelty: known elementary determinant argument, no novelty claim. Publication: none.

## Delivery checkpoint: 2026-09-11T02:24Z

- The primary task explicitly withdrew the mistaken description of Lemma 4.1 and approved the directly mapped Section 7 integer bridge. The correction and precise source formulas are retained in README.md and SOURCE-MAP.md.
- Delivered: IntegerApproximationBridge.lean, 8 explicit theorem proofs with 8 matching executable axiom-print commands; mathematical/source mapping and next serial verifier command in README.md.
- Exact new claims: integer row selection from a nonzero determinant; the integer gap bound corresponding to BFT (7.4); an independent two-index real approximation bound 1/(2 B |q|) < |alpha-p/q| under the stated strict error estimate.
- No Lean execution took place. The file remains an uncompiled candidate. Static checks only found no forbidden code tokens and confirmed all 5 direct mathlib import caches exist. Cache presence is not compilation evidence.
- Frozen candidate hash, byte size and static check scope: candidate-manifest.json. The primary verifier should record any revised candidate under a new hash.
- Environment observation: local view_image could not launch its Windows sandbox helper; web screenshot returned references but no visible image blocks. Read-only pypdf and pdfplumber extraction independently established the relevant formulas. No visual-check success is claimed.
- No failure of the mathematical construction was found in this bounded derivation. The initial source-description mismatch and unavailable worktree package directory were corrected by reading the actual PDF and the pinned shared mathlib source, respectively.
- Actual frontier effect: no new B699 input region removed and no Stage B target accepted. The result is a potentially reusable prerequisite only; Padé construction, actual Lemma 4.1, G/Proposition 5.1, logarithmic height assembly and final original-problem consumers remain pending.
- Next check: primary task runs the documented verifier serially, then checks original-source correspondence and transitive axiom output. This worker now stops writing the candidate for handoff.
- Elapsed bounded preparation: approximately 20 minutes; no fixed total research deadline was supplied.
