# Frozen conditional Lean band consumer

Checkpoint: 2026-09-08 18:47 UTC. Owner: rational_structure, GPT-6 Astra / Max. Source baseline:37e42aca251c33c62cbc2c40f286daa0526d79ee. The primary authorized this status note after the two assigned Lean files passed development compilation. Their source is now frozen by this worker; final closure and executable guards belong to the primary.

## Exact accepted development scope

`B699LargePrimeStructure.assuming_odd_progression_bound` takes the explicit hypothesis `OddProgressionBound` and proves the original `Common n i j` conclusion for every natural1<=i<j<=n/2 with n-2*j<=i. Common is the primary-owned definition with a prime p>=i dividing gcd(n.choose i,n.choose j). No finite exceptional triples are removed from this consumer.

`entire_near_middle_index_range_assuming_odd_progression_bound` quantifies over every legal j satisfying n<=2*j+i. A compiling parameterized example covers every row2*j+d with natural d<=i. The private proofs include all ten exact source exceptions, the modulus25 boundary at p=i=5, and a uniform modulus9 fallback for the even-row i=3 boundary.

`OddProgressionBound` is an explicit Prop input, not a proved source theorem. Its quantifiers use k>=2, positive odd m>2k, the exact ten Laishram-Shorey exceptions, an actual term m+2*r with r<k, and the complementary strict bounds7*k<2*p or4*k<p at the exact split2*m<=5*k. The termwise statement is the prime-divisor reformulation of the cited largest-prime-factor theorem. The worker re-read both final statements after compilation and found no mismatch with the paper consumer or original B699 threshold.

## Fresh evidence and hashes

The primary compiled SourceStatements successfully and reported exit0 for the second BandConsumer compilation. The worker read `../../verification/development/band-second.log`; both exported theorem axiom lists are exactly `[propext, Classical.choice, Quot.sound]`. The entire file, including the parameterized example, passed the primary's development compiler. This worker did not run Lean.

SHA256 at the freeze checkpoint:

- `../../lean/SourceStatements.lean`: `c12917867050fbb5f3c79eb064d4e5037720d6b0ba1fbeed32d7d3632633dc3e`
- `../../lean/BandConsumer.lean`: `6c74c89544f678ce502c016bfb9624164fbb01fa14739f2cbee4e3225ca138e5`

The first compilation failed at fixed-prime automation and the modulus9 boundary. It is preserved as failed evidence, not acceptance. Repairs supplied direct kernel-checked small-prime decisions and reused the primary's already checked prime-power gap lemma. No theorem hypothesis or covered range was weakened.

## Remaining limits

This is a compiled **conditional source consumer**, not a Lean proof of Laishram-Shorey, not a complete B699 proof, and not a novelty claim. The paper source adoption remains documented in `near-middle-band.md`, including the author-manuscript Lemma2.8 transcription caveat. Final fresh project compilation, source correspondence guards and transitive-axiom audit still belong to the primary's closure stage. No commits, pushes, dependency installations or additional research computations were performed by this worker.
