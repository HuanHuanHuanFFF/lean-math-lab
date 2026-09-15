"""Run only this round's new evidence in an empty directory and compare exact bytes."""
import argparse,datetime,hashlib,json,platform,subprocess,sys,tempfile,time
from pathlib import Path
root=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser();p.add_argument('--record',default='replay/local');args=p.parse_args()
rec=root/args.record;rec.mkdir(parents=True,exist_ok=True)
manifest=json.loads((root/'MANIFEST.json').read_text())['files']
def snapshot():
 d={}
 for x in manifest:
  f=root/x['path'];d[x['path']]=hashlib.sha256(f.read_bytes()).hexdigest()
  assert d[x['path']]==x['sha256'],x['path']
 return d
before=snapshot();start=datetime.datetime.now(datetime.timezone.utc).isoformat();rows=[]
with tempfile.TemporaryDirectory(prefix='b699-new-acceptance-') as tmp:
 out=Path(tmp)/'outputs';out.mkdir()
 for idx,s in enumerate(['build.py','check.py','check_bad.py','check_sources.py'],1):
  cmd=[sys.executable,'-S','-B',str(root/'code'/s),str(out)]
  t=time.monotonic();a=subprocess.run(cmd,capture_output=True,text=True)
  stdout=f'{idx:02d}-{s}.stdout.txt';stderr=f'{idx:02d}-{s}.stderr.txt'
  (rec/stdout).write_text(a.stdout);(rec/stderr).write_text(a.stderr)
  rows.append(dict(command=cmd,returncode=a.returncode,seconds=time.monotonic()-t,stdout=stdout,stderr=stderr))
  if a.returncode:
   (rec/'reproduction.json').write_text(json.dumps(dict(status='FAIL',started_utc=start,commands=rows),indent=2)+'\n')
   raise SystemExit(f'Failed {s}; see {rec/stderr}')
 expected=sorted(f.name for f in (root/'outputs').glob('*.json'))
 actual=sorted(f.name for f in out.glob('*.json'));assert actual==expected,(actual,expected)
 comparisons=[]
 for name in expected:
  b=(root/'outputs'/name).read_bytes();c=(out/name).read_bytes();assert b==c,name
  comparisons.append(dict(file=name,bytes=len(c),sha256=hashlib.sha256(c).hexdigest(),exact_match=True))
after=snapshot();assert after==before
result=dict(status='PASS',started_utc=start,finished_utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),
            python=sys.version,platform=platform.platform(),commands=rows,outputs=comparisons,
            empty_output_directory=True,static_files_before_after_equal=True,static_files=len(manifest),
            mathematical_proofs='Author paper derivations; finite tests and finite certificates have separately stated roles.',
            historical_full_chains_rerun=False,lean_run=False,independent_researcher_review=False,human_review=False)
(rec/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
print(json.dumps({'status':'PASS','commands':len(rows),'outputs':len(comparisons),'static_files':len(manifest),
                  'script_seconds':sum(r['seconds'] for r in rows)},ensure_ascii=False))
