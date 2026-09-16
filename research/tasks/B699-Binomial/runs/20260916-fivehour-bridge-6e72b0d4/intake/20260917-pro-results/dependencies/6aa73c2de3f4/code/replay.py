"""Replay only this release. Old source ZIPs are hash checked, never executed."""
import argparse,hashlib,json,os,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def sha(p):return hashlib.sha256(Path(p).read_bytes()).hexdigest()
def normalized(x):
    if isinstance(x,dict):return {k:normalized(v)for k,v in x.items()if k not in ('seconds','python_version')}
    if isinstance(x,list):return [normalized(v)for v in x]
    return x

def main(out):
    out=Path(out).resolve()
    if out==ROOT or ROOT in out.parents:raise ValueError('Output must be outside the frozen package')
    out.mkdir(parents=True,exist_ok=True);start=time.monotonic()
    sm=json.loads((ROOT/'sources/SOURCE_MAP.json').read_text())
    for rec in sm:
        p=ROOT/rec['stored_path'];assert p.stat().st_size==rec['bytes'] and sha(p)==rec['sha256']
    manifest=ROOT/'MANIFEST.json'
    manifest_ok=None
    if manifest.exists():
        entries=json.loads(manifest.read_text())['files'];expected={x['path']for x in entries}
        actual={str(p.relative_to(ROOT))for p in ROOT.rglob('*')if p.is_file()and p!=manifest and '__pycache__'not in p.parts}
        assert actual==expected
        for x in entries:
            p=ROOT/x['path'];assert p.stat().st_size==x['bytes']and sha(p)==x['sha256']
        manifest_ok=True
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');stages=[]
    runs=[('generate.py','polynomials.json'),('verify.py','verification.json'),('regression.py','regression.json'),('mutations.py','mutations.json')]
    for script,name in runs:
        t=time.monotonic()
        p=subprocess.run([sys.executable,'-B',str(ROOT/'code'/script),'--output',str(out/name)],stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True,env=env)
        (out/(script+'.log')).write_text(p.stdout)
        if p.returncode:raise RuntimeError(f'{script} failed; see output log')
        frozen=ROOT/'evidence'/name
        if name=='polynomials.json':assert(out/name).read_bytes()==frozen.read_bytes();kind='byte-identical'
        else:
            a=normalized(json.loads((out/name).read_text()));b=normalized(json.loads(frozen.read_text()));assert a==b
            kind='mathematical-json-identical-excluding-runtime'
        stages.append({'script':script,'seconds':time.monotonic()-t,'comparison':kind})
    result={'status':'PASS_CLEAN_NEW_CHAIN','manifest_ok':manifest_ok,'source_hashes_checked':len(sm),'old_acceptance_programs_executed':0,'stages':stages,'seconds':time.monotonic()-start,'python_version':sys.version,'Lean_run':False,'external_independent_review':False}
    (out/'replay.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n');print(json.dumps(result))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args();main(a.out)
