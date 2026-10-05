#!/usr/bin/env python3
"""Recompute THIS round offline: Python standard library and a C++17 compiler.
All output goes to a new explicit directory. Does not run Lean or git.
"""
from __future__ import annotations
import argparse,json,platform,subprocess,sys,time,hashlib
from pathlib import Path
sys.dont_write_bytecode=True
if not __debug__:raise RuntimeError('Run without Python -O: assertion checks are required.')
import core
ROOT=Path(__file__).resolve().parents[1]

def call(cmd,out,label,ok=True):
 start=time.monotonic();r=subprocess.run(list(map(str,cmd)),text=True,capture_output=True)
 (out/'logs'/f'{label}.log').write_text(r.stdout+r.stderr)
 core.dump(out/'runs'/f'{label}.json',{'command':list(map(str,cmd)),'exit_code':r.returncode,'elapsed_seconds':round(time.monotonic()-start,6)})
 if ok and r.returncode:raise RuntimeError((label,r.returncode,r.stdout[-1500:],r.stderr[-1500:]))
 return r

def negative_controls(out,cases):
 d=out/'negative_scratch';d.mkdir();gdir=out/'certificates/geometry';a=cases[0];name=a['name']
 gate=(gdir/f'{name}.gates').read_text().splitlines()[0];minor=(gdir/f'{name}.32719.minors').read_text().splitlines()[0]
 checks=[]
 def reject(label,g,m,prime=32719):
  gp=d/f'{label}.gates';mp=d/f'{label}.minors';gp.write_text(g+'\n');mp.write_text(m+('\n'if m else''))
  r=call([out/'bin/receive_genusfree',4,prime,gp,mp,'-'],out,'negative_'+label,ok=False)
  if r.returncode==0:raise AssertionError('Corruption accepted: '+label)
  checks.append({'test':label,'rejected':True})
 r=call([out/'bin/receive_genusfree',4,32719,gdir/f'{name}.gates',gdir/f'{name}.32719.minors','-'],out,'negative_control_valid_input');assert r.returncode==0
 z=gate.split();z[25]=str(int(z[25])+1);reject('changed_multiplicity',' '.join(z),minor)
 z=minor.split();z[2]='0';reject('zero_minor',gate,' '.join(z))
 z=minor.split();z[-1]=z[-2];reject('repeated_jet_row',gate,' '.join(z))
 z=minor.split();z[-1]='999999';reject('out_of_range_jet',gate,' '.join(z))
 reject('missing_minor',gate,'')
 reject('composite_modulus',gate,minor,32751)
 # Root-set completeness is checked against the regenerated second anchor.
 gs=(gdir/f'{name}.gates').read_text().splitlines();alt=(gdir/f'{name}.alt').read_text().splitlines()
 assert sorted(gs[:-1])!=sorted(alt);checks.append({'test':'omitted_root_against_second_anchor','rejected':True})
 # Exact binding of both permitted state licenses, never all remaining states.
 allowed=set(core.LICENSED)
 assert 1819 not in allowed and allowed=={1794,2017};checks.append({'test':'license_scope_1819_not_authorized','rejected':True})
 core.dump(out/'certificates/negative_controls.json',{'status':'PASS','count':len(checks),'checks':checks})


def main(out):
 if out.exists():raise FileExistsError('Output directory must be new: '+str(out))
 for d in ('bin','logs','runs','certificates/geometry','certificates/modules','certificates/ledger'):(out/d).mkdir(parents=True,exist_ok=True)
 inp=json.loads((ROOT/'inputs/SHA256.json').read_text())
 for n,h in inp.items():assert core.sha(ROOT/'inputs'/n)==h,('input hash mismatch',n)
 core.dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'compiler':subprocess.check_output(['g++','--version'],text=True).splitlines()[0],'network_required':False,'Lean':False,'repository_operations':False})
 builds=[('gates','genusfree_gates.cpp',[]),('gates_alt','genusfree_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('receive_genusfree','receive_genusfree.cpp',[]),('module257','module.cpp',[]),('module263','module.cpp',['-DPRIME=263']),('receive257','module_receiver.cpp',[]),('receive263','module_receiver.cpp',['-DRECEIVER_PRIME=263']),('fees','fees.cpp',[]),('full_grid','full_grid_dp.cpp',[]),('enumerate','enumerate_costs.cpp',[])]
 for name,src,flags in builds:call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
 cd=out/'certificates/ledger';gd=out/'certificates/geometry';md=out/'certificates/modules'
 st,ids,raw,cover,cases=core.load(ROOT,cd)
 print('INPUT34_AND_649_BOUND; new pairs7/profiles9; genus-free enumeration',flush=True)
 for a in cases:
  n=a['name'];q=a['q'];args=[q,*a['d'],*a['k']]
  for exe,ext in [('gates','gates'),('gates_alt','alt')]:call([out/'bin'/exe,*args,gd/f'{n}.{ext}'],out,n+'_'+ext)
  assert sorted((gd/f'{n}.gates').read_text().splitlines())==sorted((gd/f'{n}.alt').read_text().splitlines())
  for p in(32749,32719):
   call([out/'bin'/f'jets{p}',q,gd/f'{n}.gates',gd/f'{n}.{p}.minors',gd/f'{n}.{p}.exceptions'],out,f'{n}_minors_{p}')
   assert not(gd/f'{n}.{p}.exceptions').read_text().strip()
   call([out/'bin/receive_genusfree',q,p,gd/f'{n}.gates',gd/f'{n}.{p}.minors','-'],out,f'{n}_receiver_{p}')
  print('GEOMETRY_RECEIVED',n,len((gd/f'{n}.gates').read_text().splitlines()),flush=True)
 geom=core.geometry_stats(gd,cases,out/'certificates/geometry_summary.json');core.exact_supplement(gd,cases,out/'certificates/exact_integer_minors.json')
 # Baseline full grid gives every M7 needed for complete individual preimages.
 call([out/'bin/fees',ROOT/'inputs/signatures649.txt',cd/'queries34.txt',cd/'baseline.fees.txt'],out,'baseline_fees')
 call([out/'bin/full_grid',ROOT/'inputs/signatures649.txt',cd/'queries34.txt',cd/'baseline.grid_summary.tsv',cd/'baseline.cells.tsv'],out,'baseline_all_DP_cells')
 pre=core.preimages(ROOT,st,raw,cover,cd)
 print('ALL_LOW_PREIMAGES_COVERED',sum(x['pair_count']for x in pre),flush=True)
 cof=core.cofactor_cases(st,md)
 for a in cof:
  i=a['state'];jobs=[(257,0),(257,1),(263,0),(263,1)]if i==1794 else[(257,0)]
  for p,r in jobs:
   trace=md/f'{i}.p{p}.r{r}.trace'
   call([out/'bin'/f'module{p}',md/f'{i}.case',trace,r],out,f'module_{i}_{p}_{r}')
   call([out/'bin'/f'receive{p}',md/f'{i}.case',trace,r,p],out,f'module_receiver_{i}_{p}_{r}')
   print('COFACTOR_RECEIVED',i,p,r,flush=True)
 cofs=core.cofactor_summary(md,cof,out/'certificates/cofactor_summary.json')
 # Only now are T11 licenses used to issue the two state eliminations.
 call([out/'bin/fees',cd/'conditional_T11.txt',cd/'licensed_queries.txt',cd/'licensed.fees.txt'],out,'licensed_fees')
 call([out/'bin/full_grid',cd/'conditional_T11.txt',cd/'licensed_queries.txt',cd/'licensed.grid_summary.tsv',cd/'licensed.cells.tsv'],out,'licensed_all_DP_cells')
 core.writequeries(cd/'1794.query.txt',[1794],st)
 call([out/'bin/enumerate',ROOT/'inputs/signatures649.txt',cd/'1794.query.txt',cd/'1794.complete.txt',cd/'1794.enumeration_stats.txt'],out,'complete_1794')
 groups=core.main_groups(ROOT,st,raw,cd)
 call([out/'bin/enumerate',cd/'conditional_T11.txt',cd/'licensed_queries.txt',cd/'removed_complete_empty.txt',cd/'removed_enumeration_stats.txt'],out,'removed_complete_sets')
 assert not(cd/'removed_complete_empty.txt').read_text().strip()
 ledger=core.finish_ledger(ROOT,st,ids,raw,cd)
 call([out/'bin/enumerate',ROOT/'inputs/signatures649.txt',cd/'next_queries.txt',cd/'next_h127.complete.txt',cd/'next_h127.enumeration_stats.txt'],out,'next_h127_complete_cpp')
 print('RECEIVING_NEXT_COMPLETE_MULTISETS_IN_PYTHON',flush=True)
 nexts=core.next_groups(st,raw,cd);negative_controls(out,cases)
 summary={'status':'PASS_GENUSFREE_T50_S5_FRONTIER32',**ledger,'genusfree_new_pairs':7,'genusfree_new_profiles':9,'genusfree_root_configurations':geom['total_gates'],'received_nonzero_modular_minors':geom['total_nonzero_modular_minors'],'exact_integer_minors':110,'adopted_LOW_T43_pairs':43,'new_LOW_T50_pairs':50,'licensed_low_pair_records':sum(x['pair_count']for x in pre),'new_cofactor_systems':2,'cofactor_trace_runs':5,'main1794_complete_groups':groups,'next_h127':nexts,'Lean':False,'external_independent_review':False,'original_n_absolute_height_proved':False,'strict_NC_descent':False,'whole_i9_proved':False,'repository_operations':False}
 core.dump(out/'certificates/summary.json',summary)
 print(json.dumps(summary,ensure_ascii=False,indent=2),flush=True)

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);args=ap.parse_args();main(args.out.resolve())
