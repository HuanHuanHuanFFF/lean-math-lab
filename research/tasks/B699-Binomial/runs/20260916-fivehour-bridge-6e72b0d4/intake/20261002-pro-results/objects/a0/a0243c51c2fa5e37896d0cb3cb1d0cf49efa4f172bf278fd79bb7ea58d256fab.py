"""CRC + safe new-directory extraction + read-only offline receiver + tree hash comparison."""
import argparse,hashlib,json,subprocess,sys,tempfile,time,zipfile
from pathlib import Path,PurePosixPath

def digest(path):return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def snapshot(root):return {str(p.relative_to(root)):digest(p) for p in root.rglob('*') if p.is_file()}

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('archive');ap.add_argument('--output',required=True);ap.add_argument('--payload-only',action='store_true')
    args=ap.parse_args();archive=Path(args.archive).resolve();out=Path(args.output).resolve();start=time.monotonic()
    with tempfile.TemporaryDirectory(prefix='b699-general-zero-replay-') as tmp:
        top=Path(tmp);root=top/'unpacked';root.mkdir()
        with zipfile.ZipFile(archive) as z:
            assert z.testzip() is None
            names=z.namelist();assert len(names)==len(set(names))
            for name in names:
                p=PurePosixPath(name);assert not p.is_absolute() and '..' not in p.parts
            z.extractall(root)
        before=snapshot(root);receipt=top/'verification.json'
        cmd=[sys.executable,'-B',str(root/'scripts/verify.py'),'--output',str(receipt)]
        if args.payload_only:cmd.append('--payload-only')
        run=subprocess.run(cmd,cwd=root,capture_output=True,text=True,timeout=180)
        assert run.returncode==0,(run.stdout,run.stderr)
        after=snapshot(root);assert before==after,'Verifier modified extracted evidence tree.'
        verification=json.loads(receipt.read_text());assert verification['status']=='PASS'
        result={'status':'PASS','phase':'PAYLOAD_ROUNDTRIP_BEFORE_FINAL_MANIFEST' if args.payload_only else 'FINAL_ZIP_CLEAN_EXTRACTION',
                'archive_name':archive.name,'archive_sha256':digest(archive),'archive_bytes':archive.stat().st_size,
                'zip_crc':'PASS','extracted_files':len(before),'tree_unchanged':True,
                'receiver_stdout':run.stdout,'receiver_stderr':run.stderr,'verification':verification,
                'elapsed_seconds':round(time.monotonic()-start,3)}
        out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
        print(json.dumps({'status':'PASS','files':len(before),'tree_unchanged':True,'elapsed_seconds':result['elapsed_seconds']}))
