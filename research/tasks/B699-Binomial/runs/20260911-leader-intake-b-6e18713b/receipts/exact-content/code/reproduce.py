"""Replay the new checks in a fresh output directory; do not replay old research."""
from pathlib import Path
import argparse,datetime,hashlib,json,os,platform,resource,subprocess,sys,time
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'code'))
from verify_manifest import snapshot

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');args=ap.parse_args()
 record=(ROOT/args.record).resolve()
 if not record.is_relative_to((ROOT/'replay').resolve()):raise SystemExit('Record directory must be under replay/')
 if record.exists() and any(record.iterdir()):raise SystemExit('Choose a fresh, empty record directory; old logs are not overwritten.')
 record.mkdir(parents=True,exist_ok=True);out=record/'outputs';out.mkdir()
 before=snapshot();expected=json.loads((ROOT/'MANIFEST.json').read_text())['files']
 if before!=expected:raise SystemExit('Frozen files do not match manifest before execution')
 steps=[('content',['code/check_content.py',str(out/'content.json')]),
        ('independent-dp',['code/check_independent_dp.py',str(out/'content.json'),str(out/'independent-dp.json')]),
        ('vandermonde',['code/check_vandermonde.py',str(out/'vandermonde.json')]),
        ('consumers',['code/check_consumers.py',str(out/'consumers.json')]),
        ('bad-inputs',['code/check_bad_inputs.py',str(out/'bad-inputs.json')]),
        ('sources',['code/verify_sources.py',str(out/'sources.json')])]
 start=time.perf_counter();info={'status':'running','python':sys.version,'platform':platform.platform(),
      'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
      'fresh_output_directory':True,'steps':[],'comparisons':[]}
 env=dict(os.environ);env['PYTHONDONTWRITEBYTECODE']='1'
 for name,cmd in steps:
  log=record/(name+'.log');t=time.perf_counter()
  with log.open('wb') as f:r=subprocess.run([sys.executable,*cmd],cwd=ROOT,env=env,stdout=f,stderr=subprocess.STDOUT)
  entry={'name':name,'command':['python3',cmd[0],*[str(Path(v).relative_to(ROOT)) if Path(v).is_absolute() else v for v in cmd[1:]]],
         'exit_code':r.returncode,'elapsed_seconds':time.perf_counter()-t,'log':str(log.relative_to(ROOT))}
  info['steps'].append(entry)
  if r.returncode:
   info['status']='failed';(record/'reproduction.json').write_text(json.dumps(info,indent=2)+'\n')
   raise SystemExit(f'Failed: {name}; see {log}')
  p=out/(name+'.json');frozen=ROOT/'evidence'/(name+'.json');generated=p.read_bytes()
  comparison={'file':name+'.json','bytes':len(generated),'sha256':hashlib.sha256(generated).hexdigest(),
              'byte_identical_to_frozen':generated==frozen.read_bytes()}
  info['comparisons'].append(comparison)
  if not comparison['byte_identical_to_frozen']:
   info['status']='output_mismatch';(record/'reproduction.json').write_text(json.dumps(info,indent=2)+'\n')
   raise SystemExit(f'Mathematical output differs: {name}')
 info['frozen_before_after_identical']=snapshot()==before
 info['elapsed_seconds']=time.perf_counter()-start
 info['children_peak_rss_kib_cumulative']=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss
 info['rss_note']='Linux ru_maxrss maximum over waited-for child processes, not summed per-step memory.'
 info['finished_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
 info['status']='passed' if info['frozen_before_after_identical'] else 'source_mutation'
 (record/'reproduction.json').write_text(json.dumps(info,ensure_ascii=False,indent=2)+'\n')
 print(json.dumps({'status':info['status'],'commands':len(info['steps']),'identical_outputs':len(info['comparisons']),
                   'elapsed_seconds':info['elapsed_seconds'],'children_peak_rss_kib_cumulative':info['children_peak_rss_kib_cumulative']}))
 if info['status']!='passed':raise SystemExit(1)
if __name__=='__main__':main()
