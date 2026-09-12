#!/usr/bin/env python3
"""Replay only this release's new checks; do not rerun inherited long tails.
Python 3.10+ standard library. No network, no Lean, no external dependencies.
"""
from pathlib import Path
import hashlib,json,subprocess,sys,tempfile,time
ROOT=Path(__file__).resolve().parent

def digest(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def need(ok,msg):
    if not ok:raise RuntimeError(msg)
def main():
    need(__debug__,'Run without -O: the generation regressions use assertions.')
    start=time.perf_counter();result={'status':'RUNNING','evidence_level':'paper + exact arithmetic; not Lean','old_tail_replayed':False}
    sources=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for r in sources:
        p=(ROOT/r['copy']).resolve();need(p.is_relative_to(ROOT),'unsafe source path')
        need(digest(p)==r['sha256'],'frozen source changed: '+r['copy'])
    result['frozen_source_members']=len(sources)
    manifest=ROOT/'MANIFEST.json'
    if manifest.exists():
        files=json.loads(manifest.read_text())['files']
        for rel,sha in files.items():
            p=(ROOT/rel).resolve();need(p.is_relative_to(ROOT),'unsafe manifest path')
            need(p.is_file() and digest(p)==sha,'manifest mismatch: '+rel)
        result['manifest_members']=len(files)
    steps=[]
    for file in ('check_core.py','check_independent.py','check_mutations.py'):
        t=time.perf_counter()
        p=subprocess.run([sys.executable,str(ROOT/'code'/file)],capture_output=True,text=True,timeout=30)
        need(p.returncode==0,file+' failed:\n'+p.stdout+p.stderr)
        payload=json.loads(p.stdout);need(payload['status']=='PASS','step not accepted')
        steps.append({'script':file,'returncode':p.returncode,'seconds':round(time.perf_counter()-t,6),'result':payload})
    with tempfile.TemporaryDirectory(prefix='b699-d-new-evidence-') as tmp:
        p=subprocess.run([sys.executable,str(ROOT/'code/make_evidence.py'),tmp],capture_output=True,text=True,timeout=30)
        need(p.returncode==0,'regeneration failed: '+p.stderr)
        files=sorted(Path(tmp).glob('*.json'));need(len(files)==5,'wrong regenerated file count')
        for f in files:need(f.read_bytes()==(ROOT/'evidence'/f.name).read_bytes(),'regenerated mismatch: '+f.name)
        result['regenerated_files']=[f.name for f in files]
    result.update(status='PASS',steps=steps,seconds=round(time.perf_counter()-start,6))
    print(json.dumps(result,ensure_ascii=False,sort_keys=True))
if __name__=='__main__':
    try:main()
    except Exception as e:
        print(json.dumps({'status':'FAIL','error':str(e)},ensure_ascii=False));raise SystemExit(1)
