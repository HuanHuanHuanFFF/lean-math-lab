from pathlib import Path
import hashlib, sys
root=Path(__file__).resolve().parents[1]
manifest=root/'SHA256SUMS'
if not manifest.exists():
    print('SHA256SUMS absent (expected before final packaging)')
    sys.exit(2)
ok=True;count=0
for line in manifest.read_text(encoding='utf-8').splitlines():
    if not line.strip(): continue
    h,rel=line.split('  ',1)
    p=root/rel
    got=hashlib.sha256(p.read_bytes()).hexdigest()
    count+=1
    if got!=h:
        print('FAIL',rel,got,h);ok=False
print(('PASS' if ok else 'FAIL'),count,'files')
sys.exit(0 if ok else 1)
