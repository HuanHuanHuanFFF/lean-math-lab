#!/usr/bin/env python3
"""Package this evidence, verify every byte after extraction, replay cleanly."""
import argparse,hashlib,json,subprocess,sys,time,zipfile
from pathlib import Path
from datetime import datetime,timezone
ROOT=Path(__file__).resolve().parents[1]
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--archive',required=True);ap.add_argument('--work',required=True);ap.add_argument('--receipt',required=True);a=ap.parse_args()
    archive,work,receipt=map(Path,(a.archive,a.work,a.receipt))
    if not all(p.is_absolute() for p in (archive,work,receipt)):ap.error('all output paths must be absolute')
    if work.exists():ap.error('--work must not already exist')
    payload=sorted(p for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.suffix!='.pyc' and p.name!='SHA256SUMS')
    (ROOT/'SHA256SUMS').write_text(''.join(sha(p)+'  '+p.relative_to(ROOT).as_posix()+'\n' for p in payload))
    members=payload+[ROOT/'SHA256SUMS']
    with zipfile.ZipFile(archive,'w',zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in members:z.write(p,ROOT.name+'/'+p.relative_to(ROOT).as_posix())
    work.mkdir(parents=True)
    with zipfile.ZipFile(archive) as z:
        assert z.testzip() is None
        z.extractall(work/'unpacked')
    extracted=work/'unpacked'/ROOT.name
    for line in (extracted/'SHA256SUMS').read_text().splitlines():
        expected,rel=line.split('  ',1)
        assert sha(extracted/rel)==expected,rel
    assert len(list(extracted.rglob('*')))>len(payload)
    cmd=[sys.executable,'-B',str(extracted/'code/reproduce.py'),'--out',str(work/'replay')]
    start=time.monotonic();run=subprocess.run(cmd,cwd=extracted,text=True,capture_output=True,timeout=90)
    elapsed=time.monotonic()-start
    (work/'stdout.txt').write_text(run.stdout);(work/'stderr.txt').write_text(run.stderr)
    assert run.returncode==0,run.stderr[-4000:]
    replay=json.loads((work/'replay/REPLAY.json').read_text())
    assert replay['status']=='PASS_NEW_QUINTIC33_REPLAY'
    out={'status':'PASS_CLEAN_QUINTIC33_RELEASE','timestamp_utc':datetime.now(timezone.utc).isoformat(),
         'archive':str(archive),'archive_bytes':archive.stat().st_size,'archive_sha256':sha(archive),
         'payload_files_checked':len(payload),'archive_members':len(members),'sha256sums_sha256':sha(extracted/'SHA256SUMS'),
         'proof_sha256':sha(extracted/'PROOFS.md'),'clean_extraction':str(extracted),
         'replay_command':cmd,'replay_returncode':run.returncode,'process_elapsed_seconds':elapsed,
         'checker_elapsed_seconds':replay['elapsed_seconds'],'replay_status':replay['status'],
         'replay_json':str(work/'replay/REPLAY.json'),'replay_sha256':sha(work/'replay/REPLAY.json'),
         'stdout':run.stdout,'evidence_grade':'New author paper proofs and exact computational obligations; no old-chain replay, Lean, or independent external full review.'}
    receipt.write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n')
    print(json.dumps(out,indent=2,ensure_ascii=False))
if __name__=='__main__':main()
