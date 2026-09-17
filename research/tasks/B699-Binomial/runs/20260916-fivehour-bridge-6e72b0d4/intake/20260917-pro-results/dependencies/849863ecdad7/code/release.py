"""Package this completed round and replay only its short new checks."""
from pathlib import Path
import hashlib,json,zipfile,subprocess,sys,time,datetime
ROOT=Path(__file__).resolve().parents[1]
OUT=Path('/mnt/data')
NAME='B699-ProA-i9-H012-algebraic193-evidence-20260916'
ARCHIVE=OUT/(NAME+'.zip')
PREFIX='B699-ProA-H012-algebraic193-20260916'

def files():
    result=[]
    for p in ROOT.rglob('*'):
        if not p.is_file():continue
        rel=p.relative_to(ROOT)
        if '__pycache__' in rel.parts or p.suffix=='.pyc' or p.name=='MANIFEST.json':continue
        if rel.parts[0]=='code' and p.suffix not in ['.py','.cpp']:continue
        result.append(p)
    return sorted(result)

members=files()
manifest={'algorithm':'SHA256','self_excluded':True,'members':{
 str(p.relative_to(ROOT)):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
 for p in members}}
(ROOT/'MANIFEST.json').write_text(json.dumps(manifest,indent=2,ensure_ascii=False))
with zipfile.ZipFile(ARCHIVE,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as z:
    for p in members+[ROOT/'MANIFEST.json']:z.write(p,PREFIX+'/'+str(p.relative_to(ROOT)))
with zipfile.ZipFile(ARCHIVE) as z:
    assert z.testzip() is None
    n_members=len(z.namelist())
    clean=OUT/'b699-clean-algebraic193-20260916'
    if clean.exists():raise SystemExit('Refusing to replace existing clean extraction.')
    z.extractall(clean)
cr=clean/PREFIX

def check_hashes():
    for rel,item in manifest['members'].items():
        p=cr/rel;assert p.stat().st_size==item['bytes']
        assert hashlib.sha256(p.read_bytes()).hexdigest()==item['sha256']
check_hashes()
log=OUT/'b699-algebraic193-clean-replay-20260916'
start=time.perf_counter()
proc=subprocess.run([sys.executable,'-B',str(cr/'code/reproduce.py'),'--out',str(log)],text=True,capture_output=True)
wall=time.perf_counter()-start
assert proc.returncode==0,proc.stdout+'\n'+proc.stderr
check_hashes()
summary=json.loads((log/'summary.json').read_text())
receipt={'status':'PASS_ARCHIVE_HASHES_AND_CLEAN_NEW_REPLAY','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
         'archive':str(ARCHIVE),'archive_bytes':ARCHIVE.stat().st_size,'archive_sha256':hashlib.sha256(ARCHIVE.read_bytes()).hexdigest(),
         'zip_members':n_members,'data_members_hashed':len(manifest['members']),
         'clean_replay_status':summary['status'],'clean_replay_seconds':summary['seconds'],'subprocess_wall_seconds':wall,
         'new_kernel_coefficients_computed':False,'large_matrix_generated':False,'new_resultant_checked':False,
         'historical_mathematics_replayed':False,'Lean':False,'stdout':proc.stdout.strip()}
receipt_path=OUT/'B699-ProA-i9-H012-algebraic193-release-receipt-20260916.json'
receipt_path.write_text(json.dumps(receipt,indent=2,ensure_ascii=False))
(OUT/'B699-ProA-i9-H012-algebraic193-report-20260916.md').write_bytes((ROOT/'REPORT.md').read_bytes())
print(json.dumps({k:v for k,v in receipt.items() if k!='stdout'},indent=2))
