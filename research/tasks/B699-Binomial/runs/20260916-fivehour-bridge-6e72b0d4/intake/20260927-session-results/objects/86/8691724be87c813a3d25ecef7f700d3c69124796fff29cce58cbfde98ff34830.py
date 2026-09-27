#!/usr/bin/env python3
"""Clean extraction, hashes, offline verifier, and byte-for-byte immutability receipt."""
from __future__ import annotations
import argparse,hashlib,json,os,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def snapshot(root):return {str(p.relative_to(root)):sha(p) for p in sorted(root.rglob('*')) if p.is_file()}
def manifest(root,name):
    p=root/name
    if not p.exists():raise ValueError('missing '+name)
    lines=p.read_text().splitlines();seen=set()
    for line in lines:
        digest,rel=line.split('  ',1)
        part=PurePosixPath(rel)
        if part.is_absolute() or '..' in part.parts:raise ValueError('unsafe manifest path')
        if rel in seen:raise ValueError('duplicate manifest path')
        seen.add(rel)
        assert (root/rel).is_file() and sha(root/rel)==digest
    return len(seen)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive');ap.add_argument('--output',required=True)
    ap.add_argument('--allow-payload',action='store_true');args=ap.parse_args()
    archive=Path(args.archive).resolve();out=Path(args.output).resolve()
    start=time.perf_counter()
    with tempfile.TemporaryDirectory(prefix='u1-clean-') as td:
        work=Path(td);root=work/'extracted';root.mkdir()
        with zipfile.ZipFile(archive) as zz:
            names=set()
            for info in zz.infolist():
                name=info.filename;part=PurePosixPath(name)
                if part.is_absolute() or '..' in part.parts or '\\' in name:
                    raise ValueError('unsafe zip path')
                if name in names:raise ValueError('duplicate zip path')
                names.add(name)
                if (info.external_attr >> 16)&0o170000 == 0o120000:
                    raise ValueError('symlink not allowed')
            zz.extractall(root)
        before=snapshot(root)
        payload_count=manifest(root,'PAYLOAD_SHA256SUMS')
        if args.allow_payload:
            final_count=0
        else:
            final_count=manifest(root,'SHA256SUMS')
            # The final manifest must cover every file except itself.
            assert final_count==len(before)-1
        result_file=work/'acceptance.json'
        env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
        run=subprocess.run([sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(result_file)],
                           text=True,capture_output=True,check=True,env=env)
        result=json.loads(result_file.read_text());assert result['status']=='PASS'
        after=snapshot(root);assert before==after
        receipt={'status':'PASS','phase':'payload-snapshot' if args.allow_payload else 'final-archive',
                 'archive_name':archive.name,'archive_sha256':sha(archive),
                 'archive_bytes':archive.stat().st_size,'clean_directory_created':True,
                 'payload_hashes_verified':payload_count,'final_manifest_entries_verified':final_count,
                 'extracted_files':len(before),'tree_unchanged':True,
                 'verifier_exit_code':run.returncode,'acceptance':result,
                 'historical_ledgers_replayed':False,
                 'external_independent_mathematical_review':False,
                 'elapsed_seconds':round(time.perf_counter()-start,6)}
        out.parent.mkdir(parents=True,exist_ok=True);out.write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(receipt,indent=2))
if __name__=='__main__':main()
