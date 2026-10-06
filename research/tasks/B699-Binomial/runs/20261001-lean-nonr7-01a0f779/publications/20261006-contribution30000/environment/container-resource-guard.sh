#!/bin/sh
# Trusted resource guard, run inside every proof and checker container.
set -eu
expected_mb="$1"
shift
expected_bytes=$((expected_mb * 1024 * 1024))
membership="$(awk -F: '$1 == "0" {print $3; exit}' /proc/self/cgroup)"
mount_record="$(awk '$0 ~ / - cgroup2 / {print $4, $5; exit}' /proc/self/mountinfo)"
if [ -z "$membership" ] || [ -z "$mount_record" ]; then
  echo 'B699_RESOURCE_CONTRACT: cgroup v2 is required; cannot verify hard cap' >&2
  exit 125
fi
mount_root=${mount_record%% *}
mountpoint=${mount_record#* }
case "$membership" in */../*|*/..|/..|*/./*) echo 'B699_RESOURCE_CONTRACT: noncanonical membership path' >&2; exit 125;; esac
case "$mount_record" in *\\*) echo 'B699_RESOURCE_CONTRACT: unsupported escaped mount path' >&2; exit 125;; esac
if [ "$membership" = / ]; then
  current="$mountpoint"
elif [ "$mount_root" = / ]; then
  current="$mountpoint$membership"
else
  case "$membership" in
    "$mount_root"|"$mount_root"/*) current="$mountpoint${membership#"$mount_root"}" ;;
    *) echo 'B699_RESOURCE_CONTRACT: cgroup membership/mount mismatch' >&2; exit 125 ;;
  esac
fi
self_limit="$(cat "$current/memory.max")"
case "$self_limit" in ''|*[!0-9]*) echo 'B699_RESOURCE_CONTRACT: no finite memory.max' >&2; exit 125;; esac
if [ "$self_limit" -ne "$expected_bytes" ]; then
  echo "B699_RESOURCE_CONTRACT: memory.max=$self_limit expected=$expected_bytes" >&2
  exit 125
fi
while :; do
  limit="$(cat "$current/memory.max")"
  usage="$(cat "$current/memory.current")"
  cpu="$(cat "$current/cpu.max")"
  pids_max="$(cat "$current/pids.max" 2>/dev/null || echo unavailable)"
  pids_current="$(cat "$current/pids.current" 2>/dev/null || echo unavailable)"
  echo "B699_RESOURCE_CONTRACT path=$current memory.max=$limit memory.current=$usage cpu.max=$cpu pids.max=$pids_max pids.current=$pids_current"
  case "$limit" in
    max) : ;;
    ''|*[!0-9]*) echo 'B699_RESOURCE_CONTRACT: invalid ancestor memory cap' >&2; exit 125;;
    *) if [ "$limit" -lt "$expected_bytes" ]; then echo 'B699_RESOURCE_CONTRACT: ancestor is tighter than declared cap' >&2; exit 125; fi ;;
  esac
  [ "$current" = "$mountpoint" ] && break
  current=${current%/*}
done
exec "$@"
