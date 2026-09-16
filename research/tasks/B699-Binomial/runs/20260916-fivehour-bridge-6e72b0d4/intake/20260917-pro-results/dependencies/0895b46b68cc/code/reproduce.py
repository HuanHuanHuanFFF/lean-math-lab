"""Rebuild only this round in an empty directory. Never rerun old evidence."""
import argparse,hashlib,json,os,platform,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def verify():
    m=json.loads((ROOT/'MANIFEST.json').read_text())
    for f in m['files']:
        b=(ROOT/f['path']).read_bytes()
        if len(b)!=f['bytes'] or hashlib.sha256(b).hexdigest()!=f['sha256']:
            raise ValueError('static mismatch '+f['path'])
    for f in json.loads((ROOT/'sources/SOURCE_MAP.json').read_text()):
        b=(ROOT/f['package_path']).read_bytes()
        if len(b)!=f['bytes'] or hashlib.sha256(b).hexdigest()!=f['sha256']:
            raise ValueError('source mismatch '+f['package_path'])
    return len(m['files'])

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
    target=ROOT/args.record;target.mkdir(parents=True,exist_ok=True)
    start=time.monotonic();before=verify();records=[];comparisons=[]
    with tempfile.TemporaryDirectory(prefix='b699-critical-square-') as temp:
        out=Path(temp)
        jobs=[['generate.py','--out',str(out)],
              ['identities.py','--out',str(out/'identities.json')],
              ['check.py','--out',str(out)],
              ['bad_inputs.py','--inputs',str(out),'--out',str(out/'bad_inputs.json')],
              ['probe_square_projection.py','--out',str(out/'square_projection_probe.json')]]
        for i,job in enumerate(jobs,1):
            cmd=[sys.executable,'-S','-B',str(ROOT/'code'/job[0]),*job[1:]]
            t=time.monotonic();res=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True,
                     env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
            log=f'{i:02d}-{job[0]}.log';(target/log).write_text(res.stdout+res.stderr)
            records.append(dict(command=cmd,exit_code=res.returncode,seconds=time.monotonic()-t,log=log))
            if res.returncode:
                (target/'reproduction.json').write_text(json.dumps(dict(status='FAILED',commands=records),indent=2)+'\n')
                raise SystemExit(res.returncode)
        for name in ['bottom.json','regression.json','identities.json','bad_inputs.json','square_projection_probe.json']:
            a=(out/name).read_bytes();b=(ROOT/'outputs'/name).read_bytes()
            comparisons.append(dict(file=name,bytes=len(a),sha256=hashlib.sha256(a).hexdigest(),byte_equal=a==b))
            if a!=b:raise AssertionError('nonidentical output '+name)
    after=verify()
    report=dict(status='PASS',python=platform.python_version(),platform=platform.platform(),
                static_files_before=before,static_files_after=after,commands=records,
                comparisons=comparisons,seconds=time.monotonic()-start,
                boundary='new exact checks only; no Lean, old replay, or independent human review')
    (target/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(dict(status='PASS',commands=len(records),outputs=len(comparisons),static_files=after,seconds=report['seconds'])))
if __name__=='__main__':main()
