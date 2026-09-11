#!/usr/bin/env python3
"""Recover selected original raw members without modifying the uploaded ZIP."""
from __future__ import annotations
import argparse,hashlib,json
from pathlib import Path
from zipfile import ZipFile
ROOT=Path(__file__).resolve().parent

def digest(p:Path)->str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()
def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--dest',type=Path,required=True);a=ap.parse_args()
    meta=json.loads((ROOT/'input/SOURCE_MAP.json').read_text());arc=a.archive.resolve();dest=a.dest.resolve()
    if not arc.is_file() or arc.stat().st_size!=meta['bytes'] or digest(arc)!=meta['sha256']:
        raise SystemExit('original archive hash/size mismatch')
    if dest.exists() and (not dest.is_dir() or any(dest.iterdir())):raise SystemExit('destination must be empty/new')
    if dest==ROOT or dest.is_relative_to(ROOT/'input'):raise SystemExit('do not overwrite adopted inputs')
    dest.mkdir(parents=True,exist_ok=True);written=[]
    with ZipFile(arc) as z:
        for row in meta['copied_members']:
            raw=z.read(row['archive_member'])
            if len(raw)!=row['bytes'] or hashlib.sha256(raw).hexdigest()!=row['sha256']:
                raise RuntimeError('original member hash mismatch: '+row['archive_member'])
            p=(dest/row['local_path']).resolve()
            if not p.is_relative_to(dest):raise RuntimeError('unsafe target path')
            p.parent.mkdir(parents=True,exist_ok=True);p.write_bytes(raw);written.append(row['local_path'])
    out={'status':'raw_sources_restored','archive_sha256':meta['sha256'],'files':written}
    (dest/'RESTORE_METADATA.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n');print(json.dumps(out))
if __name__=='__main__':main()
