"""All NEW checks; never executes an archived historical receiver."""
from pathlib import Path
from zipfile import ZipFile
from hashlib import sha256
import json,sys,time,platform,argparse
from verify import verify,require
from diagnostics import run as diagnostics
from mutation_tests import run as mutations
ROOT=Path(__file__).resolve().parents[1]
def source_check():
 d=json.loads((ROOT/'evidence/source_manifest.json').read_text());members=0
 for item in d['records']:
  bb=(ROOT/item['path']).read_bytes()
  require(sha256(bb).hexdigest()==item['sha256'],'source hash '+item['path'])
  if 'member' in item:
   with ZipFile(ROOT/item['source']) as z:require(z.read(item['member'])==bb,'original source bytes')
   members+=1
 return {'records':len(d['records']),'zip_member_equalities':members,'historical_receivers_executed':0}
def main():
 p=argparse.ArgumentParser();p.add_argument('--out',required=True);a=p.parse_args()
 out=Path(a.out).resolve();require(out!=ROOT,'output must be a separate directory');out.mkdir(parents=True,exist_ok=True)
 st=time.time();data=json.loads((ROOT/'evidence/certificate.json').read_text())
 result={'status':'RUNNING','python':platform.python_version(),'start_unix':st,
  'code_sha256':{str(p.relative_to(ROOT)):sha256(p.read_bytes()).hexdigest() for p in sorted((ROOT/'code').glob('*.py'))},
  'certificate_sha256':sha256((ROOT/'evidence/certificate.json').read_bytes()).hexdigest(),
  'proof_sha256':sha256((ROOT/'notes/PROOFS.md').read_bytes()).hexdigest()}
 for key,fun in [('sources',source_check),('certificate',lambda:verify(data)),('diagnostics',diagnostics),('mutations',lambda:mutations(data))]:
  result[key]=fun();(out/(key+'.json')).write_text(json.dumps(result[key],indent=2));print(key,result[key].get('status','PASS'),flush=True)
 result.update(status='PASS_COMPLETE_NEW_QUADRATIC_CLOSURE_REPLAY',seconds=time.time()-st,
  boundary='new finite algebra, coverage, formula diagnostics and byte provenance only; no Lean or historical full replay')
 (out/'FULL_REPLAY.json').write_text(json.dumps(result,indent=2));print(json.dumps({'status':result['status'],'seconds':result['seconds']}))
if __name__=='__main__':main()
