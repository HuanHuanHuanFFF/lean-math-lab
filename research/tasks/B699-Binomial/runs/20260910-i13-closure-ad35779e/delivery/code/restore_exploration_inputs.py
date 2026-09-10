#!/usr/bin/env python3
"""Restore only the immutable historical files needed for optional diagnostics.
Not needed for the default exact replay. Never overwrite different bytes.
"""
from pathlib import Path
from io import BytesIO
import hashlib, zipfile
ROOT=Path(__file__).resolve().parents[1]
EXPECTED='84d2b35b41ce151bde0d0dbdd44cb49104d026aacfa69f7138ea39d99f0826c5'
if __name__=='__main__':
    raw=(ROOT/'input/B699-research-context-20260910.zip').read_bytes()
    if hashlib.sha256(raw).hexdigest()!=EXPECTED:raise ValueError('Original archive hash mismatch')
    outer=zipfile.ZipFile(BytesIO(raw))
    for name in ['asymmetric-pade','four-index-closure']:
        data=outer.read('originals/'+name+'.zip')
        with zipfile.ZipFile(BytesIO(data)) as inner:
            if inner.testzip() is not None:raise ValueError('Bad archive CRC')
            for item in inner.infolist():
                if item.is_dir():continue
                rel=Path(item.filename)
                if rel.is_absolute() or '..' in rel.parts:raise ValueError('Unsafe archive member')
                target=ROOT/'input/unpacked'/name/rel
                value=inner.read(item.filename)
                if target.exists() and target.read_bytes()!=value:raise FileExistsError(str(target))
                target.parent.mkdir(parents=True,exist_ok=True)
                if not target.exists():target.write_bytes(value)
        print('Restored immutable diagnostic input:', name)
