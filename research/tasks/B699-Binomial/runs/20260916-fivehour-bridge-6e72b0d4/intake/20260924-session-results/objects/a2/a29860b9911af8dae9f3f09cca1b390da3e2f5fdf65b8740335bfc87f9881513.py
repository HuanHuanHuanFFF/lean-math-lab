from pathlib import Path
import hashlib,sys
root=Path(__file__).resolve().parents[1]
count=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    digest,name=line.split('  ',1)
    p=root/name
    if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
        raise SystemExit('HASH_MISMATCH '+name)
    count+=1
print('INTERNAL_SHA256=PASS;',count,'files')
