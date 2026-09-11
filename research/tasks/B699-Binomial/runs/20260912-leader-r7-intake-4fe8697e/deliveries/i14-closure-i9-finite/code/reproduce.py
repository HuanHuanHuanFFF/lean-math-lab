"""Serial receiving replay, no Padé/seed/block/CRT discovery searches.

Default: independently checks ALL 1924 large-integer exponent blocks plus every
current downstream certificate. Old content families remain explicitly adopted
frozen inputs; --inherited-content invokes their separate original full replay.
--quick skips only the already-recorded large i14 block arithmetic and is NOT a
full new receiving replay. --alternate additionally receives the longer M-chain.
"""
from pathlib import Path
import argparse,json,subprocess,sys,time,platform
from source_paths import frozen,R

def main():
 if not __debug__:raise RuntimeError('Do not run certificate checks with python -O')
 ap=argparse.ArgumentParser();ap.add_argument('--quick',action='store_true');ap.add_argument('--alternate',action='store_true');ap.add_argument('--inherited-content',action='store_true');args=ap.parse_args()
 begin=time.monotonic();stages=[];logs=R/'logs'/('quick' if args.quick else 'replay');logs.mkdir(parents=True,exist_ok=True);(R/'cache/bin').mkdir(parents=True,exist_ok=True)
 def run(name,cmd):
  t=time.monotonic();log=logs/f'{len(stages)+1:02d}-{name}.log'
  with log.open('w') as out:subprocess.run([str(x) for x in cmd],cwd=R,stdout=out,stderr=subprocess.STDOUT,check=True)
  stages.append({'stage':name,'seconds':round(time.monotonic()-t,3),'log':str(log.relative_to(R))});print('PASS',name,flush=True)
 run('frozen-inputs-and-C-alignment',[sys.executable,R/'code/check_dependency_alignment.py'])
 A=frozen('A')
 if args.inherited_content:run('inherited-all-content-replay',[sys.executable,A/'code/reproduce.py'])
 else:
  run('inherited-graph-DAG-receiving',[sys.executable,A/'code/check_graph_and_height.py'])
  run('compile-independent-graph-grid',['g++','-O3','-std=c++17',A/'code/check_graph_grid.cpp','-o',R/'cache/bin/check_graph_grid'])
  run('inherited-graph-independent-grid',[R/'cache/bin/check_graph_grid',A/'input/graph.txt'])
 run('C-minimal-common-divisor-bridge',[sys.executable,R/'adopted/C-minimal/code/verify_pade_divisor_interface.py'])
 run('tightened-cut-height-two-exact-paths',[sys.executable,R/'code/check_tightened_height.py'])
 run('new-universal-lemma-finite-regressions',[sys.executable,R/'code/check_new_math.py'])
 run('compile-GMP-block-receiver',['g++','-O3','-std=c++17',R/'code/check_blocks.cpp','-lgmpxx','-lgmp','-o',R/'cache/bin/check_blocks'])
 if not args.quick:run('all-i14-large-exponent-blocks',[R/'cache/bin/check_blocks',R/'evidence/blocks',R/'evidence/blocks_check.json'])
 else:
  d=json.loads((R/'evidence/blocks_check.json').read_text());assert d['status']=='PASS_COMPLETE_INDEPENDENT_GMP_BLOCK_RECEIVER' and d['blocks']==1924
  print('SKIP large-block arithmetic: QUICK ONLY, using archived full receiving result',flush=True)
 run('i14-direct-local-CRT-complete-union',[sys.executable,R/'code/check_local_crt.py','14'])
 run('i14-every-candidate-all-j',[sys.executable,R/'code/direct_terminal.py','14','--check'])
 run('i9-two-profiles-and-finite-blocks',[sys.executable,R/'code/check_i9_probe.py'])
 run('i9-direct-local-CRT-complete-union',[sys.executable,R/'code/check_local_crt.py','9'])
 run('i9-every-finite-range-candidate-all-j',[sys.executable,R/'code/direct_terminal.py','9','--check'])
 run('i9-exact-method-boundary',[sys.executable,R/'code/check_i9_boundary.py'])
 run('current-route-negative-tests',[sys.executable,R/'code/negative_direct_tests.py'])
 if args.alternate:
  for name in ['check_crt','check_candidates','check_terminal','negative_tests']:
   run('alternate-'+name,[sys.executable,R/'code'/f'{name}.py'])
 b=json.loads((R/'evidence/blocks_check.json').read_text());c=json.loads((R/'evidence/direct/crt_check.json').read_text());t=json.loads((R/'evidence/direct/terminal_check.json').read_text());t9=json.loads((R/'evidence/i9/direct/terminal_check.json').read_text())
 assert b['output_height_bits']==169 and c['candidates']==t['candidates']==6270 and t['residual']==0
 assert t9['candidates']==1303 and t9['residual']==0
 out={'status':'PASS_QUICK_EXCEPT_I14_LARGE_BLOCK_ARITHMETIC' if args.quick else 'PASS_MAIN_RECEIVING_REPLAY_NO_DISCOVERY',
      'Lean':False,'publication_and_frozen_content_dependencies':True,'inherited_content_replayed':args.inherited_content,
      'i14_full_legal_n_j_closed':True,'new_i14_block_arithmetic_replayed':not args.quick,
      'i9_statement':'All legal j, all n < 2^4096; no global i9 height established',
      'remaining_R7':[3,4,5,6,7,8,9],'stages':stages,'seconds':round(time.monotonic()-begin,3),'python':platform.python_version()}
 dest=R/'evidence'/('quick_reproduction.json' if args.quick else 'reproduction.json');dest.write_text(json.dumps(out,indent=2)+'\n');print(out['status'],flush=True)
if __name__=='__main__':main()
