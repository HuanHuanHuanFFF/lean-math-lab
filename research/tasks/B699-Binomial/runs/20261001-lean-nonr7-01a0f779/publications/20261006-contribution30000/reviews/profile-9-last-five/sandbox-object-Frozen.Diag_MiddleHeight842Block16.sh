#!/usr/bin/env bash
# Elaborate one Lean source in a locked-down container. The caller is trusted;
# the source is not. The image must be pulled before this script runs.
set -euo pipefail

workspace="$(realpath "${1:?usage: lean_sandbox.sh <workspace> <source> <seconds> <memory-mb> <heartbeats>}")"
source_file="$(realpath "${2:?missing source}")"
timeout_seconds="${3:?missing timeout}"
memory_mb="${4:?missing memory limit}"
heartbeats="${5:?missing heartbeat limit}"
image="${CONTRIB_LEAN_IMAGE:-debian:bookworm-slim@sha256:88200866dfff7ea7f5cbcb6ec7c8a701889efe6fe859fe64d6990e4b07ea4171}"
# Lean elaborates declarations in parallel and takes a thread per task, so the ceiling scales
# with the size of the file, not with the core count. At 128 a 5158-line contribution died
# on startup with "failed to create thread" (exit 139) — measured on the DEV runner, that
# file needs between 129 and 192. 1024 keeps a hard bound on a fork bomb while leaving room
# for files several times larger.
pids_limit="${CONTRIB_LEAN_PIDS_LIMIT:-1024}"

fail() { printf '%s\n' "$*" >&2; exit 125; }

[[ -d "$workspace" ]] || fail "$workspace is not a directory"
[[ -f "$source_file" ]] || fail "$source_file is not a file"
[[ "$timeout_seconds" =~ ^[1-9][0-9]*$ ]] || fail "timeout must be a positive integer"
[[ "$memory_mb" =~ ^[1-9][0-9]*$ ]] || fail "memory must be a positive integer"
[[ "$heartbeats" =~ ^[1-9][0-9]*$ ]] || fail "heartbeats must be a positive integer"
[[ "$pids_limit" =~ ^[1-9][0-9]*$ ]] || fail "pids limit must be a positive integer"
command -v docker >/dev/null || fail "docker is required for Lean isolation"
command -v lake >/dev/null || fail "lake is required to resolve the pinned toolchain"

lean_binary="$(cd "$workspace" && lake env which lean)"
lean_binary="$(realpath "$lean_binary")"
toolchain="$(dirname "$(dirname "$lean_binary")")"
lean_path="$(cd "$workspace" && lake env printenv LEAN_PATH)"
[[ -x "$lean_binary" ]] || fail "lake did not resolve an executable Lean binary"
[[ "$lean_path" != *$'\n'* ]] || fail "LEAN_PATH contains a newline"

docker_args=(
  run --pull never --name "b699-4276a9b57d924d1489124e8de57ac22f"
  --network none
  --read-only
  --cap-drop ALL
  --security-opt no-new-privileges
  --pids-limit "$pids_limit"
  --memory "${memory_mb}m"
  --memory-swap "${memory_mb}m"
  # A crash inside the container is dumped by the host kernel, as the host user, into the
  # host's crash directory. Five of those from Lean cost 31GB before anyone noticed.
  --ulimit core=0
  --user "$(id -u):$(id -g)"
  --tmpfs "/tmp:rw,noexec,nosuid,nodev,size=64m,mode=1777"
  --workdir "$workspace"
  --env "LEAN_PATH=$lean_path"
  --env "PATH=$toolchain/bin:/usr/local/bin:/usr/bin:/bin"
  --env "B699_HARD_DEADLINE_EPOCH=1791329425"
  --env HOME=/tmp
  --env NO_COLOR=1
  --mount "type=bind,src=$workspace,dst=$workspace,readonly"
  --mount "type=bind,src=$toolchain,dst=$toolchain,readonly"
  --mount "type=bind,src=$source_file,dst=/contribution/Frozen/Diag_MiddleHeight842Block16.lean,readonly"
  --mount "type=bind,src=/home/runner/work/lean-math-lab/lean-math-lab/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/publications/20261006-contribution30000/environment/container-resource-guard.sh,dst=/contrib-resource/guard.sh,readonly"
  --mount "type=bind,src=/home/runner/work/lean-math-lab/lean-math-lab/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/publications/20261006-contribution30000/environment/container-probe-entry.sh,dst=/contrib-resource/entry.sh,readonly"
  --mount "type=bind,src=/home/runner/work/lean-math-lab/lean-math-lab/research/tasks/B699-Binomial/runs/20261001-lean-nonr7-01a0f779/publications/20261006-contribution30000/environment/container-probe-metrics.sh,dst=/contrib-resource/metrics.sh,readonly"
  --mount "type=bind,src=/home/runner/work/_temp/b699-profile-work/probe-MiddleHeight842Block16,dst=/contrib-evidence"
)

# A Lake workspace normally contains every dependency below its own .lake tree.
# Preserve any explicitly external LEAN_PATH entry without exposing the runner's home.
IFS=: read -r -a lean_paths <<< "$lean_path"
for path in "${lean_paths[@]}"; do
  [[ -n "$path" && -d "$path" ]] || continue
  resolved="$(realpath "$path")"
  if [[ "$resolved" != "$workspace"/* && "$resolved" != "$toolchain"/* ]]; then
    docker_args+=(--mount "type=bind,src=$resolved,dst=$resolved,readonly")
  fi
done

runtime_dir="$(mktemp -d)"
cidfile="/home/runner/work/_temp/b699-profile-work/b699-4276a9b57d924d1489124e8de57ac22f.cid"
cleanup() {
  if [[ -s "$cidfile" ]]; then
    : # Host UUID supervisor captures state before strict cleanup
  fi
  : # Host retains trusted --cidfile until checked ID cleanup
  rmdir "$runtime_dir" 2>/dev/null || true
}
trap cleanup EXIT INT TERM

docker_args+=(--cidfile "$cidfile" "$image")
timeout --kill-after=15 "$timeout_seconds" \
  docker "${docker_args[@]}" \
  /bin/sh /contrib-resource/guard.sh "$memory_mb" /bin/sh /contrib-resource/entry.sh "$timeout_seconds" "$lean_binary" --json "--memory=$memory_mb" "--timeout=$heartbeats" --threads=1 --root=/contribution -o /contrib-evidence/Frozen/Diag_MiddleHeight842Block16.olean \
  /contribution/Frozen/Diag_MiddleHeight842Block16.lean
