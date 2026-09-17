#!/usr/bin/env python3
from __future__ import annotations
from pathlib import Path
import argparse,json,time,sys,platform
from verify_new import check,ROOT
import diagnostics,mutation_tests,verify_pc,consumer_checks

def main():
 ap=argparse.ArgumentParser();ap.add_argument('--out',required=True,type=Path);a=ap.parse_args()
 a.out.mkdir(parents=True,exist_ok=True)
 start=time.monotonic();results={}
 for label,fn in [('finite_obligations',lambda:check(json.loads((ROOT/'evidence/joint_certificate.json').read_text()))),('diagnostics',diagnostics.run),('mutations',mutation_tests.run),('pc_obligations',lambda:verify_pc.check(json.loads((ROOT/'evidence/pc_d10_certificate.json').read_text()))),('pc_mutations',verify_pc.mutations),('consumer_api',consumer_checks.run)]:
  t=time.monotonic();r=fn();r['seconds']=time.monotonic()-t
  (a.out/(label+'.json')).write_text(json.dumps(r,ensure_ascii=False,indent=2)+'\n')
  results[label]=r
 report={'status':'PASS_NEW_H012_JOINT_ROWS_REPLAY','seconds':time.monotonic()-start,'python':sys.version,'platform':platform.platform(),'results':results,'old_history_replayed':False,'new_matrix_search_run':False,'lean':False,'external_independent_review':False}
 (a.out/'replay.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
 print(json.dumps({'status':report['status'],'seconds':report['seconds'],'finite_checks':results['finite_obligations']['checks']+results['pc_obligations']['checks'],'diagnostic_pairs':results['diagnostics']['legal_pairs'],'prime_power_examples':results['diagnostics']['full_prime_power_examples'],'mutations_rejected':results['mutations']['rejected_count']+results['pc_mutations']['count']},ensure_ascii=False))
if __name__=='__main__':main()
