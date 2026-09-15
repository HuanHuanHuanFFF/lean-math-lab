"""Rebuild only the NEW mathematical evidence in a fresh temporary directory."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,tempfile,time,datetime,importlib.util
root=Path(__file__).resolve().parents[1]
sp=importlib.util.spec_from_file_location('manifest',root/'verify_manifest.py')
m=importlib.util.module_from_spec(sp);sp.loader.exec_module(m)
p=argparse.ArgumentParser();p.add_argument('--record',default='replay/local');args=p.parse_args()
record=root/args.record;record.mkdir(parents=True,exist_ok=True)
count_before=m.verify(root);manifest_before=(root/'MANIFEST.json').read_bytes()
scripts=['generate.py','check.py','algebra.py','family.py','local_obstruction.py','bad_inputs.py','check_sources.py']
files=['certificate.json','independent-check.json','algebra.json','family.json','local-obstruction.json','bad-inputs.json','sources.json']
start=time.perf_counter();runs=[];status='PASS'
with tempfile.TemporaryDirectory(prefix='b699-normalized-square-') as tmp:
    out=Path(tmp)
    for i,script in enumerate(scripts):
        cmd=[sys.executable,'-S','-B',str(root/'code'/script),str(out)]
        t=time.perf_counter();proc=subprocess.run(cmd,cwd=root,capture_output=True,text=True)
        log=f'{i+1:02d}-{Path(script).stem}.log';(record/log).write_text(proc.stdout+proc.stderr)
        runs.append({'command':[sys.executable,'-S','-B','code/'+script,'<fresh-temporary-output>'],
                     'exit_code':proc.returncode,'seconds':time.perf_counter()-t,'log':log})
        if proc.returncode:status='FAIL';break
    comparisons=[]
    if status=='PASS':
        for name in files:
            old=(root/'outputs'/name).read_bytes();new=(out/name).read_bytes()
            comparisons.append({'file':name,'byte_identical':old==new,'sha256':hashlib.sha256(new).hexdigest(),'bytes':len(new)})
        if not all(x['byte_identical'] for x in comparisons):status='FAIL'
    count_after=m.verify(root)
    assert count_before==count_after and manifest_before==(root/'MANIFEST.json').read_bytes()
    result={'status':status,'timestamp_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'python':sys.version,'fresh_output_directory':True,'historical_math_replay':False,
            'commands':runs,'output_comparisons':comparisons,'static_files_before':count_before,
            'static_files_after':count_after,'seconds':time.perf_counter()-start}
    (record/'reproduction.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
print(json.dumps({'status':status,'commands':len(runs),'outputs':len(comparisons),'seconds':result['seconds']}))
if status!='PASS':raise SystemExit(1)
