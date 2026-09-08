# B699 two-cofactor formalization

Actual start2026-09-08 05:20:14 Asia/Shanghai. User exploration deadline06:10; this subtask stops proof engineering and hands off by05:45. Ownership: this directory only; the explorer handoff may be updated. No shared library/entry/dependency edits.

Locked mathematical claim: `../explorer/constraints.md`, two-cofactor sufficient condition. Expected frontier contribution: kernel-check the uniform conditional family exclusion through its reusable arithmetic obstruction; if the binomial bridge cannot be completed within the checkpoint, report only the core as accepted. All n,i outside the criterion remain unbounded; no B699 solution or novelty claim.

First goal: from n=uP+a=vQ+b, j=rP+c=sQ+d, c<=a,d<=b,r<u,s<v,Coprime u v, and uv(a+b)<n, prove j<=a (indeed both residues collapse). Then derive the low-remainder obstruction for legal i,j. No library-wide tactic import. Existing cached Mathlib.Data.Nat.GCD.Basic, Mathlib.Tactic.Ring and Mathlib.Tactic.Linarith were located read-only, so no additional module build is needed for the first goal.

Acceptance: exact source-aligned theorem statement, fresh Lean exit0, executable exact transitive-axiom guard, no sorry/admit/extra project axioms. Proof/review/novelty/publication tracked separately; current proof pending, review pending, novelty unknown, local only pending primary integration.

## Accepted checkpoint: complete conditional binomial theorem

Fresh compilation completed2026-09-08 05:33:54 Asia/Shanghai, exit0. `CofactorCore.lean` SHA256:3ac8e44b155d96c113ba712fa4d94d57b9947ebd9e64d9a13a0fb3f09c77a138. The file is now frozen for primary integration and fresh review. Exact command, UTC start/end, exit and hash: [accepted-result.json](accepted-result.json). All final output was empty because the exact `#guard_msgs` checks succeeded.

Proof state now complete for the conditional criterion, including the actual binomial bridge. This supersedes the initial pending note above and the earlier explorer handoff's pre-formalization status. Research on unrestricted B699 remains open; review is pending primary's fresh AI reviewer; novelty unknown; commit/push is authorized but exclusively coordinated by primary.

The five named results are `B699.cofactor_core`, `B699.cofactor_remainder_obstruction`, `B699.prime_dvd_choose_of_mod_lt`, `B699.cofactor_prime_pair`, and `B699.common_large_prime_of_coprime_cofactors`. The last concludes the original prime>=i/gcd proposition under explicit terminal-prime-power/cofactor hypotheses. Same file includes a concrete entire-j-range use at n86,i8.

Executable transitive-axiom guards: the first two require exactly `[propext, Quot.sound]`; the Kummer bridge and final two results require exactly `[propext, Classical.choice, Quot.sound]`. No sorry, admit, native_decide, sorryAx or additional project axiom occurs in the accepted proof dependency lists. Standard Lean kernel compilation was performed; no separate external checker or human review is claimed.

Primary coordinated the missing Mathlib.Data.Nat.Choose.Factorization build. Its log records1118 total jobs, with six missing modules actually built. The existing pinned dependencies were retained. No broad Mathlib.Tactic import or dependency change was made by this explorer.

Failures retained as diagnostics: the first bridge compile failed because omega did not retain a needed remainder nonnegativity fact; an explicit elementary `Nat.le_add_right` argument fixed this. The failed log's generated sorryAx is not accepted evidence. The next compile's sole failure was the numeral syntax86.choose in a use example; it was changed to Nat.choose86. A separate research-import packaging probe hit the wrapper's ambiguous-o flag and unavailable research import prefix; its source was removed, log retained, and primary directed consolidation into one file. Neither issue was a mathematical counterexample.
