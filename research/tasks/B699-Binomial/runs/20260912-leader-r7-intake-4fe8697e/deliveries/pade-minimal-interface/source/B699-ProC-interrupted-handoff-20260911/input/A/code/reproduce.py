"""Isolated complete acceptance or clean regeneration of the i10 evidence.
No networking, no Lean, no edits to the source packet. Python 3.9+ on POSIX.
Default: Python standard library. --regenerate additionally uses g++ and GMP.
"""
from pathlib import Path
import argparse,json,shutil,subprocess,sys,os,time,hashlib,resource
R=Path(__file__).resolve().parents[1]
META_KEYS={'seconds','elapsed_seconds','check_seconds','generation_seconds','generate_seconds','wall_seconds','peak_rss_kib','generation_peak_rss_kib','bytes','certificate_bytes'}
FAMILIES=['5_7_14','9_12_20','5_6_15','8_8_13','9_11_18','10_15_19']
PAIRS=[(2,3),(2,5),(2,7),(3,5),(3,7),(5,7)]
CORE=(['evidence/content_tail.json','evidence/content_check.json','evidence/content_finite_summary.json','evidence/prime_cache_check.json']
 +[f'evidence/content_finite_{k}.json' for k in FAMILIES]
 +[f'input/content_catalog_{k}.txt' for k in FAMILIES]
 +['evidence/cuts_check.json','evidence/cuts_grid_check.json','evidence/height_check.json','evidence/height_grid_check.json','input/i10_target.json']
 +['evidence/graph/distinct.json']+[f'evidence/graph/collision_{p}_{q}.json' for p,q in PAIRS]
 +[f'evidence/blocks/block_{p}_{q}.json' for p,q in PAIRS]
 +['evidence/blocks_summary.json','evidence/blocks_python_check.json','evidence/crt_stages.json','evidence/terminal_cost.json','evidence/candidates.json','evidence/terminal_certificate.json','evidence/finite_check.json','evidence/math_regression.json','evidence/bad_certificates_check.json','evidence/next_i9_interfaces.json'])

def normalized(x):
 if isinstance(x,dict):return {k:normalized(v) for k,v in x.items() if k not in META_KEYS}
 if isinstance(x,list):return [normalized(v) for v in x]
 return x

def mathbytes(path):
 if path.suffix=='.json':return json.dumps(normalized(json.loads(path.read_text())),sort_keys=True,separators=(',',':'),ensure_ascii=False).encode()
 return path.read_bytes()

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--regenerate',action='store_true');ap.add_argument('--output-dir',default='replay/local');ap.add_argument('--keep-work',action='store_true');args=ap.parse_args()
 out=Path(args.output_dir);out=out if out.is_absolute() else R/out
 if out.exists() and any(out.iterdir()):raise ValueError('Output directory must be new or empty')
 out.mkdir(parents=True,exist_ok=True);work=out/'work';st=time.monotonic();env=dict(os.environ,PYTHONDONTWRITEBYTECODE='1');records=[]
 for name in ['code','adopted','input']:
  shutil.copytree(R/name,work/name,ignore=shutil.ignore_patterns('__pycache__','*.pyc'))
 if args.regenerate:(work/'evidence').mkdir()
 else:shutil.copytree(R/'evidence',work/'evidence')
 for name in ['cache/primes','bin','replay']:(work/name).mkdir(parents=True,exist_ok=True)
 py=sys.executable
 def run(argv,label,stdout_target=None):
  ix=len(records)+1;log=out/f'{ix:02d}_{label}.log';ts=time.monotonic()
  with log.open('wb') as stream:
   z=subprocess.run(argv,cwd=work,env=env,stdout=stream,stderr=subprocess.STDOUT)
  item=dict(step=ix,label=label,command=argv,returncode=z.returncode,seconds=time.monotonic()-ts,cumulative_child_peak_rss_kib=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss)
  if log.stat().st_size:item['log']=log.name
  else:log.unlink();item['log']=None
  records.append(item);(out/'progress.json').write_text(json.dumps(dict(status='RUNNING_UNTIL_FINAL_RESULT',steps=records),indent=2)+'\n')
  print('STEP',ix,label,'returncode',z.returncode,flush=True)
  if z.returncode:raise RuntimeError(f'Failed step {ix} {label}; working copy preserved')
  if stdout_target is not None:
   data=json.loads(log.read_text());(work/stdout_target).write_text(json.dumps(data,indent=2)+'\n')
 try:
  if args.regenerate:
   for target in ['make_prime_cache','check_prime_cache','content_finite','generate_blocks','check_blocks']:
    run(['g++','-O2','-std=c++17',f'code/{target}.cpp','-o',f'bin/{target}','-lgmpxx','-lgmp'],'compile_'+target)
   run([py,'code/make_content_tail.py'],'content_tail')
   run(['bin/make_prime_cache','25999990','cache/primes'],'prime_cache')
   run(['bin/check_prime_cache','25999990','cache/primes'],'prime_cache_check','evidence/prime_cache_check.json')
   run([py,'code/generate_content_finite.py'],'content_finite')
  for script in ['verify_content','verify_cuts','check_cuts_grid','build_i10_height','check_height_grid']:
   run([py,f'code/{script}.py'],script)
  if args.regenerate:run([py,'code/run_blocks.py','--generate'],'generate_blocks')
  run([py,'code/run_blocks.py','--python'],'check_blocks_python')
  if args.regenerate:
   for script in ['run_crt','make_candidates','make_terminal']:run([py,f'code/{script}.py'],script)
  for script in ['check_finite','regress_math','bad_certificates','next_i9_interface']:run([py,f'code/{script}.py'],script)
  comparisons=[];different=[]
  for rel in CORE:
   expected=mathbytes(R/rel);actual=mathbytes(work/rel);same=expected==actual
   comparisons.append(dict(path=rel,equal=same,expected_math_sha256=hashlib.sha256(expected).hexdigest(),actual_math_sha256=hashlib.sha256(actual).hexdigest()))
   if not same:different.append(rel)
  (out/'math_comparison.json').write_text(json.dumps(dict(excluded_metadata_keys=sorted(META_KEYS),files=comparisons,differences=different),indent=2)+'\n')
  if different:raise RuntimeError('Mathematical replay differences: '+', '.join(different))
  result=dict(status='PASS_CLEAN_REGENERATION' if args.regenerate else 'PASS_ISOLATED_ACCEPTANCE',commands=len(records),core_mathematical_files=len(CORE),differences=0,excluded_metadata_keys=sorted(META_KEYS),all_core_files_regenerated=bool(args.regenerate),seconds=time.monotonic()-st,cumulative_child_peak_rss_kib=resource.getrusage(resource.RUSAGE_CHILDREN).ru_maxrss,work_retained=args.keep_work,records=records)
  if not args.keep_work:shutil.rmtree(work)
  (out/'result.json').write_text(json.dumps(result,indent=2)+'\n');print('RESULT',json.dumps({k:v for k,v in result.items() if k!='records'}),flush=True)
 except Exception as ex:
  (out/'result.json').write_text(json.dumps(dict(status='FAIL',error=str(ex),seconds=time.monotonic()-st,records=records,work_retained=True),indent=2)+'\n');raise
if __name__=='__main__':
 if not __debug__:raise RuntimeError('Do not run with -O or -OO')
 main()
