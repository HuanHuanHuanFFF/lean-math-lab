"""Check exact package bytes. This is not mathematical verification."""
from pathlib import Path
import hashlib

def main():
    root=Path(__file__).resolve().parents[1]
    lines=(root/'SHA256SUMS').read_text().splitlines()
    seen=set()
    for line in lines:
        digest,name=line.split('  ',1)
        relative=Path(name)
        if relative.is_absolute() or '..' in relative.parts or name in seen:
            raise ValueError('invalid/duplicate manifest path: '+name)
        seen.add(name)
        file=(root/relative).resolve()
        if root not in file.parents or not file.is_file():
            raise ValueError('missing or unsafe file: '+name)
        if hashlib.sha256(file.read_bytes()).hexdigest()!=digest:
            raise ValueError('SHA-256 mismatch: '+name)
    actual={p.relative_to(root).as_posix() for p in root.rglob('*') if p.is_file() and p.name!='SHA256SUMS'}
    if actual!=seen:
        raise ValueError('unlisted/missing files: '+str(actual^seen))
    print('PACKAGE_BYTE_HASHES=PASS; FILES='+str(len(seen)))
if __name__=='__main__':main()
