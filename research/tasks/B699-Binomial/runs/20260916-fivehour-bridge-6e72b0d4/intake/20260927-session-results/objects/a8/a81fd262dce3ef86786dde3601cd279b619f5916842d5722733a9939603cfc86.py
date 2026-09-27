#!/usr/bin/env python3
"""Reproduce this round offline. No repository, network, Lean or historical replay.
Python standard library plus GNU C++17. Outputs must be a new directory.
"""
from __future__ import annotations
import argparse,json,hashlib,platform,subprocess,sys,time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import research,exact_recovery

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def call(cmd,out,label,expect_failure=False):
 t=time.monotonic();args=list(map(str,cmd));r=subprocess.run(args,text=True,capture_output=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 dump(out/'runs'/f'{label}.json',{'command':args,'exit_code':r.returncode,'duration_seconds':time.monotonic()-t,'expected_failure':expect_failure})
 if (r.returncode==0)==expect_failure:raise RuntimeError((label,r.returncode,r.stdout,r.stderr))
 return r.stdout

def main(out,jobs):
 if out.exists():raise FileExistsError(out)
 for d in ['bin','logs','runs','certificates/geometry','certificates/ledger','certificates/cofactor','negative_tests']:(out/d).mkdir(parents=True,exist_ok=True)
 start=time.monotonic()
 for name,digest in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()).items():assert sha(ROOT/'inputs'/name)==digest,name
 dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'offline':True,'repository_operations':False,'Lean':False,'parallel_jobs':jobs})
 builds=[('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('receiver','receive_six.cpp',[]),('module257','module.cpp',[]),('module263','module.cpp',['-DPRIME=263']),('module_receive257','module_receiver.cpp',[]),('module_receive263','module_receiver.cpp',['-DRECEIVER_PRIME=263']),('fees','fees.cpp',[]),('enum','enumerate_costs.cpp',[]),('full_dp','full_grid_dp.cpp',[])]
 def build(x):
  name,src,flags=x;call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(build,builds))
 fd=out/'certificates/ledger';gd=out/'certificates/geometry';cd=out/'certificates/cofactor'
 st,ids,raw,conditional=research.init(ROOT,fd)
 call([out/'bin/enum',ROOT/'inputs/signatures619.txt',fd/'query1679.txt',fd/'main1679_cpp.txt',fd/'main1679_cpp_stats.txt'],out,'main1679_complete_enumeration')
 low,main_summary=research.main_preimages(ROOT,fd,st,raw);paircover,registry=research.check_profile_registry(ROOT,fd,low)
 cases=registry['new'];exceptions=registry['exception_indices']
 def gates(case):
  name,q,d,k=case
  for suffix,exe in [('gates','gates'),('alt','gates_alt')]:call([out/'bin'/exe,q,*d,*k,gd/f'{name}.{suffix}'],out,'gates_'+name+'_'+suffix)
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines()
  assert len(a)==len(set(a))and sorted(a)==sorted(b)
  return {'profile':name,'q':q,'delta':d,'kappa':k,'gates':len(a),'two_anchor_complete_sets_equal':True,'primary_sha256':sha(gd/f'{name}.gates'),'alternate_sha256':sha(gd/f'{name}.alt')}
 with ThreadPoolExecutor(max_workers=jobs)as ex:gate_records=list(ex.map(gates,cases))
 assert len(gate_records)==33 and sum(x['gates']for x in gate_records)==372
 dump(gd/'gate_completeness.json',gate_records)
 print('NEW_ROOT_GATES',len(gate_records),sum(x['gates']for x in gate_records),flush=True)
 def ranks(arg):
  case,p=arg;name,q,d,k=case;minor=gd/f'{name}.{p}.minors';bad=gd/f'{name}.{p}.exceptions'
  call([out/f'bin/jets{p}',q,gd/f'{name}.gates',minor,bad],out,f'rank_{name}_{p}')
  rows=[list(map(int,l.split()))for l in bad.read_text().splitlines()]
  expect=[[i,3 if q==4 else 9,(q-2)**2+1]for i in exceptions.get(name,[])]
  assert rows==expect,(name,p,rows,expect)
  skips=','.join(map(str,exceptions.get(name,[])))or'-'
  result=call([out/'bin/receiver',q,p,gd/f'{name}.gates',minor,skips],out,f'receive_{name}_{p}')
  return {'profile':name,'q':q,'prime':p,'nonzero_minors':len(minor.read_text().splitlines()),'rational_exception_indices':exceptions.get(name,[]),'receiver':result.strip()}
 with ThreadPoolExecutor(max_workers=jobs)as ex:rr=list(ex.map(ranks,[(c,p)for c in cases for p in(32749,32719)]))
 assert sum(x['nonzero_minors']for x in rr)==734
 dump(gd/'rank_receipt.json',rr)
 kernels=exact_recovery.run(gd,gd);samples=exact_recovery.integer_samples(gd,cases,gd)
 print('GEOMETRY_COMPLETE minors=734 exact_kernels=5 samples='+str(samples),flush=True)
 call([out/'bin/fees',fd/'CONDITIONAL_T10_NOT_GLOBAL.txt',fd/'queries77.txt',fd/'conditional_fees77.txt'],out,'conditional_eT10_candidates')
 selected=research.select_states(fd,st,ids,conditional)
 call([out/'bin/fees',ROOT/'inputs/signatures619.txt',fd/'queries77.txt',fd/'original_fees77.txt'],out,'original77_fee_witnesses')
 def dp(job):
  label,source,queries,prefix=job
  return call([out/'bin/full_dp',source,queries,fd/f'{prefix}_summary.tsv',fd/f'{prefix}_full_cells.tsv'],out,label)
 with ThreadPoolExecutor(max_workers=jobs)as ex:
  dpout=list(ex.map(dp,[('original_selected_full_DP',ROOT/'inputs/signatures619.txt',fd/'selected_queries.txt','original_selected_DP'),('conditional_full_DP',fd/'CONDITIONAL_T10_NOT_GLOBAL.txt',fd/'queries77.txt','conditional_full_DP')]))
 # Stable canonical filenames used by resource consumers.
 (fd/'original_selected_DP_full_cells.tsv').rename(fd/'original_selected_full_cells.tsv')
 domains,paircount=research.low_domains(fd,st,selected,paircover)
 inputs=research.make_cofactor_cases(st,selected,cd)
 tasks=[(i,257,0)for i in selected]+[(1679,257,1),(1679,263,0),(1679,263,1)]
 def module(job):
  i,p,rev=job;trace=cd/f'{i}_p{p}_reverse{rev}.trace';case=cd/f'{i}.case'
  msg=call([out/f'bin/module{p}',case,trace,rev],out,f'module_{i}_{p}_{rev}')
  result=call([out/f'bin/module_receive{p}',case,trace,rev,p],out,f'module_receive_{i}_{p}_{rev}')
  hq=st[i]['h']-4;weights=list(map(int,trace.read_text().splitlines()[-1].split()[1:]));header=list(map(int,trace.read_text().splitlines()[0].split()))
  assert len(weights)==hq+1 and min(weights)>2*hq and header[0]==p and header[1]==hq
  rec={'state':i,'prime':p,'reverse_sources':rev,'quotient_X_degree':hq,'weighted_degree_bound':2*hq,'constraints':header[2],'weights':weights,'nullity':0,'trace_sha256':sha(trace),'generator':msg.strip(),'receiver':result.strip()}
  print('COFACTOR_ACCEPTED',i,p,rev,'min_weight',min(weights),flush=True);return rec
 with ThreadPoolExecutor(max_workers=jobs)as ex:mr=list(ex.map(module,tasks))
 dump(cd/'module_receipt.json',mr);assert len(mr)==24
 summary=research.finish(ROOT,fd,st,ids,raw,conditional,selected)
 call([out/'bin/enum',ROOT/'inputs/signatures619.txt',fd/'next_h117_queries.txt',fd/'next_h117_cpp.txt',fd/'next_h117_cpp_stats.txt'],out,'next_h117_complete_enumeration')
 nxt=research.next_frontier(fd,st,raw)
 summary.update(main1679=main_summary,new_geometry_profiles=33,adopted_geometry_profiles=15,complete_low_q_numeric_pairs=35,new_root_configurations=372,nonzero_modular_minors=734,exact_rational_exception_systems=5,exact_integer_minor_samples=samples,cofactor_systems=21,cofactor_generations_with_receivers=24,total_admitted_state_preimages=paircount,next_h117=nxt,external_independent_review=False,status='PASS_T_PREIMAGE_S5_FRONTIER56')
 dump(out/'certificates/summary.json',summary)
 # Focused fail-closed controls; none count as positive evidence.
 neg=[]
 def badtest(name,cmd):call(cmd,out,'negative_'+name,True);neg.append({'name':name,'rejected':True})
 ng=out/'negative_tests';src=(gd/'t01_q4.gates').read_text().splitlines();mini=(gd/'t01_q4.32719.minors').read_text().splitlines()
 v=list(map(int,mini[0].split()));v[2]=(v[2]+1)%32719 or 1
 (ng/'wrong_det.minors').write_text(' '.join(map(str,v))+'\n'+'\n'.join(mini[1:])+'\n')
 badtest('changed_determinant',[out/'bin/receiver',4,32719,gd/'t01_q4.gates',ng/'wrong_det.minors','-'])
 v=list(map(int,mini[0].split()));v[-1]=v[-2]
 (ng/'duplicate_jet.minors').write_text(' '.join(map(str,v))+'\n'+'\n'.join(mini[1:])+'\n')
 badtest('duplicate_jet',[out/'bin/receiver',4,32719,gd/'t01_q4.gates',ng/'duplicate_jet.minors','-'])
 (ng/'omitted.minors').write_text('\n'.join(mini[1:])+'\n')
 badtest('omitted_configuration',[out/'bin/receiver',4,32719,gd/'t01_q4.gates',ng/'omitted.minors','-'])
 v=list(map(int,src[0].split()));v[25]+=1
 (ng/'wrong_m.gates').write_text(' '.join(map(str,v))+'\n'+'\n'.join(src[1:])+'\n')
 badtest('changed_ordinary_order',[out/'bin/receiver',4,32719,ng/'wrong_m.gates',gd/'t01_q4.32719.minors','-'])
 badtest('duplicate_exception',[out/'bin/receiver',5,32719,gd/'t10_q5.gates',gd/'t10_q5.32719.minors','2,2,12'])
 badtest('missing_exception_in_range',[out/'bin/receiver',5,32719,gd/'t10_q5.gates',gd/'t10_q5.32719.minors','2'])
 badtest('out_of_range_exception',[out/'bin/receiver',5,32719,gd/'t10_q5.gates',gd/'t10_q5.32719.minors','2,12,999'])
 v=(cd/'1679_p257_reverse0.trace').read_text().splitlines();v[0]='263 '+v[0].split(' ',1)[1]
 (ng/'wrong_module_prime.trace').write_text('\n'.join(v)+'\n')
 badtest('wrong_module_prime',[out/'bin/module_receive257',cd/'1679.case',ng/'wrong_module_prime.trace',0,257])
 assert len(neg)==8;dump(out/'certificates/negative_controls.json',neg)
 certs={str(p.relative_to(out/'certificates')):sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()}
 dump(out/'REPLAY_RECEIPT.json',{'status':'PASS','exit_code':0,'duration_seconds':time.monotonic()-start,'code_sha256':{p.name:sha(p)for p in sorted((ROOT/'code').iterdir())if p.is_file()},'source_manifest_sha256':sha(ROOT/'inputs/SOURCE_BYTES.json'),'certificate_sha256':certs,'summary':summary,'negative_controls':neg,'network':False,'repository_operations':False,'Lean':False})
 print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);ap.add_argument('--jobs',type=int,default=2);a=ap.parse_args();assert 1<=a.jobs<=4;main(a.out.resolve(),a.jobs)
