#!/usr/bin/env python3
from pathlib import Path
import hashlib, csv, sys
root=Path(sys.argv[1] if len(sys.argv)>1 else ".").resolve()
manifest=root/"SHA256SUMS.txt"
bad=[]
for line in manifest.read_text(encoding="utf-8").splitlines():
    if not line.strip(): continue
    sha, rel = line.split("  ",1)
    p=root/rel
    if not p.is_file():
        bad.append((rel,"missing")); continue
    h=hashlib.sha256(p.read_bytes()).hexdigest()
    if h!=sha: bad.append((rel,h))
print("files_checked", sum(1 for x in manifest.read_text(encoding="utf-8").splitlines() if x.strip()))
print("bad",len(bad))
if bad:
    print(bad[:20])
    raise SystemExit(1)
print("PASS")
