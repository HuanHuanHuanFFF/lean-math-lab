from pathlib import Path
import subprocess
from concurrent.futures import ThreadPoolExecutor
D=Path('/mnt/data/research1787')
def run(a,l):
 r=subprocess.run(list(map(str,a)),capture_output=True,text=True);(D/f'logs/{l}.log').write_text(r.stdout+r.stderr);print(l,r.returncode,r.stdout.strip(),r.stderr[:300],flush=True)
 if r.returncode:raise RuntimeError(l)
run(['g++','-O3','-std=c++17',D/'code/receive_six.cpp','-o',D/'discovery/six_receiver'],'compile_receiver_q18')
def case(name):
 for p in(32749,32719):
  mi=D/f'discovery/{name}.{p}.minors'
  if not mi.exists():run([D/f'discovery/jets{p}',18,D/f'discovery/{name}.gates',mi,D/f'discovery/{name}.{p}.exceptions'],name+'_jets'+str(p))
  assert not(D/f'discovery/{name}.{p}.exceptions').read_text().strip()
  run([D/'discovery/six_receiver',18,p,D/f'discovery/{name}.gates',mi,'-'],name+'_fixed_receive'+str(p))
with ThreadPoolExecutor(max_workers=2)as ex:list(ex.map(case,('tail18_sat','tail18_near')))
print('PASS_GEOMETRY',flush=True)
