"""Check the immutable package file manifest (integrity only)."""
from pathlib import Path
import hashlib

def main():
    base=Path(__file__).resolve().parents[1]
    count=0;seen=set()
    for line in (base/'SHA256SUMS').read_text().splitlines():
        expected,rel=line.split('  ',1)
        p=(base/rel).resolve()
        if not p.is_relative_to(base) or rel in seen or not p.is_file():
            raise AssertionError(('invalid file entry',rel))
        actual=hashlib.sha256(p.read_bytes()).hexdigest()
        if actual!=expected:raise AssertionError(('hash mismatch',rel,expected,actual))
        seen.add(rel);count+=1
    actual_files={p.relative_to(base).as_posix() for p in base.rglob('*') if p.is_file() and p.name!='SHA256SUMS' and '__pycache__' not in p.parts}
    if seen!=actual_files:raise AssertionError(('manifest coverage mismatch',sorted(actual_files-seen),sorted(seen-actual_files)))
    print(f'PACKAGE_HASHES=PASS; FILES={count}; INTEGRITY_ONLY')
if __name__=='__main__':main()
