#!/usr/bin/env python3
"""Package this source tree, verify every member in a fresh extraction, replay new checks."""
from pathlib import Path
import argparse,hashlib,json,subprocess,tempfile,time,zipfile,datetime

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--archive',required=True,type=Path);ap.add_argument('--receipt',required=True,type=Path);a=ap.parse_args()
    root=Path(__file__).resolve().parents[1]
    paths=sorted(p for p in root.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.name!='SHA256SUMS')
    (root/'SHA256SUMS').write_text(''.join(f'{sha(p)}  {p.relative_to(root).as_posix()}\n' for p in paths))
    with zipfile.ZipFile(a.archive,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in paths+[root/'SHA256SUMS']:z.write(p,(Path(root.name)/p.relative_to(root)).as_posix())
    with tempfile.TemporaryDirectory(prefix='b699-m35-clean-',dir=str(a.archive.parent)) as td:
        td=Path(td)
        with zipfile.ZipFile(a.archive) as z:
            for info in z.infolist():
                target=(td/info.filename).resolve()
                if not target.is_relative_to(td.resolve()):raise ValueError('Unsafe archive member')
            z.extractall(td)
        extracted=td/root.name;verified=0
        for line in (extracted/'SHA256SUMS').read_text().splitlines():
            h,rel=line.split('  ',1);assert sha(extracted/rel)==h;verified+=1
        start=time.perf_counter()
        cmd=['python3','-B',str(extracted/'code/reproduce.py'),'--out',str(td/'new-replay')]
        proc=subprocess.run(cmd,text=True,capture_output=True,timeout=45)
        elapsed=time.perf_counter()-start
        assert proc.returncode==0,(proc.stdout,proc.stderr)
        payload=json.loads((td/'new-replay/REPLAY.json').read_text())
        receipt={'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
                 'archive_path':str(a.archive),'archive_sha256':sha(a.archive),'archive_bytes':a.archive.stat().st_size,
                 'payload_files_verified':verified,'zip_members':verified+1,'hash_manifest':'SHA256SUMS (covers every payload member; archive hash also covers the manifest)',
                 'clean_extract':True,'replay_exit_code':proc.returncode,'replay_status':payload['status'],
                 'full_process_wall_seconds':elapsed,'checker_internal_seconds':payload['seconds'],
                 'stdout':proc.stdout,'stderr':proc.stderr,'finite_summary':{'saturation':payload['saturation'],'budgets':payload['budgets'],
                     'certificate_mutations_rejected':payload['certificate_mutations_rejected']},
                 'scope':'New finite obligations only; no replay of frozen B699 source chain, no Lean or independent peer review.'}
    a.receipt.write_text(json.dumps(receipt,indent=2,ensure_ascii=False))
    print(json.dumps({k:receipt[k] for k in ('archive_path','archive_sha256','archive_bytes','payload_files_verified','replay_status','full_process_wall_seconds')},indent=2))
if __name__=='__main__':main()
