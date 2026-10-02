#!/usr/bin/env python3
"""Create a payload manifest, perform clean extraction replay, then final ZIP replay.
Writes only the selected artifact directory and output archive/receipts.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, shutil, subprocess, sys, tempfile, zipfile
from pathlib import Path

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def files(root:Path)->list[Path]:return sorted(p for p in root.rglob('*') if p.is_file() and '__pycache__' not in p.parts)
def manifest(root:Path,name:str,exclude:set[str])->int:
    chosen=[p for p in files(root) if p.relative_to(root).as_posix() not in exclude|{name}]
    (root/name).write_text(''.join(f'{sha(p)}  {p.relative_to(root).as_posix()}\n' for p in chosen),encoding='utf-8')
    return len(chosen)
def zip_root(root:Path,out:Path)->None:
    with zipfile.ZipFile(out,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in files(root):z.write(p,root.name+'/'+p.relative_to(root).as_posix())
def extract_checked(path:Path,to:Path)->Path:
    with zipfile.ZipFile(path) as z:
        if z.testzip() is not None:raise AssertionError('ZIP CRC failure')
        for i in z.infolist():
            p=(to/i.filename).resolve()
            if not p.is_relative_to(to.resolve()):raise ValueError('unsafe ZIP member')
        z.extractall(to)
    roots=[p for p in to.iterdir() if p.is_dir()]
    if len(roots)!=1:raise ValueError('expected one archive root')
    return roots[0]
def verify_final_manifest(root:Path)->int:
    listed=[]
    for line in (root/'SHA256SUMS.txt').read_text().splitlines():
        digest,rel=line.split('  ',1)
        if sha(root/rel)!=digest:raise AssertionError('final manifest mismatch '+rel)
        listed.append(rel)
    actual=[p.relative_to(root).as_posix() for p in files(root) if p.name!='SHA256SUMS.txt']
    if sorted(listed)!=sorted(actual):raise AssertionError('final manifest membership mismatch')
    return len(listed)
def run_replay(root:Path,receipt:Path)->dict:
    p=subprocess.run([sys.executable,str(root/'scripts/replay.py'),'--receipt',str(receipt)],capture_output=True,text=True)
    if p.returncode:raise RuntimeError(p.stdout+'\n'+p.stderr)
    return dict(stdout=p.stdout,stderr=p.stderr,returncode=p.returncode)
def main()->None:
    ap=argparse.ArgumentParser();ap.add_argument('--root',type=Path,required=True);ap.add_argument('--out',type=Path,required=True);args=ap.parse_args()
    root=args.root.resolve();out=args.out.resolve();out.parent.mkdir(parents=True,exist_ok=True)
    for p in root.rglob('__pycache__'):shutil.rmtree(p)
    excluded={'SHA256SUMS.txt','CLEAN_REPLAY.json','logs/clean_replay.log','SHA256SUMS.payload.txt'}
    payload_count=manifest(root,'SHA256SUMS.payload.txt',excluded)
    with tempfile.TemporaryDirectory(prefix='b699-r11-bundle-') as td:
        tmp=Path(td);stage=tmp/'payload.zip';zip_root(root,stage)
        clean=extract_checked(stage,tmp/'first');log=run_replay(clean,tmp/'clean.json')
        shutil.copyfile(tmp/'clean.json',root/'CLEAN_REPLAY.json')
        (root/'logs/clean_replay.log').write_text(json.dumps(log,ensure_ascii=False,indent=2)+'\n')
        final_count=manifest(root,'SHA256SUMS.txt',set())
        zip_root(root,out);clean_final=extract_checked(out,tmp/'final');checked=verify_final_manifest(clean_final)
        flog=run_replay(clean_final,tmp/'final_replay.json')
        rec=dict(status='PASS',archive=out.name,archive_sha256=sha(out),archive_size_bytes=out.stat().st_size,
            zip_crc='PASS',payload_manifest_count=payload_count,final_manifest_count=checked,
            clean_final_replay=json.loads((tmp/'final_replay.json').read_text()),execution=flog,
            evidence_level='byte integrity and same-author mathematical replay; not external independent proof review')
        ext=out.with_suffix('.FINAL_REPLAY.json');ext.write_text(json.dumps(rec,ensure_ascii=False,indent=2,sort_keys=True)+'\n')
        out.with_suffix('.zip.sha256').write_text(f'{sha(out)}  {out.name}\n')
        print(json.dumps({k:rec[k] for k in ('status','archive','archive_sha256','archive_size_bytes','payload_manifest_count','final_manifest_count')},sort_keys=True))
if __name__=='__main__':main()
