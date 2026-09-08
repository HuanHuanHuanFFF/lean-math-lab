# Public-copy provenance

This branch retains the round's mathematical proofs, experimental values, negative results, failures and reviews. Before publication, machine-specific absolute paths and host/compiler-build details were removed from15 recorded outputs or documents. These are explicitly public copies, not byte-identical raw machine logs.

`WORKTREE` denotes the checkout root, `BARE_REPOSITORY` its independent Git backing store, `ORIGINAL_WORKSPACE` the occupied workspace that was not edited, and `CALLER_FIXTURE_DIRECTORY` a synthetic regression-test location. Repository-relative paths remain usable.

Complete pre-redaction bytes are retained locally under the ignored `.tools/private-publication-snapshot-20260908-1118/` directory. The original and sanitized snapshot hashes are mapped in [publication-sanitization-20260908.json](publication-sanitization-20260908.json). Later publication-state documentation may change separately from that historical sanitization snapshot.

No executable source was changed by sanitization. All Lean/source hash checks remain valid. Mathematical JSON/JSONL content, indices, constraints, witnesses, absence results, source-code hashes and allowed axioms remain intact. Python/Lean/mathlib version identifiers needed for reproduction are kept; host build and local directory identities are omitted. Downloaded third-party publication files and tool/dependency caches remain ignored.
