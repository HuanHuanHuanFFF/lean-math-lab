from pathlib import Path
import re,json,hashlib,time
from datetime import datetime,timezone
root=Path(__file__).resolve().parent
run=root.parent.parent
start=time.perf_counter()
assert root.name=='huan-i11-original-final-5e2d13bb'
ns='Math.B699.I11OriginalFinal.'
final=(root/'Final.lean').read_text(encoding='utf-8')
member=(root/'Membership.lean').read_text(encoding='utf-8')
expected={
 'common_i11':'{n j : ℕ} (hij : 11 < j) (hjn : j ≤ n / 2) : Common n 11 j',
 'original_i11_gcd':' : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 → ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.gcd (Nat.choose n 11) (Nat.choose n j)',
 'original_i11':' : ∀ n j : ℕ, 1 ≤ 11 ∧ 11 < j ∧ j ≤ n / 2 → ∃ p : ℕ, p.Prime ∧ 11 ≤ p ∧ p ∣ Nat.choose n 11 ∧ p ∣ Nat.choose n j'}
norm=lambda s:' '.join(s.split())
def check_headers(source):
 for name,tail in expected.items():
  match=re.search(r'^theorem '+name+r'\b(.*?):=',source,re.M|re.S)
  assert match and norm(match.group(1))==norm(tail),name
check_headers(final)
def check_pair_mapping(source):
 for pair in ['23','25','27','35','37','57']:
  assert f'grid{pair} := Math.B699.I11TerminalMembership.Pair{pair}.pairData' in source,pair
  assert source.count(f'Math.B699.I11TerminalMembership.Pair{pair}.pair_check')==1,pair
check_pair_mapping(member)
mutations=[('strict_prime_threshold',final.replace('11 ≤ p','11 < p')),('extra_height_input',final.replace('(hjn : j ≤ n / 2) :','(hjn : j ≤ n / 2) (hn : n < 42) :'))]
rejections=[]
for label,source in mutations:
 try:check_headers(source)
 except AssertionError:rejections.append(label)
 else:raise AssertionError('Tampered header accepted '+label)
try:check_pair_mapping(member.replace('grid27 := Math.B699.I11TerminalMembership.Pair27.pairData','grid27 := Math.B699.I11TerminalMembership.Pair25.pairData'))
except AssertionError:rejections.append('wrong_pair_data')
else:raise AssertionError('Tampered data mapping accepted')
public=[]
for name in ['Membership.lean','Final.lean']:
 text=(root/name).read_text(encoding='utf-8')
 found=re.findall(r'^(?:def|theorem)\s+(\w+)',text,re.M)
 for ident in found:
  full=ns+ident; public.append(full)
  assert '#print axioms '+full in text,full
for name in ['MembershipAudit.lean','FinalAudit.lean','Audit.lean']:
 text=(root/name).read_text(encoding='utf-8')
 relevant=public if name=='Audit.lean' else (public[:5] if name.startswith('Membership') else public[5:])
 assert text.count('#check ')==len(relevant),name
 for full in relevant:assert '#print axioms '+full in text,(name,full)
assert len(public)==8 and len(set(public))==8
for p in root.glob('*.lean'):
 text=p.read_text(encoding='utf-8')
 assert not re.search(r'\b(sorry|admit|axiom|native_decide|ofReduceBool)\b',text),p.name
 assert 'set_option autoImplicit false' in text or '#check' in text,p.name
contracts={m:re.search(r'^theorem '+m+r'\b(.*?):=',final,re.M|re.S).group(0)[:-2].strip() for m in expected}
# Finite checks of domain arithmetic only; they are not proofs of unbounded claims.
legal=[(n,j) for n in range(81) for j in range(81) if 11<j<=n//2]
assert len(legal)==841 and min(n for n,j in legal)==24
assert all(n>=24 and (1<=11 and 11<j and j<=n//2) for n,j in legal)
assert not any(11<j<=23//2 for j in range(81))
assert 11<12<=24//2 and 11<40<=81//2 and not (11<41<=81//2)
assert 11<=11 and not 11<11
candidates=(run/'lean/I11TerminalMembership/Candidates.lean').read_text(encoding='utf-8')
head=candidates.split('def originalCandidates',1)[1].split('def candidates',1)[0]
intervals=[tuple(map(int,t)) for t in re.findall(r'\((\d+),\s*(\d+)\)',head)]
assert len(intervals)==1055 and intervals[0]==(24,4010) and intervals[-1]==(29294601,29294602)
assert '(0, 23) :: originalCandidates' in candidates
assert all(lo>=24 for lo,hi in intervals)
H=29294603
cutoffs={2:24,3:15,5:10,7:8}
assert all(p**a<H<=p**(a+1) for p,a in cutoffs.items())
assert max(500,109)==500 and intervals[-1][0]<=H-1<=intervals[-1][1] and intervals[-1][1]<H
bundle=root.parent/'huan-i11-terminal-membership-sources-5e2d13bb'
idx=json.loads((bundle/'INDEX.json').read_text(encoding='utf-8'))
assert idx['counts']==dict(cells=1142,signed_rows=23982,parameters=47136,roots=2656)
expected_ranges={'23':(24,15),'25':(24,10),'27':(24,8),'35':(15,10),'37':(15,8),'57':(10,8)}
for item in idx['pairs']:
 assert (item['amax'],item['bmax'])==expected_ranges[item['pair']]
 sha=hashlib.sha256((bundle/item['freeze']).read_bytes()).hexdigest()
 assert sha==item['freeze_sha256']
result=dict(utc=datetime.now(timezone.utc).isoformat(),status='PASS_STATIC_CONTRACT_AND_BOUNDED_DOMAIN_CHECKS_NOT_LEAN',Lean_runs=0,public_roots=public,exact_final_contracts=contracts,tamper_tests_rejected=rejections,domain_checks=dict(n_range=[0,80],j_range=[0,80],all_pairs=6561,legal_pairs=841,first_legal=[24,12],odd_endpoint=[81,40],odd_excluded=[81,41],prime_threshold_includes_11=True),candidate_intervals=1055,original_first=list(intervals[0]),original_last=list(intervals[-1]),padding=[0,23],cutoffs=cutoffs,full_membership_count_inputs=idx['counts'],whole_CRT_or_witness_rerun=False,seconds=time.perf_counter()-start,new_B_original_results=0)
(root/'checks.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8',newline='\n')
print(json.dumps({k:result[k] for k in ['status','Lean_runs','tamper_tests_rejected','seconds','new_B_original_results']},ensure_ascii=False))
