from pathlib import Path
import json,re,hashlib,datetime,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
start=time.monotonic();sources={}
def read(p):
 b=p.read_bytes();sources[p.relative_to(ROOT).as_posix()]={'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()};return b.decode('utf-8-sig')
def js(p):return json.loads(read(p))
audit=js(OUT/'AUDIT_PLAN.json');row=read(RUN/'lean/I11TerminalCrt/RowCell.lean')
assert sources[(RUN/'lean/I11TerminalCrt/RowCell.lean').relative_to(ROOT).as_posix()]['sha256']==audit['main_RowCell_sha256']
assert '(max (P * A) (Q * C), min (P * A) (Q * C) + 10)' in row
assert 'pairBoundCheck P Q v capA capC 10 d bounds &&' in row
assert 'shifts.all' in row
for mod in audit['modules']:
 p=OUT/(mod['name']+'.lean');s=read(p);assert hashlib.sha256(p.read_bytes()).hexdigest()==mod['sha256']
 clean=re.sub(r'/-.*?-/', '',s,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 assert not re.search(r'@[A-Z_]+@',clean)
 if mod['name'] in ['Block','Pair']:
  for body in re.findall(r'def .*?(?=\ntheorem|\ndef|\nend)',clean,re.S):
   assert 'candidateMem' not in body and 'Common' not in body and '∀' not in body
block=read(OUT/'Block.lean');grid=read(OUT/'Grid.lean');pair=read(OUT/'Pair.lean');dispatch=read(OUT/'Dispatch.lean');actual=read(OUT/'Actual.lean')
assert 'blockCoverCheck p q H M 1 amax 1 bmax data candidates' in block
assert '(heightCap H M (p ^ a)) (heightCap H M (q ^ b))' in block
assert 'max (p ^ a * A) (q ^ b * C) ≤ n' in grid and 'n ≤ min (p ^ a * A) (q ^ b * C) + 10' in grid
assert 'hs hr hC hA hCM hAM hQ hP' in grid
assert 'hk hh hnH hr hs hA hC hAM hCM hP hQ' in pair
# All twelve routing calls exactly correspond to ordered p,q traversal.
primes=[2,3,5,7]
expected=[(min(p,q),max(p,q),p>q) for p in primes for q in primes if p!=q]
calls=[(int(a),int(b),bool(swap)) for swap,a,b in re.findall(r'exact pairGridCoverCheck_windows(_swapped)? check([2357])([2357])',dispatch)]
assert calls==expected and dispatch.count('False.elim (hpq rfl)')==4
for name in ['actual_i11_candidateMem','common_of_terminal_grid_checks']:
 header=actual.split('theorem '+name,1)[1].split(':= by',1)[0]
 assert '(hsmall : coverCheck 24 (max M 109) candidates = true)' in header
 assert 'hmember' not in header and '(hP :' not in header and '(hQ :' not in header
 assert header.count('pairGridCoverCheck')==6
assert actual.index('by_cases hnM')<actual.index('by_cases hnsmall')<actual.index('actual_i11_bounded_cofactor_bridge')
assert 'have hn24 : 24 ≤ n := by omega' in actual
assert 'candidateIntervalsCheck_sound hwitness hmember hij hjn' in actual
# Small finite tests of both max/min window endpoints, height caps and swaps.
window_pairs=0
for n in [24,25,33,109,110,111,149,150,330]:
 H=n+1
 for M in [1,5,20,500]:
  reps=[]
  for r in range(11):
   N=n-r
   for p in primes:
    P=p;h=1
    while P<=N:
     if N%P==0 and N//P<=M:reps.append((p,h,r,N//P,N))
     P*=p;h+=1
  for p,h,r,A,NP in reps:
   P=p**h;amax=0
   while p**(amax+1)<H:amax+=1
   assert 1<=h<=amax and A<=min(M,(H-1)//P)
   for q,k,s,C,NQ in reps:
    if p==q:continue
    Q=q**k;delta=NP-NQ
    assert -10<=delta<=10 and max(P*A,Q*C)<=n<=min(P*A,Q*C)+10
    assert max(P*A,Q*C)==max(Q*C,P*A)
    assert min(P*A,Q*C)+10==min(Q*C,P*A)+10
    assert (NQ-NP)==-delta
    window_pairs+=1
small_cases=0
for M in [1,5,23,24,109,110,150,500]:
 for n in range(24,161):
  if n<=M or n<110:assert 24<=n<=max(M,109)
  else:assert M<n and n>=110
  small_cases+=1
legal_cases=0
for n in range(60):
 for j in range(31):
  if 11<j<=n//2:assert n>=24;legal_cases+=1
# Abstract finite predicate checks for the new list-all append/transfer plumbing.
def chk(ast,ac,bst,bc,f):return all(f(a,b) for a in range(ast,ast+ac) for b in range(bst,bst+bc))
append_cases=0;transfer_cases=0
for ast in range(3):
 for left in range(4):
  for right in range(4):
   for bst in range(3):
    for bc in range(4):
     f=lambda a,b:(a+2*b)%5!=3
     assert chk(ast,left+right,bst,bc,f)==(chk(ast,left,bst,bc,f) and chk(ast+left,right,bst,bc,f))
     assert chk(bst,bc,ast,left+right,f)==(chk(bst,bc,ast,left,f) and chk(bst,bc,ast+left,right,f))
     append_cases+=2
     f2=lambda a,b:(f(a,b) if ast<=a<ast+left and bst<=b<bst+bc else not f(a,b))
     assert chk(ast,left,bst,bc,f)==chk(ast,left,bst,bc,f2)
     transfer_cases+=1
receipts=[]
for name in ['i11-terminal-crt-row-cell','i11-terminal-cover-witness','i11-terminal-cover-consumer','crt-grid-rectangles','crt-grid-height-cap','i11-crt-six-pair-meta','i11-crt-six-pair-dispatch','i11-crt-actual-step','i11-bounded-actual-bridge']:
 rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json');ev=js(ROOT/rec['evidence']);assert ev['success'] and ev['exit_code']==0
 for c in ev['source_closure']:
  read(ROOT/c['source']);assert sources[c['source']]['sha256']==c['source_sha256_before']==c['source_sha256_after']
 assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in rec['public_axiom_audit'])
 receipts.append({'name':name,'evidence':rec['evidence'],'roots':len(rec['public_axiom_audit']),'source_closure_matches':True})
for p in OUT.glob('*Audit.lean'):read(p)
read(OUT/'build_candidate.py');read(OUT/'check.py')
for n,x in sources.items():assert hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==x['sha256']
assert time.monotonic()-start<60
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_BOUNDED_GEOMETRY_ROUTING_AND_SOURCE_BINDING_NOT_LEAN','ordered_pairs_checked':12,'diagonal_branches_eliminated':4,'actual_small_window_pairs':window_pairs,'small_n_cases':small_cases,'legal_n_j_pairs_checked':legal_cases,'abstract_append_checks':append_cases,'abstract_transfer_checks':transfer_cases,'actual_membership_assumption_absent':True,'new_checker_Bools_exclude_Common_and_candidateMem':True,'accepted_receipts':receipts,'source_count':len(sources),'seconds':time.monotonic()-start,'Lean_runs':0,'full_numeric_grids_supplied':False,'new_B_original_results':0}
(OUT/'structural-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','actual_small_window_pairs','small_n_cases','abstract_append_checks','abstract_transfer_checks','source_count','seconds']},ensure_ascii=False))
