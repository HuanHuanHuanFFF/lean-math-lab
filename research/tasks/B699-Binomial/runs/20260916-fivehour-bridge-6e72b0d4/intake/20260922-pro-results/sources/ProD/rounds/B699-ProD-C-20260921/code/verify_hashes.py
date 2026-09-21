"""Verify SHA256SUMS relative to this evidence package; stdlib only."""
from pathlib import Path
import hashlib
ROOT=Path(__file__).resolve().parents[1]

def main():
    manifest=ROOT/'SHA256SUMS'
    if not manifest.exists():raise SystemExit('Missing SHA256SUMS')
    checked=0
    for line in manifest.read_text().splitlines():
        if not line.strip():continue
        expected,relative=line.split('  ',1)
        path=(ROOT/relative).resolve()
        if ROOT not in path.parents:raise SystemExit(f'Unsafe manifest path: {relative}')
        if not path.is_file():raise SystemExit(f'Missing file: {relative}')
        actual=hashlib.sha256(path.read_bytes()).hexdigest()
        if actual!=expected:raise SystemExit(f'SHA256 mismatch: {relative}')
        checked+=1
    print(f'PASS_SHA256: {checked} files (byte integrity only)')
if __name__=='__main__':main()
