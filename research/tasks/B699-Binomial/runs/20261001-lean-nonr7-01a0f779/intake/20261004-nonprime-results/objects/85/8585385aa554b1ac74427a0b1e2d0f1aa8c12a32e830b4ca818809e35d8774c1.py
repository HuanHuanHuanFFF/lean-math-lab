#!/usr/bin/env python3
"""Verify this packet's SHA-256 manifest; never runs Lean or writes to the input."""
from pathlib import Path, PurePosixPath
import argparse
import hashlib
import json
import re
import zipfile


def parse_manifest(text:str)->dict[str,str]:
    entries={}
    for line in text.splitlines():
        if not line.strip():continue
        m=re.fullmatch(r'([0-9a-f]{64})\s+\*?(.+)',line)
        if not m:raise ValueError('Invalid manifest line: '+line)
        digest,name=m.groups()
        p=PurePosixPath(name)
        if p.is_absolute() or '..' in p.parts or name in entries:
            raise ValueError('Unsafe or duplicate manifest member: '+name)
        entries[name]=digest
    return entries


def main()->None:
    ap=argparse.ArgumentParser()
    group=ap.add_mutually_exclusive_group(required=True)
    group.add_argument('--directory',type=Path)
    group.add_argument('--archive',type=Path)
    args=ap.parse_args()
    sha=lambda b:hashlib.sha256(b).hexdigest()
    if args.directory:
        root=args.directory.resolve()
        manifest=root/'MANIFEST.sha256'
        entries=parse_manifest(manifest.read_text())
        files={p.relative_to(root).as_posix():p for p in root.rglob('*') if p.is_file()}
        if any(p.is_symlink() for p in files.values()):raise ValueError('Symlink in packet')
        if set(files)!=(set(entries)|{'MANIFEST.sha256'}):raise ValueError('Manifest coverage mismatch')
        for name,digest in entries.items():
            if sha(files[name].read_bytes())!=digest:raise ValueError('SHA mismatch: '+name)
        result={'status':'PASS','mode':'directory','manifest_entries':len(entries),'members':len(files),'manifest_sha256':sha(manifest.read_bytes()),'lean_run':False}
    else:
        with zipfile.ZipFile(args.archive) as z:
            names=z.namelist()
            if len(names)!=len(set(names)):raise ValueError('Duplicate archive members')
            if any(PurePosixPath(n).is_absolute() or '..' in PurePosixPath(n).parts for n in names):raise ValueError('Unsafe archive name')
            manifests=[n for n in names if n.endswith('/MANIFEST.sha256') or n=='MANIFEST.sha256']
            manifest=min(manifests,key=lambda n:n.count('/'))
            prefix=manifest.removesuffix('MANIFEST.sha256')
            entries=parse_manifest(z.read(manifest).decode())
            if set(names)!={prefix+n for n in entries}|{manifest}:raise ValueError('Manifest coverage mismatch')
            if z.testzip() is not None:raise ValueError('ZIP CRC failed')
            for name,digest in entries.items():
                if sha(z.read(prefix+name))!=digest:raise ValueError('SHA mismatch: '+name)
            result={'status':'PASS','mode':'archive','members':len(names),'manifest_entries':len(entries),'archive_sha256':sha(args.archive.read_bytes()),'manifest_sha256':sha(z.read(manifest)),'lean_run':False}
    print(json.dumps(result,ensure_ascii=False,indent=2))

if __name__=='__main__':
    main()
