from pathlib import Path
import json,subprocess,collections,hashlib,sys
R=Path(__file__).resolve().parents[1];G=R/'certificates'/('extra_geometry' if '--extra' in sys.argv else 'geometry')
profiles=json.loads((G/'profiles.json').read_text());results=[]
for x in profiles:
 i=x['index'];q=x['q']
 a=(G/f'g{i:02}.txt').read_text().splitlines();b=(G/f'g{i:02}.alt').read_text().splitlines();assert sorted(a)==sorted(b) and len(a)==len(set(a))==x['rows']
 for p in [32749,32719]:
  cmd=[str(R/'code/receive_geometry_r2'),str(q),str(p),str(G/f'g{i:02}.txt'),str(G/f'g{i:02}.p{p}.minors'),str(G/f'g{i:02}.p{p}.exceptions')]
  z=subprocess.run(cmd,check=True,capture_output=True,text=True)
  results.append({'profile':i,'prime':p,'stdout':z.stdout.strip()});print(z.stdout.strip(),flush=True)
 assert (G/f'g{i:02}.p32749.exceptions').read_text()==(G/f'g{i:02}.p32719.exceptions').read_text()
rec={'profiles':len(profiles),'new_profiles':sum(x['purpose']=='new_low_preimage' for x in profiles),'new_configurations':sum(x['rows'] for x in profiles if x['purpose']=='new_low_preimage'),'total_configurations':sum(x['rows'] for x in profiles),'received_runs':len(results),'results':results}
(G/'geometry_receipt.json').write_text(json.dumps(rec,indent=2)+'\n')
