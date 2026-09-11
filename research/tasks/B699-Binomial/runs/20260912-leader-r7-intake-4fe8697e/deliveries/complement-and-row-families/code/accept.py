#!/usr/bin/env python3
"""Frozen-file integrity, fresh regeneration, independent acceptance and tests.
All subprocesses run synchronously, one at a time, with bounded output/time.
"""
from __future__ import annotations
import argparse,hashlib,json,os,platform,subprocess,sys,tempfile,time
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def check_manifest():
    path=ROOT/'MANIFEST.sha256.json'
    manifest=json.loads(path.read_text())
    expected=manifest['files']
    actual={p.relative_to(ROOT).as_posix() for p in ROOT.rglob('*')
            if p.is_file() and '__pycache__' not in p.parts and p!=path}
    if actual!=set(expected):raise AssertionError('manifest membership mismatch')
    for name,record in expected.items():
        p=ROOT/name
        if p.is_symlink():raise AssertionError('unexpected symbolic link')
        b=p.read_bytes()
        if len(b)!=record['bytes'] or hashlib.sha256(b).hexdigest()!=record['sha256']:
            raise AssertionError(f'manifest mismatch: {name}')
    return len(expected)

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument('--output',type=Path,default=ROOT.parent/(ROOT.name+'-acceptance.json'))
    parser.add_argument('--probes',action='store_true',help='also rerun the bounded exploratory probes')
    args=parser.parse_args()
    output=args.output.resolve()
    if output==ROOT or ROOT in output.parents:
        raise ValueError('write the acceptance report outside the frozen package')
    start=time.monotonic();logs=[];status='PASS';error=None
    out=dict(python=platform.python_version(),platform=platform.platform(),
             execution='synchronous sequential subprocesses; timeout 45 seconds each',
             evidence_level='exact arithmetic and finite checks; NOT Lean or independent human review')
    try:
        out['manifest_files_checked']=check_manifest()
        with tempfile.TemporaryDirectory(prefix='b699-proD-accept-') as temp:
            temp=Path(temp)
            def run(name,script,params):
                st=time.monotonic()
                command=[sys.executable,str(ROOT/'code'/script),*map(str,params)]
                env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1'}
                result=subprocess.run(command,cwd=ROOT,env=env,capture_output=True,text=True,timeout=45)
                logs.append(dict(name=name,script=script,returncode=result.returncode,
                                 elapsed_seconds=time.monotonic()-st,stdout=result.stdout[-14000:],
                                 stderr=result.stderr[-3000:]))
                if result.returncode:raise AssertionError(f'{name} returned {result.returncode}')
            run('fresh_generation','complement_certificate.py',['--output-dir',temp/'complement'])
            proof_files=[f'{kind}_{a}.json' for kind in ('dplus','eplus') for a in (1,3,5,7)]+['TERMINAL.json']
            for name in proof_files:
                if (temp/'complement'/name).read_bytes()!=(ROOT/'evidence'/'complement'/name).read_bytes():
                    raise AssertionError(f'fresh evidence mismatch: {name}')
            out['regenerated_certificate_files_identical']=len(proof_files)
            run('committed_independent_acceptance','independent_check.py',
                ['--certificate-dir',ROOT/'evidence'/'complement','--output',temp/'committed.json'])
            run('regenerated_independent_acceptance','independent_check.py',
                ['--certificate-dir',temp/'complement','--output',temp/'independent.json'])
            run('symbolic_and_small_exact_regressions','check_algebra.py',['--output',temp/'algebra.json'])
            run('large_simultaneous_row_regressions','check_row_family.py',['--output',temp/'row.json'])
            for f in ('committed.json','independent.json','algebra.json','row.json'):
                if json.loads((temp/f).read_text())['status']!='PASS':
                    raise AssertionError(f'non-PASS report {f}')
            independent=json.loads((temp/'independent.json').read_text())
            out['candidate_records']=independent['record_count']
            out['distinct_candidate_pairs']=independent['distinct_pairs']
            out['terminal_distinct_pairs']=independent['terminal_distinct_pairs']
            out['mutations_rejected']=len(independent['mutation_tests'])
            if args.probes:
                run('initial_diagnostic_probe','probe_i3.py',['--N','20000','--output',temp/'probe.json'])
                run('higher_layer_diagnostic_probe','probe_stronger_i3.py',['--N','300000','--output',temp/'stronger.json'])
                for new,old in [('probe.json','i3-low-power-probe.json'),('stronger.json','stronger-i3-probe.json')]:
                    a=json.loads((temp/new).read_text());b=json.loads((ROOT/'evidence'/old).read_text())
                    for d in (a,b):
                        d.pop('elapsed_seconds',None)
                    if a!=b:raise AssertionError('probe deterministic result mismatch')
            out['exploratory_probes_replayed']=args.probes
    except Exception as exc:
        status='FAIL';error=f'{type(exc).__name__}: {exc}'
    out.update(status=status,error=error,total_elapsed_seconds=time.monotonic()-start,checks=logs)
    try:
        import resource
        out['max_child_rss_KiB_linux']=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss
    except ImportError:
        pass
    output.parent.mkdir(parents=True,exist_ok=True)
    output.write_text(json.dumps(out,indent=2)+'\n')
    print(json.dumps({k:v for k,v in out.items() if k!='checks'},indent=2))
    if status!='PASS':sys.exit(1)
if __name__=='__main__':main()
