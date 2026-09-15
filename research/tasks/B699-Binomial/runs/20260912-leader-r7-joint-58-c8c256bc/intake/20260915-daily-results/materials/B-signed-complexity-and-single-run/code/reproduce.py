#!/usr/bin/env python3
"""Run only the new acceptance suite in an empty temporary output directory."""
from __future__ import annotations
import argparse,datetime,hashlib,json,platform,subprocess,sys,tempfile,time
from pathlib import Path

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def static(root):
    m=json.loads((root/'MANIFEST.json').read_text())
    for f,e in m['files'].items():
        p=root/f
        if not p.is_file() or p.stat().st_size!=e['bytes'] or sha(p)!=e['sha256']:raise ValueError('static mismatch: '+f)
    return {f:sha(root/f) for f in m['files']}

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
    root=Path(__file__).resolve().parents[1];rec=root/args.record
    if (rec/'reproduction.json').exists():raise SystemExit('Refuse to overwrite an existing record; choose a new --record.')
    rec.mkdir(parents=True,exist_ok=True);before=static(root);steps=[];start=time.monotonic()
    result={'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'python':sys.version,
            'platform':platform.platform(),'commands':steps,'historical_chain_run':False}
    try:
        with tempfile.TemporaryDirectory(prefix='b699-signed-') as temp:
            out=Path(temp)/'outputs';out.mkdir()
            for script in ['build.py','check.py','check_bad.py','check_sources.py']:
                cmd=[sys.executable,'-S','-B',str(root/'code'/script),'--out',str(out)]
                t=time.monotonic();proc=subprocess.run(cmd,capture_output=True,text=True,cwd=root)
                (rec/(script+'.stdout.txt')).write_text(proc.stdout)
                (rec/(script+'.stderr.txt')).write_text(proc.stderr)
                steps.append({'script':script,'command':cmd,'exit_code':proc.returncode,'elapsed_seconds':round(time.monotonic()-t,6),
                              'stdout_file':script+'.stdout.txt','stderr_file':script+'.stderr.txt'})
                if proc.returncode:raise RuntimeError('failed '+script)
            expected={p.name for p in (root/'outputs').glob('*.json')};actual={p.name for p in out.glob('*.json')}
            if expected!=actual:raise RuntimeError('output set differs')
            comparisons=[]
            for name in sorted(expected):
                a=out/name;b=root/'outputs'/name
                if a.read_bytes()!=b.read_bytes():raise RuntimeError('output differs: '+name)
                comparisons.append({'file':name,'sha256':sha(a),'bytes':a.stat().st_size,'byte_identical':True})
            result['outputs']=comparisons
        result['static_unchanged']=before==static(root)
        result['static_file_count']=len(before)
        result['status']='PASS'
    except Exception as exc:
        result['status']='FAIL';result['error']=repr(exc)
        raise
    finally:
        result['elapsed_seconds']=round(time.monotonic()-start,6)
        (rec/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,sort_keys=True,indent=2)+'\n')
    print(json.dumps({'status':result['status'],'commands':len(steps),'outputs':len(result['outputs']),
                      'static_files':len(before),'elapsed_seconds':result['elapsed_seconds']},sort_keys=True))
if __name__=='__main__':main()
