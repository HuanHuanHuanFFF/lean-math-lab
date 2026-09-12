from pathlib import Path
import json,subprocess,time
R=Path(__file__).resolve().parents[1]
def main():
 rows=json.loads((R/'evidence/content_tail.json').read_text())['rows'];summary=[]
 for s in rows:
  key='_'.join(str(s[k]) for k in ['e','d','f']);target=R/f'evidence/content_finite_{key}.json'
  cmd=[str(R/'bin/content_finite'),str(R/f'input/content_catalog_{key}.txt'),str(R/'cache/primes/primes.u32'),str(R/'cache/primes/weights.u64'),str(target)]
  with (R/f'replay/content_finite_{key}.log').open('w') as log:subprocess.run(cmd,stdout=log,stderr=log,check=True)
  obj=json.loads(target.read_text());obj.update({k:s[k] for k in ['e','d','f','g','W']});obj['all_permutations']=True;spec=next(x for x in json.loads((R/'input/content_specs.json').read_text())['families'] if all(x[k]==s[k] for k in ['e','d','f']));assert obj['m0']==spec['expected_m0'];target.write_text(json.dumps(obj,indent=2)+'\n')
  summary.append({k:obj[k] for k in ['e','d','f','g','m0','M','seconds','peak_rss_kib']});summary[-1]['blocks']=len(obj['blocks']);print(summary[-1],flush=True)
 (R/'evidence/content_finite_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
if __name__=='__main__':main()
