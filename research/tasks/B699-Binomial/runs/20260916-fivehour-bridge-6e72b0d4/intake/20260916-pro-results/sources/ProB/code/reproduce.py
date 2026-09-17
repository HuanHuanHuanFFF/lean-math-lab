"""Rebuild this round's mathematical outputs in a temporary isolated tree.
No historical generator, discovery search, network, or external Python package is run.
"""
import argparse,hashlib,json,platform,shutil,subprocess,sys,tempfile,time
from datetime import datetime,timezone
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
COMMANDS=(('rigidity','check_rigidity.py'),('arithmetic','check_arithmetic.py'),
          ('independent','check_independent.py'),('bad_inputs','check_bad_inputs.py'))

def check_static():
    p=subprocess.run([sys.executable,'-S','-B',str(ROOT/'verify_manifest.py')],capture_output=True,text=True)
    if p.returncode:raise RuntimeError(p.stdout+p.stderr)
    return json.loads(p.stdout)

def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');a=ap.parse_args()
    record=(ROOT/a.record).resolve()
    if not record.is_relative_to(ROOT/'replay'):raise ValueError('record must be under replay/')
    record.mkdir(parents=True,exist_ok=True)
    started=datetime.now(timezone.utc).isoformat();begin=time.monotonic()
    before=check_static();entries=[];overall=True
    with tempfile.TemporaryDirectory(prefix='b699-origin-rigidity-') as tmp:
        t=Path(tmp);shutil.copytree(ROOT/'code',t/'code');shutil.copytree(ROOT/'sources',t/'sources')
        (t/'outputs').mkdir()
        for label,script in COMMANDS:
            dest=t/'outputs'/f'{label}.json'
            cmd=[sys.executable,'-S','-B',str(t/'code'/script),'--out',str(dest)]
            start=time.monotonic();p=subprocess.run(cmd,capture_output=True,text=True,timeout=180)
            (record/f'{label}.stdout.txt').write_text(p.stdout)
            (record/f'{label}.stderr.txt').write_text(p.stderr)
            same=dest.exists() and dest.read_bytes()==(ROOT/'outputs'/f'{label}.json').read_bytes()
            entries.append({'name':label,'command':cmd,'returncode':p.returncode,
                            'seconds':time.monotonic()-start,'same_bytes':same,
                            'output_sha256':hashlib.sha256(dest.read_bytes()).hexdigest() if dest.exists() else None})
            if p.returncode or not same:overall=False;break
    after=check_static()
    r={'status':'PASS' if overall and before==after else 'FAIL','utc_start':started,
       'utc_end':datetime.now(timezone.utc).isoformat(),'python':platform.python_version(),
       'seconds':time.monotonic()-begin,'fresh_empty_output_directory':True,
       'static_before':before,'static_after':after,'commands':entries,
       'not_replayed':'historical proofs/certificates and the bounded discovery-only overlap probe'}
    (record/'reproduction.json').write_text(json.dumps(r,indent=2,sort_keys=True)+'\n')
    print(json.dumps({'status':r['status'],'commands':len(entries),'seconds':r['seconds']}))
    if r['status']!='PASS':raise SystemExit(1)

if __name__=='__main__':main()
