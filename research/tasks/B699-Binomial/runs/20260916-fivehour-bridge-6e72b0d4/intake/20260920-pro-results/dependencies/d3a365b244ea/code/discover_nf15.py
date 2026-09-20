"""Bounded new NF89 gates only; no old finite chain is executed."""
from pathlib import Path
import subprocess,sys,time,json,os,argparse
ROOT=Path(__file__).resolve().parents[1];TOOLS=ROOT.parent

def stage(h):
 tag=f'nf15_h{h}';start=time.monotonic();env=dict(os.environ,OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1')
 cmds=[[str(TOOLS/'nf_gate'),'15',str(h),'e2',str(ROOT/'evidence'/f'{tag}_gates.json')],
       [sys.executable,'-u',str(ROOT/'code/fast_jets.py'),str(ROOT/'evidence'/f'{tag}_gates.json'),str(ROOT/'evidence'/f'{tag}_minors.json')]]
 for name,cmd in zip(('gates','jets'),cmds):
  with (ROOT/'logs'/f'{tag}_{name}.log').open('w') as f:
   rr=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=env)
  if rr.returncode:raise RuntimeError((cmd,rr.returncode))
  if name=='gates':
   f=ROOT/'evidence'/f'{tag}_gates.json';g=json.loads(f.read_text());g['records'].sort(key=lambda c:(c['h'],c['roots'],c['lambda'] or 0));f.write_text(json.dumps(g,separators=(',',':'),sort_keys=True)+'\n')
 out={'h':h,'commands':cmds,'exit_code':0,'seconds':round(time.monotonic()-start,3)}
 (ROOT/'logs'/f'{tag}_discovery_receipt.json').write_text(json.dumps(out,indent=2)+'\n')
 print('COMPLETE',tag,out['seconds'],flush=True)
if __name__=='__main__':
 for h in map(int,sys.argv[1:]):stage(h)
