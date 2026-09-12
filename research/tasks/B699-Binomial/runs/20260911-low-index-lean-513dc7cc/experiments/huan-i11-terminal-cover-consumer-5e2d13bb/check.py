from pathlib import Path
import json,re,hashlib,time,datetime
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
start=time.monotonic();sources={}
def read(p):
 sources[p.relative_to(ROOT).as_posix()]={'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()}
 return p.read_text(encoding='utf-8-sig')
def js(p):return json.loads(read(p))
def check_cover(lo,hi,cover):
 for a,b in cover:
  if hi<lo:return True
  if b<lo:continue
  if lo<a:return False
  if hi<=b:return True
  lo=b+1
 return hi<lo

def member(n,intervals):return any(a<=n<=b for a,b in intervals)
ordinary=[(24,33)];special=[(330,330)];mixed=ordinary+special
assert check_cover(24,33,ordinary) and check_cover(330,330,special)
assert all(check_cover(a,b,mixed) for a,b in mixed)
assert not check_cover(24,330,mixed)
assert not check_cover(329,330,special) and not check_cover(330,331,special)
assert not check_cover(329,331,special)
assert not check_cover(24,34,ordinary)
assert check_cover(10,9,[])  # Empty target interval; no member exists.
rows=[n for n in range(0,332) if member(n,mixed)]
assert rows==list(range(24,34))+[330]
assert not member(34,mixed) and not member(329,mixed) and not member(331,mixed)
legal_ordinary=[(n,j) for n in range(24,34) for j in range(12,n//2+1)]
legal330=list(range(12,166))
assert len(legal_ordinary)==30 and len(legal330)==154
# Tiny structural adversarial interval checks exercise the imported algorithm shape.
checks=0
covers=[[],[(0,0)],[(1,2)],[(2,1)],[(0,2),(4,5)],[(0,2),(3,5)],[(3,5),(0,2)],[(1,5),(2,4)]]
for cover in covers:
 for lo in range(7):
  for hi in range(7):
   if check_cover(lo,hi,cover):assert all(member(n,cover) for n in range(lo,hi+1))
   checks+=1
old=ROOT/'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean'
large=read(old/'LargeDivisorWitness.lean');interval=read(old/'IntervalCover.lean')
common=read(ROOT/'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean/GapBridge.lean')
assert 'p.Prime ∧ i ≤ p ∧ p ∣ Nat.gcd (n.choose i) (n.choose j)' in common
assert 'i - 1).factorial' in large and 'goodSegmentCheck_sound' in large
assert 'def coverCheck' in interval and 'theorem coverCheck_sound' in interval
w=read(OUT/'Witness.lean');c=read(OUT/'Cover.lean');e=read(OUT/'Examples.lean')
assert re.search(r'\| special330\s*\n',w) and '| .special330 => (330, 330)' in w and '| .special330 => true' in w
assert 'I11Terminal330.common_330 j hij hjn' in w
# No proposition-bearing checker or universal j test is introduced.
for name in ['witnessCheck']:
 body=re.search(r'def '+name+r'.*?(?=\n/--|\ntheorem|\ndef|\nend)',w,re.S).group(0)
 assert not re.search(r'\bCommon\b|∀|forall',body)
for name in ['witnessesCheck','witnessCoverCheck','candidateIntervalsCheck']:
 body=re.search(r'def '+name+r'.*?(?=\n/--|\ntheorem|\ndef|\nend)',c,re.S).group(0)
 assert not re.search(r'\bCommon\b|∀|forall',body)
assert 'TerminalWitnessPilot.top_24_33_23_check' in e
assert 'goodSegmentCheck' not in e and 'trialPrimeCheck' not in e and '.choose' not in e
# Existing native checks are only imported by theorem; no primality/binomial computation here.
for p in sorted(OUT.glob('*.lean')):
 s=read(p);clean=re.sub(r'/-.*?-/', '',s,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 assert not re.search(r'@[A-Z_]+@',clean)
audit=js(OUT/'AUDIT_PLAN.json');assert len(audit['roots'])==len(set(audit['roots']))==31
for m in audit['modules']:assert hashlib.sha256((OUT/(m['name']+'.lean')).read_bytes()).hexdigest()==m['sha256']
receipts=[]
for name in ['i11-terminal-330','i11-terminal-witness-pilot']:
 rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json');ev=js(ROOT/rec['evidence']);assert ev['success'] and ev['exit_code']==0
 for entry in ev['source_closure']:
  read(ROOT/entry['source']);assert sources[entry['source']]['sha256']==entry['source_sha256_before']==entry['source_sha256_after']
 assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in rec['public_axiom_audit'])
 receipts.append({'name':name,'evidence':rec['evidence'],'public_roots':len(rec['public_axiom_audit']),'source_closure_matches':True})
shared=js(RUN/'verification/20260911T004440769454Z/evidence.json');assert shared['success'] and shared['exit_code']==0
for entry in shared['source_closure']:
 read(ROOT/entry['source']);assert sources[entry['source']]['sha256']==entry['source_sha256_before']==entry['source_sha256_after']
read(OUT/'build_candidate.py');read(OUT/'check.py')
for name,rec in sources.items():assert hashlib.sha256((ROOT/name).read_bytes()).hexdigest()==rec['sha256']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_STRUCTURE_INTERVALS_AND_SOURCE_BINDING_NOT_LEAN','ordinary_range':[24,33],'special_range':[330,330],
 'mixed_union_rows':rows,'ordinary_legal_n_j_pair_count':len(legal_ordinary),'special_legal_j_count':len(legal330),
 'scope_note':'counts describe the quantified domain only; no choose/primality or original Common computation was run',
 'small_cover_algorithm_checks':checks,'false_extensions_rejected':['ordinary upper34','special lower329','special upper331','mixed convex hull24..330'],
 'Bool_checker_excludes_Common_and_forall_j':True,'special_constructor_has_no_parameters':True,
 'accepted_receipts':receipts,'old_cover_acceptance':'verification/20260911T004440769454Z/evidence.json','old_shared_closure_count':len(shared['source_closure']),
 'source_count':len(sources),'seconds':time.monotonic()-start,'Lean_runs':0,'primality_runs':0,'choose_computations':0,'new_B_original_results':0}
(OUT/'structural-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','ordinary_legal_n_j_pair_count','special_legal_j_count','small_cover_algorithm_checks','source_count','seconds']},ensure_ascii=False))
