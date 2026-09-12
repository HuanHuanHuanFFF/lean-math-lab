from pathlib import Path
from datetime import datetime,timezone
from math import factorial,gcd,prod
import hashlib,json
R=Path('research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc')
B='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc».lean.'
out=R/'experiments/huan-i11-terminal-witness-data-5e2d13bb';out.mkdir(exist_ok=False)
src=R.parent/'20260910-pade-three-closure-4edad426/delivery/results/terminal_certificate_11.json';x=json.loads(src.read_text())
assert hashlib.sha256(src.read_bytes()).hexdigest()=='4e2e5eac1f319ed6a74f01ccb574d5c6dcae3d89d4a8868f7d1cbe73badd5cf0'
items=[dict(kind='top',lo=a,hi=b,value=p) for a,b,p in x['top_prime_intervals']]
items += [dict(kind='large',lo=int(n),hi=int(n),value=int(D)) for n,D in x['large_divisor_rows']]
items += [dict(kind='special330',lo=330,hi=330)]
items.sort(key=lambda v:(v['lo'],v['hi'],v['kind']))
assert len(items)==4042
append=R/'lean/I11TerminalCover/Append.lean';assert not append.exists()
append.write_text('import '+B+'''I11TerminalCover.Cover

set_option autoImplicit false
set_option relaxedAutoImplicit false
namespace B699LowIndex.I11TerminalCover
theorem witnessesCheck_append {left right : List Witness}
    (hl : witnessesCheck left = true) (hr : witnessesCheck right = true) :
    witnessesCheck (left ++ right) = true := by
  unfold witnessesCheck at hl hr ⊢
  rw [List.all_append]
  exact Bool.and_eq_true_iff.mpr ⟨hl, hr⟩
end B699LowIndex.I11TerminalCover
#print axioms B699LowIndex.I11TerminalCover.witnessesCheck_append
''',encoding='utf-8',newline='\n')
files=[]
def emit(name,lines):
 p=R/'lean/I11TerminalData'/(name+'.lean');assert not p.exists();p.parent.mkdir(exist_ok=True);p.write_text('\n'.join(lines)+'\n',encoding='utf-8',newline='\n')
 files.append(dict(name=name,root=p.relative_to(R).as_posix(),sha256=hashlib.sha256(p.read_bytes()).hexdigest()))
chunks=[]
for ix,start in enumerate(range(0,len(items),16)):
 block=items[start:start+16];name=f'Chunk{ix:03d}';ns=f'B699LowIndex.I11TerminalData.{name}'
 lines=[f'import {B}I11TerminalCover.Append',f'import {B}WitnessBridge','','set_option autoImplicit false','set_option relaxedAutoImplicit false','set_option maxRecDepth 100000','set_option maxHeartbeats 5000000','set_option exponentiation.threshold 1000000','',f'namespace {ns}','open B699LowIndex B699LowIndex.I11TerminalCover','']
 for k,item in enumerate(block):
  item['module']=name;item['declaration']=f'{ns}.w{k}'
  if item['kind']=='special330':lines += [f'def w{k} : Witness := .special330',f'theorem w{k}_check : witnessCheck w{k} = true := rfl','']
  else:
   typ='topPrime' if item['kind']=='top' else 'largeDivisor'
   lines += [f'def w{k} : Witness := .good ⟨{item["lo"]}, {item["hi"]}, .{typ} {item["value"]}⟩',f'theorem w{k}_check : witnessCheck w{k} = true := by']
   if item['kind']=='large':lines+=['  decide +kernel','']
   else:lines += ['  exact B699LowIndex.LowIndexLean513dc7cc.good_top_prime_checked',f'    (i := 11) (r := 3) (s := 7) (lo := {item["lo"]}) (hi := {item["hi"]}) (p := {item["value"]})','    (by decide) (by decide +kernel) (by decide) (by decide)','']
 lines += ['def witnesses : List Witness := ['+', '.join(f'w{k}' for k in range(len(block)))+']','', 'theorem witnesses_check : witnessesCheck witnesses = true := by','  simp only [witnessesCheck, witnesses, List.all_cons, List.all_nil,', '    '+', '.join(f'w{k}_check' for k in range(len(block)))+', Bool.and_self]','',f'end {ns}','']
 lines += [f'#print axioms {ns}.w{k}_check' for k in range(len(block))]+[f'#print axioms {ns}.witnesses_check']
 emit(name,lines);chunks.append(name)
groups=[]
for group,start in enumerate(range(0,len(chunks),4)):
 cs=chunks[start:start+4];name=f'Group{group:03d}';ns=f'B699LowIndex.I11TerminalData.{name}'
 lines=[f'import {B}I11TerminalData.{c}' for c in cs]+['',f'namespace {ns}','open B699LowIndex.I11TerminalCover','', 'def witnesses : List Witness := '+' ++ '.join(c+'.witnesses' for c in cs),'','theorem witnesses_check : witnessesCheck witnesses = true := by']
 expression=cs[-1]+'.witnesses_check'
 for c in reversed(cs[:-1]):expression=f'witnessesCheck_append {c}.witnesses_check ({expression})'
 lines += ['  exact '+expression,'',f'end {ns}',f'#print axioms {ns}.witnesses_check']
 emit(name,lines);groups.append(name)
def job(name,root,uses):
 p=R/root
 return dict(name=name,root=root,source_sha256=hashlib.sha256(p.read_bytes()).hexdigest(),reuse=[(R/'verification/huan-prerequisites'/(n+'.json')).as_posix() for n in uses],memory_mb=1536)
common=job('i11-terminal-witness-append','lean/I11TerminalCover/Append.lean',['i11-terminal-cover-consumer'])
test=job('i11-terminal-witness-chunk000','lean/I11TerminalData/Chunk000.lean',['i11-terminal-witness-append','i11-terminal-witness-pilot'])
group0=job('i11-terminal-witness-group000','lean/I11TerminalData/Group000.lean',['i11-terminal-witness-chunk000'])
alljobs=[job('i11-terminal-witness-'+g.lower(),'lean/I11TerminalData/'+g+'.lean',['i11-terminal-witness-append','i11-terminal-witness-pilot']) for g in groups]
base=dict(kind='source_bound_b_prerequisite_queue',created_utc=datetime.now(timezone.utc).isoformat(),status='prepared_not_running',new_B_original_results=0)
(R/'notes/huan-terminal-witness-pilot-plan.json').write_text(json.dumps(dict(base,jobs=[common,test,group0]),indent=2)+'\n',encoding='utf-8',newline='\n')
(R/'notes/huan-terminal-witness-all-plan.json').write_text(json.dumps(dict(base,jobs=alljobs),indent=2)+'\n',encoding='utf-8',newline='\n')
(out/'manifest.json').write_text(json.dumps(dict(status='generated_not_Lean',input_sha256=hashlib.sha256(src.read_bytes()).hexdigest(),total_witnesses=len(items),top=1699,large=2342,special=1,chunk_size=16,group_size=4,chunks=chunks,groups=groups,files=files,items=items,new_B_original_results=0),ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(out/'PLAN.md').write_text('Primary owns all generated terminal witness source modules. Reuse existing accepted goodSegmentCheck/true prime checker and special330 only. Expected frontier reduction: supply every witness for the1055 terminal candidate intervals, still conditional on actual CRT membership and initial height. Test first16 witnesses and first64-witness group before starting all4042 witnesses. All proofs remain pending until fresh serial hash-bound axiom audit. Candidate interval coverage and final original theorem are separate obligations.\n',encoding='utf-8',newline='\n')
print(json.dumps(dict(witnesses=len(items),leaf_modules=len(chunks),group_modules=len(groups),pilot_jobs=3,status='generated_not_accepted')))
