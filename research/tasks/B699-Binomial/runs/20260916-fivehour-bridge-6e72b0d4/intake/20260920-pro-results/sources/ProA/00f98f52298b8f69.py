#!/usr/bin/env python3
"""Clean self-contained replay of this round's new evidence only.
Requires Python>=3.11, NumPy, and a C++17 compiler; no network, CAS or old archive.
"""
from __future__ import annotations
import argparse,hashlib,json,os,shutil,subprocess,sys,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]

def write(p,obj):p.write_text(json.dumps(obj,sort_keys=True,separators=(',',':'))+'\n')
def check_manifest():
 p=ROOT/'SHA256SUMS'
 if not p.exists():return {'status':'DEVELOPMENT_DIRECTORY_NO_RELEASE_MANIFEST','files':0}
 n=0
 for line in p.read_text().splitlines():
  h,rel=line.split('  ',1);f=ROOT/rel
  if not f.is_file() or hashlib.sha256(f.read_bytes()).hexdigest()!=h:raise AssertionError('release hash mismatch: '+rel)
  n+=1
 return {'status':'PASS_RELEASE_MANIFEST','files':n}

def finalize(out):
 read=lambda p:json.loads(p.read_text())
 g=read(out/'geometry/GEOMETRY_SUMMARY.json');groups=g['groups'];families=g['families'];l=read(out/'ledger/LEDGER_SUMMARY.json');nt=read(out/'tests/NEGATIVE_CHECKS.json')
 counts={'groups':len(groups),'complete_root_gates':sum(x['counts']['complete_gates'] for x in groups),'ordinary_jet_systems':sum(x['counts']['jet_residual'] for x in groups),'low_rank_inconsistent':sum(len(x['low_rank_exclusions']) for x in groups),'full_affine_spaces':sum(len(x['affine_spaces']) for x in groups),'unique_saturated_products':sum(len(x['unique_products']) for x in groups),'parameter_strata':sum(x['parameter_strata'] for x in families),'unpeeled_parameter_strata':sum(x['unpeeled_strata'] for x in families)}
 counts['full_augmented_minors']=counts['ordinary_jet_systems']-counts['low_rank_inconsistent']-counts['full_affine_spaces']-counts['unique_saturated_products']
 if counts!={'groups':16,'complete_root_gates':433353146,'ordinary_jet_systems':109103,'low_rank_inconsistent':167,'full_affine_spaces':28,'unique_saturated_products':1,'parameter_strata':139,'unpeeled_parameter_strata':92,'full_augmented_minors':108907}:raise AssertionError('final geometry scope mismatch')
 if l['rows'][-1]['maximum']!=10 or l['full_edge']['maximum_if_total_slack_positive']!=9:raise AssertionError('cover10/full-edge10 absent')
 products=read(out/'auxiliary/SAT_PRODUCT_COUNTS.json');graphs=read(out/'auxiliary/QUADRATIC_GRAPH_ACCEPTED.json')
 summary={'status':'PASS_NEW_LOC77_LOC83_SAT144_COVER10_FULL_EDGE10','same_fixed_G':True,'cover':10,'cover_if_total_surplus_positive':9,'SAT_through_q':24,'near_saturation_localization_q':[13,14],'ledger':l['rows'][-1], 'full_edge':l['full_edge'],'geometry_counts':counts,'negative_tests':nt['count'],'quadratic_graph_diagnostic_exclusions':len(graphs['excluded']),'SAT_product_counts':products,'proof_level':'author paper proof and exact finite certificates; frozen inputs inherited; no Lean or external independent full-chain review','unchanged':{'R7':[3,4,5,6,7,8,9],'alpha_templates':57,'per_400_multiple_row_target_bound':152,'general_min_D_e_z':[7,3,14],'G_coefficients_recovered':False,'original_problem_counterexample':False}}
 write(out/'SUMMARY.json',summary);return summary

def deterministic_files(root):return {str(p.relative_to(root)):p for p in root.rglob('*.json') if p.name!='RUN_STATS.json'}
def main():
 pa=argparse.ArgumentParser();pa.add_argument('--out',type=Path,required=True);pa.add_argument('--workers',type=int,default=3);pa.add_argument('--compare',action='store_true');a=pa.parse_args()
 if not __debug__:raise RuntimeError('do not disable assertions with -O')
 if not a.out.is_absolute() or a.out.exists():raise ValueError('use an absolute, nonexistent output directory')
 if not 1<=a.workers<=4:raise ValueError('workers must be between 1 and 4')
 start=time.monotonic();manifest=check_manifest();a.out.mkdir(parents=True);tools=a.out/'tools';tools.mkdir();compiler=os.environ.get('CXX','g++')
 if not shutil.which(compiler):raise RuntimeError('C++17 compiler not found: '+compiler)
 with (a.out/'build.log').open('w') as f:
  for source,target,flags in [('sat_gate.cpp','sat_gate',[]),('nf_gate.cpp','nf_gate',[]),('field65521.cpp','libfield65521.so',['-shared','-fPIC'])]:
   subprocess.run([compiler,'-O3','-std=c++17',*flags,str(ROOT/'code'/source),'-o',str(tools/target)],stdout=f,stderr=subprocess.STDOUT,check=True)
 os.environ['B699_FIELDLIB']=str(tools/'libfield65521.so');env=dict(os.environ,OPENBLAS_NUM_THREADS='1',OMP_NUM_THREADS='1')
 print('BUILD_AND_MANIFEST',manifest,flush=True)
 cmd=[sys.executable,'-B','-u',str(ROOT/'code/verify_new.py'),'--out',str(a.out/'geometry'),'--tools',str(tools),'--workers',str(a.workers),'--families']
 with (a.out/'mathematics.log').open('w') as f:subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,check=True,env=env)
 from verify_location_ledger import verify as ledger_verify
 from negative_checks import run_checks
 from verify_auxiliary import verify,verify_product_counts
 for d in ('ledger','tests','auxiliary'):(a.out/d).mkdir()
 ledger_verify(a.out/'ledger');run_checks(a.out/'tests');verify(a.out/'auxiliary');verify_product_counts(a.out/'auxiliary');summary=finalize(a.out)
 comparison=None
 if a.compare:
  ref=deterministic_files(ROOT/'verification/final');got=deterministic_files(a.out)
  if set(ref)!=set(got):raise AssertionError('reference output file set mismatch: '+str(set(ref)^set(got)))
  bad=[k for k in ref if ref[k].read_bytes()!=got[k].read_bytes()]
  if bad:raise AssertionError('deterministic output byte mismatch: '+str(bad))
  comparison={'status':'PASS_EXACT_OUTPUT_BYTES','files':len(ref)}
 write(a.out/'RUN_STATS.json',{'manifest':manifest,'comparison':comparison,'elapsed_seconds':time.monotonic()-start,'python':sys.version,'command':sys.argv,'exit_status':0})
 print(summary['status'],comparison,flush=True)
if __name__=='__main__':main()
