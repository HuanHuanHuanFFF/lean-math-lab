# Archive extraction handoff

This directory stores exact original bytes for ordinary members that were absent from the fixed source commit `a71a34083c5f64ed2c4c1355d5e4eaafe55d4cdd` during the archive audit.

The files here are **supplementary source preservation only**. They are not new mathematical results, do not constitute Lean acceptance evidence, and must not be counted as additional proof coverage. The original ZIP archives remain outside this stage and are not copied here.

Each member is keyed by the owning archive Git blob SHA1 short prefix and its original archive member path. Identical missing bytes are stored once by Git blob SHA1; the shared manifest records every occurrence and its final canonical path.

See `research/shared/20260912-artifact-dedup-c8c256bc/archives.json` for the complete repository-relative provenance manifest and `archive-check-summary.json` for per-member size/SHA256/Git blob checks.
