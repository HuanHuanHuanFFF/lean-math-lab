#!/usr/bin/env python3
"""Replay all NEW acceptance steps from an empty generated directory.
No old research suite, networking, symbolic package, or repository write occurs.
Timing and logs are metadata; only seven deterministic mathematics files are compared.
"""
from __future__ import annotations
import argparse,hashlib,json,os,platform,subprocess,sys,time
from datetime import datetime,timezone
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]

def sha(p:Path)->str:
    h=hashlib.sha256()
    with p.open('rb') as f:
        for b in iter(lambda:f.read(1<<20),b''):h.update(b)
    return h.hexdigest()
def static_snapshot()->dict[str,str]:
    paths=[]
    for p in ROOT.rglob('*'):
        if not p.is_file():continue
        rel=p.relative_to(ROOT)
        if rel.parts[0]=='replay' or '__pycache__' in rel.parts or p.suffix=='.pyc':continue
        paths.append(p)
    return {p.relative_to(ROOT).as_posix():sha(p) for p in sorted(paths)}
def utc()->str:return datetime.now(timezone.utc).isoformat()

def main()->None:
    if sys.flags.optimize:raise SystemExit('Do not use -O or -OO: exact diagnostic assertions must remain enabled.')
    ap=argparse.ArgumentParser();ap.add_argument('--record',type=Path,required=True);args=ap.parse_args()
    record=args.record.resolve()
    if record.exists() and (not record.is_dir() or any(record.iterdir())):
        raise SystemExit('record directory must be new or empty')
    # Do not permit runtime files to modify source/input/output directories.
    if record.is_relative_to(ROOT) and not record.is_relative_to(ROOT/'replay'):
        raise SystemExit('inside this package, --record must lie under replay/')
    record.mkdir(parents=True,exist_ok=True);out=record/'generated';out.mkdir();logs=record/'logs';logs.mkdir()
    before=static_snapshot();t0=time.monotonic()
    rec={'status':'running','start_utc':utc(),'python':sys.version,'platform':platform.platform(),
         'source_root':str(ROOT),'record_root':str(record),'commands':[],
         'mathematical_outputs':[],'scope':'new elementary i4 subfamily chain; not Lean or independent human review'}
    dump=lambda:(record/'reproduction.json').write_text(json.dumps(rec,ensure_ascii=False,indent=2)+'\n')
    dump()
    py=sys.executable;c=ROOT/'code'
    commands=[
        ('generate',[py,str(c/'generate.py'),'--out',str(out/'certificate.json')],'certificate.json'),
        ('independent-finite-check',[py,str(c/'check_certificate.py'),str(out/'certificate.json'),'--out',str(out/'check.json')],'check.json'),
        ('sparse-algebra',[py,str(c/'check_algebra.py'),'--out',str(out/'algebra.json')],'algebra.json'),
        ('independent-grid-valuations',[py,str(c/'check_grid_and_valuations.py'),'--out',str(out/'grid-valuations.json')],'grid-valuations.json'),
        ('transfer-boundaries',[py,str(c/'check_transfer.py'),'--out',str(out/'transfer.json')],'transfer.json'),
        ('checkpoint-reduction',[py,str(c/'check_checkpoint_reduction.py'),'--certificate',str(out/'certificate.json'),'--out',str(out/'checkpoint-reduction.json')],'checkpoint-reduction.json'),
        ('bad-certificate-regression',[py,str(c/'check_bad_certificates.py'),'--certificate',str(out/'certificate.json'),'--out',str(out/'bad-tests.json')],'bad-tests.json'),
    ]
    env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1','PYTHONHASHSEED':'0'}
    code=0
    try:
        for idx,(name,cmd,filename) in enumerate(commands,1):
            start=time.monotonic();run=subprocess.run(cmd,cwd=ROOT,env=env,capture_output=True,text=True)
            elapsed=time.monotonic()-start;log=logs/f'{idx:02d}-{name}.log'
            log.write_text('COMMAND '+json.dumps(cmd)+'\nEXIT '+str(run.returncode)+'\nSTDOUT\n'+run.stdout+'\nSTDERR\n'+run.stderr)
            rec['commands'].append({'name':name,'command':cmd,'cwd':str(ROOT),'exit_code':run.returncode,
                                    'elapsed_seconds':elapsed,'log':log.relative_to(record).as_posix()})
            dump()
            if run.returncode:raise RuntimeError('command failed: '+name)
            produced=out/filename;frozen=ROOT/'outputs'/filename
            if not produced.is_file() or not frozen.is_file():raise RuntimeError('missing mathematics output: '+filename)
            same=produced.read_bytes()==frozen.read_bytes()
            rec['mathematical_outputs'].append({'file':filename,'byte_identical':same,
                                                'bytes':produced.stat().st_size,'sha256':sha(produced)})
            dump()
            if not same:raise RuntimeError('mathematics output differs: '+filename)
        rec['status']='accepted_new_paper_and_exact_finite_certificate_chain'
    except Exception as exc:
        rec['status']='failed';rec['error']=repr(exc);code=1
    finally:
        after=static_snapshot();rec['static_files_unchanged']=before==after
        rec['static_file_count']=len(before)
        rec['static_before_sha256']=hashlib.sha256(json.dumps(before,sort_keys=True).encode()).hexdigest()
        rec['static_after_sha256']=hashlib.sha256(json.dumps(after,sort_keys=True).encode()).hexdigest()
        if before!=after:rec['status']='failed_source_changed';code=1
        rec['end_utc']=utc();rec['elapsed_seconds']=time.monotonic()-t0
        try:
            import resource
            rec['max_child_peak_rss_kib_on_linux']=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss
        except ImportError:pass
        dump()
    print(json.dumps({k:rec[k] for k in ('status','static_files_unchanged','elapsed_seconds')},ensure_ascii=False))
    raise SystemExit(code)
if __name__=='__main__':main()
