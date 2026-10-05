#!/usr/bin/env bash
# Read-only environment inspection; missing tools are reported, not installed.
printf '=== System ===\n'
uname -a
printf '\n=== Tool discovery ===\n'
for tool in lean lake elan leanchecker lean4checker; do
  printf '%s: ' "$tool"
  command -v "$tool"
  code=$?
  if [ "$code" -ne 0 ]; then printf 'NOT_FOUND (command -v exit %s)\n' "$code"; fi
done
printf '\n=== Usual toolchain/cache directories ===\n'
for path in /root/.elan /home/oai/.elan /root/.cache/mathlib /home/oai/.cache/mathlib; do
  if [ -e "$path" ]; then ls -ld "$path"; else printf 'ABSENT %s\n' "$path"; fi
done
printf '\n=== Lean-related files in bounded search (not an exhaustive host search) ===\n'
find /usr/local /usr/bin /opt /root /home/oai /mnt/data -maxdepth 5 \
  \( -name lean -o -name lake -o -name elan -o -name '*.olean' \) 2>/dev/null
printf '\n=== Input limitations ===\n'
printf 'The supplied ZIP does not include a complete toolchain or a normal project checker entry point.\n'
