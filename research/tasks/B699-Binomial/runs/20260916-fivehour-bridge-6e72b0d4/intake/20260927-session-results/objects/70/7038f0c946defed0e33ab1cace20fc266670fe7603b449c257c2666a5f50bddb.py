from pathlib import Path
import subprocess,shutil,json
from concurrent.futures import ThreadPoolExecutor
D=Path('/mnt/data/research1787');F=Path('/mnt/data/work_source43/B699-ProA-LATE10-TAIL8-H125-FRONTIER43-20260926-evidence')
for n in ('six_gates.cpp','six_jets.cpp','receive_six.cpp','exact_minors.py'):shutil.copyfile(F/'code'/n,D/'code'/n)
def call(args,label):
 r=subprocess.run(list(map(str,args)),capture_output=True,text=True)
 (D/f'logs/{label}.log').write_text(r.stdout+r.stderr)
 print(label,r.returncode,r.stdout.strip(),r.stderr[:500],flush=True)
 if r.returncode:raise RuntimeError(label)
 return r.stdout
builds=[('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('six_receiver','receive_six.cpp',[])]
for name,src,flags in builds:call(['g++','-O3','-std=c++17',*flags,D/'code'/src,'-o',D/'discovery'/name],'compile_'+name)
cases=[('tail18_sat',[0]*6,[0,0,0,0,0,3]),('tail18_near',[0,0,0,0,0,1],[0,0,0,0,0,1])]
def run(case):
 name,d,k=case
 for exe,ext in [('gates','gates'),('gates_alt','alt')]:call([D/'discovery'/exe,18,*d,*k,D/f'discovery/{name}.{ext}'],name+'_'+ext)
 a=(D/f'discovery/{name}.gates').read_text().splitlines();b=(D/f'discovery/{name}.alt').read_text().splitlines();assert sorted(a)==sorted(b)
 print('ANCHORS_EQUAL',name,len(a),flush=True)
 for p in(32749,32719):
  call([D/f'discovery/jets{p}',18,D/f'discovery/{name}.gates',D/f'discovery/{name}.{p}.minors',D/f'discovery/{name}.{p}.exceptions'],name+'_jets'+str(p))
  exc=(D/f'discovery/{name}.{p}.exceptions').read_text().splitlines()
  if exc:print('SURVIVOR_KERNELS',name,p,exc[:10],flush=True)
  else:call([D/'discovery/six_receiver',18,p,D/f'discovery/{name}.gates',D/f'discovery/{name}.{p}.minors','-'],name+'_receive'+str(p))
with ThreadPoolExecutor(max_workers=2)as ex:list(ex.map(run,cases))
print('GEOMETRY_FINISHED',flush=True)
