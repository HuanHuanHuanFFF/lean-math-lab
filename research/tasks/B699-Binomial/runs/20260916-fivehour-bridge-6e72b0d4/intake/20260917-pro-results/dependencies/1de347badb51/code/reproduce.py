"""New checks only; write logs outside the immutable delivery directory."""
from pathlib import Path
import argparse,json,time,hashlib,zipfile,sys,resource
from verify import verify
from diagnostics import run as diagnostics
from mutations import run as mutations
ROOT=Path(__file__).resolve().parents[1]

def sources():
 m=json.loads((ROOT/'evidence/source_manifest.json').read_text());a=m['archive'];p=ROOT/a['path']
 assert hashlib.sha256(p.read_bytes()).hexdigest()==a['sha256']
 with zipfile.ZipFile(p) as z:
  for v in m['members']:
   b=(ROOT/v['path']).read_bytes()
   assert hashlib.sha256(b).hexdigest()==v['sha256']
   assert b==z.read(v['archive_member'])
 return dict(status='PASS_INPUT_BYTE_PROVENANCE_ONLY',source_text_members=len(m['members']),historical_mathematical_checks_executed=False)

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True);args=ap.parse_args();out=Path(args.out).resolve()
 if out==ROOT or ROOT in out.parents:raise SystemExit('Choose an output directory outside the delivery.')
 out.mkdir(parents=True,exist_ok=False)
 c=json.loads((ROOT/'evidence/new_certificate.json').read_text());started=time.perf_counter();res={}
 for name,fun in [('parameters',lambda:verify(c)),('mutations',lambda:mutations(c)),('diagnostics',diagnostics),('provenance',sources)]:
  s=time.perf_counter();data=fun();data['seconds']=time.perf_counter()-s
  (out/(name+'.json')).write_text(json.dumps(data,ensure_ascii=False,indent=2));res[name]=data
 summary=dict(status='PASS_NEW_GRAPH_COMPONENT_AND_152_REPLAY',seconds=time.perf_counter()-started,peak_rss_kib=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,python=sys.version.split()[0],checks=res,not_run=['old mathematical chains','dense interpolation matrix','concrete large kernels','large gcd/resultant','Lean'])
 (out/'summary.json').write_text(json.dumps(summary,ensure_ascii=False,indent=2));print(json.dumps({k:summary[k] for k in ['status','seconds','peak_rss_kib']},indent=2))
if __name__=='__main__':main()
