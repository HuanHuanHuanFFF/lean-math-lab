from pathlib import Path
import json,re,hashlib,datetime,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb');OUT=Path(__file__).resolve().parent;RUN=OUT.parent.parent
start=time.monotonic();sources={}
def read(p):
 b=p.read_bytes();sources[p.relative_to(ROOT).as_posix()]={'bytes':len(b),'sha256':hashlib.sha256(b).hexdigest()};return b.decode('utf-8-sig')
def js(p):return json.loads(read(p))
def cover(lo,hi,cs):
 for a,b in cs:
  if hi<lo:return True
  if b<lo:continue
  if lo<a:return False
  if hi<=b:return True
  lo=b+1
 return hi<lo
def mem(n,cs):return any(a<=n<=b for a,b in cs)
def interval(P,Q,v,d,t):
 residue=(d*v)%Q;a0=Q if residue==0 else residue;c0=(P*a0-d)//Q
 A=max(0,a0+Q*t);C=max(0,c0+P*t)
 return (max(P*A,Q*C),min(P*A,Q*C)+10,A,C)
assert (2*2)%3==1
low=interval(2,3,2,-1,0);cross=interval(2,3,2,-7,2)
assert low==(3,12,1,1) and cross==(21,24,7,7)
old=[(24,33)];ext=[(0,23)]+old
assert not cover(3,12,old) and cover(3,12,ext)
assert not cover(21,24,old) and cover(21,24,ext)
assert not cover(3,12,[])
css=[[],[(24,33)],[(25,28),(28,35)],[(0,23)],[(0,100)],[(330,330),(24,33)],[(24,2),(40,45)]]
member_cases=0;legal_cases=0;small_cover_cases=0
for cs in css:
 for n in range(401):
  if mem(n,cs):assert mem(n,[(0,23)]+cs)
  if n>=24:assert mem(n,[(0,23)]+cs)==mem(n,cs)
  member_cases+=1
 for M in [0,1,23,24,109,110,500]:
  assert cover(24,max(M,109),[(0,23)]+cs)==cover(24,max(M,109),cs)
  small_cover_cases+=1
 if all(a>=24 for a,b in cs):assert not cover(3,12,cs)
for n in range(65):
 for j in range(35):
  if 11<j<=n//2:
   assert n>=24
   assert not (0<=n<=23)
   legal_cases+=1
for n in range(24):assert not any(11<j<=n//2 for j in range(35))
audit=js(OUT/'AUDIT_PLAN.json')
for m in audit['modules']:
 p=OUT/(m['name']+'.lean');s=read(p);assert hashlib.sha256(p.read_bytes()).hexdigest()==m['sha256']
 clean=re.sub(r'/-.*?-/', '',s,flags=re.S);clean=re.sub(r'--[^\n]*','',clean)
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',clean)
 assert not re.search(r'@[A-Z_]+@',clean)
s=read(OUT/'Final.lean')
assert s.count('(hwitness : candidateIntervalsCheck cs witnesses = true)')==2
assert 'candidateIntervalsCheck (extendedCandidates' not in s
for name in ['actual_i11_terminal_membership','terminal_common_of_extended_checks','terminal_common_of_original_small_cover']:
 head=s.split('theorem '+name,1)[1].split(':= by',1)[0]
 assert head.count('pairGridCoverCheck')==6 and head.count('(extendedCandidates cs)')>=6
 assert '(hmember' not in head
 assert '(hij : 11 < j)' in head and '(hjn : j ≤ n / 2)' in head
assert 'Math.B699.I11TerminalCRT.actual_i11_candidateMem' in s
extsrc=read(OUT/'Extended.lean');assert 'def extendedCandidates (cs : List NatInterval) : List NatInterval := (0, 23) :: cs' in extsrc
# Previous frozen producer is still a candidate dependency; bind it exactly.
previous=Path(audit['previous_source']);read(previous);assert hashlib.sha256(previous.read_bytes()).hexdigest()==audit['previous_sha256']
previous_dir=previous.parent;freeze=js(previous_dir/'FREEZE.json')
for name in ['Block.lean','Grid.lean','Pair.lean','Dispatch.lean','Actual.lean']:
 p=previous_dir/name;read(p);assert hashlib.sha256(p.read_bytes()).hexdigest()==freeze['files'][name]['sha256']
read(RUN/'lean/CrtPair/Parameterization.lean')
receipts=[]
for name in ['i11-terminal-crt-row-cell','i11-terminal-cover-witness','i11-terminal-cover-consumer']:
 rec=js(RUN/'verification/huan-prerequisites'/f'{name}.json');ev=js(ROOT/rec['evidence']);assert ev['success'] and ev['exit_code']==0
 for entry in ev['source_closure']:
  read(ROOT/entry['source']);assert sources[entry['source']]['sha256']==entry['source_sha256_before']==entry['source_sha256_after']
 assert all(set(x['axioms'])<={'propext','Classical.choice','Quot.sound'} for x in rec['public_axiom_audit'])
 receipts.append({'name':name,'evidence':rec['evidence'],'roots':len(rec['public_axiom_audit']),'source_closure_matches':True})
for p in OUT.glob('*Audit.lean'):read(p)
read(OUT/'build_candidate.py');read(OUT/'check.py')
for n,x in sources.items():assert hashlib.sha256((ROOT/n).read_bytes()).hexdigest()==x['sha256']
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'status':'PASS_SMALL_EXACT_BOUNDARIES_AND_SOURCE_BINDING_NOT_LEAN','low_example':{'P':2,'Q':3,'v':2,'d':-1,'t':0,'A':1,'C':1,'interval':[3,12],'old_cover':False,'extended_cover':True},
 'crossing_example':{'P':2,'Q':3,'v':2,'d':-7,'t':2,'A':7,'C':7,'interval':[21,24],'old_cover':False,'extended_cover':True},
 'arbitrary_list_membership_cases':member_cases,'legal_n_j_cases':legal_cases,'small_cover_equalities':small_cover_cases,'all0_to23_have_no_legal_j':True,'original_cs_only_witness_checks':True,'final_membership_premise_absent':True,
 'accepted_dependencies':receipts,'previous_producer_sha256':audit['previous_sha256'],'previous_producer_Lean_acceptance_not_asserted':True,'source_count':len(sources),'seconds':time.monotonic()-start,'Lean_runs':0,'prime_or_choose_calculations':0,'new_B_original_results':0}
(OUT/'exact-checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
(OUT/'SOURCE_BINDINGS.json').write_text(json.dumps({'worktree':ROOT.as_posix(),'sources':sources,'all_unchanged_before_and_after':True},ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','arbitrary_list_membership_cases','legal_n_j_cases','small_cover_equalities','source_count','seconds']},ensure_ascii=False))
