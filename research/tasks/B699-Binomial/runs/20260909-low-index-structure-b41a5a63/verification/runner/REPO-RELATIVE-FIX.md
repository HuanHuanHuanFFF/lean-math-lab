# Nested worktree fix

`verify.py` was copied from the previous verifier, whose source index filtered
using absolute `Path.parts`. Because this worktree lives under `.tools`, that
predicate removed every project source before import resolution. Use
`verify_repo_relative.py`: it filters only the path parts relative to the
repository root and keeps the short raw output root `.tools/b699-b41a5a63/`.

The read-only probe `check_import_closure.py` verifies that the selected root
resolves the prior `SmallPartBound` dependency from the nested worktree. It
does not invoke Lean or Lake.
