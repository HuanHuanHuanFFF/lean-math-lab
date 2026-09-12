# Successful-object compression plan

This is a read-only candidate plan. No compact /C, deletion, replacement, or source/evidence mutation was performed.

The plan scans only this run's dedicated tools root before the v22 object cutoff. It requires success=true evidence binding, a minimum logical size of 1 MiB, an ended same-identity link set fully covered by success evidence, and an uncompressed NTFS attribute/query. It selects at most 256 file-identity objects.

Current selection: 63 identity objects, 248 paths, 385,685,016 physical bytes and 1,238,884,936 logical link bytes. Exclusions were 3,914 identity groups below 1 MiB, 298 with unverified links, 1 with nlink outside the verified scope, and 3 already compressed. The complete path allowlist, source/evidence references, SHA-256, size, file identity, nlink, and compact /Q output are in successful-objects-plan.json.

The plan SHA is fixed before any future execution. The corresponding execution script is in reviews/huan-successful-objects-compression-5e2d13bb. It requires the latest queue to be queue_finished, no run Lean/verifier process, the unchanged plan SHA, exact allowlist, and a fresh full same-identity link enumeration. It uses compact.exe /C /Q with shell=False and one exact path per operation. It writes each object result immediately, rechecks content/path/file ID before continuing, and performs a final success-evidence binding check.

No compression ratio or space saving is predicted.