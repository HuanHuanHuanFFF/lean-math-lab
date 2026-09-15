"""Run only this round's source-byte checks, arithmetic obligations and diagnostics."""
from pathlib import Path
import subprocess,sys,json,time,datetime
R=Path(__file__).resolve().parents[1]

def main():
    (R/'logs').mkdir(exist_ok=True);start=time.monotonic();phases=[]
    for script in ('verify_sources.py','receive.py','negative_tests.py','diagnostics.py'):
        stem=Path(script).stem;t=time.monotonic()
        with open(R/'logs'/f'{stem}.stdout','w') as out,open(R/'logs'/f'{stem}.stderr','w') as err:
            p=subprocess.run([sys.executable,str(R/'code'/script)],cwd=R,stdout=out,stderr=err)
        phases.append({'script':script,'returncode':p.returncode,'seconds':time.monotonic()-t})
        if p.returncode:
            failure={'status':'FAIL_NEW_REPLAY','phases':phases,'seconds':time.monotonic()-start}
            (R/'logs/full_replay.json').write_text(json.dumps(failure,indent=2))
            print(json.dumps(failure));return p.returncode
    result={'status':'PASS_COMPLETE_NEW_COUPLED_EDGE_BLOCK_REPLAY',
            'utc_completed':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'phases':phases,'seconds':time.monotonic()-start,
            'new_finite_checks':json.loads((R/'logs/acceptance.json').read_text())['checks'],
            'historical_scripts_run':0,'discovery_run':False,'lean_run':False,
            'external_independent_review':False}
    (R/'logs/full_replay.json').write_text(json.dumps(result,indent=2));print(json.dumps(result))
    return 0
if __name__=='__main__':raise SystemExit(main())
