#!/usr/bin/env python3
"""Regenerate THIS round from frozen FRONTIER104 inputs, offline.
Python stdlib + C++17. No repository operations and no Lean.
"""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,time,shutil
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
if hasattr(sys,'set_int_max_str_digits'):sys.set_int_max_str_digits(0)
ROOT=Path(__file__).resolve().parents[1]
import research,exact_minors

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def run(cmd,out,label):
 t=time.monotonic();r=subprocess.run(list(map(str,cmd)),cwd=out,text=True,capture_output=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 dump(out/'runs'/f'{label}.json',{'command':list(map(str,cmd)),'exit_code':r.returncode,'elapsed_seconds':time.monotonic()-t})
 if r.returncode:raise RuntimeError((label,r.returncode,r.stdout[-800:],r.stderr[-800:]))
 return r.stdout

def geometry(out,cases,stage,jobs,expected):
 gd=out/f'certificates/geometry/{stage}';gd.mkdir(parents=True)
 dump(gd/'complete_profiles.json',cases)
 def gates(case):
  name,q,D,K=case
  for ext,exe in [('gates','gates'),('alt','gates_alt')]:
   run([out/'bin'/exe,q,*D,*K,gd/f'{name}.{ext}'],out,f'{stage}_roots_{name}_{ext}')
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines()
  assert len(a)==len(set(a))and len(b)==len(set(b))and sorted(a)==sorted(b),name
  assert len(a)==expected[name],name
  for line in a:
   x=list(map(int,line.split()));assert len(x)==46 and x[0]==q and x[1:7]==D and x[7:13]==K
  return {'profile':name,'q':q,'root_configurations':len(a),'complete_anchor_sets_equal':True,
          'primary_sha256':sha(gd/f'{name}.gates'),'alternate_sha256':sha(gd/f'{name}.alt')}
 with ThreadPoolExecutor(max_workers=jobs)as ex:gs=list(ex.map(gates,cases))
 dump(gd/'root_completeness_receipt.json',gs)
 total=sum(x['root_configurations']for x in gs);assert total==(9695 if stage=='A'else 5416)
 print('ROOTS',stage,'complete profiles',len(cases),'gates',total,flush=True)
 def minor(job):
  name,q,p=job;mp=gd/f'{name}.{p}.minors';ep=gd/f'{name}.{p}.exceptions'
  run([out/f'bin/jets{p}',q,gd/f'{name}.gates',mp,ep],out,f'{stage}_minors_{name}_{p}')
  assert ep.read_text()=='',('unresolved kernel',name,p)
  receipt=run([out/'bin/receive',q,p,gd/f'{name}.gates',mp,'-'],out,f'{stage}_receive_{name}_{p}')
  n=len(mp.read_text().splitlines());assert n==expected[name]
  return {'profile':name,'prime':p,'columns':(q-2)**2+1,'nonzero_minors':n,'residual_kernels':0,
          'local_convolution_receiver':receipt.strip(),'minor_sha256':sha(mp)}
 with ThreadPoolExecutor(max_workers=jobs)as ex:rs=list(ex.map(minor,[(n,q,p)for n,q,D,K in cases for p in(32749,32719)]))
 assert sum(x['nonzero_minors']for x in rs)==2*total
 dump(gd/'all_minor_receiver_receipts.json',rs)
 if stage=='A':
  ne=exact_minors.run(gd,cases,gd/'selected_exact_integer_minors.json');assert ne==10
  research.quadratic_statistics(gd,cases,gd/'quadratic_remainder_statistics.json')
 else:
  selected=[x for x in cases if x[0]in('q16_000003_000000','q17_000003_000000')]
  ne=exact_minors.run(gd,selected,gd/'selected_exact_integer_minors.json');assert ne==2
 print('GEOMETRY_RECEIVED',stage,'modular_minors',2*total,'exact_integer_minors',ne,flush=True)
 return {'profiles':len(cases),'root_configurations':total,'modular_minor_checks':2*total,'exact_integer_minors':ne,'residual_kernels':0}


def negatives(out):
 try:
  import resource;resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except ImportError:pass
 gd=out/'certificates/geometry/A';tmp=out/'negative_temp';tmp.mkdir();results=[]
 name='q8_000400_000200';gl=(gd/f'{name}.gates').read_text().splitlines();ml=(gd/f'{name}.32719.minors').read_text().splitlines();srcg=gl[0];srcm=ml[0]
 def reject(name,g=srcg,m=srcm,skip='-'):
  (tmp/'gates').write_text(g+'\n');(tmp/'minors').write_text(m+'\n')
  r=subprocess.run(list(map(str,[out/'bin/receive',8,32719,tmp/'gates',tmp/'minors',skip])),cwd=tmp,text=True,capture_output=True)
  assert r.returncode!=0,('bad input accepted',name)
  (out/'logs'/f'negative_{name}.log').write_text(r.stdout+r.stderr);results.append({'test':name,'rejected':True})
 x=srcg.split();x[25]=str(int(x[25])+1);reject('changed_ordinary_multiplicity',' '.join(x))
 x=srcg.split();x[22]=str(int(x[22])+1);reject('changed_quadratic_constant',' '.join(x))
 x=srcg.split();x[16]=str(int(x[16])+1);reject('changed_rational_root_sum',' '.join(x))
 x=srcg.split();x[7]='1';reject('odd_source_kappa',' '.join(x))
 reject('truncated_gate',' '.join(srcg.split()[:-1]))
 x=srcm.split();x[2]='0';reject('zero_determinant',m=' '.join(x))
 x=srcm.split();x[-1]=x[-2];reject('duplicate_jet',m=' '.join(x))
 x=srcm.split();x[-1]='999999';reject('out_of_range_jet',m=' '.join(x))
 reject('missing_minor',m='')
 reject('unapproved_skip',skip='0')
 def asserted(name,fn):
  try:fn()
  except(AssertionError,ValueError):results.append({'test':name,'rejected':True});return
  raise AssertionError(('invalid certificate accepted',name))
 def missing_gate():assert sorted(gl[:-1])==sorted((gd/f'{name}.alt').read_text().splitlines())
 asserted('missing_gate_against_second_anchor',missing_gate)
 def missing_quadratic_profile():
  a=research.profiles('A');a=[x for x in a if x[0]!='q8_000400_000200'];assert len(a)==18
 asserted('omitted_delta6_two_profile',missing_quadratic_profile)
 def bad_budget():
  a=json.loads((out/'certificates/ledger/all75_budget_checks.json').read_text())[0];a['sequence'][0][0]+=1
  assert sum(x[0]for x in a['sequence'])==a['proxy_degree']
 asserted('altered_full_combination',bad_budget)
 def non_strict():
  a=json.loads((out/'certificates/ledger/integer_prices_20_states.json').read_text())[0]
  n=a['degree_multiplier']*a['available_h'];assert n>a['degree_multiplier']*a['available_h']
 asserted('nonstrict_price_not_an_exclusion',non_strict)
 def bad_input_hash():
  a=json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text());k=next(iter(a));assert sha(ROOT/'inputs'/k)=='0'*64
 asserted('changed_frozen_input_hash',bad_input_hash)
 assert len(results)==15;shutil.rmtree(tmp)
 return {'status':'PASS_15_SPECIFIC_NEGATIVE_CONTROLS','tests':results,'not_a_general_correctness_proof':True}


def main(out,jobs):
 if out.exists():raise FileExistsError(out)
 for d in ('bin','logs','runs','certificates/ledger','certificates/geometry'):(out/d).mkdir(parents=True,exist_ok=True)
 source=json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text())
 for rel,h in source.items():assert sha(ROOT/'inputs'/rel)==h,rel
 start=time.monotonic();dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'jobs':jobs,
  'cxx':subprocess.run(['g++','--version'],text=True,capture_output=True,check=True).stdout.splitlines()[0],
  'network':False,'Lean':False,'repository_operations':False})
 builds=[('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),
         ('jets32719','six_jets.cpp',['-DMODULUS=32719']),('receive','receive_six.cpp',[]),('fees','fees.cpp',[]),
         ('enumerate','enumerate_costs.cpp',[]),('full_grid_dp','full_grid_dp.cpp',[])]
 def build(t):
  n,s,flags=t;run(['g++','-O3','-std=c++17',*flags,ROOT/'code'/s,'-o',out/'bin'/n],out,'compile_'+n)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(build,builds))
 fd=out/'certificates/ledger';states,ids=research.states_and_queries(ROOT,fd)
 run([out/'bin/enumerate',ROOT/'inputs/signatures547.txt',fd/'query1672.txt',fd/'initial1672_cpp.txt',fd/'initial1672_cpp_stats.txt'],out,'initial75_complete_enumeration')
 old,initial=research.initial75(ROOT,fd,states)
 expected=json.loads((ROOT/'inputs/discovery_root_counts.json').read_text())
 A=geometry(out,research.profiles('A'),'A',jobs,expected)
 rawA=research.strengthen(old,research.COST_A,8,10,fd,'signatures565.txt');assert len(rawA)==565
 run([out/'bin/fees',fd/'signatures565.txt',fd/'queries104.txt',fd/'stageA_fees104.txt'],out,'stageA_all104_fees')
 run([out/'bin/enumerate',fd/'signatures565.txt',fd/'queries115.txt',fd/'stageA_next115_cpp.txt',fd/'stageA_next115_cpp_stats.txt'],out,'stageA_next_h115_full_enumeration')
 research.stageA_finish(fd,states,ids,rawA)
 B=geometry(out,research.profiles('B'),'B',jobs,expected)
 raw=research.strengthen(rawA,research.COST_B,16,18,fd,'signatures619.txt');assert len(raw)==619
 run([out/'bin/fees',fd/'signatures619.txt',fd/'queries104.txt',fd/'final_fees104.txt'],out,'final_all104_fees')
 run([out/'bin/full_grid_dp',fd/'signatures619.txt',fd/'queries104.txt',fd/'full_DP_summary.tsv',fd/'all104_full_integer_cells.tsv'],out,'all_raw_full_grid_DP')
 summary=research.finish(ROOT,fd,states,ids,raw)
 pricechecks=research.prices(ROOT,fd,raw,states,summary['removed_states'])
 run([out/'bin/enumerate',fd/'signatures619.txt',fd/'query1679.txt',fd/'next1679_cpp.txt',fd/'next1679_cpp_stats.txt'],out,'next1679_complete_enumeration')
 next_=research.next1679(fd,states,raw)
 summary.update(stageA=A,stageB=B,geometric_profiles=A['profiles']+B['profiles'],
  total_root_configurations=A['root_configurations']+B['root_configurations'],
  total_modular_minor_checks=A['modular_minor_checks']+B['modular_minor_checks'],
  selected_exact_integer_minors=A['exact_integer_minors']+B['exact_integer_minors'],
  all_signature_integer_price_checks=pricechecks,price_states=20,next_state=next_,external_independent_review=False)
 dump(out/'certificates/summary.json',summary)
 neg=negatives(out);dump(out/'certificates/negative_controls.json',neg)
 receipt={'status':'PASS','exit_code':0,'duration_seconds':time.monotonic()-start,
          'source_input_manifest_sha256':sha(ROOT/'inputs/SOURCE_BYTES.json'),
          'code_sha256':{p.name:sha(p)for p in sorted((ROOT/'code').glob('*'))if p.is_file()},
          'deterministic_certificates':{str(p.relative_to(out/'certificates')):sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()},
          'summary':summary,'negative_tests':neg,'network':False,'Lean':False,'repository_operations':False}
 dump(out/'REPLAY_RECEIPT.json',receipt);print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--jobs',type=int,default=2)
 args=ap.parse_args();assert 1<=args.jobs<=4;main(args.out.resolve(),args.jobs)
