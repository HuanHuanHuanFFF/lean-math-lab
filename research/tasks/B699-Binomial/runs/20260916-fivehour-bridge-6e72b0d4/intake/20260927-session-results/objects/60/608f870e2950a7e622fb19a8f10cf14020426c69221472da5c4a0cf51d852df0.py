#!/usr/bin/env python3
"""Clean-extract an archive, validate hashes, run offline receiver, compare tree."""
import argparse,datetime,hashlib,json,os,stat,subprocess,sys,tempfile,time,zipfile
from pathlib import Path

def digest(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def snapshot(root):return {str(p.relative_to(root)):digest(p) for p in sorted(root.rglob('*')) if p.is_file()}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('archive',type=Path);ap.add_argument('--output',type=Path,required=True)
    args=ap.parse_args();archive=args.archive.resolve();out=args.output.resolve();start=time.time()
    if not archive.is_file():ap.error('archive not found')
    if out==archive:ap.error('output cannot overwrite the archive')
    if out.is_relative_to(Path(__file__).resolve().parents[1]):ap.error('output must be outside the evidence tree')
    with tempfile.TemporaryDirectory(prefix='b699-clean-replay-') as tmp:
        base=Path(tmp)
        with zipfile.ZipFile(archive) as zf:
            names=zf.namelist();assert len(names)==len(set(names))
            for info in zf.infolist():
                p=Path(info.filename)
                assert not p.is_absolute() and '..' not in p.parts and '\\' not in info.filename
                assert not stat.S_ISLNK(info.external_attr>>16)
                assert (base/p).resolve().is_relative_to(base)
            zf.extractall(base)
        roots=[p for p in base.iterdir() if p.is_dir() and (p/'scripts'/'verify.py').is_file()]
        assert len(roots)==1
        root=roots[0];before=snapshot(root)
        receipt=base/'receiver.json'
        command=[sys.executable,'-B',str(root/'scripts'/'verify.py'),'--output',str(receipt)]
        proc=subprocess.run(command,cwd=root,text=True,capture_output=True,timeout=120)
        assert proc.returncode==0,proc.stdout+'\n'+proc.stderr
        check=json.loads(receipt.read_text());assert check['status']=='PASS'
        after=snapshot(root);assert before==after,'verification mutated the extracted tree'
        result=dict(status='PASS',utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
              archive_name=archive.name,archive_sha256=digest(archive),archive_bytes=archive.stat().st_size,
              extracted_file_count=len(before),archive_entries=len(names),
              clean_temporary_directory=True,tree_unchanged=True,
              checked_files=sorted(before),receiver=check,
              subprocess_stdout=proc.stdout,subprocess_stderr=proc.stderr,
              elapsed_seconds=round(time.time()-start,6),
              evidence_level='same-author exact replay, not independent mathematical review')
    out.parent.mkdir(parents=True,exist_ok=True)
    out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(dict(status='PASS',archive_sha256=result['archive_sha256'],
          file_count=result['extracted_file_count'],tree_unchanged=True),indent=2))

if __name__=='__main__':main()
