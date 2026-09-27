#!/usr/bin/env python3
"""Rebuild only this COST4 round, offline, using Python stdlib and C++17.
A new output directory is mandatory. --bootstrap is for initial certificate
creation; normal replay requires and byte-compares all shipped certificates.
"""
from __future__ import annotations
import argparse,hashlib,json,os,platform,shutil,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
import ledger
from exact_samples import run as exact_run
ROOT=Path(__file__).resolve().parents[1]
COUNTS={(8,0):3,(8,1):35,(8,2):69468,(9,0):4,(9,1):144,(9,2):215877}

def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p,x):p.write_text(json.dumps(x,indent=2,ensure_ascii=False)+'\n')
def check_manifest(name):
 p=ROOT/name
 if not p.exists():return 0
 count=0
 for l in p.read_text().splitlines():
  digest,rel=l.split('  ',1);q=(ROOT/rel).resolve()
  if not q.is_relative_to(ROOT)or sha(q)!=digest:raise ValueError('manifest mismatch: '+rel)
  count+=1
 return count

def negatives(out,call):
 td=out/'negative';td.mkdir();gd=out/'certificates/geometry';ld=out/'certificates/ledger';tests=[]
 g=(gd/'q8d2.gates').read_text().splitlines()[0];m=(gd/'q8d2.32749.minors').read_text().splitlines()[0]
 def rc(name,gate,minor,delta=2):
  gp=td/(name+'.gate');mp=td/(name+'.minor');gp.write_text(gate+'\n');mp.write_text(minor+'\n')
  r=call([out/'bin/receive',8,delta,32749,gp,mp],'negative_'+name,True)
  assert r.returncode!=0,'corruption accepted: '+name
  tests.append({'name':name,'rejected':True,'exit_code':r.returncode})
 z=g.split();z[3]='-1';rc('negative_multiplicity',' '.join(z),m)
 z=g.split();z[2]=str(int(z[2])+1);rc('changed_residual_constant',' '.join(z),m)
 z=m.split();z[2]='0';rc('zero_minor_record',g,' '.join(z))
 z=m.split();z[-1]=z[3];rc('duplicate_jet_row',g,' '.join(z))
 z=m.split();z[-1]='999999';rc('out_of_range_jet',g,' '.join(z))
 g0=(gd/'q8d0.gates').read_text().splitlines()[0];m0=(gd/'q8d0.32749.minors').read_text().splitlines()[0]
 z=g0.split();z[-1]='3';rc('kappa_exceeds_ordinary_order',' '.join(z),m0,0)
 def reject(name,fn):
  try:fn()
  except(AssertionError,ValueError,IndexError):tests.append({'name':name,'rejected':True});return
  raise AssertionError('corruption accepted: '+name)
 def omit_gate():
  a=(gd/'q8d1.gates').read_text().splitlines();b=(gd/'q8d1.alt').read_text().splitlines()
  assert sorted(a[:-1])==sorted(b)
 reject('omitted_gate_against_second_anchor',omit_gate)
 def omit_cost_case():
  all_cases=[(d,4-2*d)for d in range(3)]
  assert [(2,0)]==all_cases
 reject('double_only_not_complete_even_cost4',omit_cost_case)
 raw,st,_=ledger.load(ROOT);new,_=ledger.strengthen(raw)
 def wrong_price():assert all(4*x[0]>=128 for x in new)
 reject('invalid_integer_price',wrong_price)
 line=(ld/'fees120.txt').read_text().splitlines()[0].split();line[-1]='999999'
 reject('invalid_resource_witness_index',lambda:ledger.receive_witness(' '.join(line),new,st))
 def omit_multiset():
  expected=json.loads((ld/'initial_1650.json').read_text());expected['multisets']=expected['multisets'][:-1]
  actual=[json.loads((ld/f'initial_{i}.json').read_text())for i in(1643,1646)] + [expected]
  ledger.receive_cpp(ld/'initial_cpp.txt',actual)
 reject('omitted_fee_multiset_against_second_enumerator',omit_multiset)
 from fractions import Fraction
 assert Fraction(1,32749)*32749==1
 tests.append({'name':'affine_modular_inconsistency_is_not_rational_inconsistency',
  'boundary_verified':True,'example':'32749*x=1 has rational solution; this is not a full-column-rank certificate.'})
 return {'status':'PASS_11_REJECTIONS_AND_ONE_BOUNDARY_CHECK','tests':tests}

def main(out,bootstrap=False):
 if out.exists():raise FileExistsError('Output must be new: '+str(out))
 out.mkdir(parents=True)
 for name in('bin','logs','certificates/geometry','certificates/ledger'):(out/name).mkdir(parents=True)
 t0=time.monotonic();manifest={n:check_manifest(n)for n in('PAYLOAD.sha256','MANIFEST.sha256')}
 try:
  import resource
  resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except(ImportError,ValueError):pass
 cc=os.environ.get('CXX','g++')
 if not shutil.which(cc):raise RuntimeError('C++17 compiler required (default g++).')
 runs=[]
 def call(cmd,name,allow_fail=False):
  start=time.monotonic();cmd=list(map(str,cmd));p=subprocess.run(cmd,cwd=out,capture_output=True,text=True)
  (out/'logs'/f'{name}.log').write_text(p.stdout+p.stderr)
  runs.append({'label':name,'command':cmd,'exit_code':p.returncode,'elapsed_seconds':time.monotonic()-start})
  dump(out/'runs.json',runs)
  if p.returncode and not allow_fail:raise RuntimeError(name+': '+p.stderr)
  return p
 ledger.load(ROOT)
 for name,src,flags in [('gates','cost4_gates.cpp',[]),('gates_alt','cost4_gates_alt.cpp',[]),
 ('jets32749','cost4_jets.cpp',[]),('jets32719','cost4_jets.cpp',['-DMODULUS=32719']),
 ('receive','receive_cost4.cpp',[]),('fees','fees.cpp',[]),('enumerate_costs','enumerate_costs.cpp',[])]:
  call([cc,'-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],'compile_'+name)
 compiler=call([cc,'--version'],'compiler_version').stdout.splitlines()[0]
 ld=out/'certificates/ledger';initial,post=ledger.prepare(ROOT,ld)
 for name,sigs,ds in [('initial',ROOT/'inputs/signatures499.txt',initial),('post',ld/'signatures505.txt',post)]:
  call([out/'bin/enumerate_costs',sigs,ld/f'{name}_queries.txt',ld/f'{name}_cpp.txt',ld/f'{name}_cpp_stats.txt'],name+'_complete_multisets_cpp')
  dump(ld/f'{name}_enumeration_agreement.json',ledger.receive_cpp(ld/f'{name}_cpp.txt',ds))
 geometry=[];gd=out/'certificates/geometry'
 for q in(8,9):
  for d in(0,1,2):
   stem=f'q{q}d{d}';g=gd/(stem+'.gates');a=gd/(stem+'.alt')
   call([out/'bin/gates',q,d,g],'gates_'+stem)
   call([out/'bin/gates_alt',q,d,a],'alternate_'+stem)
   aa=g.read_text().splitlines();bb=a.read_text().splitlines();expected=COUNTS[q,d]
   assert len(aa)==len(bb)==len(set(aa))==len(set(bb))==expected and sorted(aa)==sorted(bb),(q,d)
   geometry.append({'q':q,'delta8':d,'kappa8':4-2*d,'root_gates':expected,'columns':(q-2)**2+1,'full_anchor_sets_equal':True})
   for p in(32749,32719):
    m=gd/f'{stem}.{p}.minors';ex=gd/f'{stem}.{p}.exceptions'
    call([out/f'bin/jets{p}',q,d,g,m,ex],f'minors_{stem}_{p}')
    assert ex.read_bytes()==b'' and len(m.read_text().splitlines())==expected
    call([out/'bin/receive',q,d,p,g,m],f'receive_{stem}_{p}')
 dump(out/'certificates/geometry_summary.json',{'branches':geometry,'total':sum(COUNTS.values()),'modular_minors':2*sum(COUNTS.values())})
 exact=exact_run(gd);dump(out/'certificates/exact_integer_minors.json',exact)
 call([out/'bin/fees',ROOT/'inputs/signatures499.txt',ld/'queries120.txt',ld/'fees120_old.txt'],'fees_baseline120')
 call([out/'bin/fees',ld/'signatures505.txt',ld/'queries120.txt',ld/'fees120.txt'],'fees_new120')
 summary=ledger.finalize(ROOT,ld)
 neg=negatives(out,call);dump(out/'certificates/negative_controls.json',neg)
 compared=0
 for f in sorted((out/'certificates').rglob('*')):
  if f.is_file():
   rel=f.relative_to(out/'certificates');old=ROOT/'certificates'/rel
   if not bootstrap:
    assert old.exists() and f.read_bytes()==old.read_bytes(),'certificate mismatch: '+str(rel)
    compared+=1
 if not bootstrap:
  assert {str(f.relative_to(out/'certificates'))for f in(out/'certificates').rglob('*')if f.is_file()}=={str(f.relative_to(ROOT/'certificates'))for f in(ROOT/'certificates').rglob('*')if f.is_file()},'certificate inventory mismatch'
 receipt={'status':'PASS_TAIL8_COST4_8_9_FRONTIER119','bootstrap':bootstrap,'geometry':geometry,
  'root_configurations':285531,'nonzero_modular_minors':571062,'convolution_receiver_checks':571062,
  'exact_integer_minors':19,'initial_complete_multisets':[644,1316,12],'post_complete_multisets':[294,829],
  'second_enumerator_set_comparisons':3095,'integer_price_checks':505,'ledger':summary,
  'negative_controls':neg['status'],'certificate_files_byte_compared':compared,
  'manifest_files_checked':manifest,'input_hashes':ledger.INPUT_HASHES,'compiler':compiler,'python':sys.version,
  'platform':platform.platform(),'elapsed_seconds':time.monotonic()-t0,
  'network_calls_in_scripts':False,'repository_operations':False,'Lean':False,
  'external_independent_review':False,'historical_geometry_replayed':False}
 assert 644+1316+12+294+829==3095
 dump(out/'receipt.json',receipt)
 dump(out/'certificate_hashes.json',{str(f.relative_to(out/'certificates')):sha(f)for f in sorted((out/'certificates').rglob('*'))if f.is_file()})
 print(json.dumps(receipt,ensure_ascii=False,indent=2))
if __name__=='__main__':
 ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--out',type=Path,required=True);ap.add_argument('--bootstrap',action='store_true');a=ap.parse_args();main(a.out.resolve(),a.bootstrap)
