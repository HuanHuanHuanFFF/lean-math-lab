from pathlib import Path
import zipfile,hashlib,json,shutil
BASE=Path('/mnt/data'); root=BASE/'B699-ProA-S5Q-TAIL18-FRONTIER34-20260927-evidence'
for d in ('code','inputs/adopted_frontier43','inputs/adopted_LOW_T43','discovery','verification'):(root/d).mkdir(parents=True,exist_ok=True)
paths={'FRONTIER43':BASE/'B699-ProA-LATE10-TAIL8-H125-FRONTIER43-20260926-evidence.zip','LOW_T43':BASE/'B699-ProA-T10-S5-FIXED4-FRONTIER50-20260926-evidence.zip'}
bind={'archives':{},'files':{}}
for key,p in paths.items():
 z=zipfile.ZipFile(p);prefix=z.namelist()[0].split('/')[0]+'/';m=z.read(prefix+'MANIFEST.sha256').decode();n=0
 for l in m.splitlines():
  digest,rel=l.split(None,1);rel=rel.strip();assert hashlib.sha256(z.read(prefix+rel)).hexdigest()==digest,(key,rel);n+=1
 bind['archives'][key]={'filename':p.name,'sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'manifest_entries_checked':n}
 def take(src,dst):
  b=z.read(prefix+src);(root/'inputs'/dst).write_bytes(b);bind['files'][dst]={'source_archive':key,'member':prefix+src,'sha256':hashlib.sha256(b).hexdigest()}
 ad='adopted_frontier43' if key=='FRONTIER43'else'adopted_LOW_T43'
 for f in ('PROOFS.md','REPORT.md','HANDOFF.md','FAILURE_BOUNDARIES.md','SESSION_STATE.json','SOURCE_ADOPTION.md'):take(f,ad+'/'+f)
 take('MANIFEST.sha256',ad+'/UPSTREAM_MANIFEST.sha256')
 if key=='FRONTIER43':
  for src,dst in [('certificates/ledger/stage2_global.txt','signatures643.txt'),('certificates/ledger/frontier43.tsv','frontier43.tsv'),('certificates/ledger/new_h125_complete_cpp.txt','baseline_h125_complete.txt'),('certificates/ledger/next_h125_complete_summary.json','baseline_h125_summary.json'),('inputs/OVERVIEW-2026-09-22.md.txt','OVERVIEW-2026-09-22.md.txt')]:take(src,dst)
 else:take('certificates/ledger/LOW_T43_cover.json','LOW_T43_cover.json')
D=BASE/'research1787'
for p in (D/'code').glob('*'):
 if p.is_file():shutil.copyfile(p,root/'code'/p.name)
for p in (D/'discovery').glob('*.py'):shutil.copyfile(p,root/'discovery'/p.name)
# Recorded failed discovery receipt is retained, not used to certify mathematics.
for n in ('geometry_probe_controller.log','geometry_finish_controller.log','module_probe_controller.log'):
 shutil.copyfile(D/'logs'/n,root/'discovery'/n)
(root/'inputs/BASELINE_BINDINGS.json').write_text(json.dumps(bind,indent=2,ensure_ascii=False)+'\n')
files={str(p.relative_to(root/'inputs')):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted((root/'inputs').rglob('*'))if p.is_file()}
(root/'inputs/SOURCE_BYTES.json').write_text(json.dumps(files,indent=2)+'\n')
# Code provenance, including the sole scope-check edit in the q18 receiver.
code_orig={}
S=BASE/'work_source50/B699-ProA-T10-S5-FIXED4-FRONTIER50-20260926-evidence'; F=BASE/'work_source43/B699-ProA-LATE10-TAIL8-H125-FRONTIER43-20260926-evidence'
for p in (root/'code').glob('*'):
 if not p.is_file():continue
 sp=(S if p.name in ('module.cpp','module_receiver.cpp') else F)/'code'/p.name
 if sp.exists():code_orig[p.name]={'source_archive':'LOW_T43'if p.name.startswith('module')else'FRONTIER43','source_sha256':hashlib.sha256(sp.read_bytes()).hexdigest(),'current_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'change':'q scope changed from 10..12 to exactly 18; arithmetic unchanged'if p.name=='receive_six.cpp'else'exact byte copy; new round inputs only'}
(root/'CODE_PROVENANCE.json').write_text(json.dumps(code_orig,indent=2)+'\n')
print(root,bind['archives'])
