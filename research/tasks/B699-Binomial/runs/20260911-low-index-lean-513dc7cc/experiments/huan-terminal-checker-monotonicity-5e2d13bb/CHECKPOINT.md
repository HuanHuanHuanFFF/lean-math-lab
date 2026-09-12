# Terminal checker sublist-monotonicity checkpoint

Owner: /root/c2_divisor_resume. Exclusive write scope: this new experiment directory only. Parent owns all lean/, queue, Assembly and Composer changes. No Lean may be started here.

Start 2026-09-12T08:41:02Z; 20-minute checkpoint 2026-09-12T09:01:02Z; no total deadline. No commit/push/download/install.

Goal: inspect the unchanged coverCheck cursor algorithm, establish genuine Sublist monotonicity if valid without adding sorting/coverage/target-set hypotheses, and lift it to rowCoverCheck and cellCoverCheck. Main consumer is cs.take k <+ cs: prove the smaller check, then transfer to the actual global candidate list. If the algorithm has a counterexample, preserve it rather than changing the checker.

Expected effect is a proof-preserving resource reduction in the i11 terminal membership verification, not a new mathematical coverage region by itself. Original B699 acceptance still requires the full parent closure. Source/typed-axiom audit/hash mapping will be recorded here; primary serial compilation remains required.

## Frozen prefix handoff — 2026-09-12T08:54:13.985089+00:00

General Sublist monotonicity is false: inserting (2,2) before the successful [(1,1)] for lo=hi=1 triggers the original immediate gap failure. Parent was notified promptly. The unchanged checker is nevertheless monotone under appending a suffix; this preserves exactly the intended take k consumer without any sorting or interval-validity assumptions.

Complete candidate code provides append/IsPrefix/take through coverCheck, rowCoverCheck and cellCoverCheck, plus the concrete counterexample and negation of general Sublist monotonicity. Two implementation files and three audits contain12 public roots and print all3 original checker definitions. Candidate signature binds the same arithmetic guard, all parameters, all21 shifts and global candidate list.

Finite branch diagnostic passed641823 append implications and63968 take implications, including malformed/unsorted intervals and empty targets. Ten source/API/receipt hashes match; upstream RowCell source matches its accepted receipt. No new checker definition, axiom, placeholder or Lean run. Runtime memory benefit remains unmeasured; next check is parent serial compilation followed by its selected single failed-cell short-prefix pilot. Original B699 coverage unchanged.
