import json,subprocess
from pathlib import Path
root=Path(__file__).resolve().parents[1]; folder=root/'certificates/geometry'
profiles=json.loads((folder/'profiles.json').read_text()); results=[]
for p in profiles:
 i=p['index']; path=folder/f'g{i:02}'
 ret=subprocess.run([str(root/'code/six_jets'),str(p['q']),str(path)+'.txt',str(path)+'.minors',str(path)+'.exceptions'],check=True,text=True,capture_output=True,timeout=20)
 exc=Path(str(path)+'.exceptions').read_text().splitlines(); results.append({'index':i,'q':p['q'],'rows':p['rows'],'exceptions':exc,'stdout':ret.stdout.strip()})
 print(ret.stdout.strip(),flush=True)
 (folder/'minor_summary.json').write_text(json.dumps(results,indent=2)+'\n')
