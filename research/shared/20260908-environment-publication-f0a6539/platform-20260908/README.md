# Platform source correspondence, 2026-09-08

Owned by primary in the isolated worktree. Reproduces source inputs, not a submitted proof.

- Validator pins fetched from its public main branch; exact snapshot in pins.lock.json.
- Task repository pinned at 68bb8ea0968994e0f36a2db015dbdbcc13902416.
- Formal Conjectures base 7d1a8c9912747679d0093f6d1216420c33ee5ffa plus official patch SHA256853372293b16a79ea495a28909e6077d41e2c6402165c3c6233ea0747c919814 gives tree88827a7ca9495954133c8549ea5e9d86acc7325a. Canonical commit bytes hash to expected8432eac998110a563e03df65a28c117e97c8c142. The official synthetic dependency commit was recreated after the user authorized commits at05:12; dependency HEAD now equals8432eac998110a563e03df65a28c117e97c8c142 and is clean. This is not a new research contribution commit.
- Script reconstruct_sources.py checks this hash and every trusted file in the four677/699 bundles. source-reconstruction.json is the decisive output.
- The original platform definition is Finset.lcmInterval n k = (Finset.Ioc n (n+k)).lcm id, agreeing exactly with positive integers n+1 through n+k for naturals.
- Platform allowed axioms: propext, Quot.sound, Classical.choice. Target theorems themselves are forbidden dependencies. Any imported placeholder cannot be used in the transitive proof graph.
- Source677 and699 statements are unchanged by the audit patch. B699's answer annotation elaborates to True in the pinned task. Both counterexample tasks require negating the entire direct proposition.

## Diagnosed setup issue

Windows global core.autocrlf=true changed checked-out task bytes and initially failed the official Challenge.lean SHA256. Raw Git bytes had the expected hash. Set only these independent repositories to core.autocrlf=false and extracted the pinned Git archive in the newly created task checkout, then refreshed its index. Four bundle audits now pass. No settings or files in the original Math workspace were changed.

## Reproduce

With the two pinned dependency checkouts already created under .tools/platform, run python research/platform-20260908/reconstruct_sources.py. This asserts source hashes and writes the evidence JSON; it does not run the production validator. It recreates only the pre-existing official synthetic dependency commit, not a commit of the research branch. Full Lean type elaboration, external comparator and production acceptance remain separate, unperformed gates until a candidate warrants them.

## Preparing a fresh checkout

Run `python research/platform-20260908/prepare_sources.py` from the repository. Python3 and Git are the only requirements for source reconstruction. It clones the two public dependencies below this checkout's ignored `.tools/platform/`, uses the recorded commits and disables newline conversion for those clones, then runs the hash audit. Existing repositories at the destinations must have exactly the expected top-level path and HEAD; it refuses drift instead of resetting or cleaning files. No dependency is placed in the original occupied workspace.

The files `677-base.lean` and `699-base.lean` are upstream statement snapshots with their original unproved conjectures. They are not our proof artifacts and are never imported by the accepted Math/Tests/Examples modules. Their Apache copyright/license headers are retained. The publication contains these source references and task metadata to expose the exact target; no upstream placeholder is trusted in an accepted proof.
