from pathlib import Path
import sys,subprocess,time
P=Path(__file__).resolve().parents[1];sys.path.insert(0,str(P/'code'))
from research import make_cofactor_cases
from frozen_capacity import all_states
make_cofactor_cases(all_states(),[1699,1701],P/'discovery/cofactor')
for i in [1699,1701]:
 for kind,args in [('module',[P/'discovery/bin/module',P/f'discovery/cofactor/{i}.case',P/f'discovery/cofactor/{i}.trace',0]),('receiver',[P/'discovery/bin/module_receive',P/f'discovery/cofactor/{i}.case',P/f'discovery/cofactor/{i}.trace',0,257])]:
  t=time.monotonic();r=subprocess.run(list(map(str,args)),capture_output=True,text=True)
  (P/f'discovery/logs/{i}{kind}.log').write_text(r.stdout+r.stderr)
  print(i,kind,r.returncode,'seconds',time.monotonic()-t,r.stdout.strip(),flush=True)
(P/'discovery/low_remaining_probe_done.txt').write_text('DONE\n')
