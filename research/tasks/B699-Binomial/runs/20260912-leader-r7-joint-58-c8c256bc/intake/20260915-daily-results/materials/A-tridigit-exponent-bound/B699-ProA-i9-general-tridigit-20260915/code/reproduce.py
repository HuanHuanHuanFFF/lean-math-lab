"""Recheck only this round. No historical receiver or discovery program is run.
Usage: python3 code/reproduce.py [--output-dir /absolute/path]
"""
from pathlib import Path
import subprocess,sys,os,json,time,argparse
ROOT=Path(__file__).resolve().parents[1]
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--output-dir',type=Path,default=ROOT/'logs');a=ap.parse_args();dest=a.output_dir.resolve();dest.mkdir(parents=True,exist_ok=True)
    stages=[('acceptance','receive.py',[]),('core_only','receive.py',['--core-only']),('diagnostics','diagnostics.py',[]),('negative_tests','negative_tests.py',[]),('boundaries','boundaries.py',[])]
    out={'stages':[],'historical_receivers_run':0,'discovery_programs_run':0,'Lean_run':False};start=time.perf_counter()
    env=os.environ.copy();env['PYTHONDONTWRITEBYTECODE']='1'
    for name,script,extra in stages:
        path=dest/(name+'.json');cmd=[sys.executable,str(ROOT/'code'/script),*extra,'--output',str(path)];t=time.perf_counter()
        result=subprocess.run(cmd,cwd=ROOT,env=env,text=True,capture_output=True)
        (dest/(name+'.stdout.txt')).write_text(result.stdout)
        (dest/(name+'.stderr.txt')).write_text(result.stderr)
        if result.returncode:
            out['status']='FAIL_NEW_REPLAY';out['failed_stage']=name;out['returncode']=result.returncode
            (dest/'full_replay.json').write_text(json.dumps(out,indent=2)+'\n')
            print(result.stderr[-4000:],file=sys.stderr);raise SystemExit(result.returncode)
        data=json.loads(path.read_text());out['stages'].append({'name':name,'status':data['status'],'seconds':time.perf_counter()-t})
    out['seconds']=time.perf_counter()-start;out['status']='PASS_COMPLETE_NEW_TRIDIGIT_EXPONENT_BOUND_REPLAY'
    (dest/'full_replay.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
