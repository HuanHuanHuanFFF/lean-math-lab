# Evidence correction

The historical files under `run-20260909T071500Z/` remain unchanged. Its
third command line was prose describing a parameter audit, not an executable
command; it must not be treated as execution history. The real independent
review audit is [`audit_snapshot.ps1`](../../reviews/independent-math/audit_snapshot.ps1)
with its snapshot in `../../reviews/independent-math/snapshot-audit.json`.

`replay.py` is the new executable evidence entry point. When the parent task
runs it, the script creates a fresh `replay-<UTC>/` directory, invokes
`check_all.py --tamper-test` and the local independent `parameter_audit.py`
through real `subprocess` argv lists, and records complete stdout/stderr,
actual argv, cwd relative to the research run, UTC times, Python version,
before/after hashes for all three input JSON files and checker scripts, and
hashes for each captured log. It does not modify the historical evidence.

This correction is evidence bookkeeping only; it does not change the finite
mathematical result or claim a Lean run.
