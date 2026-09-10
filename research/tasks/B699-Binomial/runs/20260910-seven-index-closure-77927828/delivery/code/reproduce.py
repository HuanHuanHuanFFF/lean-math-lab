#!/usr/bin/env python3
"""Replay exact generators, independent checkers, and negative/edge tests.
Python 3.10+ standard library; no Lean, internet, external CAS, or packages.
"""
from __future__ import annotations
import argparse, datetime, hashlib, json, os, platform, subprocess, sys, time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def utc() -> str:
    return datetime.datetime.now(datetime.timezone.utc).isoformat()

def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def immutable_snapshot() -> dict[str,str]:
    paths=list((ROOT/'code').glob('*.py'))+list((ROOT/'inputs').glob('*'))
    return {str(p.relative_to(ROOT)):sha(p) for p in sorted(paths) if p.is_file()}

def main() -> None:
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--three-only',action='store_true',help='Replay only the simpler complete certificates for 27,30,33')
    parser.add_argument('--check-only',action='store_true',help='Do not regenerate data; independently recheck existing certificates and edge tests')
    args=parser.parse_args()
    replay=ROOT/'replay';replay.mkdir(exist_ok=True)
    (ROOT/'outputs').mkdir(exist_ok=True)
    prefix='three-only' if args.three_only else ('check-only' if args.check_only else 'reproduction')
    before=immutable_snapshot()
    certpaths=[ROOT/'outputs/three_index_certificate.json',ROOT/'outputs/seven_index_certificate.json']
    old_cert={str(p.relative_to(ROOT)):sha(p) for p in certpaths if p.exists()}
    jobs=[]
    if not args.check_only:jobs.append(('generate-three','generate_certificate.py'))
    jobs.append(('check-three','check_certificate.py'))
    if not args.three_only:
        if not args.check_only:jobs.append(('generate-seven','generate_all_certificate.py'))
        jobs.extend([('check-seven','check_all_certificate.py'),('edge-tests','test_edges.py'),('compare-paths','compare_paths.py')])
    report={'started_at_utc':utc(),'python':sys.version,'platform':platform.platform(),
            'mode':prefix,'cwd':str(ROOT),'input_and_source_hashes_before':before,
            'certificate_hashes_before':old_cert,'commands':[],
            'scope':'Actual exact finite replay. BFT and unbounded covering arguments are paper proofs, not machine-checked here.',
            'lean_run':False}
    output=replay/(prefix+'.json')
    t0=time.monotonic();passed=True
    for index,(name,script) in enumerate(jobs,1):
        command=[sys.executable,'-B',str(ROOT/'code'/script)]
        stdout=replay/f'{prefix}-{index:02d}-{name}.stdout.txt'
        stderr=replay/f'{prefix}-{index:02d}-{name}.stderr.txt'
        print(f'RUN {name}',flush=True)
        start=utc();ts=time.monotonic();error=None
        with stdout.open('w') as out,stderr.open('w') as err:
            try:
                result=subprocess.run(command,cwd=ROOT,stdout=out,stderr=err,timeout=600,
                    env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'})
                rc=result.returncode
            except subprocess.TimeoutExpired:
                rc=124;error='600-second per-command timeout; no success inferred'
        row={'name':name,'command':command,'started_at_utc':start,'finished_at_utc':utc(),
             'wall_seconds':time.monotonic()-ts,'returncode':rc,
             'stdout':str(stdout.relative_to(ROOT)),'stderr':str(stderr.relative_to(ROOT)),
             'stdout_sha256':sha(stdout),'stderr_sha256':sha(stderr)}
        if error:row['error']=error
        report['commands'].append(row)
        output.write_text(json.dumps(report,indent=2)+'\n')
        print(f'EXIT {name}: {rc}',flush=True)
        if rc!=0:passed=False;break
    after=immutable_snapshot()
    report.update({'finished_at_utc':utc(),'wall_seconds':time.monotonic()-t0,
        'input_and_source_hashes_after':after,'immutable_files_unchanged':before==after,
        'certificate_hashes_after':{str(p.relative_to(ROOT)):sha(p) for p in certpaths if p.exists()}})
    report['status']='PASS' if passed and before==after else 'FAIL'
    report['deterministic_certificates_unchanged']=all(report['certificate_hashes_after'].get(k)==v for k,v in old_cert.items())
    # Exact acceptance also requires generated certificate bytes to agree with the frozen data.
    if not report['deterministic_certificates_unchanged']:report['status']='FAIL'
    output.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps({k:report[k] for k in ('status','wall_seconds','immutable_files_unchanged','deterministic_certificates_unchanged')},indent=2))
    if report['status']!='PASS':raise SystemExit(1)
if __name__=='__main__':main()
