"""Build an archive, verify every manifest member, and replay from a clean extraction."""
from pathlib import Path
from zipfile import ZipFile,ZIP_DEFLATED,ZIP_STORED
import hashlib,json,platform,shutil,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parents[1]
OUT=ROOT.parent
ARCHIVE=OUT/'B699-ProA-i9-double-high-fibres-evidence-20260913.zip'
RECEIPT=OUT/'B699-ProA-i9-double-high-fibres-release-receipt-20260913.json'

def digest(path):
 h=hashlib.sha256()
 with path.open('rb') as f:
  for b in iter(lambda:f.read(1<<20),b''):h.update(b)
 return h.hexdigest()

def main():
 started=time.perf_counter()
 files=sorted(p for p in ROOT.rglob('*') if p.is_file() and '__pycache__' not in p.parts and p.suffix!='.pyc' and p.name!='SHA256SUMS')
 # Preserve frozen58/SHA256SUMS as ordinary original data; exclude only top-level self.
 frozen=ROOT/'frozen58/SHA256SUMS'
 if frozen.is_file() and frozen not in files: files.append(frozen);files.sort()
 manifest=''.join(f'{digest(p)}  {p.relative_to(ROOT).as_posix()}\n' for p in files)
 (ROOT/'SHA256SUMS').write_text(manifest)
 with ZipFile(ARCHIVE,'w') as z:
  for p in files+[ROOT/'SHA256SUMS']:
   method=ZIP_STORED if p.suffix=='.zip' else ZIP_DEFLATED
   z.write(p,arcname=ROOT.name+'/'+p.relative_to(ROOT).as_posix(),compress_type=method,compresslevel=None if method==ZIP_STORED else 6)
 clean=Path(tempfile.mkdtemp(prefix='b699-proa-clean-',dir=OUT))
 with ZipFile(ARCHIVE) as z:
  assert z.testzip() is None
  entries=z.namelist(); prefix=ROOT.name+'/'
  assert all(n.startswith(prefix) and '..' not in Path(n).parts for n in entries)
  lines=z.read(prefix+'SHA256SUMS').decode().splitlines()
  for line in lines:
   expected,name=line.split('  ',1)
   h=hashlib.sha256()
   with z.open(prefix+name) as f:
    for b in iter(lambda:f.read(1<<20),b''):h.update(b)
   assert h.hexdigest()==expected,name
  assert len(lines)+1==len(entries)
  z.extractall(clean)
 replay_root=clean/ROOT.name
 run=subprocess.run([sys.executable,str(replay_root/'verify.py'),'--log-dir','logs/clean-replay'],cwd=replay_root,text=True,capture_output=True,timeout=60)
 assert run.returncode==0,(run.stdout,run.stderr)
 acceptance=json.loads((replay_root/'logs/clean-replay/acceptance.json').read_text())
 assert acceptance['status']=='PASS_NEW_DOUBLE_HIGH_FIBRE_OBLIGATIONS'
 # The separately linked report is exactly the report in the archive.
 linked=OUT/'B699-ProA-i9-double-high-fibres-report-20260913.md'
 shutil.copyfile(ROOT/'REPORT.md',linked)
 info=json.loads((ROOT/'SOURCE_INPUT.json').read_text())
 assert digest(ROOT/info['copied_original_bytes'])==info['sha256']
 receipt={'status':'PASS_ARCHIVE_MANIFEST_AND_CLEAN_NEW_OBLIGATION_REPLAY',
          'archive':ARCHIVE.name,'bytes':ARCHIVE.stat().st_size,'sha256':digest(ARCHIVE),
          'members':len(entries),'manifest_members_checked':len(lines),'zip_crc':'PASS',
          'report':linked.name,'report_sha256':digest(linked),'frozen_input_sha256':info['sha256'],
          'clean_replay':acceptance,'clean_stdout':run.stdout,'python':platform.python_version(),
          'old_heavy_replayed':False,'Lean':'NOT_RUN','R7':[3,4,5,6,7,8,9],
          'families':58,'final_outer_exponent_bound':False,'release_check_seconds':time.perf_counter()-started}
 RECEIPT.write_text(json.dumps(receipt,indent=2)+'\n')
 print(json.dumps({k:receipt[k] for k in ['status','bytes','members','manifest_members_checked','sha256','release_check_seconds']},indent=2))
 print(run.stdout)

if __name__=='__main__':main()
