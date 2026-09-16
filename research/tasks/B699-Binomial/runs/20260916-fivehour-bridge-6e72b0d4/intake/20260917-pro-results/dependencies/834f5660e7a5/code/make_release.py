"""Package current new run, verify bytes, and replay in a clean directory."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,tempfile,time,zipfile,shutil,datetime
ROOT=Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def members(root):
    return sorted(p for p in root.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.suffix!='.pyc' and p.name!='SHA256SUMS.json')
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--out-dir',type=Path,required=True);args=ap.parse_args();out=args.out_dir.resolve();out.mkdir(parents=True,exist_ok=True)
    stem='B699-ProA-i9-mixed-quartic61';stamp='20260916';archive=out/f'{stem}-evidence-{stamp}.zip'
    paths=members(ROOT);manifest={str(p.relative_to(ROOT)):{'bytes':p.stat().st_size,'sha256':sha(p)} for p in paths}
    mf=ROOT/'SHA256SUMS.json';mf.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')
    with zipfile.ZipFile(archive,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
        for p in paths+[mf]:z.write(p,str(Path(ROOT.name)/p.relative_to(ROOT)))
    clean=Path(tempfile.mkdtemp(prefix='b699-mixed61-clean-',dir=out))
    with zipfile.ZipFile(archive) as z:
        assert z.testzip() is None;z.extractall(clean);count=len(z.infolist())
    cr=clean/ROOT.name
    def check():
        assert {str(p.relative_to(cr)) for p in members(cr)}==set(manifest)
        for rel,info in manifest.items():
            p=cr/rel;assert p.stat().st_size==info['bytes'] and sha(p)==info['sha256']
    check();st=time.perf_counter();proc=subprocess.run([sys.executable,'-B',str(cr/'code/reproduce.py'),'--out',str(clean/'new-replay-output')],text=True,capture_output=True,timeout=120)
    duration=time.perf_counter()-st
    if proc.returncode:raise RuntimeError(proc.stdout+'\n'+proc.stderr)
    summary=json.loads((clean/'new-replay-output/summary.json').read_text());check()
    receipt={'status':'PASS_ARCHIVE_AND_CLEAN_NEW_REPLAY','created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'archive':str(archive),'archive_bytes':archive.stat().st_size,'archive_sha256':sha(archive),'archive_members':count,'data_members_hashed':len(manifest),'zip_crc_check':'PASS','member_hashes_before_after':'PASS','clean_new_replay_wall_seconds':duration,'clean_new_replay_summary':summary,'historical_math_replayed':False,'Lean':False,'original_kernel_recovered':False,'clean_directory':str(clean)}
    rp=out/f'{stem}-release-receipt-{stamp}.json';rp.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n')
    report=out/f'{stem}-report-{stamp}.md';shutil.copyfile(ROOT/'REPORT.md',report)
    print(json.dumps({k:receipt[k] for k in ['status','archive','archive_bytes','archive_members','data_members_hashed','archive_sha256','clean_new_replay_wall_seconds']},ensure_ascii=False))
if __name__=='__main__':main()
