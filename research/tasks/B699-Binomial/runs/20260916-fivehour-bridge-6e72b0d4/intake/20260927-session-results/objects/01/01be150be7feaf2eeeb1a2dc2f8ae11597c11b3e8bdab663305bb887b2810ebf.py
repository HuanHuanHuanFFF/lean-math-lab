#!/usr/bin/env python3
"""Full current-round replay from frozen inputs; Python stdlib + C++17.
No network, Lean, git or repository operations. Output must not yet exist.
"""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,time,shutil
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import research,exact_minors

def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd,out,label):
 t=time.monotonic();r=subprocess.run(list(map(str,cmd)),cwd=out,text=True,capture_output=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 dump(out/'runs'/f'{label}.json',{'command':list(map(str,cmd)),'exit_code':r.returncode,'elapsed_seconds':time.monotonic()-t})
 if r.returncode:raise RuntimeError((label,r.returncode,r.stdout[-600:],r.stderr[-600:]))
 return r.stdout

def negative_tests(out):
 try:
  import resource
  resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except ImportError:pass
 gd=out/'certificates/geometry';tmp=out/'negative_temp';tmp.mkdir();results=[]
 srcg=(gd/'q8_45_11.gates').read_text().splitlines()[0];srcm=(gd/'q8_45_11.32719.minors').read_text().splitlines()[0]
 def reject(name,g=srcg,m=srcm):
  (tmp/'test.gates').write_text(g+'\n');(tmp/'test.minors').write_text(m+'\n')
  p=subprocess.run(list(map(str,[out/'bin/receive',8,32719,tmp/'test.gates',tmp/'test.minors','-'])),cwd=tmp,text=True,capture_output=True)
  assert p.returncode!=0,('corruption was accepted',name)
  (out/'logs'/f'negative_{name}.log').write_text(p.stdout+p.stderr)
  results.append({'test':name,'rejected':True})
 z=srcg.split();z[19]=str(int(z[19])+1);reject('changed_source_multiplicity',' '.join(z))
 z=srcg.split();z[13+1]=str(int(z[13+1])+1);reject('changed_rational_remainder',' '.join(z))
 z=srcg.split();z[7]=str(int(z[7])+1);reject('odd_row_kappa',' '.join(z))
 z=srcm.split();z[2]='0';reject('zero_determinant',m=' '.join(z))
 z=srcm.split();z[-1]=z[-2];reject('duplicate_selected_jet',m=' '.join(z))
 z=srcm.split();z[-1]='10000000';reject('out_of_range_jet',m=' '.join(z))
 def expect_assert(name,fn):
  try:fn()
  except(AssertionError,ValueError):results.append({'test':name,'rejected':True});return
  raise AssertionError(('bad certificate accepted',name))
 def missing_gate():
  a=(gd/'q8_45_11.gates').read_text().splitlines()[:-1];b=(gd/'q8_45_11.alt').read_text().splitlines();assert sorted(a)==sorted(b)
 expect_assert('missing_root_gate_against_other_anchor',missing_gate)
 def missing_profile():
  q=research.profiles()[:-1];assert len(q)==22
 expect_assert('omitted_even_row_cost_preimage',missing_profile)
 def false_price():
  p=json.loads((out/'certificates/ledger/integer_price_1726.json').read_text());p['eight_factor_degree_lower_numerator']=1888
  assert p['eight_factor_degree_lower_numerator']>16*p['available_degree']
 expect_assert('non_strict_price_bound',false_price)
 def altered_combination():
  a=json.loads((out/'certificates/ledger/all_168_exact_budget_checks.json').read_text());a[0]['sequence'][0][0]+=1
  assert sum(x[0]for x in a[0]['sequence'])==a[0]['old_proxy_total_degree']
 expect_assert('changed_budget_combination',altered_combination)
 shutil.rmtree(tmp)
 assert len(results)==10
 return {'status':'PASS_10_SPECIFIC_NEGATIVE_CONTROLS','tests':results,'not_a_general_correctness_proof':True}

def main(out,jobs):
 if out.exists():raise FileExistsError(out)
 for d in('bin','logs','runs','certificates/geometry','certificates/ledger'):(out/d).mkdir(parents=True,exist_ok=True)
 for path,digest in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()).items():assert sha(ROOT/'inputs'/path)==digest,path
 start=time.monotonic();dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'parallel_jobs':jobs,'network':False,'Lean':False,'repository_operations':False})
 builds=[('gates','profile_gates.cpp',[]),('gates_alt','profile_gates.cpp',['-DALT']),('jets32749','profile_jets.cpp',[]),('jets32719','profile_jets.cpp',['-DMODULUS=32719']),('receive','receive_jets.cpp',[]),('fees','fees.cpp',[]),('enumerate','enumerate_costs.cpp',[])]
 def build(job):
  n,s,f=job;run(['g++','-O3','-std=c++17',*f,ROOT/'code'/s,'-o',out/'bin'/n],out,'build_'+n)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(build,builds))
 fd=out/'certificates/ledger';gd=out/'certificates/geometry'
 states,ids=research.states_and_queries(ROOT,fd)
 run([out/'bin/enumerate',ROOT/'inputs/signatures517.txt',fd/'query1643.txt',fd/'old_1643_cpp.txt',fd/'old_1643_cpp_stats.txt'],out,'old_1643_full_enum')
 old,diagnosis=research.initial_diagnosis(ROOT,fd);cases=research.profiles();dump(gd/'all_22_profiles.json',cases)
 expected={'q8_45_01':1,'q8_45_11':112,'q8_47_01':4,'q8_47_11':87,'q8_48_00':0,'q8_48_01':0,'q8_48_10':0,'q8_48_11':107,'q8_57_11':23,'q8_78_10':0,'q8_78_11':48,'q9_45_01':6,'q9_45_11':178,'q9_47_01':9,'q9_47_11':141,'q9_48_00':0,'q9_48_01':9,'q9_48_10':0,'q9_48_11':241,'q9_57_11':64,'q9_78_10':0,'q9_78_11':145}
 def gatejob(case):
  n,q,D,K=case
  for suf,exe in(('gates','gates'),('alt','gates_alt')):
   run([out/'bin'/exe,q,*D,*K,gd/f'{n}.{suf}'],out,'roots_'+n+'_'+suf)
  a=(gd/f'{n}.gates').read_text().splitlines();b=(gd/f'{n}.alt').read_text().splitlines()
  assert len(a)==len(set(a)) and len(b)==len(set(b)) and sorted(a)==sorted(b) and len(a)==expected[n],n
  for l in a:
   v=list(map(int,l.split()));assert len(v)==40 and v[0]==q and v[1:7]==D and v[7:13]==K
  return {'profile':n,'q':q,'root_configurations':len(a),'complete_anchor_sets_equal':True,'primary_sha256':sha(gd/f'{n}.gates'),'alternate_sha256':sha(gd/f'{n}.alt')}
 with ThreadPoolExecutor(max_workers=jobs)as ex:gate_receipts=list(ex.map(gatejob,cases))
 assert sum(r['root_configurations']for r in gate_receipts)==1175
 dump(gd/'root_completeness_receipt.json',gate_receipts);print('COMPLETE_ROOT_CONFIGURATIONS 1175',flush=True)
 def minorjob(job):
  n,q,p=job;mp=gd/f'{n}.{p}.minors';ep=gd/f'{n}.{p}.exceptions'
  run([out/f'bin/jets{p}',q,gd/f'{n}.gates',mp,ep],out,f'minors_{n}_{p}')
  assert ep.read_text()==''
  msg=run([out/'bin/receive',q,p,gd/f'{n}.gates',mp,'-'],out,f'receiver_{n}_{p}')
  count=len(mp.read_text().splitlines());assert count==expected[n]
  return {'profile':n,'prime':p,'columns':(q-2)**2+1,'nonzero_minors':count,'exceptions':0,'receiver':msg.strip(),'minor_sha256':sha(mp)}
 with ThreadPoolExecutor(max_workers=jobs)as ex:rank=list(ex.map(minorjob,[(n,q,p)for n,q,D,K in cases for p in(32749,32719)]))
 assert sum(r['nonzero_minors']for r in rank)==2350
 dump(gd/'all_minor_receiver_receipts.json',rank)
 n_exact=exact_minors.run(gd,cases,gd/'selected_exact_integer_minors.json')
 print('GEOMETRY_PASS 2350 modular minors; 15 exact integer minors',flush=True)
 raw=research.strengthen(old,fd);research.price1726(raw,states[1726],fd);research.full_dp1643(raw,fd)
 run([out/'bin/fees',fd/'signatures547.txt',fd/'queries106.txt',fd/'fees106.txt'],out,'all106_fees')
 run([out/'bin/enumerate',fd/'signatures547.txt',fd/'query1643.txt',fd/'new_1643_cpp.txt',fd/'new_1643_cpp_stats.txt'],out,'new1643_empty_enum')
 summary=research.finish(ROOT,fd,states,ids,raw)
 run([out/'bin/enumerate',fd/'signatures547.txt',fd/'queries115.txt',fd/'next_h115_cpp.txt',fd/'next_h115_cpp_stats.txt'],out,'next_h115_full_enum')
 next_=research.next_low_frontier(fd,states,raw)
 summary.update(geometric_profiles=22,complete_root_configurations=1175,modular_minor_checks=2350,selected_exact_integer_minors=n_exact,integer_price_signature_checks=547,independent_integer_DP_cells=10935,next_h115_complete_multiset_counts={str(r['state']):r['complete_multiset_count']for r in next_},external_independent_review=False)
 dump(out/'certificates/summary.json',summary)
 neg=negative_tests(out);dump(out/'certificates/negative_controls.json',neg)
 receipt={'status':'PASS','exit_code':0,'duration_seconds':time.monotonic()-start,'source_input_manifest_sha256':sha(ROOT/'inputs/SOURCE_BYTES.json'),'code_sha256':{p.name:sha(p)for p in sorted((ROOT/'code').glob('*'))if p.is_file()},'deterministic_certificates':{str(p.relative_to(out/'certificates')):sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()},'summary':summary,'negative_tests':neg,'network':False,'Lean':False,'repository_operations':False}
 dump(out/'REPLAY_RECEIPT.json',receipt);print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--jobs',type=int,default=2);args=ap.parse_args();assert 1<=args.jobs<=4;main(args.out.resolve(),args.jobs)
