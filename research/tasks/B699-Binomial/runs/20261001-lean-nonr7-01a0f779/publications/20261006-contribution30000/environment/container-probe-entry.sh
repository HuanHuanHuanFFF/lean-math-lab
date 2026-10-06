#!/bin/sh
# Trusted diagnosis timer; the same digest-pinned image supplies GNU coreutils.
set -eu
seconds="$1"
shift
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
exec /usr/bin/timeout --kill-after=15 "$seconds" "$@"
