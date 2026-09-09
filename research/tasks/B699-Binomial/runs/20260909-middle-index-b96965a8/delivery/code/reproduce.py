#!/usr/bin/env python3
"""Replay every accepting computation, from source. No web/Lean required.
Use a normal Python invocation (not python -O: several checks use assert).
The optional floating-point diagnostics are deliberately not acceptance steps.
"""
from pathlib import Path
import subprocess, sys, os, json, hashlib, platform, time
from datetime import datetime, timezone
ROOT=Path(__file__).resolve().parents[1]

def main():
    if not __debug__:
        raise RuntimeError('Run without -O; assertions are part of the checkers.')
    out=ROOT/'outputs'; out.mkdir(exist_ok=True)
    logs=out/'replay-logs'; logs.mkdir(exist_ok=True)
    build=ROOT/'build'; build.mkdir(exist_ok=True)
    cpp=os.environ.get('CXX','g++')
    commands=[
      [sys.executable, 'code/audit_constants_and_local.py'],
      [sys.executable, 'code/exact_height_certificate.py'],
      [sys.executable, 'code/independent_height_check.py'],
      [sys.executable, 'code/generate_prime_chain.py'],
      [cpp,'-O2','-std=c++17','-Wall','-Wextra','-pedantic',
       'code/check_prime_chain.cpp','-o','build/check_prime_chain'],
      ['build/check_prime_chain','outputs/prime_chain_20m.txt'],
      [sys.executable, 'code/check_rejections.py']
    ]
    results=[];started=datetime.now(timezone.utc).isoformat()
    for number,cmd in enumerate(commands,1):
        t=time.perf_counter()
        run=subprocess.run(cmd,cwd=ROOT,text=True,capture_output=True,check=False)
        elapsed=time.perf_counter()-t
        log_path=logs/f'{number:02d}.log'
        log_path.write_text('$ '+' '.join(cmd)+'\n\nSTDOUT\n'+run.stdout+'\nSTDERR\n'+run.stderr+'\n')
        item=dict(command=cmd,returncode=run.returncode,elapsed_seconds_diagnostic=elapsed,
                  log=str(log_path.relative_to(ROOT)))
        results.append(item)
        print(json.dumps(item),flush=True)
        if run.returncode:
            raise RuntimeError('Replay step failed: '+' '.join(cmd))
        if number==6:
            data=json.loads(run.stdout)
            assert data['status']=='PASS'
            (out/'prime_chain_check.json').write_text(json.dumps(data,indent=2)+'\n')
    first=json.loads((out/'exact_height_certificate.json').read_text())
    second=json.loads((out/'independent_height_check.json').read_text())
    chain=json.loads((out/'prime_chain_check.json').read_text())
    constants=json.loads((out/'constants_and_local_audit.json').read_text())
    inputs=json.loads((ROOT/'inputs.json').read_text())
    expected=inputs['finite_height']['i_max']-inputs['finite_height']['i_min']+1
    assert first['status']==second['status']==chain['status']==constants['status']=='PASS'
    assert first['rows_verified']==second['rows_verified']==expected==815
    assert first['N']==second['N']==inputs['finite_height']['N']==20000000
    assert [r['i'] for r in first['rows']]==list(range(185,1000))
    assert chain['first']==2 and chain['last']>=20000000 and chain['max_gap']<=184
    chainhash=hashlib.sha256((out/'prime_chain_20m.txt').read_bytes()).hexdigest()
    assert chainhash=='a4954fc348879a5bff3bb91e8448f91437bd5220e80a1f1bc4cfb86ca8190414'
    source_hashes={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                   for p in sorted((ROOT/'code').iterdir()) if p.suffix in ('.py','.cpp')}
    record=dict(status='PASS',started_at_utc=started,
       completed_at_utc=datetime.now(timezone.utc).isoformat(),
       python_version=sys.version,platform=platform.platform(),commands=results,
       source_sha256=source_hashes,prime_chain_sha256=chainhash,
       assertions='Enabled; no probabilistic acceptance and no floating-point acceptance',
       scope='Reproduces computations, not a formal verification of REPORT.md')
    (out/'reproduction.json').write_text(json.dumps(record,indent=2)+'\n')
    print('ACCEPTING REPLAY: PASS',flush=True)

if __name__=='__main__': main()
