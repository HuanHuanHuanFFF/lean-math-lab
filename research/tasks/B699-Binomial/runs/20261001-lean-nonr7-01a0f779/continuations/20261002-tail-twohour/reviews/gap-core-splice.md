# Gap arithmetic and conditional Core splice review

Verifier `/root/runtime_review`, GPT-6.1 Sol/xhigh. Independently accepted as arithmetic/conditional logic only: `../gap/verification/20261001T175700Z-core-splice/acceptance.json`. All3 source/object/receipt/stdout/stderr bindings match; all8 public transitive axiom outputs are subsets of propext/Classical.choice/Quot.sound. Actual roots have exit0. No-import NatSplice peak255.77 MiB; CoreSplice440.46 MiB. Failed Nat.le.trans API evidence remains separate.

I read IntegerInterval, NatSplice and CoreSplice. Original legal indices i<j≤n/2 and n>20000000 imply n−i≥10000000. The strict height n<4096i, i≤n, p>n−i and4095(p−(n−i))≤n−i imply p<n via natural cancellation, with subtraction premises explicit. The finite-near-top helper preserves its strict n<p+gap endpoint. The arithmetic Bertrand-window example proves only that broad numeric bounds need not imply this narrow bound; it asserts no primality for its witness.

CoreSplice quantifies explicit predicates P and C. It requires top-prime conversion, the counterexample height, a supply witness for **every** natural y≥10000000, and finite C for every legal n≤20000000 with i≥4883. Given all these inputs it concludes C for all legal n,i,j with inclusive i≥4883. Neither P=Prime nor C=the original common-prime statement is supplied in this module. No actual prime supply, finite original theorem or DS publication premise is proved or inserted as an axiom here.

Thus the useful integer/logic route is accepted. Actual Prime/Common adapter, real-to-natural floor/strict endpoints, and discharge of the infinite gap and finite inputs remain required. This is conditional progress, not unconditional original coverage.
