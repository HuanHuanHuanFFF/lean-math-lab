# Actual positive-window logarithm bridge

Owner /root/zero_log_separation, Astra/max. Writable scope: this directory only.
Start: 2026-09-12 10:53:39 UTC. First 20-minute checkpoint: 11:13:39 UTC. No total deadline was assigned. This worker is explicitly not running Lean or Git; the final source package is for the primary task's designated serial verifier.

Locked statement: with natural n,a,b,A,C,p,q,x,y, n>4096, a,b<34, a!=b, positive A,C, prime p,q, n=A*p^x+a and n=C*q^y+b, prove for the actual L=log A-log C+x log p-y log q that L=log(n-a)-log(n-b) and 0<|L|<=33/(n-33)<128/n. No nonzero or local log upper-bound premise may remain. Original noCommon-to-windows and exponent provenance remain the later original-problem consumer's responsibility.

Expected frontier change: remove the nonzero and local-upper-bound obligations left explicit by the two zero-boundary separation branches. Actual full B699 coverage remains unchanged until the original windows, full finite certificate and terminal consumers are accepted. No full 55-pair scan, CF search, Matveev or PNT work belongs here.

Method: use the elementary log quotient bound twice; derive all real denominator positivity and Nat subtraction casts from n and the bounded offsets. Use log injectivity only on the positive domain; its global zero-value convention must not be substituted for injectivity.

Live resource observation before the bounded diagnostic: free physical memory 3556708 KiB, total visible 16456184 KiB, D free 11646996480 bytes, no lean process observed. These are transient workstation observations, not a reserved budget. No heavy computation is planned.

Current evidence: exact local API read and paper proof design. Pending source implementation, small exact witness checks, typed/axiom-root inventory, and source hash manifest. No Lean acceptance is claimed.
## Frozen handoff after the user stopped research

The three source candidates were frozen at 2026-09-12T11:07:11.076909+00:00, before the user interruption. All eight theorems and the public linearForm definition have typed and axiom-print entries (nine roots). Source/input hashes, five exact fixed-window diagnostics, and the synthetic-only axiom-parser self-test were already recorded before interruption. No new proof, diagnostic, Lean or Git action was taken during this minimal handoff.

The current filesystem inventory contains all expected nonempty artifacts. Read [REPORT.md](REPORT.md) for the exact statements and limitations and [manifest.json](manifest.json) for the frozen source hashes and verification order. Lean acceptance is still null; the actual windows and the complete finite original-problem consumers remain separate inputs/work. The primary task owns the user's requested push and merge PR.

Source files: Elementary.lean, Window.lean, Actual.lean. Supporting deliverables: record.json, manifest.json, REPORT.md, diagnose.py, audit_axioms.py, audit-parser-self-test.json, finalize.py, and this README. No source edits were made after the frozen manifest.