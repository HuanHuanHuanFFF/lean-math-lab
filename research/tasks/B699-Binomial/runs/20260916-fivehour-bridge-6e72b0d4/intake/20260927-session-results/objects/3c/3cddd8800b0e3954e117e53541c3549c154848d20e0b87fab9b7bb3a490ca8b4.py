from pathlib import Path
import sys,subprocess,json,time
from fractions import Fraction as F
P=Path(__file__).resolve().parents[1];sys.path.insert(0,str(P/'code'))
from exact_minors import jet
from frozen_capacity import all_states,OFF,DIAG
from research import make_cofactor_cases
rec=json.loads((P/'discovery/extra_quartic_kernels.json').read_text());pol={ (a,b):F(c,d)for a,b,c,d in rec[0]['basis'][0] }
i=1924;st=all_states()[i];lines=[str(st['h']-4)];up=[]
for ri,r in enumerate(range(3,9)):
 for s in range(r//2+1):
  vals=[(a,b,jet(pol,r,s,a,b))for a in range(9)for b in range(5)if a+2*b<=8]
  m=min(a+b for a,b,v in vals if v);w=min(a+2*b for a,b,v in vals if v)
  diag=r==2*s
  U=w if diag else m
  G=max(0,(DIAG[ri]if diag else OFF[ri][s])-st['v'][ri]);lo=max(0,G-U)
  up.append({'r':r,'s':s,'m':m,'w':w if diag else None,'kappa':2*m-w if diag else 0,'upper':U,'quotient_order':lo})
  lines.append(f'{r} {s} {lo}')
print('FIXED_QUARTIC_SOURCE',up,flush=True)
(P/'discovery/cofactor/1924_fixed.case').write_text('\n'.join(lines)+'\n')
(P/'discovery/fixed_quartic_source.json').write_text(json.dumps(up,indent=2)+'\n')
make_cofactor_cases(all_states(),[1902,1931,2002,1924],P/'discovery/cofactor')
for tag in ['1902','1931','2002','1924','1924_fixed']:
 for name,args in [('module',[P/'discovery/bin/module',P/f'discovery/cofactor/{tag}.case',P/f'discovery/cofactor/{tag}.trace',0]),('receiver',[P/'discovery/bin/module_receive',P/f'discovery/cofactor/{tag}.case',P/f'discovery/cofactor/{tag}.trace',0,257])]:
  t=time.monotonic();r=subprocess.run(list(map(str,args)),capture_output=True,text=True)
  (P/f'discovery/logs/{tag}{name}.log').write_text(r.stdout+r.stderr)
  print(tag,name,r.returncode,'seconds',time.monotonic()-t,r.stdout.strip(),flush=True)
(P/'discovery/module_probe_done.json').write_text(json.dumps({'completed':True}))
