"""Replay the accepted numerical obligations and documented finite audits.
No parameter search, external theorem proof, Lean build or CRT descent runs.
Requires Python >=3.10 and g++ for the final finite i=3 probe.
"""
from __future__ import annotations
import hashlib,json,subprocess,sys,time,tempfile,platform,shutil
from pathlib import Path
from datetime import datetime,timezone
ROOT=Path(__file__).resolve().parents[1]
def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    if not __debug__:raise RuntimeError('Run without Python -O/-OO.')
    compiler=shutil.which('g++')
    if compiler is None:raise RuntimeError('g++ is required for the full replay; the Python core can run separately.')
    static=[*sorted((ROOT/'code').glob('*.py')),ROOT/'code/probe_i3_slots.cpp',
      ROOT/'results/refined_profiles.json',ROOT/'results/cut_inputs.json']
    before={str(p.relative_to(ROOT)):sha(p) for p in static}
    started=datetime.now(timezone.utc).isoformat();records=[]
    def run(argv,label):
        t=time.monotonic();r=subprocess.run(argv,cwd=ROOT,text=True,capture_output=True)
        record={'label':label,'argv':list(map(str,argv)),'exit_code':r.returncode,
          'seconds':time.monotonic()-t,'stdout':r.stdout,'stderr':r.stderr}
        records.append(record)
        (ROOT/'results'/f'replay_{label}.log').write_text(r.stdout+'\nSTDERR:\n'+r.stderr)
        if r.returncode:raise RuntimeError(f'{label} failed: {r.stderr}')
        print('PASS',label,f"{record['seconds']:.4f}s",flush=True)
        return r.stdout
    for script,label in [
       ('verify_pair_intervals.py','uniform_pair_checks'),
       ('verify_graph_and_heights.py','uniform_height_checks'),
       ('verify_refined_profiles.py','refined_height_checks'),
       ('audit_elementary_bridge.py','elementary_audit'),
       ('size_crt_interface.py','crt_sizing_only')]:
        run([sys.executable,str(ROOT/'code'/script)],label)
    with tempfile.TemporaryDirectory(prefix='b699-exact-probe-') as temp:
        executable=Path(temp)/'probe_i3'
        run([compiler,'-O3','-std=c++17',str(ROOT/'code/probe_i3_slots.cpp'),'-o',str(executable)],'compile_i3_probe')
        stdout=run([str(executable),'10000000'],'i3_necessary_system')
        if 'seeds 79199427 D_pass 175 both_pass 0' not in stdout:
            raise RuntimeError('The exact i=3 probe output changed.')
    after={str(p.relative_to(ROOT)):sha(p) for p in static}
    if before!=after:raise RuntimeError('Static code or adopted input changed during replay.')
    profile=json.loads((ROOT/'results/refined_certificate.json').read_text())
    assert profile['status']=='PASS_EXACT'
    assert profile['enumerated_orientations']==14112 and profile['analytic_cut_occurrences']==63
    out={'status':'PASS_ALL_EXECUTED_STEPS','started_utc':started,
      'finished_utc':datetime.now(timezone.utc).isoformat(),
      'python_version':sys.version,'platform':platform.platform(),
      'compiler_version':subprocess.check_output([compiler,'--version'],text=True).splitlines()[0],
      'records':records,'static_sha256_before':before,'static_sha256_after':after,
      'static_unchanged':True,
      'cautions':['external BFT estimates not re-proved','no Lean','no new CRT descent',
                  'no original counterexample certified','no exhaustion under seven heights']}
    (ROOT/'results/reproduction.json').write_text(json.dumps(out,indent=2,ensure_ascii=False)+'\n')
    print('FINAL PASS: seven explicit heights; zero newly closed indices.')
if __name__=='__main__':main()
