#!/usr/bin/env python3
"""Optional complete rediscovery in a FRESH scratch directory.
Not required for acceptance. Never overwrites the delivered certificates.
"""
import argparse,json,os,shutil,subprocess,sys
from pathlib import Path

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--scratch',type=Path,required=True);ap.add_argument('--max-e',type=int,default=13);args=ap.parse_args()
 if not args.scratch.is_absolute() or args.scratch.exists():raise SystemExit('Use a new absolute scratch directory.')
 base=Path(__file__).resolve().parents[1];s=args.scratch
 for d in ['code','evidence','logs']:(s/d).mkdir(parents=True,exist_ok=True)
 for name in ['probe_all_source.py','discover_uniform.py']:shutil.copy2(base/'code'/name,s/'code'/name)
 for e in range(1,args.max_e+1):
  with (s/'logs'/f'gate{e}.log').open('w') as log:
   subprocess.run([sys.executable,'-u',str(s/'code/probe_all_source.py'),'--e',str(e)],stdout=log,stderr=subprocess.STDOUT,check=True)
  if e<3:continue
  env=dict(os.environ,SAT_E=str(e))
  with (s/'logs'/f'discover{e}.log').open('w') as log:
   subprocess.run([sys.executable,'-u',str(s/'code/discover_uniform.py')],env=env,stdout=log,stderr=subprocess.STDOUT,check=True)
  roots=json.loads((s/'evidence'/f'all_source_gate{e}.json').read_text())['records']
  cc=[json.loads(line) for line in (s/'evidence'/f'sat_e{e}_residual_certificates.jsonl').read_text().splitlines()]
  for c in cc:c['roots']=roots[c['index']]
  (s/'evidence'/f'sat_e{e}_compact.json').write_text(json.dumps(cc,separators=(',',':')))
  print('REDISCOVERED',e,len(cc),flush=True)
if __name__=='__main__':main()
