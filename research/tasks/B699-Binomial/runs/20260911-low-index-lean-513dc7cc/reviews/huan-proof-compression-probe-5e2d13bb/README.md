# Guarded NTFS compression probe

This directory only prepares a future bounded execution. No compression was
run while preparing it.

execute_compression_probe.py fixes the compression-plan SHA and an allowlist of
exactly three successful objects: Factorial25D17, ThreeTwo QLeaf003, and
ThreeTwo QLeaf004. It requires the latest run queue state to be
queue_finished, rejects any detected Lean process whose command line contains
the run id, verifies every selected object and every recorded same-inode link,
and rechecks success evidence bindings.

Default invocation is preflight only. The only execution path is an explicit
--execute, which calls compact.exe with shell=False and exactly
[C:/.../compact.exe, /C, /Q, one exact file path]. It does not recurse, touch
directory attributes, remove files, replace paths, or change source/log/evidence
content. A nonzero or lock result is recorded and the object is retained.

After each successful operation the script recomputes SHA-256, logical size,
file identity, path, attributes, and allocated bytes for the object and all
recorded links. It also records compact output, exit code, and D free space.
Any content, path, identity, evidence-binding, or boundary mismatch aborts.