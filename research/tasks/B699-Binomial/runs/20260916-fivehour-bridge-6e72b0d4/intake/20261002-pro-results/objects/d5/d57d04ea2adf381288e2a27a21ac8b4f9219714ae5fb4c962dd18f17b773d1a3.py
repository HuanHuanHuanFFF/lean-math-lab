#!/usr/bin/env python3
"""Recompute this round only, offline. Python standard library + C++17.
Example: python3 code/replay.py --out /tmp/b699-U10-LATE11-replay
The output directory must not exist. No old geometry, Lean or repository commands.
"""
from __future__ import annotations
import argparse,concurrent.futures,hashlib,json,os,platform,subprocess,sys,time
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
 nd=out/'negative_work';nd.mkdir();gd=out/'certificates/geometry';case=cases[0];name=case['name']
 line=(gd/f'{name}.gates').read_text().splitlines()[0]
 minor=(gd/f'{name}.32719.minors').read_text().splitlines()[0]
 results=[]
 def run_case(label,gg,mm):
  (nd/'one.gates').write_text(gg+'\n');(nd/'one.minors').write_text(mm+'\n')
  r=subprocess.run([str(out/'bin/receiver'),'10','32719',str(nd/'one.gates'),str(nd/'one.minors'),'-'],text=True,capture_output=True)
  (out/'logs'/f'negative_{label}.log').write_text(r.stdout+r.stderr)
  assert r.returncode!=0,('corruption accepted',label)
  results.append({'test':label,'rejected':True})
 def expect(label,fn):
  try:fn()
  except (AssertionError,ValueError,IndexError):results.append({'test':label,'rejected':True});return
  raise AssertionError('corruption accepted '+label)
 x=line.split();x[25]=str(int(x[25])+1);run_case('changed_ordinary_multiplicity',' '.join(x),minor)
 x=line.split();x[24]='1';run_case('spurious_row8_quadratic',' '.join(x),minor)
 x=minor.split();x[2]=str((int(x[2])+1)%32719 or 1);run_case('changed_nonzero_determinant',line,' '.join(x))
 x=minor.split();x[-1]=x[-2];run_case('duplicate_jet_row',line,' '.join(x))
 x=minor.split();x[-1]='999999';run_case('jet_index_out_of_range',line,' '.join(x))
 x=minor.split();x[2]='0';run_case('zero_recorded_determinant',line,' '.join(x))
 def omitted_gate():
  a=(gd/f'{name}.gates').read_text().splitlines();b=(gd/f'{name}.alt').read_text().splitlines();assert sorted(a[:-1])==sorted(b)
 expect('omitted_gate_against_regenerated_anchor',omitted_gate)
 def omitted_profile():
  actual=sorted((a['q'],tuple(a['d']),tuple(a['k']))for a in cases[:-1]);assert actual==sorted(c.splits(10,c.U[1:])+c.splits(11,c.V[1:]))
 expect('omitted_true_cost_profile',omitted_profile)
 def old_proxy_reintroduced():
  bad=tables[1].copy();bad[bad.index((11,*c.U[1:]))]=c.U
  assert bad==c.strengthen(tables[0],c.U)[0]
 expect('unjustified_old_U10_proxy',old_proxy_reintroduced)
 def unlicensed_T():
  bad=[(11,*x[1:])if x==c.T else x for x in tables[2]]
  assert bad==c.strengthen(tables[1],c.V)[0]
 expect('unlicensed_T_floor_in_global_table',unlicensed_T)
 assert len(results)==10
 ans={'status':'PASS_ALL_10_NEGATIVE_CONTROLS','results':results}
 c.dump(out/'certificates/negative_controls.json',ans)
 return ans

def main(out):
 if out.exists():raise FileExistsError(out)
 try:
  import resource
  resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except (ImportError,ValueError):pass
 for d in('bin','logs','runs','certificates/geometry','certificates/ledger'):(out/d).mkdir(parents=True,exist_ok=True)
 st,ids,tables,cases=c.check_input(ROOT,out/'certificates/ledger')
 hashes={str(p.relative_to(ROOT)):c.sha(p)for sub in('inputs','code')for p in sorted((ROOT/sub).rglob('*'))if p.is_file()and '__pycache__'not in p.parts}
 c.dump(out/'certificates/RUN_INPUT_HASHES.json',hashes)
 c.dump(out/'environment.json',{'python':sys.version,'platform':platform.platform(),
   'g++':subprocess.run(['g++','--version'],capture_output=True,text=True,check=True).stdout.splitlines()[0],
   'network_used':False,'Lean_run':False,'repository_operations':False})
 builds=[('gates','genusfree_gates.cpp',[]),('gates_alt','genusfree_gates.cpp',['-DALT']),
  ('jets32749','six_jets.cpp',[]),('jets32719','six_jets.cpp',['-DMODULUS=32719']),
  ('receiver','receive_genusfree.cpp',[]),('fees','fees.cpp',[]),
  ('full_grid','full_grid_dp.cpp',[]),('enumerator','enumerate_costs.cpp',[])]
 for name,source,flags in builds:command(['g++','-O3','-std=c++17',*flags,ROOT/'code'/source,'-o',out/'bin'/name],out,'compile_'+name)
 gd=out/'certificates/geometry'
 def geometry_job(a):
  name=a['name'];q=a['q']
  command([out/'bin/gates',q,*a['d'],*a['k'],gd/f'{name}.gates'],out,'gates_'+name)
  command([out/'bin/gates_alt',q,*a['d'],*a['k'],gd/f'{name}.alt'],out,'alt_'+name)
  g=(gd/f'{name}.gates').read_text().splitlines();alt=(gd/f'{name}.alt').read_text().splitlines()
  assert len(g)==len(set(g))and sorted(g)==sorted(alt)
  for p in(32749,32719):
   command([out/f'bin/jets{p}',q,gd/f'{name}.gates',gd/f'{name}.{p}.minors',gd/f'{name}.{p}.exceptions'],out,f'jets_{name}_{p}')
   assert not(gd/f'{name}.{p}.exceptions').read_text(),('UNRESOLVED_KERNEL',name,p)
   command([out/'bin/receiver',q,p,gd/f'{name}.gates',gd/f'{name}.{p}.minors','-'],out,f'receive_{name}_{p}')
 with concurrent.futures.ThreadPoolExecutor(max_workers=2)as pool:list(pool.map(geometry_job,cases))
 geo=c.geometry(gd,cases,out/'certificates/geometry_summary.json')
 print('Geometry complete:',geo['root_configurations'],'gates;',geo['modular_nonzero_minors_received'],'received minors.',flush=True)
 c.exact_supplement(gd,cases,out/'certificates/exact_integer_minors.json')
 fd=out/'certificates/ledger'
 for tag,sp in(('baseline',ROOT/'inputs/signatures649.txt'),('U655',fd/'signatures655.txt'),('final',fd/'signatures661.txt')):
  command([out/'bin/fees',sp,fd/'queries32.txt',fd/f'{tag}.fees.txt'],out,'fees_'+tag)
  command([out/'bin/full_grid',sp,fd/'queries32.txt',fd/f'{tag}.grid_summary.tsv',fd/f'{tag}.cells.tsv'],out,'full_grid_'+tag)
 for tag,sp,qp in(('main1819',ROOT/'inputs/signatures649.txt',fd/'main1819.query.txt'),
                  ('stage1_low',fd/'signatures655.txt',fd/'stage1_low.query.txt'),
                  ('final_low',fd/'signatures661.txt',fd/'final_low.query.txt')):
  command([out/'bin/enumerator',sp,qp,fd/f'{tag}.complete.txt',fd/f'{tag}.enum_stats.txt'],out,'enumerate_'+tag)
 ledger=c.finish_ledger(ROOT,st,ids,tables,fd)
 groups=c.full_groups(ROOT,st,tables,fd)
 neg=negative_controls(out,cases,tables)
 summary={'status':'PASS_U10_LATE11_FRONTIER28','geometry':{k:v for k,v in geo.items()if k!='profiles'},
    'integer_minors_completely_evaluated':12,'ledger':ledger,'complete_multiset_checks':groups,
    'negative_controls':len(neg['results']),'evidence_grade':'Author proofs + deterministic exact arithmetic + same-author different implementations; not external independent review.',
    'historical_whole_chain_reproved':False,'R7':[3,4,5,6,7,8,9],'COVER7':False,'H128':False,
    'original_input_uniform_finiteness':False,'strict_NC_descent':False,'Lean':False,'repository_changes':False}
 c.dump(out/'certificates/summary.json',summary)
 print(json.dumps(summary,indent=2,ensure_ascii=False),flush=True)

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();main(args.out.resolve())
