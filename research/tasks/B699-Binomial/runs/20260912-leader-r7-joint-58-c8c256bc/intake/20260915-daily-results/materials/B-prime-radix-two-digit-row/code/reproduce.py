"""Replay only this round, in a genuinely empty temporary output directory."""
from pathlib import Path
import argparse,hashlib,json,subprocess,sys,tempfile,time,datetime,resource
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from verify_manifest import verify

def sha(path):return hashlib.sha256(path.read_bytes()).hexdigest()
def main():
    ap=argparse.ArgumentParser();ap.add_argument('--record',type=Path,default=Path('replay/local'));args=ap.parse_args()
    logdir=args.record if args.record.is_absolute() else ROOT/args.record
    logdir.mkdir(parents=True,exist_ok=True)
    before=verify(ROOT);start=datetime.datetime.now(datetime.timezone.utc).isoformat();clock=time.perf_counter()
    record={'started_utc':start,'commands':[],'outputs':[],'python':sys.version,'status':'RUNNING'}
    try:
        with tempfile.TemporaryDirectory(prefix='b699-prime-digit-') as tmp:
            out=Path(tmp)
            cmds=[['generate.py','--out',str(out)],
                  ['check.py','--certificate',str(out/'certificate.json'),'--out',str(out/'independent.json')],
                  ['algebra.py','--out',str(out/'algebra.json')],
                  ['regression.py','--out',str(out/'regression.json')],
                  ['bad_inputs.py','--certificate',str(out/'certificate.json'),'--out',str(out/'bad_inputs.json')],
                  ['check_sources.py','--out',str(out/'sources.json')]]
            for ix,cmd in enumerate(cmds,1):
                actual=[sys.executable,'-S','-B',str(ROOT/'code'/cmd[0]),*cmd[1:]]
                tic=time.perf_counter()
                run=subprocess.run(actual,cwd=ROOT,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True)
                logfile=logdir/f'{ix:02d}-{Path(cmd[0]).stem}.log';logfile.write_text(run.stdout)
                record['commands'].append({'argv':actual,'returncode':run.returncode,'seconds':time.perf_counter()-tic,'log':str(logfile.relative_to(ROOT)) if logfile.is_relative_to(ROOT) else str(logfile)})
                if run.returncode:raise RuntimeError(f'failed command {cmd[0]}')
            names=sorted(p.name for p in out.iterdir() if p.is_file())
            expected=sorted(p.name for p in (ROOT/'outputs').iterdir() if p.is_file())
            if names!=expected:raise ValueError('regenerated output member set differs')
            for name in names:
                actual=sha(out/name);saved=sha(ROOT/'outputs'/name)
                record['outputs'].append({'file':name,'sha256':actual,'byte_equal':actual==saved})
                if actual!=saved:raise ValueError('math data differs: '+name)
        after=verify(ROOT)
        if before!=after:raise ValueError('static inputs changed during run')
        record.update(status='PASS',static_files=len(after),static_before_after_equal=True,
                      seconds=time.perf_counter()-clock,child_max_rss_kib=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss)
    except Exception as exc:
        record.update(status='FAIL',error=repr(exc),seconds=time.perf_counter()-clock)
        raise
    finally:
        record['finished_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
        (logdir/'reproduction.json').write_text(json.dumps(record,indent=2)+'\n')
    print(json.dumps({'status':record['status'],'commands':len(record['commands']),'outputs':len(record['outputs']),'seconds':record['seconds']}))
if __name__=='__main__':main()
