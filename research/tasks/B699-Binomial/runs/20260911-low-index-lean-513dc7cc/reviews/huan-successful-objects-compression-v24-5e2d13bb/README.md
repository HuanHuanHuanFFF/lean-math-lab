# v24 successful-object compression execution review

This script is prepared only; it has not executed compact /C.

It is fixed to the v24 refresh plan SHA
3c61d649aa621470d66881df7ba1e323df62726d411978aff9b7c6ddb8bad102.
Before any future execution it requires the latest run queue to be
queue_finished, no Lean/verifier process for this run, exact allowlist and
v24 cutoff, at least one success evidence binding per object, and complete
same-inode enumeration. It writes every result immediately, including
nonzero/locked results, compares content/path/file identity separately from
compression attributes/allocation, and performs final evidence verification.