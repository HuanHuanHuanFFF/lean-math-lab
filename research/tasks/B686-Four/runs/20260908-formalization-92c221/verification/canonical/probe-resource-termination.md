# Probe resource termination record

Recorded UTC: 2026-09-08T10:36:18Z.

The only long-running probes launched by this compatibility subtask were two accidental duplicate invocations of the same file:

```text
verification/canonical/probe-Erdos686-noPell.lean
output: /tmp/Erdos686-noPell-20260908.olean
```

Observed before cleanup:

| PID | parent | observed RSS | command result |
|---:|---:|---:|---|
| 907336 | 907332 | about 18.35 GB | stopped/absent after cleanup attempts |
| 908092 | 908089 | about 0.92 GB initially, later about 10.45 GB | still visible from this shell at the last check |

The command was the same for both: `lean -o /tmp/Erdos686-noPell-20260908.olean verification/canonical/probe-Erdos686-noPell.lean`.

I did not start another probe. `kill`, `pkill`, and `nsenter` were attempted only for these own PIDs. This shell is in PID namespace `4026532863`; the remaining process is in `4026532864`, so direct signal delivery and `write_stdin` session IDs were unavailable here. The parent agent must terminate the remaining PID/session from the owning sandbox. No other agent process was targeted.

## Owning-sandbox closeout

The parent agent terminated the remaining PID from its owning sandbox. A follow-up
process check at `2026-09-08T10:37:52Z` found no matching
`probe-Erdos686-noPell`/`Erdos686-noPell` process. The earlier table records the
pre-cleanup observations; the outstanding-process sentence above is superseded by
this closeout. No other agent process was targeted.
