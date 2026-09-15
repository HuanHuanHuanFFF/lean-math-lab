"""All NEW obligations only. Does not execute any code inside the frozen input ZIP."""
from pathlib import Path
import subprocess, sys, time, json
ROOT=Path(__file__).resolve().parents[1]
def main():
    start=time.perf_counter();steps=[]
    for name in ('receive.py','negative_tests.py','diagnostics.py','test_consumer.py'):
        t=time.perf_counter()
        p=subprocess.run([sys.executable,str(ROOT/'code'/name)],cwd=ROOT,capture_output=True,text=True)
        (ROOT/'logs'/(name+'.stdout.txt')).write_text(p.stdout)
        (ROOT/'logs'/(name+'.stderr.txt')).write_text(p.stderr)
        steps.append({'step':name,'returncode':p.returncode,'seconds':time.perf_counter()-t})
        if p.returncode:
            print(p.stdout);print(p.stderr,file=sys.stderr)
            raise SystemExit(p.returncode)
    out={'status':'PASS_COMPLETE_NEW_UNIFORM_COFACTOR_REPLAY','steps':steps,'seconds':time.perf_counter()-start,
         'historical_certificate_chains_replayed':0,'lean_run':False,'publication_theorem_formalized':False}
    (ROOT/'logs/full_replay.json').write_text(json.dumps(out,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(out,ensure_ascii=False))
if __name__=='__main__':main()
