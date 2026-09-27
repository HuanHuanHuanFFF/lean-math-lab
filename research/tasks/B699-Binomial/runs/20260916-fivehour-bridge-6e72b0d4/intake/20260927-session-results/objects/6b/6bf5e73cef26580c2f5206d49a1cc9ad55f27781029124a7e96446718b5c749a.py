#!/usr/bin/env python3
"""Regenerate and receive this round only. Python stdlib + a C++17 compiler.
All paths are relative to this extracted package; no network or Git operations.
"""
from __future__ import annotations
import argparse,hashlib,json,os,platform,shutil,subprocess,sys,time
from pathlib import Path
sys.dont_write_bytecode=True
import ledger
from exact_samples import run as exact_run
ROOT=Path(__file__).resolve().parents[1]

def sha(p:Path)->str:return hashlib.sha256(p.read_bytes()).hexdigest()
def dump(p:Path,obj:object)->None:p.write_text(json.dumps(obj,indent=2,ensure_ascii=False)+'\n')
def check_manifest(root:Path,name:str)->int:
 p=root/name
 if not p.exists():return 0
 n=0
 for l in p.read_text().splitlines():
  digest,rel=l.split('  ',1)
  q=(root/rel).resolve()
  if not q.is_relative_to(root.resolve())or sha(q)!=digest:raise ValueError('manifest mismatch: '+rel)
  n+=1
 return n

def negative_controls(out:Path,call)->dict:
 td=out/'negative';td.mkdir();gd=out/'geometry'
 g=(gd/'q8.gates').read_text().splitlines()[0];m=(gd/'q8.32749.minors').read_text().splitlines()[0]
 tests=[]
 def receiver_case(label:str,gate:str,minor:str):
  gp=td/(label+'.gate');mp=td/(label+'.minor');gp.write_text(gate+'\n');mp.write_text(minor+'\n')
  r=call([out/'bin/receive',8,32749,gp,mp],'negative_'+label,allow_fail=True)
  if r.returncode==0:raise AssertionError('corruption accepted: '+label)
  tests.append(dict(name=label,rejected=True,exit_code=r.returncode))
 z=g.split();z[3]='-1';receiver_case('negative_multiplicity',' '.join(z),m)
 z=g.split();z[2]=str(int(z[2])+1);receiver_case('wrong_residual_constant',' '.join(z),m)
 z=m.split();z[2]='0';receiver_case('zero_minor_record',g,' '.join(z))
 z=m.split();z[-1]=z[3];receiver_case('duplicate_jet_row',g,' '.join(z))
 z=m.split();z[-1]='999999';receiver_case('out_of_range_jet',g,' '.join(z))
 def rejected(label,fn):
  try:fn()
  except (AssertionError,ValueError,IndexError):tests.append(dict(name=label,rejected=True));return
  raise AssertionError('corruption accepted: '+label)
 def omitted():
  a=(gd/'q8.gates').read_text().splitlines();b=(gd/'q8.alt').read_text().splitlines()
  assert sorted(a[:-1])==sorted(b)
 rejected('omitted_gate_against_alternate_enumeration',omitted)
 raw,states,ids=ledger.load_inputs(ROOT);new,_=ledger.strengthen(raw)
 def bad_price():assert all(2*x[0]>=76 for x in new)
 rejected('invalid_price_coefficients',bad_price)
 first=(out/'ledger/fees123.txt').read_text().splitlines()[0].split();first[-1]='999999'
 rejected('invalid_resource_witness',lambda:ledger.receive_witness(' '.join(first),new,states))
 # A regression of the discarded first alternate interpolation formula.
 def bad_anchor_formula():
  x=3;coef=((x-4)*(x-6),-3*(x-3)*(x-6),2*(x-3)*(x-4))
  assert coef==(6,0,0)
 rejected('rejected_initial_anchor_formula',bad_anchor_formula)
 # Affine mod-p inconsistency is not a rational contradiction: p*x=1.
 # The augmented 1x2 matrix cannot have full column rank; this is not a
 # substitute for the full-column-rank integer minor used in this package.
 from fractions import Fraction
 assert 32749*Fraction(1,32749)==1
 tests.append(dict(name='affine_modular_no_solution_not_a_Q_certificate',accepted_boundary=True,example='32749*x=1 has rational x=1/32749; augmented matrix is 1x2'))
 return dict(status='PASS_NINE_REJECTIONS_AND_ONE_BOUNDARY_CHECK',tests=tests)

def main(out:Path)->None:
 if out.exists():raise FileExistsError('Choose a new output directory: '+str(out))
 start=time.monotonic();out.mkdir(parents=True)
 for sub in('bin','geometry','ledger','logs'):(out/sub).mkdir()
 manifest_counts={n:check_manifest(ROOT,n)for n in('PAYLOAD.sha256','MANIFEST.sha256')}
 # Do not leave core dumps for expected rejection tests on Unix.
 try:
  import resource
  resource.setrlimit(resource.RLIMIT_CORE,(0,0))
 except (ImportError,ValueError):pass
 compiler=os.environ.get('CXX','g++')
 if not shutil.which(compiler):raise RuntimeError('A C++17 compiler is required (default: g++).')
 runs=[]
 def call(cmd,label,allow_fail=False):
  cmd=list(map(str,cmd));t=time.monotonic();r=subprocess.run(cmd,cwd=out,text=True,capture_output=True)
  (out/'logs'/(label+'.log')).write_text(r.stdout+r.stderr)
  runs.append(dict(label=label,command=cmd,exit_code=r.returncode,elapsed_seconds=time.monotonic()-t))
  if r.returncode and not allow_fail:raise RuntimeError(label+' failed: '+r.stderr)
  return r
 jobs=[('gates','tail7_gates.cpp',[]),('gates_alt','tail7_gates_alt.cpp',[]),('jets32749','tail7_jets.cpp',[]),('jets32719','tail7_jets.cpp',['-DMODULUS=32719']),('receive','receive_minors.cpp',[]),('fees','fees.cpp',[])]
 for name,src,flags in jobs:call([compiler,'-O3','-std=c++17',*flags,ROOT/'code'/src,'-o',out/'bin'/name],'compile_'+name)
 comp=call([compiler,'--version'],'compiler_version').stdout.splitlines()[0]
 geometry=[];gd=out/'geometry'
 for q,expected in((8,25982),(9,79065)):
  call([out/'bin/gates',q,gd/f'q{q}.gates'],f'gates_q{q}')
  call([out/'bin/gates_alt',q,gd/f'q{q}.alt'],f'alternate_q{q}')
  a=(gd/f'q{q}.gates').read_text().splitlines();b=(gd/f'q{q}.alt').read_text().splitlines()
  assert len(a)==len(set(a))==expected and sorted(a)==sorted(b)
  assert (gd/f'q{q}.gates').read_bytes()==(ROOT/f'certificates/geometry/q{q}.gates').read_bytes()
  frac=sum(int(l.split()[2])%5!=0 for l in a)
  geometry.append(dict(q=q,root_gates=expected,columns=(q-2)**2+1,nonintegral_residual_constants=frac,alternate_set_equal=True))
  for p in(32749,32719):
   minor=gd/f'q{q}.{p}.minors';exceptions=gd/f'q{q}.{p}.exceptions'
   call([out/f'bin/jets{p}',q,gd/f'q{q}.gates',minor,exceptions],f'minors_q{q}_p{p}')
   assert exceptions.read_bytes()==b''
   assert minor.read_bytes()==(ROOT/f'certificates/geometry/q{q}.{p}.minors').read_bytes()
   call([out/'bin/receive',q,p,gd/f'q{q}.gates',minor],f'receive_q{q}_p{p}')
 exact=exact_run(gd);dump(out/'exact_integer_minors.json',exact)
 assert (out/'exact_integer_minors.json').read_bytes()==(ROOT/'certificates/exact_integer_minors.json').read_bytes()
 ld=out/'ledger';ledger.prepare(ROOT,ld)
 call([out/'bin/fees',ld/'signatures499.txt',ld/'queries123.txt',ld/'fees123.txt'],'fees_new')
 call([out/'bin/fees',ROOT/'inputs/signatures493.txt',ld/'queries123.txt',ld/'fees123_old.txt'],'fees_baseline')
 summary=ledger.finalize(ROOT,ld);ledger.diagnostic1644(ROOT,ld)
 for p in sorted(ld.iterdir()):
  assert p.read_bytes()==(ROOT/'certificates/ledger'/p.name).read_bytes(),p.name
 negatives=negative_controls(out,call);dump(out/'negative_controls.json',negatives)
 receipt=dict(status='PASS_TAIL7_DOUBLE_8_9_FRONTIER120',geometry=geometry,root_gates=105047,nonzero_modular_minors=210094,independent_convolution_minor_checks=210094,exact_integer_minors=6,price_inequalities=1497,ledger=summary,negative_controls=negatives['status'],input_hashes=ledger.EXPECTED_INPUT_HASHES,manifest_files_checked=manifest_counts,python=sys.version,platform=platform.platform(),compiler=comp,elapsed_seconds=time.monotonic()-start,network_calls_in_scripts=False,repository_operations=False,Lean=False,external_independent_review=False,historical_proof_chain_replayed=False)
 dump(out/'runs.json',runs);dump(out/'receipt.json',receipt)
 expected_files=[p for p in(ROOT/'certificates').rglob('*')if p.is_file()]
 dump(out/'expected_certificate_hashes.json',{str(p.relative_to(ROOT)):sha(p)for p in sorted(expected_files)})
 print(json.dumps(receipt,indent=2,ensure_ascii=False))
if __name__=='__main__':
 ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--out',type=Path,required=True);args=ap.parse_args();main(args.out.resolve())
