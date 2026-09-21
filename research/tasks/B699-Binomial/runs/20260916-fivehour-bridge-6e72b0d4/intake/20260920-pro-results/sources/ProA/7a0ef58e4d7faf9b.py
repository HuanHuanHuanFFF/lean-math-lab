"""Stage runner, uses exact compiled gates and exact finite-field jet minors."""
import sys,subprocess,json,time,os
from pathlib import Path
p=Path(__file__).resolve().parents[1];outer=Path(os.environ.get('B699_TOOLS',str(p.parent)))
for tag in sys.argv[1:]:
    q=int(tag.split('_')[0][2:]) if tag.startswith('nf') else int(tag[3:])
    h=int(tag.split('_h')[1]) if tag.startswith('nf') else None
    cmd=[str(outer/('nf_gate' if h else 'sat_gate')),str(q)]+([str(h)] if h else [])+['e2',str(p/'evidence'/f'{tag}_gates.json')]
    with (p/'logs'/f'{tag}_fast_gates.log').open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True)
    f=p/'evidence'/f'{tag}_gates.json';x=json.loads(f.read_text());x['records'].sort(key=lambda c:(c['h'],c['roots'],c['lambda'] or 0));f.write_text(json.dumps(x,sort_keys=True,separators=(',',':'))+'\n')
    with (p/'logs'/f'{tag}_fast_jets.log').open('w') as f:subprocess.run([sys.executable,'-u',str(p/'code'/'fast_jets.py'),str(p/'evidence'/f'{tag}_gates.json'),str(p/'evidence'/f'{tag}_minors.json')],stdout=f,stderr=subprocess.STDOUT,check=True)
    print('STAGE_FINISHED',tag,flush=True)
