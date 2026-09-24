#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"
bash replay.sh
JOBS="${JOBS:-8}" python3 -B evidence/run_full_campaign.py | tee outputs/full_campaign_replay.log
echo ROUND17_FULL_REPLAY=PASS | tee -a outputs/full_campaign_replay.log
