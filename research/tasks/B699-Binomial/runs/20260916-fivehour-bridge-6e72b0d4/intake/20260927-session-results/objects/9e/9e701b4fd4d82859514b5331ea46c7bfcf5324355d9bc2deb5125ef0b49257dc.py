#!/usr/bin/env python3
"""Offline replay of the NEW round. Requires Python 3.10+ and g++ C++17.
Use a fresh --out directory. Does not rerun historical geometric classifications.
"""
from __future__ import annotations
import argparse,hashlib,json,platform,subprocess,sys,time,resource
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import round_core as rc

def call(cmd,out,label,fail=False):
 begin=time.monotonic();cmd=list(map(str,cmd))
 result=subprocess.run(cmd,text=True,capture_output=True,cwd=out)
 (out/'logs'/f'{label}.log').write_text(result.stdout+result.stderr)
 rc.dump(out/'runs'/f'{label}.json',{'command':cmd,'exit_code':result.returncode,'elapsed_seconds':time.monotonic()-begin,'expected_failure':fail})
 if (result.returncode==0)==fail:raise RuntimeError((label,result.returncode,result.stdout,result.stderr))
 return result.stdout.strip()

def main(out,jobs):
 if out.exists():raise FileExistsError(out)
 resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 for d in ('bin','logs','runs','certificates/ledger','certificates/cofactor','certificates/geometry','negative_tests'):(out/d).mkdir(parents=True,exist_ok=True)
 begin=time.monotonic()
 for rel,digest in json.loads((ROOT/'inputs/SOURCE_BYTES.json').read_text()).items():assert rc.sha(ROOT/'inputs'/rel)==digest,rel
 for rel,binding in json.loads((ROOT/'inputs/BASELINE_BINDINGS.json').read_text())['files'].items():assert rc.sha(ROOT/'inputs'/rel)==binding['sha256'],rel
 rc.dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'offline':True,'repository_operations':False,'Lean':False,'jobs':jobs})
 builds=[('module257','module.cpp',[]),('module263','module.cpp',['-DPRIME=263']),('rx257','module_receiver.cpp',[]),('rx263','module_receiver.cpp',['-DRECEIVER_PRIME=263']),('fees','fees.cpp',[]),('grid','full_grid_dp.cpp',[]),('enum','enumerate_costs.cpp',[]),('gates','six_gates.cpp',[]),('gates_alt','six_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('geo_rx','receive_six.cpp',[])]
 def build(x):
  name,src,flags=x;call(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(build,builds))
 fd=out/'certificates/ledger';cd=out/'certificates/cofactor';gd=out/'certificates/geometry'
 st,ids,raw,cover=rc.load(ROOT,fd)
 rc.queries(fd/'input_h125_queries.txt',[1785,1787,1794],st)
 call([out/'bin/enum',ROOT/'inputs/signatures643.txt',fd/'input_h125_queries.txt',fd/'input_h125_cpp.txt',fd/'input_h125_cpp_stats.txt'],out,'input_h125_complete')
 low=rc.main_groups(ROOT,raw,st,fd/'input_h125_cpp.txt',fd)
 print('INPUT_COMPLETE_GROUPS_ACCEPTED 1787=1962; saturated; floor8 gives126',flush=True)
 def grid_run(label,rs,ii,scope):
  sig=fd/f'{label}.signatures.txt';q=fd/f'{label}.queries.txt';rc.sigs(sig,rs);rc.queries(q,ii,st)
  call([out/'bin/fees',sig,q,fd/f'{label}.fees.txt'],out,label+'_fees')
  rr=rc.read_fees(fd/f'{label}.fees.txt',rs,st,ii)
  call([out/'bin/grid',sig,q,fd/f'{label}.grid_summary.tsv',fd/f'{label}.grid_cells.tsv'],out,label+'_grid')
  n=rc.read_grid_summary(fd/f'{label}.grid_summary.tsv',rr)
  for r in rr:r['valid_table_scope']=scope
  return rr,n
 orig,n0=grid_run('baseline643',raw,ids,'global643')
 assert n0==444258 and all(r['minimum_degree']<=r['h']for r in orig)
 domains=rc.complete_active_domains(ROOT,st,cover,fd/'baseline643.grid_cells.tsv',fd)
 bounds=rc.source_bounds(cd);cases=rc.quotient_cases(st,bounds,cd);byid={x['state']:x for x in cases}
 tasks=[(byid[1787],257,0),(byid[1787],263,0),(byid[1787],257,1),(byid[1787],263,1),(byid[1785],257,0),(byid[1785],263,0),(byid[1785],257,1),(byid[1785],263,1)]
 tasks.extend((byid[i],257,0)for i in sorted(rc.FLOORS)if i not in(1785,1787))
 def module(t):
  r,p,rev=t;i=r['state'];case=cd/f'{i}_S5.case';tr=cd/f'{i}_p{p}_rev{rev}.trace'
  gen=call([out/f'bin/module{p}',case,tr,rev],out,f'module_{i}_{p}_{rev}')
  rx=call([out/f'bin/rx{p}',case,tr,rev,p],out,f'module_receive_{i}_{p}_{rev}')
  lines=tr.read_text().splitlines();pp,e,n=map(int,lines[0].split());w=list(map(int,lines[-1].split()[1:]))
  assert pp==p and e==r['e'] and n==r['constraints'] and len(w)==e+1 and min(w)>2*e
  print('ACCEPTED_NEW_QUOTIENT',i,p,rev,'min_weight',min(w),'D_bound',2*e,flush=True)
  return {'state':i,'prime':p,'reverse':rev,'e':e,'D_bound':2*e,'constraints':n,'weights':w,'nullity':0,'trace_sha256':rc.sha(tr),'generator':gen,'receiver':rx}
 with ThreadPoolExecutor(max_workers=jobs)as ex:modules=list(ex.map(module,tasks))
 assert len(cases)==7 and len(modules)==13
 rc.dump(cd/'module_receipts.json',modules)
 rc.dump(fd/'activated_state_scopes.json',{'floors':rc.FLOORS,'complete_low_domain_records':sum(x['count']for x in domains),'same_state_S5_kernel_required':True,'no_global_T_change':True,'Fstar_needed':False})
 floor_scopes={f:sorted(i for i in rc.FLOORS if rc.FLOORS[i]==f)for f in sorted(set(rc.FLOORS.values()))}
 stage1={x['state']:dict(x)for x in orig};n1=0
 for f,ii in floor_scopes.items():
  rs,n=grid_run(f'stage1_T{f}',rc.conditional(raw,f),ii,f'state_specific_T{f}')
  n1+=n;stage1.update((r['state'],r)for r in rs)
 first_removed=sorted(i for i in ids if stage1[i]['minimum_degree']>st[i]['h'])
 assert first_removed==[1787,1856,1900,1965,1984,2015]
 rc.dump(fd/'stage1_state_receipts.json',[stage1[i]for i in ids])
 rc.queries(fd/'1785_T11.query.txt',[1785],st);rc.sigs(fd/'1785_T11.signatures.txt',rc.conditional(raw,11))
 call([out/'bin/enum',fd/'1785_T11.signatures.txt',fd/'1785_T11.query.txt',fd/'1785_T11_complete.txt',fd/'1785_T11_complete_stats.txt'],out,'1785_stage1_complete')
 rc.stage1_1785(raw,st,fd/'1785_T11_complete.txt',fd)
 print('S5_STAGE_COMPLETE six_states_deleted; 1785 exact13 groups -> common q18cost3 target',flush=True)
 def geometry(t):
  name,d,k=t
  for exe,ext in(('gates','gates'),('gates_alt','alt')):call([out/'bin'/exe,18,*d,*k,gd/f'{name}.{ext}'],out,name+'_'+ext)
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines();assert sorted(a)==sorted(b)and len(a)==len(set(a))
  for p in(32749,32719):
   call([out/f'bin/jets{p}',18,gd/f'{name}.gates',gd/f'{name}.{p}.minors',gd/f'{name}.{p}.exceptions'],out,f'{name}_jets{p}')
   assert not(gd/f'{name}.{p}.exceptions').read_text().strip()
   call([out/'bin/geo_rx',18,p,gd/f'{name}.gates',gd/f'{name}.{p}.minors','-'],out,f'{name}_receive{p}')
  print('ACCEPTED_NEW_GEOMETRY',name,'all_gates',len(a),flush=True)
 with ThreadPoolExecutor(max_workers=jobs)as ex:list(ex.map(geometry,rc.CASES))
 geo=rc.geometry_stats(gd,gd)
 new=rc.strengthened(raw,fd)
 ordinary=[i for i in ids if i not in rc.FLOORS]
 r2,n2=grid_run('stage2_global649',new,ordinary,'global649');final={r['state']:r for r in r2}
 for f,ii in floor_scopes.items():
  rr,n=grid_run(f'stage2_T{f}',rc.conditional(new,f),ii,f'state_specific_T{f}')
  n2+=n;final.update((r['state'],r)for r in rr)
 assert n2==444258 and set(final)==set(ids)
 removed=[i for i in ids if final[i]['minimum_degree']>st[i]['h']];assert removed==rc.REMOVED
 keep=[i for i in ids if i not in removed];assert len(keep)==34 and not(set(keep)&set(rc.FLOORS))
 lines=(ROOT/'inputs/frontier43.tsv').read_text().splitlines();(fd/'frontier34.tsv').write_text(lines[0]+'\n'+'\n'.join(l for l in lines[1:]if int(l.split()[0])in keep)+'\n')
 rc.dump(fd/'final_state_receipts.json',[final[i]for i in ids]);rc.dump(fd/'remaining34_weak_resource_records.json',[final[i]for i in keep])
 rc.dump(fd/'net_changes.json',{'input_frontier':43,'output_frontier':34,'stage1_removed':first_removed,'stage2_additional_removed':[i for i in removed if i not in first_removed],'all_removed':removed,'minimum_h':min(st[i]['h']for i in keep),'global_table_count':649,'remaining_state_specific_T_scopes':[]})
 rc.queries(fd/'next1794.query.txt',[1794],st)
 call([out/'bin/enum',fd/'global649.txt',fd/'next1794.query.txt',fd/'next1794_complete_cpp.txt',fd/'next1794_complete_cpp_stats.txt'],out,'next1794_complete')
 nxt=rc.next_1794(ROOT,st,new,fd/'next1794_complete_cpp.txt',fd/'stage2_global649.grid_cells.tsv',fd)
 # Deliberate corruption controls are rejections, not positive mathematics.
 ng=out/'negative_tests';tests=[]
 def reject(name,args):call(args,out,'negative_'+name,True);tests.append({'test':name,'rejected':True})
 tr=(cd/'1787_p257_rev0.trace').read_text().splitlines();wrong=tr[:]
 j=next(k for k in range(1,len(tr)-1)if len(tr[k].split())==4);z=wrong[j].split();z[2]=str((int(z[2])+1)%257);wrong[j]=' '.join(z)
 bad=ng/'bad_pivot.trace';bad.write_text('\n'.join(wrong)+'\n');reject('module_wrong_pivot',[out/'bin/rx257',cd/'1787_S5.case',bad,0,257])
 reject('no_other_state_kernel_transplant',[out/'bin/rx257',cd/'1785_S5.case',cd/'1787_p257_rev0.trace',0,257])
 wrong=tr[:];wrong[0]='263 '+wrong[0].split(' ',1)[1];bad=ng/'wrong_prime.trace';bad.write_text('\n'.join(wrong)+'\n');reject('module_wrong_prime',[out/'bin/rx257',cd/'1787_S5.case',bad,0,257])
 small=ng/'nonzero_kernel.case';small.write_text('0\n'+''.join(f'{r} {s} 0\n'for r in range(3,9)for s in range(r//2+1)))
 call([out/'bin/module257',small,ng/'nonzero_kernel.trace',0],out,'nonzero_control_generation');reject('nonzero_kernel_not_accepted',[out/'bin/rx257',small,ng/'nonzero_kernel.trace',0,257])
 ls=(gd/'tail18_sat.32719.minors').read_text().splitlines()
 badls=ls[:];z=badls[0].split();z[2]=str((int(z[2])+1)%32719);badls[0]=' '.join(z);bad=ng/'bad_determinant.minors';bad.write_text('\n'.join(badls)+'\n');reject('geometric_wrong_determinant',[out/'bin/geo_rx',18,32719,gd/'tail18_sat.gates',bad,'-'])
 bad=ng/'missing_minor.minors';bad.write_text('\n'.join(ls[:-1])+'\n');reject('missing_root_configuration_minor',[out/'bin/geo_rx',18,32719,gd/'tail18_sat.gates',bad,'-'])
 reject('geometric_unproved_degree_scope',[out/'bin/geo_rx',19,32719,gd/'tail18_sat.gates',gd/'tail18_sat.32719.minors','-'])
 rc.dump(out/'certificates/negative_controls.json',tests)
 summary={'status':'PASS_S5Q_TAIL18_FRONTIER34','input_frontier':43,'output_frontier':34,'removed_states':removed,'net_removed':9,'COVER8':True,'COVER7_proved':False,'h_minimum':125,'V_maximum':55,'lowest_states':[1794],'global_signatures_input':643,'global_signatures_output':649,'state_specific_floors_used':rc.FLOORS,'remaining_state_specific_floors':[],'complete_active_low_pair_records':67,'quotient_systems':7,'quotient_generator_receiver_runs':13,'new_geometry_profiles':2,'new_geometry_root_configurations':690,'nonzero_modular_minors':1380,'residual_geometry_kernels':0,'baseline_DP_cells':n0,'state_specific_stage1_DP_cells':n1,'final_DP_cells':n2,'total_DP_cells_compared':n0+n1+n2,'main1787_groups':1962,'main1787_T8_degree_bound':126,'main1785_stage1_groups':13,'main1785_geometric_degree_bound':127,'next1794_groups':3778,'next1794_saturated':2990,'next1794_unsaturated':788,'next1794_uncovered_low_pairs':7,'negative_controls':len(tests),'R7':[3,4,5,6,7,8,9],'original_n_absolute_bound':None,'strict_NC_descent':False,'actual_G_factorization_recovered':False,'Lean':False,'external_independent_review':False,'historical_chain_reproved':False,'repository_operations':False}
 rc.dump(out/'certificates/summary.json',summary)
 certs={str(p.relative_to(out/'certificates')):rc.sha(p)for p in sorted((out/'certificates').rglob('*'))if p.is_file()}
 rc.dump(out/'REPLAY_RECEIPT.json',{'status':'PASS','exit_code':0,'certificate_files':len(certs),'certificate_sha256':certs,'elapsed_seconds':time.monotonic()-begin,'summary':summary,'input_manifest_sha256':rc.sha(ROOT/'inputs/SOURCE_BYTES.json'),'code_sha256':{p.name:rc.sha(p)for p in sorted((ROOT/'code').glob('*'))if p.is_file()},'offline':True,'repository_operations':False,'Lean':False})
 print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);ap.add_argument('--jobs',type=int,default=2);a=ap.parse_args();assert 1<=a.jobs<=4;main(a.out.resolve(),a.jobs)
