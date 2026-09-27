#!/usr/bin/env python3
"""Regenerate this round only. Python >=3.10 standard library + C++17.
No network, repository operations, Lean, or TAIL7/TAIL8 geometry rerun.
"""
from __future__ import annotations
import argparse, hashlib, json, platform, subprocess, sys, time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import ledger,exact_small

def dump(p,x):p.write_text(json.dumps(x,ensure_ascii=False,indent=2)+'\n')
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def run(cmd,out,label):
 t=time.monotonic();r=subprocess.run(list(map(str,cmd)),capture_output=True,text=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 dump(out/'runs'/f'{label}.json',{'command':list(map(str,cmd)),'exit_code':r.returncode,'elapsed_seconds':time.monotonic()-t})
 if r.returncode:raise RuntimeError((label,r.returncode,r.stdout[-500:],r.stderr[-1000:]))
 return r.stdout

def low_cases():
 rows=[]
 for q in range(4,15):
  D=[0,0,1,0,0,0];K=[0,0,0,1,0,0];rows.append((f'q{q}_base',q,D,K))
  if q<=6:
   rows.extend([(f'q{q}_k8',q,D,[0,0,0,1,0,1]),(f'q{q}_k6',q,D,[0,0,0,2,0,0]),(f'q{q}_d56',q,[0,0,1,1,0,0],[0]*6)])
 return rows

def high_cases():
 return [(f'q{q}r{r}d{d}',q,r,d)for q in (19,20)for r,d in ((4,0),(4,1),(5,1))]

def main(out,jobs=2):
 if out.exists():raise FileExistsError(out)
 for d in ('bin','logs','runs','certificates/geometry','certificates/ledger','certificates/cofactor'):(out/d).mkdir(parents=True,exist_ok=True)
 for name,digest in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()).items():assert sha(ROOT/'inputs'/name)==digest,name
 start=time.monotonic(); dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'network_used':False,'repository_operations':False,'Lean':False,'parallel_jobs':jobs})
 builds=[('near','near_gate.cpp',[]),('near_alt','near_gate.cpp',['-DANCHOR=7']),('profiles','profile_gates.cpp',[]),('profiles_alt','profile_gates.cpp',['-DALT']),('jets32749','profile_jets.cpp',[]),('jets32719','profile_jets.cpp',['-DMODULUS=32719']),('receive','receive_jets.cpp',[]),('module257','module.cpp',[]),('module263','module.cpp',['-DPRIME=263']),('module_receiver','module_receiver.cpp',[]),('fees','fees.cpp',[]),('enumerate','enumerate_costs.cpp',[])]
 def build(x):
  name,src,flags=x;run(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'build_'+name)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(build,builds))
 fd=out/'certificates/ledger';gd=out/'certificates/geometry';cd=out/'certificates/cofactor'
 states,ids=ledger.state_inputs(ROOT,fd)
 run([out/'bin/enumerate',ROOT/'inputs/signatures505.txt',fd/'queries_low.txt',fd/'old_multisets_cpp.txt',fd/'old_multisets_cpp_stats.txt'],out,'enumerate_old505')
 profiles=ledger.diagnose(ROOT,fd);cases=low_cases()
 assert profiles=={(q,tuple(D),tuple(K))for name,q,D,K in cases}
 dump(gd/'low_case_profiles.json',cases);dump(gd/'high_case_profiles.json',high_cases())
 expected_low={'q4_base':1,'q4_k8':0,'q4_k6':0,'q4_d56':4,'q5_base':0,'q5_k8':0,'q5_k6':0,'q5_d56':12,'q6_base':1,'q6_k8':0,'q6_k6':0,'q6_d56':25,'q7_base':1,'q8_base':1,'q9_base':2,'q10_base':5,'q11_base':9,'q12_base':15,'q13_base':19,'q14_base':41}
 expected_high={'q19r4d0':49,'q19r4d1':308,'q19r5d1':245,'q20r4d0':65,'q20r4d1':493,'q20r5d1':386}
 def gates(case,high=False):
  name,q,*tail=case
  for suffix,exe in (('gates','near'if high else 'profiles'),('alt','near_alt'if high else 'profiles_alt')):
   p=gd/f'{name}.{suffix}'
   if high:
    r,d=tail;raw=gd/f'{name}.{suffix}.raw';run([out/'bin'/exe,q,r,d,raw],out,f'gate_{name}_{suffix}')
    data=[]
    for l in raw.read_text().splitlines():
     qq,rr,dd,kk,la,*m=map(int,l.split());assert qq==q and rr==r and dd==d and len(m)==21
     D=[0]*6;K=[0]*6;L=[0]*6;D[r-3]=d;K[r-3]=kk;L[r-3]=120*la;data.append(' '.join(map(str,[q,*D,*K,*L,*m])))
    p.write_text(''.join(l+'\n'for l in data));raw.unlink()
   else:
    D,K=tail;run([out/'bin'/exe,q,*D,*K,p],out,f'gate_{name}_{suffix}')
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines()
  assert len(a)==len(set(a)) and sorted(a)==sorted(b) and len(a)==(expected_high if high else expected_low)[name],name
  return {'case':name,'q':q,'count':len(a),'two_anchor_sets_equal':True,'primary_sha256':sha(gd/f'{name}.gates'),'alt_sha256':sha(gd/f'{name}.alt')}
 with ThreadPoolExecutor(max_workers=jobs)as ex:
  hg=list(ex.map(lambda x:gates(x,True),high_cases()));lg=list(ex.map(gates,cases))
 dump(gd/'gate_completeness_receipt.json',{'high':hg,'low':lg})
 print('GATES_COMPLETE',sum(a['count']for a in hg),sum(a['count']for a in lg),flush=True)
 allcases=[(x[0],x[1])for x in high_cases()+cases]
 def certify(job):
  name,q,p=job;mi=gd/f'{name}.{p}.minors';bad=gd/f'{name}.{p}.exceptions'
  run([out/f'bin/jets{p}',q,gd/f'{name}.gates',mi,bad],out,f'jets_{name}_{p}')
  exc=[list(map(int,l.split()))for l in bad.read_text().splitlines()]
  target=([[0,3,5]]if name=='q4_base'else [[0,9,10]]if name=='q5_d56'else [])
  assert exc==target,(name,p,exc)
  msg=run([out/'bin/receive',q,p,gd/f'{name}.gates',mi,'0'if exc else '-'],out,f'receive_{name}_{p}')
  return {'case':name,'q':q,'prime':p,'minors':len(mi.read_text().splitlines()),'exceptions':exc,'receiver_output':msg.strip()}
 with ThreadPoolExecutor(max_workers=jobs)as ex:rank=list(ex.map(certify,[(name,q,p)for name,q in allcases for p in (32749,32719)]))
 dump(gd/'rank_receipt.json',rank);exact_small.run(gd,gd)
 print('GEOMETRY_COMPLETE',sum(a['minors']for a in rank),'dual-prime minors',flush=True)
 orders=ledger.cofactor_case(states,cd/'S5_1646.case');dump(cd/'quotient_source_orders.json',{'state':1646,'quotient_e':109,'weighted_degree_bound':218,'source_orders':orders,'applies_to_all_rational_t_nonzero':True})
 def modjob(job):
  p,rev=job;trace=cd/f'p{p}_reverse{rev}.trace'
  msg=run([out/f'bin/module{p}',cd/'S5_1646.case',trace,rev],out,f'module_{p}_{rev}')
  rec=run([out/'bin/module_receiver',cd/'S5_1646.case',trace,rev,p],out,f'module_receive_{p}_{rev}')
  w=list(map(int,trace.read_text().splitlines()[-1].split()[1:]));assert len(w)==110 and min(w)>218
  return {'prime':p,'reverse_sources':rev,'trace_sha256':sha(trace),'weights':w,'nullity':0,'generator':msg.strip(),'receiver':rec.strip()}
 with ThreadPoolExecutor(max_workers=jobs)as ex:mr=list(ex.map(modjob,[(p,r)for p in (257,263)for r in (0,1)]))
 dump(cd/'module_receipt.json',mr)
 raw=ledger.strengthen(ROOT,fd);ledger.prices(raw,states,fd);ledger.exact_1713(raw,states[1713],fd)
 run([out/'bin/fees',fd/'signatures517.txt',fd/'queries119.txt',fd/'fees119.txt'],out,'fees119')
 run([out/'bin/enumerate',fd/'signatures517.txt',fd/'query1643.txt',fd/'new_1643_cpp.txt',fd/'new_1643_cpp_stats.txt'],out,'enumerate_new1643')
 summary=ledger.finish(ROOT,fd,states,ids,raw)
 summary.update(status='PASS_EARLY_COST2_S5_FRONTIER106',high_root_gates=sum(a['count']for a in hg),low_root_gates=sum(a['count']for a in lg),nonzero_modular_minors=sum(a['minors']for a in rank),exact_rational_exception_systems=2,cofactor_module_checks=4,integer_price_checks=11*517,independent_1713_fee_cells=7560,old_complete_multiset_checks=294+829,new_safe_signatures=517,Lean=False,external_independent_review=False)
 dump(out/'certificates/summary.json',summary)
 import negative_controls
 neg=negative_controls.run(out);dump(out/'certificates/negative_controls.json',neg)
 dump(out/'REPLAY_RECEIPT.json',{'status':'PASS','exit_code':0,'duration_seconds':time.monotonic()-start,'code_sha256':{p.name:sha(p)for p in sorted((ROOT/'code').glob('*'))if p.is_file()},'input_sha256_manifest':sha(ROOT/'inputs/SOURCE_BYTES.json'),'deterministic_certificates':{str(p.relative_to(out/'certificates')):sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()},'summary':summary,'negative_controls':neg,'network':False,'repository_operations':False})
 print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--jobs',type=int,default=2);a=ap.parse_args();assert 1<=a.jobs<=4;main(a.out.resolve(),a.jobs)
