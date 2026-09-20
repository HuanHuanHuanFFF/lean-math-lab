#!/bin/sh
set -eu
ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
find "$ROOT/stages" -name REPLAY.sh -print | sort | while IFS= read -r r; do
  echo "===== ${r#$ROOT/} ====="
  (cd "$(dirname "$r")" && sh ./REPLAY.sh)
done
