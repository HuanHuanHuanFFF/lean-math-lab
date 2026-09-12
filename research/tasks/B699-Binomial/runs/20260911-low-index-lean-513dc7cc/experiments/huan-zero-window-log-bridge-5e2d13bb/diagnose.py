from pathlib import Path
from fractions import Fraction as F
from datetime import datetime,timezone
from math import isqrt
import hashlib,json,re,time

START=time.monotonic()
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[6]
rows=[
 {'n':4374,'a':22,'b':0,'A':17,'C':2,'p':2,'q':3,'x':8,'y':7,'label':'negative_log_difference'},
 {'n':4374,'a':0,'b':22,'A':2,'C':17,'p':3,'q':2,'x':7,'y':8,'label':'positive_log_difference'},
 {'n':4097,'a':33,'b':0,'A':127,'C':241,'p':2,'q':17,'x':5,'y':1,'label':'maximal_offset_negative'},
 {'n':4097,'a':0,'b':33,'A':241,'C':127,'p':17,'q':2,'x':1,'y':5,'label':'maximal_offset_positive'},
 {'n':4097,'a':0,'b':1,'A':4097,'C':4096,'p':2,'q':3,'x':0,'y':0,'label':'zero_exponents_allowed'}]
def prime(n):
 return n>=2 and all(n%d for d in range(2,isqrt(n)+1))
checks=[]
for row in rows:
 n,a,b,A,C,p,q,x,y=(row[k] for k in ['n','a','b','A','C','p','q','x','y'])
 assert n>4096 and a<34 and b<34 and a!=b and min(A,C)>=1 and prime(p) and prime(q)
 assert n==A*p**x+a==C*q**y+b
 u,v=n-a,n-b
 assert u>0 and v>0 and u!=v
 assert F(A,C)*F(p**x,q**y)==F(u,v)
 distance=abs(u-v)
 lower=n-33
 actual_rational_upper=F(distance,min(u,v))
 coarse=F(33,lower)
 final=F(128,n)
 assert distance<=33 and lower>0 and lower<=min(u,v)
 assert actual_rational_upper<=coarse<final
 checks.append({**row,'u':u,'v':v,'actual_ratio':str(F(u,v)),'multiplicative_identity_verified':True,'absolute_window_difference':distance,'rational_log_upper':str(actual_rational_upper),'coarse_upper':str(coarse),'strict_final_upper':str(final),'all_exact_checks_passed':True})
controls={'equal_offsets':{'n':4097,'a':1,'b':1,'positive_windows':True,'window_ratio':'1','nonzero_premise_fails':True},'truncated_subtraction':{'n':10,'a':20,'b':21,'Nat_sub_windows':[max(0,10-20),max(0,10-21)],'different_offsets':True,'positive_window_premises_fail':True},'coarse_strict_threshold':{'n44_comparison':F(33,44-33)<F(128,44),'n45_comparison':F(33,45-33)<F(128,45)}}
assert controls['truncated_subtraction']['Nat_sub_windows']==[0,0]
assert not controls['coarse_strict_threshold']['n44_comparison'] and controls['coarse_strict_threshold']['n45_comparison']
inputs={}
api_files=[Path('D:/CodingProject/Math/.lake/packages/mathlib/Mathlib/Analysis/SpecialFunctions/Log/Basic.lean'),Path('D:/CodingProject/Math/.lake/packages/mathlib/Mathlib/Data/Nat/Prime/Basic.lean'),Path('D:/CodingProject/Math/.lake/packages/mathlib/Mathlib/Algebra/Order/GroupWithZero/Basic.lean')]
for p in [ROOT/'AGENTS.md',ROOT/'docs/STRUCTURE.md',ROOT/'LEADER.md',ROOT/'lake-manifest.json',ROOT/'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/notes/zero-boundary/reduction-plan.md',*api_files]:
 assert p.is_file(),p
 inputs[str(p)]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest().upper(),'bytes':p.stat().st_size}
namespace='Math.B699.ZeroBoundaryWindowLog.'
sources={}
all_roots=[]
for p in [HERE/'Elementary.lean',HERE/'Window.lean',HERE/'Actual.lean']:
 txt=p.read_text(encoding='utf-8')
 roots=re.findall(r'^(?:noncomputable\s+)?(?:theorem|def)\s+(\w+)',txt,re.M)
 for root in roots:
  assert '#check ('+namespace+root+' :' in txt,root
  assert '#print axioms '+namespace+root in txt,root
 assert not re.search(r'\b(sorry|admit|sorryAx|axiom)\b',txt)
 assert 'native_decide' not in txt
 sources[p.name]={'sha256':hashlib.sha256(p.read_bytes()).hexdigest().upper(),'bytes':p.stat().st_size,'roots':[namespace+r for r in roots],'typed_checks':len(roots),'axiom_prints':len(roots)}
 all_roots.extend(sources[p.name]['roots'])
manifest_data=json.loads((ROOT/'lake-manifest.json').read_text(encoding='utf-8'))
mathlib=[r for r in manifest_data['packages'] if r['name']=='mathlib'][0]
result={'owner':'/root/zero_log_separation','started_utc':'2026-09-12T10:53:39Z','checkpoint_utc':'2026-09-12T11:13:39Z','recorded_utc':datetime.now(timezone.utc).isoformat(),'status':'source_candidate_not_Lean_verified','scope':'actual_positive_window_identity_nonzero_and_strict_local_log_bound','inputs':inputs,'mathlib_manifest_rev':mathlib.get('rev'),'resource_observation':{'free_physical_memory_KiB':3556708,'total_visible_memory_KiB':16456184,'D_free_bytes':11646996480,'lean_processes':[],'is_reserved_budget':False},'exact_sample_count':len(checks),'exact_checks':checks,'controls':controls,'source_candidates':sources,'static_audit':{'root_count':len(all_roots),'roots':all_roots,'all_typed_and_axiom_prints_present':True,'placeholder_scan_passed':True,'is_kernel_verification':False},'lean_invocations':0,'git_commands':0,'full_certificate_scans':0,'CF_searches':0,'real_log_numeric_evaluations':0,'api_revision_note':'Unverified recollection Nat.sub_pos_iff_lt was replaced before compilation by Nat.sub_pos_of_lt, observed in current mathlib sources. This was not a failed Lean run.','diagnostic_script_sha256':hashlib.sha256(Path(__file__).read_bytes()).hexdigest().upper(),'elapsed_seconds':time.monotonic()-START}
(HERE/'record.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'status':result['status'],'sample_count':len(checks),'all_exact_checks_passed':all(r['all_exact_checks_passed'] for r in checks),'source_count':len(sources),'root_count':len(all_roots),'static_audit_passed':True,'Lean_invocations':0,'elapsed_seconds':result['elapsed_seconds']},ensure_ascii=False))