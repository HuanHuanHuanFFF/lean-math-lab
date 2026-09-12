from pathlib import Path
from datetime import datetime,timezone
import json,hashlib,re,difflib
repo=Path.cwd();rr=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc');run=repo/rr
review=run/'reviews/huan-crt-cutoff-decision-fix-5e2d13bb';review.mkdir(exist_ok=True)
state=json.loads((run/'verification/huan-b-queue-20260912T030958206763Z/state.json').read_text());assert state['status']=='queue_finished'
sha=lambda b:hashlib.sha256(b).hexdigest();records=[]
for n in range(4):
 p=run/f'lean/I11CRTConsumers/Stage{n:02d}.lean';before=p.read_bytes()
 pattern=rb'  simpa only \[Math\.B699\.I11CRTSixPair\.cutoffCheck, grid\d+\]\r?\n    using \(decide_eq_true hprop\)'
 newline=b'\r\n' if b'\r\n' in before else b'\n'
 replacement=b'  simp only [Math.B699.I11CRTSixPair.cutoffCheck, decide_eq_true_eq]'+newline+b'  exact hprop'
 after,count=re.subn(pattern,lambda m:replacement,before)
 assert count==6,(p,count)
 headings=lambda b:re.findall(rb'(?m)^(?:theorem|def) [^\r\n]+',b)
 assert headings(before)==headings(after)
 (review/(p.name+'.before')).write_bytes(before)
 p.write_bytes(after)
 (review/(p.name+'.diff')).write_text(''.join(difflib.unified_diff(before.decode().splitlines(True),after.decode().splitlines(True),fromfile=p.name+'.before',tofile=p.name)),encoding='utf-8',newline='\n')
 records.append({'source':p.relative_to(run).as_posix(),'before_sha256':sha(before),'after_sha256':sha(after),'rewrites':count})
now=datetime.now(timezone.utc).isoformat()
out={'utc':now,'status':'source_fix_pending_fresh_Lean','problem':'cutoff proof simpa constructed a different hidden Decidable instance; expected and actual printed propositions looked identical','change':'Rewrite the goal through decide_eq_true_eq then supply the already proved cutoff proposition; no numerical recomputation or theorem statement changes','files':records,'failed_evidence_reused':False,'next':'Fresh consumers only after all24 rectangle receipts complete','new_B_original_results':0}
(review/'fix.json').write_text(json.dumps(out,indent=2)+'\n',encoding='utf-8',newline='\n')
live={'updated_utc':now,'active_session_id':None,'active_queue':None,'last_queue':'huan-b-queue-20260912T030958206763Z','last_queue_status':'queue_finished','only_serial_Lean':True,'new_B_original_results':0,'next':'post-v31 successful object compression; then3CRT retries and4fixedconsumers before terminalplan'}
(run/'notes/huan-live-process-state.json').write_text(json.dumps(live,indent=2)+'\n',encoding='utf-8',newline='\n')
with (run/'notes/huan-resumed-checkpoint-20260912.md').open('a',encoding='utf-8',newline='\n') as f:
 f.write('\n## '+now+' — v31 completed; resource interruptions and cutoff composition fix\n\n21 of24 fullCRT rectangles accepted. Stage3 Pair25/27/35 were interrupted by insufficient available memory; user subsequently reported recovery and live RAM rose to about5GiB. Stage0/1/2 consumers separately failed at cutoff bool-to-proposition composition: displayed types matched but hidden Decidable instances differed. Four source-only consumers now uniformly rewrite their goal with decide_eq_true_eq then use hprop (24sites); statements and table sources unchanged. Original failure evidence is retained, not reused. Stage3 consumer and all-four aggregate were skipped because dependencies were absent. Current no active Lean; prepare safe object compression then fresh retry. A151plusunified;B0/19.\n')
print(json.dumps({'files':len(records),'sites':sum(x['rewrites'] for x in records),'queue_finished':True,'accepted_rectangles':21,'status':'awaiting fresh validation'}))

