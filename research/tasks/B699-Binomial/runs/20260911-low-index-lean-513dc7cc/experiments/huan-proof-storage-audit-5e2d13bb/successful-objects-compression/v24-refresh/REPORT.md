# v24 successful-object compression refresh

This is a read-only plan and does not alter the prior successful-object plan.
It uses the ended v24 boundary and excludes v24 and later active object
directories.

The selected object itself must have at least one success=true evidence
binding. Other same-inode paths may come from failed evidence, but every path
must be in this run, before the v24 boundary, fully enumerated, and match SHA,
size, file ID, and nlink. Objects below 1 MiB, already compressed objects,
objects with an incomplete link scope, and objects beyond the 256 identity
limit are excluded.

The refresh selected 256 identity objects, 1,035,452,672 physical bytes and
3,276,062,736 logical link bytes. Exclusions: 3,941 below 1 MiB, 11 lacking
an object-level success binding, 3 already compressed, and 95 beyond the
identity limit. No compression ratio is predicted.

The complete allowlist, all links, source/evidence references, SHA-256, size,
file ID and nlink are in successful-objects-plan.json. The corresponding
review execution script requires latest queue_finished, no run Lean/verifier,
the fixed plan SHA, and full link rechecks before each operation.