#!/usr/bin/env python3
"""Replay only this round offline: Python standard library and C++17.
No network, repository operations, historical geometry or Lean execution.
"""
from __future__ import annotations
import argparse,concurrent.futures,json,platform,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
import round_core as c

def command(cmd,out,label):
 start=time.monotonic();p=subprocess.run(list(map(str,cmd)),text=True,capture_output=True)
 (out/'logs'/f'{label}.log').write_text(p.stdout+p.stderr)
 c.dump(out/'runs'/f'{label}.json',{'command':list(map(str,cmd)),'exit_code':p.returncode,'elapsed_seconds':time.monotonic()-start})
 if p.returncode:raise RuntimeError((label,p.returncode,p.stdout,p.stderr))
 return p.stdout

def negative_controls(out,cases,tables):
 nd=out/'negative_work';nd.mkdir();gd=out/'certificates/geometry';case=cases[0];name=case['name'];q=case['q']
 line=(gd/f'{name}.gates').read_text().splitlines()[0]
 minor=(gd/f'{name}.32719.minors').read_text().splitlines()[0]
 results=[]
 def run_case(label,gg,mm):
  (nd/'one.gates').write_text(gg+'\n');(nd/'one.minors').write_text(mm+'\n')
  r=subprocess.run([str(out/'bin/receiver'),str(q),'32719',str(nd/'one.gates'),str(nd/'one.minors'),'-'],text=True,capture_output=True)
  (out/'logs'/f'negative_{label}.log').write_text(r.stdout+r.stderr)
  assert r.returncode!=0,('corruption accepted',label)
  results.append({'test':label,'rejected':True})
 def expect(label,fn):
  try:fn()
  except (AssertionError,ValueError,IndexError):results.append({'test':label,'rejected':True});return
  raise AssertionError('corruption accepted '+label)
 x=line.split();x[25]=str(int(x[25])+1);run_case('changed_ordinary_multiplicity',' '.join(x),minor)
 x=line.split();x[24]='1';run_case('spurious_quadratic_constant_in_saturated_profile',' '.join(x),minor)
 x=minor.split();x[2]=str((int(x[2])+1)%32719 or 1);run_case('changed_nonzero_determinant',line,' '.join(x))
 x=minor.split();x[-1]=x[-2];run_case('duplicate_jet_row',line,' '.join(x))
 x=minor.split();x[-1]='999999';run_case('jet_index_out_of_range',line,' '.join(x))
 x=minor.split();x[2]='0';run_case('zero_recorded_determinant',line,' '.join(x))
 def omitted_gate():
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines();assert sorted(a[:-1])==sorted(b)
 expect('omitted_gate_against_regenerated_anchor',omitted_gate)
 def omitted_profile():
  assert sorted((a['q'],tuple(a['d']),tuple(a['k']))for a in cases[:-1])==sorted(c.splits(13,c.A[1:])+c.splits(12,c.B[1:]))
 expect('omitted_true_cost_profile',omitted_profile)
 def old_proxy_reintroduced():
  bad=tables[1].copy();bad[bad.index((14,*c.A[1:]))]=c.A;assert bad==c.strengthen(tables[0],c.A)[0]
 expect('unjustified_old_A13_proxy',old_proxy_reintroduced)
 def unlicensed_T():
  bad=[(11,*x[1:])if x==c.T else x for x in tables[2]];assert bad==c.strengthen(tables[1],c.B)[0]
 expect('unlicensed_T_floor',unlicensed_T)
 # The genus implementation explicitly refuses profiles for which the
 # row-wise Galois divisor criterion does not establish absolute irreducibility.
 z=subprocess.run([str(out/'bin/gates'),'12',*map(str,[0]*12),str(nd/'unsupported.gates')],text=True,capture_output=True)
 (out/'logs/negative_nontrivial_component_divisor.log').write_text(z.stdout+z.stderr)
 assert z.returncode!=0 and 'absolute component gcd' in z.stderr
 results.append({'test':'nontrivial_component_divisor_not_assumed_away','rejected':True})
 assert len(results)==11
 ans={'status':'PASS_ALL_11_NEGATIVE_CONTROLS','results':results};c.dump(out/'certificates/negative_controls.json',ans);return ans

def prepare(out):
 if out.exists():raise FileExistsError(out)
 try:
  import resource
  resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except (ImportError,ValueError):pass
 for d in('bin','logs','runs','certificates/geometry','certificates/ledger'):(out/d).mkdir(parents=True,exist_ok=True)
 st,ids,tables,cases=c.check_input(ROOT,out/'certificates/ledger')
 hashes={str(p.relative_to(ROOT)):c.sha(p)for sub in('inputs','code')for p in sorted((ROOT/sub).rglob('*'))if p.is_file()and '__pycache__'not in p.parts}
 c.dump(out/'certificates/RUN_INPUT_HASHES.json',hashes)
 c.dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),'g++':subprocess.run(['g++','--version'],capture_output=True,text=True,check=True).stdout.splitlines()[0],'network_used':False,'Lean_run':False,'repository_operations':False})
 builds=[('gates','genus_gates.cpp',[]),('gates_alt','genus_gates.cpp',['-DALT']),('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),('receiver','receive_genus.cpp',[]),('fees','fees.cpp',[]),('full_grid','full_grid_dp.cpp',[]),('enumerator','enumerate_costs.cpp',[])]
 for name,src,flags in builds:command(['g++','-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],out,'compile_'+name)
 return st,ids,tables,cases

def geometry_run(out,cases):
 gd=out/'certificates/geometry'
 for a in cases:
  n=a['name'];q=a['q']
  for tag,suffix in(('gates','gates'),('gates_alt','alt')):command([out/'bin'/tag,q,*a['d'],*a['k'],gd/f'{n}.{suffix}'],out,tag+'_'+n)
  g=(gd/f'{n}.gates').read_text().splitlines();alt=(gd/f'{n}.alt').read_text().splitlines();assert len(g)==len(set(g))and sorted(g)==sorted(alt)
 def job(arg):
  a,p=arg;n=a['name'];q=a['q']
  command([out/f'bin/jets{p}',q,gd/f'{n}.gates',gd/f'{n}.{p}.minors',gd/f'{n}.{p}.exceptions'],out,f'jets_{n}_{p}')
  assert not(gd/f'{n}.{p}.exceptions').read_text(),('UNRESOLVED_KERNEL',n,p)
  command([out/'bin/receiver',q,p,gd/f'{n}.gates',gd/f'{n}.{p}.minors','-'],out,f'receive_{n}_{p}')
 with concurrent.futures.ThreadPoolExecutor(max_workers=2)as pool:list(pool.map(job,[(a,p)for a in cases for p in(32749,32719)]))

def finish(out,st,ids,tables,cases):
 gd=out/'certificates/geometry'
 geo=c.geometry(gd,cases,out/'certificates/geometry_summary.json')
 print('Geometry:',geo['root_configurations'],'gates;',geo['modular_nonzero_minors_received'],'received minors.',flush=True)
 c.exact_supplement(gd,cases,out/'certificates/exact_integer_minors.json')
 fd=out/'certificates/ledger'
 for tag,sp in(('baseline',ROOT/'inputs/signatures661.txt'),('tail667',fd/'signatures667.txt'),('final',fd/'signatures673.txt')):
  command([out/'bin/fees',sp,fd/'queries28.txt',fd/f'{tag}.fees.txt'],out,'fees_'+tag)
  command([out/'bin/full_grid',sp,fd/'queries28.txt',fd/f'{tag}.grid_summary.tsv',fd/f'{tag}.cells.tsv'],out,'full_grid_'+tag)
 for tag,sp,qp in(('main1814',ROOT/'inputs/signatures661.txt',fd/'main1814.query.txt'),('stage1_1814',fd/'signatures667.txt',fd/'stage1_1814.query.txt'),('final_low',fd/'signatures673.txt',fd/'final_low.query.txt')):
  command([out/'bin/enumerator',sp,qp,fd/f'{tag}.complete.txt',fd/f'{tag}.enum_stats.txt'],out,'enumerate_'+tag)
 ledger=c.finish_ledger(ROOT,st,ids,tables,fd);groups=c.full_groups(ROOT,st,tables,fd);neg=negative_controls(out,cases,tables)
 summary={'status':'PASS_TAIL13_MIX12_FRONTIER27','geometry':{k:v for k,v in geo.items()if k!='profiles'},'integer_minors_completely_evaluated':10,'ledger':ledger,'complete_multiset_checks':groups,'negative_controls':len(neg['results']),'evidence_grade':'Author proofs + deterministic exact arithmetic + same-author different implementations; genus theorem is an explicitly cited external mathematical input, not a program-verified theorem.','historical_whole_chain_reproved':False,'R7':[3,4,5,6,7,8,9],'COVER7':False,'H128':False,'original_input_uniform_finiteness':False,'strict_NC_descent':False,'Lean':False,'repository_changes':False}
 c.dump(out/'certificates/summary.json',summary);print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

def main(out):
 st,ids,tables,cases=prepare(out);geometry_run(out,cases);finish(out,st,ids,tables,cases)
if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);a=ap.parse_args();main(a.out.resolve())
