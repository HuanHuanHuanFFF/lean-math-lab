# Kernel cost summary

`summarize.py` is a read-only parser for this batch's verifier evidence. It
accepts an explicit `evidence.json` path or a verification directory; with no
input it looks below this batch's `verification/` directory. The default output
is JSON on stdout:

```text
python experiments/kernel-cost/summarize.py verification/<stamp>/evidence.json
```

Pass `--output <new-file>.json` to save a summary. The destination must not
already exist, so historical evidence cannot be overwritten.

Compile records contain module names, statuses, source and output hashes, and
the actual `#print axioms` rows recorded by the verifier. Windows resource
measurements are joined from the exact matching command record because the
runner stores them there. A reused or otherwise unmeasured module keeps
`seconds` and resource metrics as `null`; no zero is invented. The summary
does not infer CI status or mathematical coverage and never runs Lean or an
external checker.
