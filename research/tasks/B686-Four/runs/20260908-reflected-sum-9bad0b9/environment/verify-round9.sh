#!/usr/bin/env bash
# Recompile migrated sources; historical runner bytes are in migration/originals.
set -euo pipefail
script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
repo_root=$(git -C "$script_dir" rev-parse --show-toplevel)
exec python3 "$repo_root/scripts/verify-research-runs.py" --run reflected-sum "$@"
