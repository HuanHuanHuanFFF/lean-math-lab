#!/usr/bin/env python3
"""Extract the FINAL ZIP into a fresh directory, verify final hashes, run replay."""
import argparse,datetime,hashlib,json,subprocess,sys,tempfile,zipfile
from pathlib import Path,PurePosixPath
sys.set_int_max_str_digits(0)
def main():
    ap=argparse.ArgumentParser();ap.add_argument('zip',type=Path);ap.add_argument('--receipt',type=Path,required=True);a=ap.parse_args()
    zipsha=hashlib.sha256(a.zip.read_bytes()).hexdigest()
    with tempfile.TemporaryDirectory(prefix='b699-r9-final-clean-') as td:
        dst=Path(td)
        with zipfile.ZipFile(a.zip) as z:
            names=z.namelist();top={PurePosixPath(n).parts[0] for n in names}
            if len(top)!=1:raise ValueError('archive must have one root')
            for n in names:
                p=PurePosixPath(n)
                if p.is_absolute() or '..' in p.parts:raise ValueError('unsafe archive path')
            if len(names)!=len(set(names)):raise ValueError('duplicate archive member')
            z.extractall(dst)
        root=dst/next(iter(top));covered=[]
        for line in (root/'SHA256SUMS').read_text().splitlines():
            want,rel=line.split(None,1);rel=rel.strip().lstrip('*');p=root/rel
            if hashlib.sha256(p.read_bytes()).hexdigest()!=want:raise RuntimeError('final hash mismatch: '+rel)
            covered.append(rel)
        actual={str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()}
        if actual!=set(covered)|{'SHA256SUMS'}:raise RuntimeError('final manifest does not cover all files')
        replay_path=dst/'final_payload_replay.json'
        proc=subprocess.run([sys.executable,str(root/'scripts/replay.py'),'--receipt',str(replay_path)],capture_output=True,text=True,timeout=180)
        if proc.returncode:raise RuntimeError(proc.stdout+'\n'+proc.stderr)
        payload=json.loads(replay_path.read_text())
        result={'status':'PASS','timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'archive_name':a.zip.name,'archive_sha256':zipsha,'archive_member_count':len(names),
            'final_hash_entries_verified':len(covered),'fresh_extraction':True,'payload_replay':payload,
            'replay_stdout':proc.stdout,'replay_stderr':proc.stderr,'repository_actions':False,
            'evidence_note':'Actual clean extraction and arithmetic replay; no Lean, no external independent mathematical review.'}
    a.receipt.parent.mkdir(parents=True,exist_ok=True);a.receipt.write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({k:result[k] for k in ['status','archive_name','archive_sha256','archive_member_count','final_hash_entries_verified']},indent=2))
if __name__=='__main__':main()
