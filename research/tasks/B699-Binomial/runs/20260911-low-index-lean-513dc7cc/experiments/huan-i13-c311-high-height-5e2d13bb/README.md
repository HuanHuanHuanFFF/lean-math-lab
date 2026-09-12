# i13 (3,11), c7d5: one high-height common-capacity construction

Owner: /root/i13_high_height. Owned writes: this directory only. Parent owns shared run records. No Lean, installation, git mutation, other edges, seed search, or CRT data.

Start: 2026-09-12 03:30:29 UTC. Checkpoint: 03:50:29 UTC (20 minutes, not a deadline). No total research time limit; scope is one edge, one threshold, one uniform construction.

Source baseline: f0b0cc10fbab9db7133aae9914178caf0b4c587b, plus current accepted source hashes to be recorded in SOURCE_MAP.json. Adopt the actual i13 source from 20260910-i13-closure-ad35779e, not the three-index source. Adopt the five i13-g75 receipts and notes/huan-i13-g75-uniform-acceptance.json. Untracked work belonging to others is preserved.

Locked input: 243-2*121=1; P=243, Q=121, z=1/243, c=7,d=5, weights321/407; u=5m-delta, v=2m+delta-1, delta=0,1 at the same natural m>=1. Y=n-12. Requested first threshold Y>=2^15359 follows from n>=2^15360 because n-12>n/2. Np,Nq in [Y,2Y], width<=24. Capacity guarantees P^(7000m)<=Y^679 and Q^(7000m)<=Y^593.

Last verified input: D0>=23 R^(m-1)/(24m-1), D1=(5m/2)D0, both actual qContent>=C*S^m, R=11664/3125,S=9555003/2560000,C=71875/18345885696. G bounds are Lean accepted. Q/E analytic estimates used from original expression are not yet Lean formalized.

Expected frontier change: if a uniform selector and bounds close, this one fixed edge has a conditionally proved all-Y high tail using the actual G lower input. Other seven selected i13 edges, weighted-position consumer and full i13 closure remain outside this task; original B count unchanged. The Y=2^8230 all-m gap of the old D/capacity certificate remains a negative control.

Next falsifiable obligation: construct one common integer m for every Y>=2^15359, retaining the floor loss and both delta constants; certify monotonic propagation rather than sample heights/m. If not feasible, record the exact gap without scanning additional seeds or height grids.

Current delivery: REPORT.md contains the full all-Y deduction; certificate.json, independent-check.json and SOURCE_MAP.json pass exact checks. The selected15359 threshold closes with the stronger accepted D0 linear bound and exact D1/D0 ratio. Original Q/E estimates remain unformalized, no actual Padé edge or original index has been Lean accepted here.
