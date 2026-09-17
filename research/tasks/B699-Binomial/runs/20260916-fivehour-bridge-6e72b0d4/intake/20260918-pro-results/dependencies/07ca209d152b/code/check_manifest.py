import hashlib
from pathlib import Path
root=Path(__file__).resolve().parents[1]
manifest=root/'MANIFEST.sha256'
expected={}
for line in manifest.read_text().splitlines():
    digest,name=line.split('  ',1)
    if name in expected: raise SystemExit('duplicate manifest entry')
    expected[name]=digest
actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file()
        and p.name!='MANIFEST.sha256' and '__pycache__' not in p.parts}
assert actual==set(expected), ('manifest inventory mismatch',actual^set(expected))
for name,digest in expected.items():
    assert hashlib.sha256((root/name).read_bytes()).hexdigest()==digest,name
print('PASS_MANIFEST',len(expected),'members')
