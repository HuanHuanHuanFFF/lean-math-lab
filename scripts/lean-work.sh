#!/usr/bin/env bash
# Usage: bash scripts/lean-work.sh lake env lean path/to/File.lean
# Normal environments use elan directly; only the known procfs mismatch
# activates the process-local compatibility library. No kernel binary changes.
set -euo pipefail
case "${1:-}" in
  lean|lake|leanc|leanchecker) tool=$1; shift ;;
  *) echo 'Usage: lean-work.sh {lean|lake|leanc|leanchecker} [args...]' >&2; exit 2 ;;
esac
repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
lean_bin=$(elan which lean)
if version=$("$lean_bin" --version 2>&1); then
  exec "$tool" "$@"
fi
if [[ $(uname -s) != Linux || "$version" != *'failed to locate application'* ]]; then
  printf '%s\n' "$version" >&2
  exit 1
fi
cache="$repo_root/.tools/lean-work"
source="$repo_root/scripts/lean-proc-self.c"
library="$cache/proc-self.so"
mkdir -p -- "$cache"
if [[ ! -f "$library" || "$source" -nt "$library" ]]; then
  temporary="$cache/proc-self.$$.so"
  trap 'rm -f -- "$temporary"' EXIT
  "${CC:-cc}" -shared -fPIC -O2 -Wall -Wextra -Werror "$source" -o "$temporary"
  mv -- "$temporary" "$library"
  trap - EXIT
fi
export LD_PRELOAD="$library${LD_PRELOAD:+:$LD_PRELOAD}"
exec "$tool" "$@"
