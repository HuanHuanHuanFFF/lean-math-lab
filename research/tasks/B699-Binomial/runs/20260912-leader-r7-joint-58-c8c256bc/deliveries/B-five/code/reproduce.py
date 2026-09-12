"""Rebuild new evidence in an empty temporary output directory and compare bytes.
This does not rerun upstream research and does not validate the external theorem.
"""
from pathlib import Path
import argparse,subprocess,tempfile,time,json,hashlib,sys,resource,datetime
ROOT=Path(__file__).resolve().parents[1]

def hashes():
 m=json.loads((ROOT/'MANIFEST.json').read_text())
 return {name:hashlib.sha256((ROOT/name).read_bytes()).hexdigest() for name in m['files']}

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--record',default='replay/local');a=ap.parse_args()
 record=ROOT/a.record;record.mkdir(parents=True,exist_ok=True)
 before=hashes();v=subprocess.run([sys.executable,'-S','-B',str(ROOT/'verify_manifest.py')],capture_output=True,text=True)
 assert v.returncode==0,v.stderr
 start=time.monotonic();logs=[]
 with tempfile.TemporaryDirectory(prefix='b699-c5-proof-') as td:
  t=Path(td);commands=[
   ('generate',['generate.py',str(t)]),
   ('independent',['check_certificates.py',str(t),str(t/'checks.json')]),
   ('fraction',['log_fraction.py',str(t/'log-fraction.json')]),
   ('integer',['log_integer.py',str(t/'log-integer.json')]),
   ('consumers',['consumers.py',str(ROOT/'sources/example.json'),str(t/'consumers.json')]),
   ('symbolic',['symbolic.py',str(t/'symbolic.json')]),
   ('bad',['bad_inputs.py',str(t),str(t/'bad-inputs.json')]),
   ('sources',['sources_check.py',str(t/'sources.json')])]
  for name,parts in commands:
   cmd=[sys.executable,'-S','-B',str(ROOT/'code'/parts[0])]+parts[1:]
   begin=time.monotonic();r=subprocess.run(cmd,cwd=ROOT,capture_output=True,text=True)
   (record/(name+'.stdout.txt')).write_text(r.stdout)
   # Save stderr only if nonempty; no placeholder logs.
   if r.stderr:(record/(name+'.stderr.txt')).write_text(r.stderr)
   row={'name':name,'command':cmd,'returncode':r.returncode,'seconds':round(time.monotonic()-begin,6),'stdout':name+'.stdout.txt'};logs.append(row)
   if r.returncode:
    (record/'FAILED.json').write_text(json.dumps({'commands':logs},indent=2)+'\n')
    raise RuntimeError(r.stderr or r.stdout)
  expected=sorted(p.name for p in (ROOT/'outputs').glob('*.json'));actual=sorted(p.name for p in t.glob('*.json'))
  assert expected==actual,(expected,actual)
  comparisons=[]
  for name in expected:
   left=(ROOT/'outputs'/name).read_bytes();right=(t/name).read_bytes();assert left==right,name
   comparisons.append({'file':name,'sha256':hashlib.sha256(right).hexdigest(),'bytes':len(right),'identical':True})
 after=hashes();assert before==after
 result={'status':'PASS','utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'python':sys.version,
         'empty_output_directory':True,'commands':logs,'output_comparisons':comparisons,'static_hashes_unchanged':True,
         'seconds':round(time.monotonic()-start,6),'max_child_rss_kib':resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,
         'limits':'Author paper proof and stated external logarithm theorem not mechanically proved; no Lean or independent human review.'}
 (record/'reproduction.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n')
 print('PASS fresh reproduction:',len(logs),'commands;',len(comparisons),'byte-identical outputs;',result['seconds'],'seconds')
if __name__=='__main__':main()
