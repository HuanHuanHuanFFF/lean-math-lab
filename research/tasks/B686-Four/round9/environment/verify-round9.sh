#!/usr/bin/env bash
# Cold-path verification for the accepted round-9 proof and diagnostic roots.
# Run from any cwd with:
#   bash research/tasks/B686-Four/round9/environment/verify-round9.sh
#
# Only ignored .lake outputs and logs under this environment directory are written.
set -Eeuo pipefail

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
if repo_root=$(git -C "$script_dir" rev-parse --show-toplevel 2>/dev/null); then
  :
else
  repo_root=$(cd -- "$script_dir/../../../../.." && pwd -P)
fi

die() {
  printf 'verify-round9: %s\n' "$*" >&2
  exit 1
}

(( $# == 0 )) || die 'this verifier has no positional arguments; the accepted root list is fixed in this script'
[[ -f "$repo_root/lean-toolchain" ]] || die "repo root not found: $repo_root"
[[ "$(<"$repo_root/lean-toolchain")" == 'leanprover/lean4:v4.33.1' ]] || \
  die 'lean-toolchain is not the required leanprover/lean4:v4.33.1'

elan_home="$repo_root/.tools/elan"
[[ -x "$elan_home/bin/elan" ]] || die "local elan missing: $elan_home/bin/elan"
export ELAN_HOME="$elan_home"
export PATH="$elan_home/bin:$PATH"
export MATHLIB_CACHE_DIR="$repo_root/.lake/mathlib-cache"

verify_root="$repo_root/.lake/round9-verify"
olean_root="$verify_root/olean"
policy_root="$verify_root/policy"
log_root="$script_dir/verify-round9-logs"
mkdir -p -- "$olean_root" "$policy_root" "$log_root" "$MATHLIB_CACHE_DIR"

if [[ -n "${LEAN_PATH:-}" ]]; then
  export LEAN_PATH="$olean_root:$repo_root:$LEAN_PATH"
else
  export LEAN_PATH="$olean_root:$repo_root"
fi
cd -- "$repo_root"

python_bin=''
if command -v python3 >/dev/null 2>&1; then
  python_bin=$(command -v python3)
elif command -v python >/dev/null 2>&1; then
  python_bin=$(command -v python)
else
  die 'python3/python is required for the source policy check'
fi

audit_guards() {
  local source_path=$1
  local display_path=$2
  local require_guards=$3
  local counts
  counts=$(
    "$python_bin" - "$source_path" <<'PY'
import re
import sys
from pathlib import Path

source = Path(sys.argv[1]).read_text(encoding="utf-8")
prints = re.findall(r"^\s*#print\s+axioms\s+\S+", source, re.MULTILINE)
guards = re.findall(r"^\s*#guard_msgs\b", source, re.MULTILINE)
print(len(prints), len(guards))
PY
  )
  local print_count guard_count
  read -r print_count guard_count <<<"$counts"
  if (( require_guards == 1 )) &&
    { (( print_count == 0 )) || (( guard_count != print_count )); }; then
    printf 'guard audit FAILED: %s (#print axioms=%s #guard_msgs=%s)\n' \
      "$display_path" "$print_count" "$guard_count" >&2
    return 1
  fi
  printf 'guard audit: %s (#print axioms=%s #guard_msgs=%s required=%s)\n' \
    "$display_path" "$print_count" "$guard_count" "$require_guards"
}

check_source_policy() {
  local source_path=$1
  local display_path=$2
  local label=${display_path//\//__}
  local one_root="$policy_root/$label"
  local policy_log="$log_root/${label}.policy.log"
  mkdir -p -- "$one_root"
  cp -- "$source_path" "$one_root/source.lean"
  if "$python_bin" scripts/check-lean-policy.py --roots "$one_root" \
      >"$policy_log" 2>&1; then
    cat "$policy_log"
  else
    cat "$policy_log" >&2
    return 1
  fi
}

version_log="$log_root/lean-version.log"
lake_version_log="$log_root/lake-version.log"
if bash scripts/lean-work.sh lean --version >"$version_log" 2>&1; then
  :
else
  cat "$version_log" >&2
  die 'Lean version command failed'
fi
grep -Fq 'Lean (version 4.33.1,' "$version_log" || {
  cat "$version_log" >&2
  die 'Lean 4.33.1 was not observed'
}
if bash scripts/lean-work.sh lake --version >"$lake_version_log" 2>&1; then
  :
else
  cat "$lake_version_log" >&2
  die 'Lake version command failed'
fi
cat "$version_log"
cat "$lake_version_log"

compile_one() {
  local relative_path=$1
  local require_guards=$2
  local root_kind=$3
  local source_path="$repo_root/$relative_path"
  [[ -f "$source_path" ]] || die "Lean source does not exist: $relative_path"
  case "$root_kind" in
    proof|diagnostic) ;;
    *) die "unknown accepted-root kind for $relative_path: $root_kind" ;;
  esac
  check_source_policy "$source_path" "$relative_path"
  audit_guards "$source_path" "$relative_path" "$require_guards"

  local source_before
  source_before=$(sha256sum "$source_path" | awk '{print $1}')
  local output_path="$olean_root/${relative_path%.lean}.olean"
  mkdir -p -- "$(dirname -- "$output_path")"
  local label=${relative_path//\//__}
  label=${label//./_}
  local compile_log="$log_root/${label}.lean.log"
  {
    printf '# source: %s\n' "$relative_path"
    printf '# root kind: %s\n' "$root_kind"
    printf '# source sha256 before: %s\n' "$source_before"
    printf '# output: %s\n' "$output_path"
    printf '# command: bash scripts/lean-work.sh lake env lean -o %q %q\n' \
      "$output_path" "$relative_path"
  } >"$compile_log"

  local exit_code
  if bash scripts/lean-work.sh lake env lean -o "$output_path" "$relative_path" \
      >>"$compile_log" 2>&1; then
    exit_code=0
  else
    exit_code=$?
  fi
  if (( exit_code != 0 )); then
    cat "$compile_log" >&2
    return "$exit_code"
  fi
  [[ -f "$output_path" ]] || die "Lean succeeded without output: $output_path"
  local source_after
  source_after=$(sha256sum "$source_path" | awk '{print $1}')
  [[ "$source_before" == "$source_after" ]] || \
    die "source changed during verification: $relative_path"
  printf '# source sha256 after: %s\n' "$source_after" >>"$compile_log"
  if (( require_guards == 1 )); then
    printf 'compiled: %s (%s); #guard_msgs output accepted by Lean; source-sha256=%s; output=%s; log=%s\n' \
      "$relative_path" "$root_kind" "$source_after" "$output_path" "$compile_log"
  else
    printf 'compiled development root: %s; raw #print axioms output is in %s\n' \
      "$relative_path" "$compile_log"
    printf '%s\n' '# development-root Lean output:'
    cat "$compile_log"
  fi
}

hit_path='research/tasks/B686-Four/round9/main/HitSemantics.lean'
prime_path='research/tasks/B686-Four/round9/main/PrimeSynchronization.lean'
counterexample_path='research/tasks/B686-Four/round9/main/CounterexampleChecks.lean'
phase_path='research/tasks/B686-Four/round9/main/PhaseInterface.lean'
compile_one "$hit_path" 1 proof
compile_one "$prime_path" 1 proof
if [[ -f "$repo_root/$counterexample_path" ]]; then
  compile_one "$counterexample_path" 1 diagnostic
else
  printf 'required diagnostic root absent: %s\n' "$counterexample_path" >&2
  exit 1
fi
if [[ -f "$repo_root/$phase_path" ]]; then
  compile_one "$phase_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$phase_path" >&2
  exit 1
fi

stripe_path='research/tasks/B686-Four/round9/main/StripePrimitive.lean'
if [[ -f "$repo_root/$stripe_path" ]]; then
  compile_one "$stripe_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$stripe_path" >&2
  exit 1
fi

stripe_integral_path='research/tasks/B686-Four/round9/main/StripeIntegral.lean'
if [[ -f "$repo_root/$stripe_integral_path" ]]; then
  compile_one "$stripe_integral_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$stripe_integral_path" >&2
  exit 1
fi

window_integral_path='research/tasks/B686-Four/round9/main/WindowIntegral.lean'
if [[ -f "$repo_root/$window_integral_path" ]]; then
  compile_one "$window_integral_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$window_integral_path" >&2
  exit 1
fi

quarter_geometry_path='research/tasks/B686-Four/round9/main/QuarterGeometry.lean'
if [[ -f "$repo_root/$quarter_geometry_path" ]]; then
  compile_one "$quarter_geometry_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$quarter_geometry_path" >&2
  exit 1
fi

grid_geometry_path='research/tasks/B686-Four/round9/main/GridGeometry.lean'
if [[ -f "$repo_root/$grid_geometry_path" ]]; then
  compile_one "$grid_geometry_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$grid_geometry_path" >&2
  exit 1
fi

phase_geometry_path='research/tasks/B686-Four/round9/main/PhaseGeometry.lean'
if [[ -f "$repo_root/$phase_geometry_path" ]]; then
  compile_one "$phase_geometry_path" 1 proof
else
  printf 'required accepted root absent: %s\n' "$phase_geometry_path" >&2
  exit 1
fi

printf 'round9 verification passed: fixed Lean 4.33.1; no lake update/full build; cache=%s\n' \
  "$MATHLIB_CACHE_DIR"
