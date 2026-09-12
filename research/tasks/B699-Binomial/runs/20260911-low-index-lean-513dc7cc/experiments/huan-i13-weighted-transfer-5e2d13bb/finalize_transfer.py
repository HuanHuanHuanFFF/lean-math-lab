from pathlib import Path
from math import comb,factorial,prod
import json,hashlib,re,time,datetime,subprocess
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260909-large-prime-structure-cb4764f0/lean'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i13-weighted-transfer-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
mathroot=Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib')
coreroot=Path(r'D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean')
assert (coreroot/'Lean/Elab/Tactic/Omega.lean').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
def put(n,v):write(n,json.dumps(v,ensure_ascii=False,indent=2)+'\n')
before={m:sha(OUT/(m+'.lean')) for m in ['Generic','Windows','Positions','Transfer']}
for name in ['Windows.lean','build_transfer.py']:
 p=OUT/name;s=p.read_text();assert 'import Mathlib.Tactic.Omega' in s;s=s.replace('import Mathlib.Tactic.Omega','import Lean.Elab.Tactic.Omega');s=s.replace('import Mathlib.Algebra.Divisibility.Basic\n','import Mathlib.Algebra.Divisibility.Basic\nimport Mathlib.Algebra.BigOperators.Group.Finset.Basic\n');p.write_text(s,encoding='utf-8')
for name in ['Positions.lean','build_transfer.py']:
 p=OUT/name;s=p.read_text();s=s.replace('have hQn : Q ∣ n - a := Nat.dvd_sub_mod n','have hQn : Q ∣ n - a := Nat.dvd_sub_mod (n := Q) n');s=s.replace('have hQj : Q ∣ j - b := Nat.dvd_sub_mod j','have hQj : Q ∣ j - b := Nat.dvd_sub_mod (n := Q) j');p.write_text(s,encoding='utf-8')
# Ensure Positions' own independent audit imports the needed core tactic.
p=OUT/'Positions.lean';s=p.read_text();s='import Lean.Elab.Tactic.Omega\n'+s;p.write_text(s,encoding='utf-8')
# Generator correspondence records the same addition.
p=OUT/'build_transfer.py';s=p.read_text();s=s.replace("write('Positions.lean',f'''import {base}.lean.WinAssign.Assignment", "write('Positions.lean',f'''import Lean.Elab.Tactic.Omega\nimport {base}.lean.WinAssign.Assignment");p.write_text(s,encoding='utf-8')
# Read-only mathematical regressions use any legitimate selected index.
t0=time.perf_counter()
def factors(n):
 d={};p=2
 while p*p<=n:
  while n%p==0:d[p]=d.get(p,0)+1;n//=p
  p+=1
 if n>1:d[n]=d.get(n,0)+1
 return d

def components(n,k):
 es={}
 for r in range(k):
  for p,e in factors(n-r).items():es[p]=es.get(p,0)+e
 for p,e in factors(factorial(k)).items():es[p]=es.get(p,0)-e
 assert all(e>=0 for e in es.values());es={p:e for p,e in es.items() if e}
 assert prod(p**e for p,e in es.items())==comb(n,k)
 vk=factors(k);loc={}
 for p,e in es.items():
  candidates=[r for r in range(k) if (n-r)%p**(e+vk.get(p,0))==0]
  assert candidates;loc[p]=candidates[0]
 return es,loc

def valfact(n,p):
 v=0
 while n:n//=p;v+=n
 return v

def valchoose(n,k,p):return valfact(n,p)-valfact(k,p)-valfact(n-k,p)
def W(N,s=8):return prod((N-r)**(s-r) for r in range(s))
generic_cases=0
for n in range(1,41):
 for k in range(1,n+1):
  es,loc=components(n,k);blocks=[1]*k
  for p,e in es.items():blocks[loc[p]]*=p**e
  rem=[(n-r)//blocks[r] for r in range(k)]
  assert all((n-r)%blocks[r]==0 for r in range(k)) and prod(rem)==factorial(k)
  w=[max(0,16-r) for r in range(k)]
  lhs=prod((n-r)**w[r] for r in range(k))
  rwprod=prod(rem[r]**w[r] for r in range(k))
  xwprod=prod((p**e)**w[loc[p]] for p,e in es.items())
  assert lhs==rwprod*xwprod and lhs<=factorial(k)**16*xwprod
  generic_cases+=1
local_cases=0;prime_index_cases=0;assembled_nonempty=0;pairs_checked=0;samples=[]
for n,j in [(n,j) for n in range(28,161) for j in range(14,n//2+1)]+[(4394,2197)]:
 es,loc=components(n,13);T=W(j)*W(n-j);assert T>0 and T<=n**72
 avprod=1;count=0
 for p,e in es.items():
  if p<13 or valchoose(n,j,p)!=0:continue
  Q=p**(e+(p==13));a=n%Q;b=j%Q;c=a-b
  assert 0<=b<=a<13 and 0<=c<13 and b+c==a and loc[p]==a
  assert (j-b)%Q==0 and (n-j-c)%Q==0
  assert 16-a<=max(0,8-b)+max(0,8-c)
  power=(p**e)**(16-a);assert T%power==0
  avprod*=power;count+=1;local_cases+=1
  if p==13:prime_index_cases+=1
  if (n,j,p)==(4394,2197,13):samples.append({'n':n,'j':j,'i':13,'p':p,'e':e,'extra_index_power':1,'raw_modulus':Q,'assigned_index':loc[p],'a':a,'b':b,'c':c,'gap_n_minus_2j':n-2*j,'p_avoids_second_choose':True,'component_weight':16-a,'weighted_divisibility':True})
 assert T%avprod==0
 pairs_checked+=1;assembled_nonempty+=count>0
assert samples and samples[0]['e']==2 and samples[0]['gap_n_minus_2j']==0
# Exhaustive small weight-domain check, apart from the source's Omega proof.
weight_cases=0
for b in range(13):
 for c in range(13-b):
  assert 16-(b+c)<=max(0,8-b)+max(0,8-c);weight_cases+=1
put('exact-checks.json',{'status':'EXACT_BOUNDED_REGRESSION_NOT_LEAN','generic_n_range':[1,40],'generic_all_k_range':[1,'n'],'generic_cases':generic_cases,'generic_identity_and_loss':True,'local_transfer_n_range':[28,160],'all_legal_j_in_that_range':True,'extra_case':[4394,2197,13],'window_pairs_checked':pairs_checked,'nonempty_per_prime_avoidance_cases':local_cases,'nonempty_assembled_avoiding_products':assembled_nonempty,'prime_equals_index_local_cases':prime_index_cases,'weight_cases':weight_cases,'eight_weight_sum':sum(8-r for r in range(8)),'sample_cases':samples,'seconds':time.perf_counter()-t0,'scope_warning':'These are per-prime avoidance and actual avoiding-subset checks; they do not claim existence of a full noCommon input, and they do not prove the unbounded theorem. Python chooses first valid location, not Lean Classical.choose.'})
mods=['Generic','Windows','Positions','Transfer'];expected=json.loads((OUT/'expected-axioms.json').read_text());assert len(expected['expected_print_roots'])==25
for m in mods:
 s=(OUT/(m+'.lean')).read_text();assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',s);assert 'prime_power_gap_dvd' not in s
# Add independent source-facing type checks to the short roots.
for name,extra in {
 'GAudit.lean':'''\nopen scoped BigOperators
open Math.B699.I13WeightedTransfer
#check (weighted_numerator_identity : ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
  ∀ w : ℕ → ℕ,
    (∏ r ∈ Finset.range k, (n - r) ^ w r) =
      (∏ r ∈ Finset.range k,
        Math.B699.WindowPrimeAssignment.windowRemainder n k hk hkn r ^ w r) *
          weightedComponents n k hk hkn w)
''',
 'TAudit.lean':'''\nopen Math.B699.I13WeightedTransfer B699LargePrimeStructure
#check (actual_large_weighted_le_n72 : ∀ n j : ℕ,
  ∀ (hij : 13 < j) (hjn : j ≤ n / 2), ¬ Common n 13 j →
    largeWeightedProduct n (original_index_le hij hjn) ≤ n ^ 72)
'''} .items():
 p=OUT/name;p.write_text(p.read_text()+extra,encoding='utf-8')
auditor=(RUN/'experiments/huan-window-prime-assignment-5e2d13bb/audit_axioms.py').read_text();write('audit_axioms.py',auditor)
r=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],capture_output=True,text=True);assert r.returncode==0,r.stdout+r.stderr;print(r.stdout)
wa=RUN/'experiments/huan-window-prime-assignment-5e2d13bb';wf=json.loads((wa/'FREEZE.json').read_text());assert all(sha(wa/n)==v['sha256'] for n,v in wf['files'].items())
source_paths=[wa/'FREEZE.json',wa/'Assignment.lean',wa/'Blocks.lean',wa/'Remainders.lean',wa/'Weighted.lean',OLD/'PrimePowerTransfer.lean',OLD/'GapBridge.lean',ROOT/'research/tasks/B699-Binomial/runs/20260908-external-reductions-b3c1b7/lean/DivisorTransfer.lean',ROOT/'Math/B699/CofactorCriterion.lean',RUN/'experiments/huan-i13-route-inventory-5e2d13bb/WEIGHTED_BRIDGE_PLAN.md',mathroot/'Algebra/BigOperators/Group/Finset/Basic.lean',mathroot/'Algebra/BigOperators/Group/Finset/Defs.lean',mathroot/'Algebra/Divisibility/Basic.lean',mathroot/'Algebra/Order/BigOperators/Group/Finset.lean',coreroot/'Init/Data/Nat/Lemmas.lean',coreroot/'Init/Data/Nat/Dvd.lean',coreroot/'Lean/Elab/Tactic/Omega.lean',ROOT/'lean-toolchain',ROOT/'lake-manifest.json']
entries=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in source_paths]
# Try the already accepted actual cubic closure for the precise transfer source.
receipt_path=RUN/'verification/huan-prerequisites/i11-actual-cubic-bridge.json';rr=json.loads(receipt_path.read_text());ep=ROOT/rr['evidence'];ev=json.loads(ep.read_text());assert ev['success'] is True
needle=str(OLD/'PrimePowerTransfer.lean').replace('\\','/').replace(str(ROOT).replace('\\','/')+'/','')
matching=[x for x in ev.get('compile_records',[])+ev.get('reuse_records',[]) if x.get('source','').replace('\\','/')==needle]
match_status=[]
for x in matching:
 oldhash=x.get('source_sha256_after') or x.get('source_sha256_before');match_status.append(bool(oldhash and oldhash.lower()==sha(OLD/'PrimePowerTransfer.lean')))
assert all(match_status)
put('SOURCE_MAP.json',{'namespace':'Math.B699.I13WeightedTransfer','target_directory':'lean/I13Weight','modules':{m+'.lean':'lean/I13Weight/'+m+'.lean' for m in mods},'audits':{m+'.lean':'lean/I13Weight/'+m+'.lean' for m in ['GAudit','WAudit','PAudit','TAudit','Audit']},'imports':'Own experiment prefix maps tolean.I13Weight. WinAssign imports already useplannedlean.WinAssign layout. No source or names copied over the frozen owner files.','sources':entries,'WinAssign_dependency':{'freeze_sha256':sha(wa/'FREEZE.json'),'frozen_files_unchanged':True,'target_layout_present_at_record':(RUN/'lean/WinAssign').exists(),'acceptance':'Pending primary exact-source integration and Lean acceptance; this package does not promote candidate status.'},'transfer_source_acceptance_check':{'receipt':str(receipt_path),'receipt_sha256':sha(receipt_path),'evidence':str(ep),'evidence_sha256':sha(ep),'evidence_success':True,'matching_PrimePowerTransfer_source_records':len(matching),'current_source_matches':match_status},'actual_source_formulas':{'full_component':'X_p=p^((n.choose13).factorizationp)','selected_location':'WinAssign.assignedIndex n13 hk hn p','canonical_modulus':'Q=p^(e+ifp=13then1else0), e=actualfullbinomialvaluation>0','positions':'a=n%Q; b=j%Q; c=a-b; b<=a<13; b+c=a','alignment':'p dividesbothn-a andn-selected; bothpositions<13<=p, henceequalbyremainderuniqueness','large_product':'productoveractualprimeSupportfiltered13<=pofX_p^(16-selected)','double_window':'productb<8(j-b)^(8-b) * productc<8(n-j-c)^(8-c)','degree':'sum_(b<8)(8-b)=36, total72'},'gap_boundary':'No hypothesis13<=n-2j. The restrictedprime_power_gap_dvd theorem is not used; onlyprime_power_numerator_mod_lt andthecarrycriterion are used.','final_hypotheses':'n,j:Nat;13<j;j<=n/2;notCommon n13j. index13<=n andalltransferfacts arederivedinternally.','generic_loss':'All1<=k<=n andallNatweightswr<=L; actualremaindersandactualprimecomponents provide exactidentity andfactorialloss.','remaining_outside_scope':['i13small-prime weighted graph/rearrangement','theeightactualPadéedgeestimates andcommonnewheight','newCRTwidth orfulloriginali13completion'],'lean_invocations':0})
put('STATIC_FIXES.json',{'before_source_sha256':before,'after_source_sha256':{m:sha(OUT/(m+'.lean')) for m in mods},'changes':[{'kind':'invalid_uncompiled_import_name','from':'Mathlib.Tactic.Omega','to':'Lean.Elab.Tactic.Omega','fixed_core_source_exists':True},{'kind':'explicit_dependency','module':'Mathlib.Algebra.BigOperators.Group.Finset.Basic'},{'kind':'explicit_implicit_argument','detail':'Nat.dvd_sub_mod(n:=Q) fixes the intended canonical modulus'}],'no_Lean_runs':True,'known_pending_elaboration':['fiberwise weighted product normalization','locallet/proof-irrelevance alignment of assignedIndex inPositions','import materialization untilWinAssign isintegrated'],'known_mathematical_counterexample':False})
write('PROOF_PLAN.md','''# 加权恒等式与实际大素数转移

通用部分先从实际WinAssign对象证明

    ∏(n−r)^w_r = (∏R_r^w_r) · ∏_{p∈support}X_p^w_(assignedIndexp).

做法是在每个位置把已证R_r C_r=n−r提升到w_r次幂，分配有限乘积，再用fiberwise乘积定理把块中的幂合回原完整prime support。由WinAssign的∏R_r^w_r≤(k!)^L给通用损失界，没有新的assignment或product输入。

实际i13部分仅假设原hij、hjn、noCommon。对支持中的p≥13，取e=v_p(choose(n,13))>0。noCommon和p整除第一choose给p不整除第二choose。来源prime_power_numerator_mod_lt给Q=p^(e+epsilon)的a=n modQ<13，epsilon=1当p=13。若b=j modQ>a，carry判据会令p整除第二choose，矛盾；故b≤a。取c=a−b，自然数余数整除及Nat.dvd_sub给Q|(j−b)、Q|(n−j−c)，并且b+c=a。

随后把a与WinAssign选点r对齐。e>0给p|X_p；两个位置都使p整除n减该位置，并且都<13≤p。因此n modp同时等于两个位置，位置相等。这里只以basep证明唯一性，构造转移时仍完整保留p=13的e+1模数；最后使用的是完整X_p=p^e。

权重不等式

    16−(b+c)≤(8−b)+(8−c)

使用Nat截断，对所有自然b,c成立。b<8时，X_p^(8−b)整除双窗口左边相应因子；b≥8时该幂为1。c同理。相乘并降低指数，得到X_p^(16−r)整除双窗口积。最后用已存在prime_power_finset_prod_dvd在实际p≥13支撑集上组装完整素数幂；每个成员的avoid条件都由noCommon内部给出。

原合法性保证j及n−j都至少14，双窗口8项全部正，所以整除转为≤。每个底数≤n，八个权重和为36，左右乘积≤n^72。没有要求n−2j≥13；来源中那个受限gap定理不适用于本目标，因此未使用。

这提供i13位置图需要的大素数侧与准确阶乘损失。它不包含五小素数的排序/图桥或八条Padé边，不能单独给新高度或原题完成。
''')
write('README.md','''# i13 实际带权窗口转移候选

本包给通用带权窗口恒等式、(k!)^L损失界，以及原13<j≤n/2、noCommon下实际p≥13完整分量的带权积整除双窗口、并≤n^72。没有额外assignment/transfer/gap或高度假设。

4模块：Generic、Windows、Positions、Transfer。建议映射lean/I13Weight，先GAudit/WAudit/PAudit，最后TAudit/Audit；25公开根、21定理均有typed/#print入口。WinAssign按主任务允许的lean.WinAssign布局导入，前包仍以真实验收为准。完整数学与来源边界见PROOF_PLAN和SOURCE_MAP。

本次未运行Lean。只做通用带权恒等式的有界检查，以及每个实际避免素数的完整p幂转移检查；不会把全noCommon的空测试集当证据。特例n4394,j2197,p=i13包含e2、原始模数13³且gap0；它验证此局部避免分支，原Common可由别的素数成立，所以不是原题反例。

未编译阶段发现固定mathlib没有Mathlib.Tactic.Omega文件，已改用实际存在的Lean.Elab.Tactic.Omega；其余源改动和SHA见STATIC_FIXES。所有源码有完整证明文本，无sorry、axiom、native_decide。旧冻结WinAssign22文件保持原字节，没有新Padé/CRT任务。

预计若验收通过，将补齐i13位置加权图的大素数带权转移与通用损失接口。五小素数重排/图、真实八边、共同高度和完整原题仍独立，不计新增原题覆盖。
''')
put('CHECKPOINT.json',{'owner':'/root/pade_construction','started_utc':'2026-09-12T03:45:09Z','checkpoint_utc':'2026-09-12T04:05:09Z','checkpoint_not_deadline':True,'lean_invocations':0,'expected_frontier':'Unlockgenericweightedlossandi13largeprimeweightedtransferforfuturepositiongraph','actual_status':'Fulluncompiledproofchainplusboundednonvacuousper-primechecks','source_warning':'WinAssignstillrequiresprimaryacceptance; names/statementspinnedtoitsfrozenpackage','remaining':['Primaryshortmodulecompileand25rootaudit','i13smallprimepositiongraph andallactualedgeestimates','newcommonheight andfiniteclosure']})
assert all(sha(wa/n)==v['sha256'] for n,v in wf['files'].items())
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_I13_WEIGHTED_TRANSFER','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'public_roots':25,'public_theorems':21,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'sources':{m:sha(OUT/(m+'.lean')) for m in mods},'Audit_sha256':sha(OUT/'Audit.lean'),'files':len(files),'generic_cases':generic_cases,'local_avoidance_cases':local_cases,'nonempty_assembled':assembled_nonempty,'equal_index_gap0_case':samples,'transfer_source_acceptance_matches':len(matching)},indent=2))