#!/bin/sh
# Trusted diagnosis timer; the same digest-pinned image supplies GNU coreutils.
set -eu
seconds="$1"
shift
case "${B699_HARD_DEADLINE_EPOCH:-}" in
  ''|*[!0-9]*) echo 'B699_DIAGNOSTIC_ENVIRONMENT: absolute round deadline unavailable' >&2; exit 125;;
esac
remaining=$((B699_HARD_DEADLINE_EPOCH - $(/usr/bin/date -u +%s) - 45))
if [ "$remaining" -lt 1 ]; then
  echo 'B699_HARD_DEADLINE_EXPIRED: no remaining guest lease' >&2
  exit 124
fi
if [ "$seconds" -gt "$remaining" ]; then seconds="$remaining"; fi
if [ ! -x /usr/bin/timeout ]; then
  echo 'B699_DIAGNOSTIC_ENVIRONMENT: trusted image timeout is unavailable' >&2
  exit 125
fi
version="$(/usr/bin/timeout --version)" || exit 125
case "$version" in
  'timeout (GNU coreutils)'*) : ;;
  *) echo 'B699_DIAGNOSTIC_ENVIRONMENT: unexpected timeout implementation' >&2; exit 125 ;;
esac
printf 'B699_DIAGNOSTIC_TIMER %s\n' "${version%%
*}"
printf 'B699_DIAGNOSTIC_LEASE seconds=%s deadline.epoch=%s\n' "$seconds" "$B699_HARD_DEADLINE_EPOCH"
exec /usr/bin/timeout --kill-after=15 "$seconds" "$@"
