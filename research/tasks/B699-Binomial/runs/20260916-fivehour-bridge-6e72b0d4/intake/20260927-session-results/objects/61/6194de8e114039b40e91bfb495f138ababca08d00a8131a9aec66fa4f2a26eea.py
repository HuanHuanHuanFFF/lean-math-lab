#!/usr/bin/env python3
"""Fresh-directory ZIP replay, file hashes and no-mutation receipt. Standard library only."""
import argparse,hashlib,json,os,stat,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def snapshot(root):return {p.relative_to(root).as_posix():sha(p) for p in sorted(root.rglob('*')) if p.is_file()}
def check_manifest(root,name):
    manifest=root/name
    if not manifest.exists():return None
    rows=[]
    for line in manifest.read_text().splitlines():
        h,rel=line.split('  ',1);p=root/rel
        assert len(h)==64 and p.is_file() and sha(p)==h,(name,rel)
        rows.append(rel)
    assert len(rows)==len(set(rows))
    return len(rows)
def main():
    pa=argparse.ArgumentParser();pa.add_argument('archive');pa.add_argument('--output',required=True);args=pa.parse_args()
    archive=Path(args.archive).resolve();output=Path(args.output).resolve();start=time.monotonic()
    with tempfile.TemporaryDirectory(prefix='b699-negb0-clean-') as td:
        work=Path(td);root=work/'unpacked';root.mkdir()
        with zipfile.ZipFile(archive) as zf:
            assert sum(i.file_size for i in zf.infolist())<100_000_000
            names=set()
            for i in zf.infolist():
                p=PurePosixPath(i.filename)
                assert not p.is_absolute() and '..' not in p.parts and i.filename not in names
                assert not stat.S_ISLNK(i.external_attr>>16);names.add(i.filename)
            zf.extractall(root)
        before=snapshot(root)
        payload=check_manifest(root,'PAYLOAD_SHA256SUMS')
        final=check_manifest(root,'SHA256SUMS')
        assert payload is not None
        expected_payload=set()
        for line in (root/'PAYLOAD_SHA256SUMS').read_text().splitlines():expected_payload.add(line.split('  ',1)[1])
        assert set(before)==expected_payload|({'PAYLOAD_SHA256SUMS','CLEAN_REPLAY.json','SHA256SUMS'}&set(before))
        if final is not None:
            final_files={line.split('  ',1)[1] for line in (root/'SHA256SUMS').read_text().splitlines()}
            assert final_files==set(before)-{'SHA256SUMS'}
        env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
        run=subprocess.run([sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(work/'verify.json')],
                           capture_output=True,text=True,env=env,timeout=120)
        assert run.returncode==0,run.stdout+'\n'+run.stderr
        report=json.loads((work/'verify.json').read_text());assert report['status']=='PASS'
        assert before==snapshot(root),'Extracted archive changed during replay'
        receipt={'status':'PASS','archive_name':archive.name,'archive_sha256':sha(archive),
                 'fresh_empty_directory':True,'extracted_file_count':len(before),
                 'payload_hash_entries':payload,'final_manifest_entries':final,
                 'extraction_tree_unchanged':True,'verifier_exit_code':run.returncode,
                 'verifier_stdout':run.stdout,'verifier_stderr':run.stderr,'verification':report,
                 'elapsed_seconds':round(time.monotonic()-start,6)}
    output.parent.mkdir(parents=True,exist_ok=True);output.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':'PASS','archive_sha256':receipt['archive_sha256'],'output':str(output)}))
if __name__=='__main__':main()
