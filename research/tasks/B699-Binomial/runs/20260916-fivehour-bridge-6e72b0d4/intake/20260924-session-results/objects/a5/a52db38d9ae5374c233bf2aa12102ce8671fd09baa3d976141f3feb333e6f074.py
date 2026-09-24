from pathlib import Path
import hashlib
root=Path(__file__).resolve().parents[1]
n=0
for line in (root/'SHA256SUMS').read_text().splitlines():
    expected,name=line.split('  ',1)
    p=root/name
    assert p.is_file(),name
    assert hashlib.sha256(p.read_bytes()).hexdigest()==expected,name
    n+=1
print(f'INTERNAL_HASHES=PASS; files={n}')
