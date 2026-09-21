#!/usr/bin/env bash
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
python "$HERE/evidence/minimal_branch_check.py" | tee "$HERE/evidence/run.log"
