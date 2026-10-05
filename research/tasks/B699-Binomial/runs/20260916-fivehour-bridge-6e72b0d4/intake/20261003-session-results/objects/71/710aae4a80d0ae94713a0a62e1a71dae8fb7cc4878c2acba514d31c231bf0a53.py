"""Offline full clean-unzip replay: Python 3 + NumPy + g++ (C++17).
No network, Lean or repository actions. Work is written only under this package.
"""
from pathlib import Path
import concurrent.futures as cf
import datetime,hashlib,json,os,platform,subprocess,sys,time
R=Path(__file__).resolve().parents[1];W=R/'work';O=W/'clean_replay';L=O/'logs'
W.mkdir(exist_ok=True);L.mkdir(parents=True,exist_ok=True)
commands=[]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def check_manifest():
 count=0
 for line in (R/'MATH_SHA256SUMS').read_text().splitlines():
  h,f=line.split('  ',1);p=R/f
  assert p.is_file() and sha(p)==h,('math hash mismatch',f);count+=1
 return count

def command(name,cmd,stdin=None):
 t=time.monotonic()
 if stdin is None:p=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 else:
  with Path(stdin).open() as f:p=subprocess.run(list(map(str,cmd)),stdin=f,capture_output=True,text=True)
 (L/(name+'.log')).write_text(p.stdout+p.stderr)
 rec={'name':name,'command':[str(x).replace(str(R),'.') for x in cmd],'returncode':p.returncode,'seconds':round(time.monotonic()-t,3)}
 if stdin:rec['stdin']=str(stdin).replace(str(R),'.')
 commands.append(rec)
 if p.returncode:raise RuntimeError(name+': '+(p.stdout+p.stderr)[-1000:])
 return p.stdout

def geom_task(z,p):
 i=z['index'];q=z['q'];g=R/'certificates/geometry';pre=O/f'g{i:02d}.p{p}'
 minors=Path(str(pre)+'.minors');ex=Path(str(pre)+'.exceptions')
 command(f'g{i:02d}_p{p}_generate',[W/f'six_jets_p{p}',q,g/f'g{i:02d}.txt',minors,ex])
 assert minors.read_bytes()==(g/f'g{i:02d}.p{p}.minors').read_bytes(),('minor bytes',i,p)
 assert ex.read_bytes()==(g/f'g{i:02d}.p{p}.exceptions').read_bytes()==b''
 text=command(f'g{i:02d}_p{p}_receive',[W/f'receive_geometry_p{p}',q,p,g/f'g{i:02d}.txt',minors,ex]).strip()
 assert text==f"PASS q {q} p {p} gates {z['configurations']} minors {z['configurations']} routed_exact_exceptions 0"
 return {'profile':i,'q':q,'prime':p,'minors':z['configurations'],'complete':True}

def kernel_task(path):
 r=json.loads(path.read_text());name=path.name.removesuffix('.receipt.json');k=path.parent;pre=O/name;inp=k/(name+'.input')
 command(name+'_generate',[W/'module_kernel',pre],stdin=inp)
 assert Path(str(pre)+'.trace.tsv').read_bytes()==(k/(name+'.trace.tsv')).read_bytes()
 a=json.loads(Path(str(pre)+'.json').read_text());b=json.loads((k/(name+'.json')).read_text())
 for key in ['e','L','prime','mode','weights','conditions','nonredundant','dimension','min_weight']:assert a[key]==b[key]
 c=json.loads(command(name+'_receive',[W/'check_trace',inp,Path(str(pre)+'.trace.tsv')]))
 for key in ['e','mode','weights','conditions','dimension','min_weight']:assert a[key]==c[key]
 assert a['L']==c['D'] and a['prime']==c['p']
 assert c['verified'] and c['dimension']==0 and c['min_weight']>c['D']
 return {'state':r['state'],'family':r['family'],'prime':r['p'],'mode':r['mode'],'conditions':c['conditions'],'dimension':0,'min_weight':c['min_weight']}

def main():
 start=datetime.datetime.now(datetime.timezone.utc).isoformat();t=time.monotonic();before=check_manifest();print('HASHES',before,flush=True)
 compile_specs=[('root_gates_fast2','root_gates_fast2.cpp',[]),('root_gates_fast2_alt','root_gates_fast2.cpp',['-DALT']),('six_jets_p32749','six_jets_adopted.cpp',[]),('six_jets_p32719','six_jets_adopted.cpp',['-DMODULUS=32719']),('receive_geometry_p32749','receive_geometry_r3.cpp',['-DCHECK_PRIME=32749']),('receive_geometry_p32719','receive_geometry_r3.cpp',['-DCHECK_PRIME=32719']),('module_kernel','module_kernel.cpp',[]),('check_trace','check_trace.cpp',[]),('ledger_receiver','ledger_receiver.cpp',[]),('preimage_receiver','preimage_receiver.cpp',[])]
 for name,src,flags in compile_specs:command('compile_'+name,['g++','-O3','-std=c++17',*flags,R/'code'/src,'-o',W/name])
 from root_set_receiver import accept
 profiles=json.loads((R/'certificates/geometry/profiles.json').read_text());root_runs=[]
 for z in profiles:
  for alt in [False,True]:
   out=O/f"roots_{z['index']}_{int(alt)}.txt";exe=W/('root_gates_fast2_alt' if alt else 'root_gates_fast2')
   command(f"root_{z['index']}_{int(alt)}",[exe,z['q'],*z['delta'],*z['kappa'],out])
   r=accept(out,R/f"certificates/geometry/g{z['index']:02d}.txt",z['configurations']);r.update(profile=z['index'],alternate=alt);root_runs.append(r)
 print('ROOTS complete',sum(z['configurations'] for z in profiles),flush=True)
 geometry=[]
 with cf.ThreadPoolExecutor(max_workers=2) as ex:
  futures=[ex.submit(geom_task,z,p) for z in profiles for p in [32749,32719]]
  for f in cf.as_completed(futures):geometry.append(f.result());print('GEOMETRY',geometry[-1],flush=True)
 kernels=[]
 with cf.ThreadPoolExecutor(max_workers=2) as ex:
  futures=[ex.submit(kernel_task,p) for p in sorted((R/'certificates/kernels').glob('*.receipt.json'))]
  for f in cf.as_completed(futures):kernels.append(f.result());print('KERNEL',kernels[-1],flush=True)
 producer=O/'producer';command('fresh_complete_ledger',[sys.executable,R/'code/build_ledger.py',producer])
 count=0
 for p in (R/'certificates/ledger').rglob('*'):
  if p.is_file():assert p.read_bytes()==(producer/'certificates/ledger'/p.relative_to(R/'certificates/ledger')).read_bytes(),('ledger byte mismatch',p);count+=1
 assert (R/'certificates/frontier7.tsv').read_bytes()==(producer/'certificates/frontier7.tsv').read_bytes()
 pre=json.loads(command('preimage_receive',[W/'preimage_receiver',R/'sources/global649.txt',R/'certificates/raw_preimages.tsv']))
 assert pre==json.loads((R/'certificates/PREIMAGE_RECEIPT.json').read_text())
 command('next1964_diagnostic',[sys.executable,R/'code/next_1964.py',producer])
 assert (producer/'certificates/NEXT_1964.json').read_bytes()==(R/'certificates/NEXT_1964.json').read_bytes()
 from negative_controls import run
 negative=run(O/'negative_controls')
 after=check_manifest();assert before==after
 receipt={'complete':True,'start_UTC':start,'finish_UTC':datetime.datetime.now(datetime.timezone.utc).isoformat(),'elapsed_seconds':round(time.monotonic()-t,3),'location':'freshly unzipped package in this conversation sandbox, not user machine','python':sys.version,'numpy':__import__('numpy').__version__,'platform':platform.platform(),'g++':subprocess.run(['g++','--version'],capture_output=True,text=True).stdout.splitlines()[0],'math_manifest_sha256':sha(R/'MATH_SHA256SUMS'),'fixed_payload_files_verified_before_after':before,'compiled_executables':len(compile_specs),'root_enumerations':root_runs,'geometry_runs':sorted(geometry,key=lambda a:(a['profile'],a['prime'])),'kernel_runs':sorted(kernels,key=lambda a:(a['state'],a['prime'])),'fresh_ledger_files_equal':count,'preimage_receiver':pre,'ledger_summary':{k:v for k,v in json.loads((R/'certificates/ledger/SUMMARY.json').read_text()).items() if k!='states'},'negative_controls':negative,'commands':commands,'historical_mathematics_rerun':False,'Lean':False,'external_independent_review':False}
 (O/'REPLAY_RECEIPT.json').write_text(json.dumps(receipt,indent=2)+'\n');print('REPLAY PASS',receipt['elapsed_seconds'],flush=True)
if __name__=='__main__':main()
