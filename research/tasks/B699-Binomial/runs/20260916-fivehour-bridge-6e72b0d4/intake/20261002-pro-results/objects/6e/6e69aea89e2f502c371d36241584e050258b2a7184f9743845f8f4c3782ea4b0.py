"""Extract to a fresh directory, check CRC/manifest, run receiver, check immutability."""
from __future__ import annotations
import argparse,hashlib,json,subprocess,sys,tempfile,zipfile
from pathlib import Path

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def snapshot(root):return {str(p.relative_to(root)):sha(p) for p in root.rglob('*') if p.is_file()}
def main():
    p=argparse.ArgumentParser();p.add_argument('archive',type=Path);p.add_argument('--output',type=Path,required=True)
    p.add_argument('--payload-only',action='store_true');a=p.parse_args()
    archive=a.archive.resolve();output=a.output.resolve()
    with tempfile.TemporaryDirectory(prefix='b699-t0-clean-') as tmp:
        base=Path(tmp);tree=base/'evidence';tree.mkdir()
        with zipfile.ZipFile(archive) as z:
            names=z.namelist();assert len(names)==len(set(names))
            for name in names:
                dest=(tree/name).resolve();assert dest.is_relative_to(tree.resolve())
                assert not name.endswith('/'),'Only ordinary file members expected.'
            assert z.testzip() is None;z.extractall(tree)
        before=snapshot(tree)
        cmd=[sys.executable,'-B',str(tree/'scripts/verify.py'),'--output',str(base/'verification.json')]
        if a.payload_only:cmd+=['--payload-only']
        proc=subprocess.run(cmd,cwd=tree,capture_output=True,text=True,timeout=180)
        if proc.returncode:
            raise RuntimeError(proc.stdout+'\n'+proc.stderr)
        verify=json.loads((base/'verification.json').read_text());after=snapshot(tree)
        assert before==after
        answer={'status':'PASS','archive_name':archive.name,'archive_sha256':sha(archive),
                'archive_bytes':archive.stat().st_size,'zip_members':len(names),'crc_all_members_pass':True,
                'fresh_temporary_directory':True,'extracted_tree_unchanged':True,
                'mode':'PAYLOAD_BEFORE_FINAL_MANIFEST' if a.payload_only else 'FINAL_ZIP_FULL_REPLAY',
                'receiver':verify,'stdout_sha256':hashlib.sha256(proc.stdout.encode()).hexdigest()}
    output.parent.mkdir(parents=True,exist_ok=True);output.write_text(json.dumps(answer,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps(answer,indent=2,ensure_ascii=False))
if __name__=='__main__':main()
