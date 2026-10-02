from common import *
import subprocess
O=ROOT/'certificates/geometry';profiles=json.loads((O/'profiles.json').read_text());records=[]
for x in profiles:
 stem=O/f'g{x["index"]:02d}';a=Path(str(stem)+'.txt').read_text().splitlines();b=Path(str(stem)+'.alt').read_text().splitlines();assert len(a)==len(set(a))==x['configurations'] and sorted(a)==sorted(b)
 for p in [32749,32719]:
  cmd=[str(ROOT/'code/receive_geometry_r2'),str(x['q']),str(p),str(stem)+'.txt',str(stem)+f'.p{p}.minors',str(stem)+f'.p{p}.exceptions'];a=subprocess.run(cmd,check=True,capture_output=True,text=True);assert not Path(str(stem)+f'.p{p}.exceptions').read_text().strip();records.append({'profile':x['index'],'p':p,'stdout':a.stdout.strip()});print(a.stdout.strip(),flush=True)
(O/'RECEIPT.json').write_text(json.dumps({'runs':records,'all_full_rank':True,'profiles':len(profiles),'configurations':sum(x['configurations'] for x in profiles)},indent=2)+'\n')
