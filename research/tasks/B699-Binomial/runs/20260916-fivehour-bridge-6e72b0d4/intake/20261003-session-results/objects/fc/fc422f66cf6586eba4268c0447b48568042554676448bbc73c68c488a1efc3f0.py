"""Fresh local replay of the new payload. No networking or old mathematical replay."""
from __future__ import annotations
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import hashlib
ROOT=Path(__file__).resolve().parents[1]


def check_manifest()->None:
    final=ROOT/'SHA256SUMS.txt'
    manifest=final if final.exists() else ROOT/'PAYLOAD_SHA256SUMS.txt'
    if not manifest.is_file():raise RuntimeError('missing manifest')
    seen=set()
    for line in manifest.read_text().splitlines():
        if not line.strip():continue
        digest,name=line.split('  ',1)
        rel=Path(name)
        if rel.is_absolute() or '..' in rel.parts or name in seen:
            raise RuntimeError('unsafe or duplicate manifest path')
        seen.add(name);p=ROOT/rel
        if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:
            raise RuntimeError('hash mismatch: '+name)
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*') if p.is_file()}
    allowed={manifest.name}
    if manifest.name=='PAYLOAD_SHA256SUMS.txt':allowed|={'CLEAN_REPLAY_RECEIPT.json','SHA256SUMS.txt'}
    if actual-seen-allowed:raise RuntimeError('unlisted members: '+repr(sorted(actual-seen-allowed)))

if __name__=='__main__':
    check_manifest()
    from verify import main
    main()
