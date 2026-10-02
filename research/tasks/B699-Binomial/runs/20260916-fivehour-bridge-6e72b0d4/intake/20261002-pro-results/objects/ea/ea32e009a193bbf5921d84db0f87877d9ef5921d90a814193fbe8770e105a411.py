"""Deliberate mathematical corruption checks, written only to temporary files."""
from pathlib import Path
import copy,json,subprocess,sys,tempfile,time
sys.dont_write_bytecode=True
ROOT=Path(__file__).resolve().parents[1]
base={p.name:json.loads(p.read_bytes()) for p in (ROOT/'certificates').glob('*.json')}
cases=[]
def case(name,fn,mutate):cases.append((name,fn,mutate))
case('incorrect_exceptional_depth','01_prime_power_source.json',lambda c:c['exceptional103'].__setitem__('kappa',1))
case('missing_second_source_sign','01_prime_power_source.json',lambda c:next(r for r in c['rows'] if r['p']==1933).__setitem__('base_roots',[0]))
case('switch_original_q','02_shared_source_phase.json',lambda c:c['A3866'].__setitem__('FN19_q_classes',[0]))
case('illegal_nonunit_recovery','02_shared_source_phase.json',lambda c:c['tables']['11']['rows'][-1][2].append([0,0,0,0,0]))
case('inflated_net_gain','03_projection_delta.json',lambda c:c['new_only'].__setitem__('phase_deleted',c['new_only']['phase_deleted']+1))
case('old_result_counted_as_new','03_projection_delta.json',lambda c:c['overview_R27_adoption'].__setitem__('old_reconciliation_deleted',0))
case('freely_chosen_quotient','04_failure_boundaries.json',lambda c:c.__setitem__('B',(c['B']+1)%209))
case('wrong_next_source_phase','05_next_entry.json',lambda c:c.__setitem__('q_offset',0))
receipts=[]
for name,fn,mutation in cases:
 with tempfile.TemporaryDirectory(prefix='b699-mutant-') as td:
  path=Path(td)
  for f,c in base.items():
   obj=copy.deepcopy(c)
   if f==fn:mutation(obj)
   (path/f).write_text(json.dumps(obj,ensure_ascii=False))
  st=time.perf_counter()
  proc=subprocess.run([sys.executable,'-B',str(ROOT/'evidence/verify.py'),'--cert-dir',str(path),'--skip-provenance'],capture_output=True,text=True)
  if proc.returncode==0:raise RuntimeError('mutant accepted: '+name)
  receipts.append(dict(name=name,certificate=fn,exit_code=proc.returncode,rejected=True,error=proc.stderr.strip().splitlines()[-1],elapsed_seconds=round(time.perf_counter()-st,4)))
  print('REJECTED',name,flush=True)
(ROOT/'logs/negative_tests.json').write_text(json.dumps(dict(tests=receipts,all_rejected=True,external_review=False),ensure_ascii=False,indent=2)+'\n')
print('NEGATIVE TEST PASS:',len(receipts))
