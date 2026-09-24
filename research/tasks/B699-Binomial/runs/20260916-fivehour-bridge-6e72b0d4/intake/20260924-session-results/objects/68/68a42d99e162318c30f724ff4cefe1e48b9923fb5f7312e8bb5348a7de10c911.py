from pathlib import Path
import hashlib,sys
root=Path(__file__).resolve().parents[1]
count=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    digest,relative=line.split('  ',1);p=root/relative
    if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
        raise SystemExit('HASH_FAIL '+relative)
    count+=1
print('FILE_HASHES=PASS; COUNT='+str(count))
