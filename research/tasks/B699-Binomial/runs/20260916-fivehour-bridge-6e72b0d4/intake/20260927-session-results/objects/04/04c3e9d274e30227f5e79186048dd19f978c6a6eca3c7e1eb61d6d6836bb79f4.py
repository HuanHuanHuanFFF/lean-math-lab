import hashlib,json,subprocess,sys,tempfile,time,zipfile,platform
from pathlib import Path
zip_path=Path(sys.argv[1]).resolve();receipt_path=Path(sys.argv[2]).resolve();label=sys.argv[3];t=time.monotonic();work=Path(tempfile.mkdtemp(prefix='b699_'+label+'_',dir='/mnt/data'))
with zipfile.ZipFile(zip_path)as z:
 for i in z.infolist():
  p=Path(i.filename);assert not p.is_absolute()and '..'not in p.parts
 z.extractall(work)
roots=[p for p in work.iterdir()if p.is_dir()];assert len(roots)==1;root=roots[0]
out=work/'full_replay';steps=[]
for name,cmd in [('manifest',[sys.executable,str(root/'code/verify_manifest.py')]),('full_replay',[sys.executable,str(root/'code/replay.py'),'--out',str(out),'--jobs','2']),('compare',[sys.executable,str(root/'code/compare_replay.py'),str(out)])]:
 with (work/(name+'.log')).open('w')as f:r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,cwd=work)
 steps.append({'step':name,'command':cmd,'exit_code':r.returncode,'log_path':str(work/(name+'.log'))})
 if r.returncode:raise RuntimeError((name,r.returncode,str(work)))
j=json.loads((out/'REPLAY_RECEIPT.json').read_text());assert j['summary']['output_states']==106
receipt={'status':'PASS_CLEAN_EXTRACT_FULL_REPLAY','archive':zip_path.name,'archive_sha256':hashlib.sha256(zip_path.read_bytes()).hexdigest(),'archive_bytes':zip_path.stat().st_size,'archive_entries':len(zipfile.ZipFile(zip_path).infolist()),'fresh_extraction_directory':str(work),'manifest_sha256':hashlib.sha256((root/'MANIFEST.sha256').read_bytes()).hexdigest(),'manifest_verified':True,'full_replay_exit_code':0,'all_deterministic_certificates_byte_identical':True,'certificate_files':len(j['deterministic_certificates']),'certificate_sha256':j['deterministic_certificates'],'replay_source_code_sha256':j['code_sha256'],'steps':steps,'summary':j['summary'],'negative_controls':j['negative_controls'],'duration_seconds':time.monotonic()-t,'platform':platform.platform(),'network_used':False,'repository_operations':False,'external_independent_mathematical_review':False}
receipt_path.write_text(json.dumps(receipt,ensure_ascii=False,indent=2)+'\n');print(json.dumps({'status':receipt['status'],'receipt':str(receipt_path),'work':str(work),'seconds':receipt['duration_seconds']},ensure_ascii=False))
