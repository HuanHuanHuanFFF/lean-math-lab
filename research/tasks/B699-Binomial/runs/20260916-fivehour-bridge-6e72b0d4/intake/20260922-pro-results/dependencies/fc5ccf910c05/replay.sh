#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

cd "$ROOT"

python3 -B evidence/symbolic_verify.py

mkdir -p "$TMP/certificates"
B699_CERT_DIR="$TMP/certificates" python3 -B evidence/make_certificates.py
for name in power_identity.json q32_diagnostic.json two_adic_shell.json layers_8_11.json; do
  cmp "certificates/$name" "$TMP/certificates/$name"
done
echo "CERTIFICATES_BYTE_IDENTICAL=PASS"

python3 -B evidence/verify.py

python3 -B evidence/power_gate.py --q 32 --multiplier 1 > "$TMP/q32-m1.json"
python3 - "$TMP/q32-m1.json" <<'PY'
import json, sys
row = json.load(open(sys.argv[1]))["rows"][0]
assert row["rho"] == 8
assert row["v2_R"] == 7
assert row["lower_s"] == 31
assert row["valuation_gate"] is False
print("Q32_M1_DIRECT_GATE=PASS")
PY

python3 -B evidence/layer_gate.py --rho 11 --multiplier 16573 > "$TMP/hard-class.json"
python3 - "$TMP/hard-class.json" <<'PY'
import json, sys
obj = json.load(open(sys.argv[1]))
assert len(obj["records"]) == 1
w = obj["records"][0]["witness"]
assert w["primes"] == [41, 71]
assert w["lift_count"] == 7
assert w["witness_counts"] == {"41": 6, "71": 1}
print("RHO11_HARD_CLASS=PASS")
PY

echo "ROUND12_REPLAY=PASS"
