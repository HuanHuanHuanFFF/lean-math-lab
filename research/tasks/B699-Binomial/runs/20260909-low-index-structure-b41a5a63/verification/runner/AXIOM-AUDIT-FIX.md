# Guard-aware axiom audit fix

The base verifier now recognizes exactly one hidden-print form:

```text
#guard_msgs in
#print axioms name
```

The next nonempty line must be the `#print axioms` declaration. Such a print
is recorded as guarded metadata and is excluded from the stdout declaration
count. The verifier never infers its axiom output. Bare `#print axioms`
declarations still require one actual parsed stdout result each, and missing
or extra output, unknown axioms including `sorryAx`, malformed guard forms,
and unsupported guard placement fail closed. Source policy is unchanged.

The self-test uses only temporary Lean-like source files below the ignored
`.tools/20260909-low-index-structure-b41a5a63/` directory; it does not invoke
Lean or rerun an old proof. It also classifies the real B686
`BigPrimeSupport.lean` source as four guarded and zero bare prints, and the
current `ThreeWindowWeights.lean` source as seven bare and zero guarded prints.
