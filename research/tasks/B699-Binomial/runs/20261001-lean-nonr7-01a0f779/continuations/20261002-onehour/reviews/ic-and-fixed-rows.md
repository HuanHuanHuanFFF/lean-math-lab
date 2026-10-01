# Integer certificate consumer and fixed 115 rows

Independent verifier `/root/runtime_review`, GPT-6.1 Sol/xhigh, 2026-10-01 16:49 UTC. **Accepted at the explicit conditional scope below.**

Metadata correction: the earlier draft minute 16:50 was estimated; replaced with the live clock/checkpoint minute 16:49. Fixed proof source and execution evidence bytes were not changed; accepted scope is unchanged.

ICConsumer source SHA256 `50967e7fa585cb44f10aa687bca2a1fe4903973f73cc76ad8755cae857873809`; fixed stage `../tail/verification/20261001T164103398Z/stage-manifest.json`. I recomputed source, execution-source snapshot, object, receipt, stdout and all stage member hashes; all agree. The source is unchanged, actual exit is 0, `-j1 -M3132 -DElab.async=false`, Native 0x2030, actual starting gate 3072 MiB and tree cap 1792 MiB. Actual tree peak is 1698.08 MiB, minimum observed available physical memory 1187.68 MiB, wall time 24.116 seconds. Both public roots have actual transitive axioms exactly propext, Classical.choice, Quot.sound.

The actual typed `row_height` quantifies over all natural n,i,j,a,b,T,q,k. It assumes i≥1000, i<j≤n/2, a≤i≤b, b<2^k, q≥12, **actual inclusive Nat.primeCounting b≤T**, and the displayed integer certificate `100(3(q+k)T+5q+9k)≤(100q−1)a`. Under original noCommon it gives n<2^q i. The typed `row_common` replaces noCommon with n≥2^q i and yields one same prime p≥i dividing both binomial coefficients. Thus the prime-count and certificate inputs are explicit, with no hidden original-normalization or EC hypothesis. The proof supplies actual normalization, prime-count monotonicity at i−1, logarithm comparisons and the verified integer obstruction. It preserves p=i and uses complete primePart inputs through the frozen actual normalization chain. It is not an unconditional theorem for all 115 rows.

RowsNumeric source SHA256 `a199a2447e3e4a00bb47cd05e1f9e6acb67a5b5a27b03f57baaba4b30d92d611`; stage `../tail/verification/20261001T164129965Z/stage-manifest.json`. The same byte bindings match independently. Actual exit 0, 4.297 seconds, tree peak 462.38 MiB; light gates 1800/768 with minimum observed free physical 2605.71 MiB. Its all_rows_valid and interval coverage outputs depend only on propext and Quot.sound; row_count has no axioms.

I independently compared every a,b,k,T tuple in the fixed Lean list with all 115 original JSON certificates in `20260909-prime-optimization-a81baaab/delivery/outputs/stronger_bridge_certificates.json` (SHA256 `52caded94f19198d9ab61572631ef00a1eda2bb752ce2ebe3aa2ef2fd11fd203`). All match, q=12, endpoints 1000…131071. Actual typed results prove integer validity of every listed row and complete contiguous inclusive coverage of that index interval. There was no new prime scan. The source-map target hash was stale when reviewed and was reported to its owner for metadata correction; this review binds the directly recomputed accepted source hash above.

The source-map owner subsequently corrected the target hash and retained the old hash as an explicit metadata correction; the accepted source bytes did not change.

These two accepted pieces do **not** establish Nat.primeCounting b≤T for the fixed rows, nor a verified sieve formula supplying it. They add no unconditional original region beyond the separately accepted i≥131072, n≥4096i theorem, and no complete original index.
