"""Regenerate the complete new acceptance evidence in an empty temporary root.
Requires Python >= 3.8 and g++/clang++ with C++17 and unsigned __int128.
No historical experiment, internet connection, or Lean installation is used.
"""
import argparse,datetime,hashlib,json,os,platform,shutil,subprocess,sys,tempfile,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT))
from verify_manifest import verify,tracked

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def main(record):
    record=record if record.is_absolute() else ROOT/record
    record=record.resolve()
    if record!=ROOT/'replay' and ROOT/'replay' not in record.parents:
        raise ValueError('record directory must be inside this package replay/')
    record.mkdir(parents=True,exist_ok=True)
    before=tracked();verify();start=time.perf_counter()
    report={'start_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
            'python':sys.version,'platform':platform.platform(),'commands':[],'comparisons':[],
            'empty_temporary_root':True,'status':'RUNNING'}
    env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1')
    cc=shutil.which('g++') or shutil.which('clang++')
    if not cc:raise RuntimeError('C++ compiler unavailable: full independent brute check was not run')
    report['compiler_version']=subprocess.check_output([cc,'--version'],text=True).splitlines()[0]
    def run(name,args,cwd):
        stamp=time.perf_counter()
        out=record/(name+'.stdout.txt');err=record/(name+'.stderr.txt')
        with out.open('w') as o,err.open('w') as e:
            p=subprocess.run(args,cwd=cwd,env=env,stdout=o,stderr=e,check=False)
        report['commands'].append({'name':name,'argv':list(map(str,args)),'returncode':p.returncode,
             'seconds':round(time.perf_counter()-stamp,6),'stdout':out.name,'stderr':err.name})
        (record/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
        if p.returncode:raise RuntimeError(name+' failed: '+str(p.returncode))
    try:
        with tempfile.TemporaryDirectory(prefix='b699-r8-relative-') as t:
            tmp=Path(t);report['temporary_root']=str(tmp)
            out=tmp/'out';out.mkdir();gen=out/'generated'
            run('01-generate',[sys.executable,str(ROOT/'code/generate_certificate.py'),'--B',str(2**20),'--out',str(gen)],tmp)
            run('02-independent-crt',[sys.executable,str(ROOT/'code/check_certificate.py'),str(gen/'certificate.json'),'--out',str(out/'verification.json')],tmp)
            run('03-algebra',[sys.executable,str(ROOT/'code/check_algebra.py'),'--out',str(out/'algebra.json')],tmp)
            run('04-rejection',[sys.executable,str(ROOT/'code/check_bad_cases.py'),str(gen/'certificate.json'),'--out',str(out/'bad_cases.json')],tmp)
            binary=tmp/'exhaustive'
            run('05-compile-independent',[cc,'-std=c++17','-O3','-Wall','-Wextra',str(ROOT/'code/check_fraction_exhaustive.cpp'),'-o',str(binary)],tmp)
            run('06-direct-enumeration',[str(binary),str(2**20),str(out/'exhaustive.json')],tmp)
            run('07-source-snapshots',[sys.executable,str(ROOT/'code/check_sources.py'),'--out',str(out/'sources.json')],tmp)
            pairs=[(gen/'certificate.json',ROOT/'certificates/certificate.json'),
                   (gen/'generation.json',ROOT/'certificates/generation.json')]
            pairs += [(out/name,ROOT/'outputs'/name) for name in ['verification.json','algebra.json','bad_cases.json','exhaustive.json','sources.json']]
            for made,frozen in pairs:
                ok=made.read_bytes()==frozen.read_bytes()
                report['comparisons'].append({'frozen':str(frozen.relative_to(ROOT)),
                    'sha256':sha(made),'bytes':made.stat().st_size,'byte_equal':ok})
                if not ok:raise RuntimeError('mathematical output mismatch: '+str(frozen))
            certificate=json.loads((gen/'certificate.json').read_text())
            direct=json.loads((out/'exhaustive.json').read_text())
            if direct['first_candidates']!=certificate['first_candidates'] or direct['second_candidates']!=0:
                raise RuntimeError('CRT and direct exhaustive candidate sets differ')
            report['cross_implementation_candidates_equal']=True
        verify();report['static_hashes_unchanged']=before==tracked()
        if not report['static_hashes_unchanged']:raise RuntimeError('static files changed')
        report['status']='PASS'
    except Exception as e:
        report['status']='FAIL';report['error']=repr(e);raise
    finally:
        report['seconds']=round(time.perf_counter()-start,6)
        report['end_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
        (record/'reproduction.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({'status':report['status'],'commands':len(report['commands']),
          'byte_equal_outputs':len(report['comparisons']),'seconds':report['seconds'],
          'static_hashes_unchanged':report['static_hashes_unchanged']},sort_keys=True))
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--record',type=Path,default=Path('replay/local'));a=p.parse_args();main(a.record)
