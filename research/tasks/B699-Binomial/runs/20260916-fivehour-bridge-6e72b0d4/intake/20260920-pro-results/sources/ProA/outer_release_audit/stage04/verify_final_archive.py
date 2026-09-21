from pathlib import Path
import zipfile,json,hashlib,subprocess,os,datetime,time
zip_path=Path('/mnt/data/B699-ProA-i9-LOC89-TRACE-EDGE10-H107-evidence-20260920.zip')
base=Path('/mnt/data/b699_round4/final-exit-checked-release')
if base.exists():raise RuntimeError('final check directory already exists')
base.mkdir();start=datetime.datetime.now(datetime.timezone.utc).isoformat()
with zipfile.ZipFile(zip_path) as z:
    names=z.namelist();roots={n.split('/')[0] for n in names}
    if len(roots)!=1:raise RuntimeError('multiple archive roots')
    for n in names:
        if not (base/n).resolve().is_relative_to(base.resolve()):raise RuntimeError('unsafe path')
    z.extractall(base)
root=base/next(iter(roots));env=dict(os.environ,OPENBLAS_NUM_THREADS='1',PYTHONDONTWRITEBYTECODE='1')
checkcmd=['python','-B',str(root/'code/check_manifest.py'),'--root',str(root)]
before=subprocess.run(checkcmd,capture_output=True,text=True,env=env);(base/'manifest_before.log').write_text(before.stdout+before.stderr)
if before.returncode:raise RuntimeError('initial manifest failure')
cmd=['python','-B',str(root/'code/reproduce.py'),'--out',str(base/'replay'),'--workers','3','--compare']
with (base/'replay.log').open('w') as f:run=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
after=subprocess.run(checkcmd,capture_output=True,text=True,env=env);(base/'manifest_after.log').write_text(after.stdout+after.stderr)
if run.returncode or after.returncode:raise RuntimeError(f'replay / post-hash failed: {run.returncode}, {after.returncode}')
replay=json.loads((base/'replay/REPLAY_RECEIPT.json').read_text());acc=json.loads((base/'replay/ACCEPTANCE.json').read_text())
if replay['comparison']!={'files':19,'status':'IDENTICAL'}:raise RuntimeError('missing full byte comparison')
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
receipt={'status':'PASS_FINAL_ARCHIVE_CLEAN_REPLAY','archive_name':zip_path.name,'archive_path':str(zip_path),'archive_sha256':sha(zip_path),'archive_bytes':zip_path.stat().st_size,
 'archive_members':len(names),'empty_directory_created':str(base),'started_utc':start,'finished_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
 'manifest_check_before':{'command':checkcmd,'actual_subprocess_exit_code':before.returncode,**json.loads(before.stdout)},
 'full_replay_command':cmd,'actual_subprocess_exit_code':run.returncode,'replay_status':replay['status'],'deterministic_output_comparison':replay['comparison'],
 'manifest_check_after':{'actual_subprocess_exit_code':after.returncode,**json.loads(after.stdout)},
 'actual_replay_log_sha256':sha(base/'replay.log'),'actual_replay_receipt_sha256':sha(base/'replay/REPLAY_RECEIPT.json'),
 'deterministic_outputs':replay['deterministic_outputs'],'accepted_scope':acc,'frozen_inputs_grade_unchanged':True,'external_independent_mathematical_review':False}
out=Path('/mnt/data/B699-ProA-i9-LOC89-TRACE-release-receipt-20260920.json');out.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'status':receipt['status'],'actual_exit_code':run.returncode,'files':receipt['manifest_check_after']['files'],'compared_outputs':replay['comparison']['files'],'zip_sha256':receipt['archive_sha256'],'bytes':receipt['archive_bytes'],'receipt':str(out)},ensure_ascii=False,indent=2))
