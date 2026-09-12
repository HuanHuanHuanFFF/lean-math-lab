from pathlib import Path
from math import comb,factorial,gcd,prod
import json,re,hashlib,datetime,subprocess,time
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260909-low-index-structure-b41a5a63/lean'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-window-prime-assignment-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
def put(n,v):write(n,json.dumps(v,ensure_ascii=False,indent=2)+'\n')
# Explicitly use core Nat positive cancellation, and normalize both occurrences
# of the dependent selected index in its specification.
for name in ['Assignment.lean','build_assignment.py']:
 p=OUT/name;s=p.read_text();old='''  dsimp only [assignedIndex]
  rw [dif_pos hp]
  exact Classical.choose_spec
    (B699LowIndex.binomial_prime_power_localization hk hkn hp)''';new='''  simpa only [assignedIndex, dif_pos hp] using
    (Classical.choose_spec (B699LowIndex.binomial_prime_power_localization hk hkn hp))''';assert s.count(old)==1;p.write_text(s.replace(old,new),encoding='utf-8')
for name in ['Remainders.lean','build_assignment.py']:
 p=OUT/name;s=p.read_text();old='  apply mul_right_cancel₀ (choose_ne_zero n k hkn)';new='  apply Nat.eq_of_mul_eq_mul_right (Nat.choose_pos hkn)';assert s.count(old)==1;s=s.replace(old,new);s=s.replace('import Mathlib.Algebra.GroupWithZero.Defs\n','');p.write_text(s,encoding='utf-8')
# The finite regression chooses the first valid location, not a computation
# of Lean Classical.choose. The invariants hold for any valid assignment.
start=time.perf_counter()
def factors(n):
 d={};p=2
 while p*p<=n:
  while n%p==0:d[p]=d.get(p,0)+1;n//=p
  p+=1
 if n>1:d[n]=d.get(n,0)+1
 return d

def check(n,k):
 assert 1<=k<=n
 win=[n-r for r in range(k)];fd={}
 for N in win:
  for p,e in factors(N).items():fd[p]=fd.get(p,0)+e
 for p,e in factors(factorial(k)).items():fd[p]=fd.get(p,0)-e
 assert all(e>=0 for e in fd.values());fd={p:e for p,e in fd.items() if e>0}
 F=comb(n,k);assert F>0 and prod(p**e for p,e in fd.items())==F
 vk=factors(k);loc={};blocks=[1]*k
 for p,e in fd.items():
  choices=[r for r in range(k) if win[r]%(p**(e+vk.get(p,0)))==0]
  assert choices;loc[p]=choices[0];blocks[loc[p]]*=p**e
 assert prod(blocks)==F
 assert all(b>0 and N%b==0 for N,b in zip(win,blocks))
 assert all(gcd(blocks[r],blocks[s])==1 for r in range(k) for s in range(r))
 rem=[N//b for N,b in zip(win,blocks)]
 assert min(rem)>=1 and prod(rem)==factorial(k)
 for L in [0,1,16]:
  w=[(3*r+1)%(L+1) for r in range(k)]
  assert prod(a**b for a,b in zip(rem,w))<=factorial(k)**L
 if k==13:assert prod(rem[r]**(16-r) for r in range(k))<=factorial(13)**16
 return {'n':n,'k':k,'choose':str(F),'support':sorted(fd),'exponents':{str(p):e for p,e in sorted(fd.items())},'locations':{str(p):r for p,r in sorted(loc.items())},'blocks':blocks,'remainders':rem,'remainder_product':str(prod(rem))}
count=0
for n in range(1,61):
 for k in range(1,n+1):check(n,k);count+=1
edge=check(2197,13);assert edge['exponents']['13']==2 and edge['locations']['13']==0 and edge['remainders'][0]==13
specials=[check(1,1),check(60,1),check(13,13),check(6,4),edge]
put('exact-checks.json',{'status':'EXACT_BOUNDED_REGRESSION_NOT_LEAN','grid_n_range':[1,60],'grid_all_k':[1,'n'],'grid_cases':count,'extra_prime_equals_index_case':[2197,13,13],'full_binomial_prime_exponent_at_equal_index':2,'extra_index_exponent':1,'actual_localization_modulus':2197,'all_groups_positive_and_divide_window':True,'groups_pairwise_coprime':True,'all_remainder_products_factorial':True,'weight_caps_tested':[0,1,16],'special_cases':specials,'seconds':time.perf_counter()-start,'choice_boundary':'Python picks first valid location; Lean Classical.choose need not pick that same one. The proof establishes invariants for its valid selection.','does_not_prove_unbounded_claim':True})
mods=['Products','Assignment','Blocks','Remainders','Weighted'];audits=['PAudit','AAudit','BAudit','RAudit','WAudit']
for m in mods:assert not re.search(r'\b(?:sorry|admit|axiom|native_decide)\b',(OUT/(m+'.lean')).read_text())
# Independent type targets for source-facing interfaces.
for name,extra in {
 'AAudit.lean':'''\n#check (Math.B699.WindowPrimeAssignment.assigned_index_spec :
  ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n), ∀ p : ℕ, p.Prime →
    Math.B699.WindowPrimeAssignment.assignedIndex n k hk hkn p < k ∧
      p ^ ((n.choose k).factorization p + k.factorization p) ∣
        n - Math.B699.WindowPrimeAssignment.assignedIndex n k hk hkn p)
''',
 'RAudit.lean':'''\nopen scoped BigOperators
#check (Math.B699.WindowPrimeAssignment.remainders_product :
  ∀ n k : ℕ, ∀ (hk : 1 ≤ k) (hkn : k ≤ n),
    (∏ r ∈ Finset.range k,
      Math.B699.WindowPrimeAssignment.windowRemainder n k hk hkn r) = k.factorial)
''',
 'WAudit.lean':'''\nopen scoped BigOperators
#check (Math.B699.WindowPrimeAssignment.thirteen_linear_weight_remainders_le :
  ∀ n : ℕ, ∀ hn : 13 ≤ n,
    (∏ r ∈ Finset.range 13,
      Math.B699.WindowPrimeAssignment.windowRemainder n 13 (by decide) hn r ^ (16 - r)) ≤
        (Nat.factorial 13) ^ 16)
'''} .items():
 p=OUT/name;p.write_text(p.read_text()+extra,encoding='utf-8')
auditor=(RUN/'experiments/huan-i13-g75-uniform-5e2d13bb/audit_axioms.py').read_text();write('audit_axioms.py',auditor)
r=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],capture_output=True,text=True);assert r.returncode==0,r.stdout+r.stderr
print(r.stdout)
mathroot=Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib')
coreroot=Path(r'D:/CodingProject/Math/.tools/elan/toolchains/leanprover--lean4---v4.33.1/src/lean')
sources=[OLD/'SmallPrimeLocalization.lean',OLD/'LargeSmallPowers.lean',ROOT/'research/tasks/B686-Four/formalization/UniformDistance/SmallPrime.lean',mathroot/'Data/Nat/Factorization/Defs.lean',mathroot/'Data/Nat/Factorization/Basic.lean',mathroot/'Data/Nat/GCD/BigOperators.lean',mathroot/'Data/Nat/Prime/Basic.lean',mathroot/'Data/Nat/Factorial/BigOperators.lean',mathroot/'Data/Nat/Choose/Basic.lean',mathroot/'Algebra/BigOperators/Group/Finset/Basic.lean',mathroot/'Algebra/BigOperators/Group/Finset/Defs.lean',mathroot/'Algebra/Order/BigOperators/Group/Finset.lean',coreroot/'Init/Data/Nat/Basic.lean',coreroot/'Init/Data/Nat/Coprime.lean',RUN/'experiments/huan-i13-route-inventory-5e2d13bb/WEIGHTED_BRIDGE_PLAN.md',ROOT/'lean-toolchain',ROOT/'lake-manifest.json']
source_entries=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in sources]
rp=RUN/'verification/huan-prerequisites/i11-small-prime-localization.json';receipt=json.loads(rp.read_text());ep=ROOT/receipt['evidence'];ev=json.loads(ep.read_text());assert ev['success'] is True;assert sha(ROOT/receipt['root'])==receipt['source_sha256'].lower()
# Bind the actual generic localization source within the accepted closure.
needle=str(OLD/'SmallPrimeLocalization.lean').replace('\\','/').replace(str(ROOT).replace('\\','/')+'/','')
records=ev.get('compile_records',[])+ev.get('reuse_records',[])
locrecords=[x for x in records if x.get('source','').replace('\\','/')==needle]
assert locrecords
for x in locrecords:
 h=x.get('source_sha256_after') or x.get('source_sha256_before');assert h and h.lower()==sha(OLD/'SmallPrimeLocalization.lean')
put('SOURCE_MAP.json',{'namespace':'Math.B699.WindowPrimeAssignment','target_directory':'lean/WinAssign','module_mapping':{m+'.lean':'lean/WinAssign/'+m+'.lean' for m in mods},'audit_mapping':{m+'.lean':'lean/WinAssign/'+m+'.lean' for m in audits+['Audit']},'import_rule':'Only remap own experiment prefix to lean.WinAssign; keep explicit accepted localization source import unchanged.','sources':source_entries,'accepted_localization':{'receipt':str(rp),'receipt_sha256':sha(rp),'evidence':str(ep),'evidence_sha256':sha(ep),'success':True,'generic_localization_source_in_accepted_closure':True,'generic_source_sha256':sha(OLD/'SmallPrimeLocalization.lean')},'domain':'n,k:Nat;1<=k andk<=n. This includesk1 andk=n. Original1<=k<j<=n/2 supplies this domain.','constructed_objects':{'primeSupport':'(n.choosek).primeFactors, equaltofactorization.support','primeComponent':'p^((n.choosek).factorizationp), complete exponent','assignedIndex':'Classical.choose of accepted localization for primep; nonprime default0 unused by support','assignedBlock':'product of actual supported components whose assignedIndex=r','windowRemainder':'(n-r)/assignedBlock, Natdivision justified by proven divisibility'},'proof_pipeline':['Actual support consists of primes and productofcomponents=actualchoose!=0','Every prime is internally localized with exponentchoose.factorizationp+k.factorizationp; transitivity keeps the actualcomponent','Finite pairwisecoprime productlemma is discharged for everyactualfiber; blockspositiveanddividewindows','Distinctfiberblocksarecoprime; Finset.prod_fiberwise_of_maps_to givesproductblocks=actualchoose','Nat.div_mul_cancel givesremainder*block=n-r; n-r>0 impliesremainder>=1','Windowproduct=k!*choose; coreNat positive cancellation yieldsproductremainders=k!','Nat powerandproductmonotonicity plusprod_pow yieldweightedbound; explicitk13L16instances'], 'no_final_external_assignment_or_product_premise':True,'inclusive_prime_index':'No p>k condition. Localization retains k.factorizationp; p=k prime with e>0 usesp^(e+1). Blocks themselves contain exactlyp^e soindexfactorstayinremainderproductk!.','known_missing_API':'No missing namedAPI identified by source reading; actualLean elaboration andtypeclass/resource behaviorremainuntested.','pending_mathematics_outside_this_package':['weighted transfer of largeprime components undernoCommon','five-small-prime position/rearrangement/graph consumer','allactuali13edges,newheightandCRTwidth12'], 'lean_invocations':0})
put('STATIC_REVIEW.json',{'status':'UNCOMPILED_COMPLETE_PROOF_TEXT','implementation_modules':5,'public_roots':29,'public_theorems':24,'all_public_roots_have_typed_check_and_axiom_print':True,'prime_support_empty_case':'n=k giveschoose1; everyblock1; remainderproductstillk!','natural_subtraction':'r<k<=n givesn-r>0; positivityassertedonlyinsidethewindow','natural_division':'pointwiseNat.div_mul_cancel usesactualblock_dvd_window','cancellation':'Nat.eq_of_mul_eq_mul_right suppliedNat.choose_pos hkn','pairwise_conditions':'bothcomponentcoprimalityandcross-positionblockcoprimalityareproved','abstract_helper_role':'Onlyproduct_dvd_of_pairwise_coprime isabstract; actualblocktheorem suppliesallitsinputs','known_unverified_points':['dependentif/Classical.choose elaboration inassigned_index_spec','Finsupp.prod unfolding incomponents_product','Finset.fiberwise product instantiation'],'no_sorry_axiom_native_decide':True})
write('PROOF_PLAN.md','''# 实际全binomial分量分配与余项积

本候选的全部实际结论只需要n,k为自然数、1≤k≤n。原题1≤k<j≤n/2必然满足；不额外要求k≥2或不同小素数位置。

令F=choose(n,k)>0，S=F.primeFactors，X_p=p^v_p(F)。源Nat.prod_factorization_pow_eq_self给∏_S X_p=F。每个p∈S都是素数，完整指数非零。内部用已验binomial_prime_power_localization选择r_p<k，使p^(v_p(F)+v_p(k))整除n−r_p；然后仅取X_p作为分配块的成分。定位保留p=k的补偿幂，块则恰好保留二项式本身的完整部分，这使余项保留准确的k!因子。

每个位置r的块C_r是所有r_p=r的X_p之积。不同素数的幂互素，所以这个乘积整除n−r；有限支持保证没有漏素数。空组乘积为1，所有C_r正。不同位置的组不共享素数，故组块之间也互素。Finset的fiberwise乘积定理给∏_{r<k}C_r=F。

定义实际自然余项R_r=(n−r)/C_r。由已证整除得到R_r C_r=n−r；r<k≤n使n−r>0，故R_r≥1。于是

    (∏R_r)F=∏(R_r C_r)=∏(n−r)=k! F。

显式利用F>0作Nat乘法取消，得∏R_r=k!。没有把分配存在或这个等式作为最终外部假设。

若w_r≤L，R_r≥1给R_r^w_r≤R_r^L。取有限乘积并应用prod_pow，得到∏R_r^w_r≤(k!)^L。k13,L16以及w_r=16−r都已单独实例化。

这正是i13位置加权损失路线的基础接口。它尚不包含noCommon时的大素数加权转移、五位置重排或Padé边；即使本包之后通过，也不能单独宣布新的i13高度或原题闭合。
''')
write('README.md','''# 通用窗口素数分量分配候选

候选给全部1≤k≤n的实际构造：用已验定位定理内部选择窗口位置，按位置聚合choose(n,k)的完整素数幂，证明块正、整除窗口值、各组互素；实际自然余项R_r≥1且∏R_r=k!；进一步得到w_r≤L时∏R_r^w_r≤(k!)^L。包含k13/L16实例，完整类型在Audit中。

5个短模块分别为Products（有限互素积辅助）、Assignment（实际support与内部定位）、Blocks（分组整除/互素/总积）、Remainders（实际自然除法与k!）、Weighted（权重及13实例）。建议映射lean/WinAssign，逐层PAudit、AAudit、BAudit、RAudit、WAudit，最后Audit。准确源/声明/接入范围见SOURCE_MAP和PROOF_PLAN。

当前只有完整证明文本与静态核对，未运行Lean。29公开根、24定理都附typed/axiom入口，无sorry、axiom、native_decide。有限回归覆盖n1..60、每个1≤k≤n共1830例；另用n2197,k13核对p=k=13、binomial指数2与定位模数13³，余项在该位置保留13。测试使用第一个合法位置而不是计算Lean的Classical.choose；它们只检查任意合法分配应满足的性质，不代替全参数源码验收。

已实际核对通用定位源在成功验收闭包中的SHA；名称含i11的收据不使其底层定理变成i11专用。k=n时prime support为空，正块1和余项积k!仍正确。自然除法和正choose取消均显式出现在源码。

写入只在本独占目录，无Lean/Git调用，不改主线或旧冻结包。若候选通过，可消除i13加权损失中的“实际分配/余项积”缺口；其它加权转移、边与有限覆盖仍独立，原题计数不增加。
''')
put('CHECKPOINT.json',{'owner':'/root/pade_construction','started_utc':'2026-09-12T03:20:37Z','checkpoint_utc':'2026-09-12T03:40:37Z','checkpoint_not_deadline':True,'lean_invocations':0,'target_domain':'alln,k:Nat with1<=k<=n','expected_bridge_removed':'Actualfullprimeassignment->positivequotientswithproductk!, thenweightedfactorialloss','actual_status':'Completeuncompiledproofchainandboundedregression; nooriginalcoverage','last_reusable_result':'Acceptedgenericbinomial_prime_power_localization andmathlibfactorization/finiteproduct APIs','remaining_checks':['PrimaryLeancompileofactualdependentchoice andproducts','Transitiveaxiomauditofall29roots','Futurelargeprimeweightedtransfer andi13positiongraph, outofscopehere']})
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_ACTUAL_WINDOW_ASSIGNMENT_BRIDGE','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'public_roots':29,'public_theorems':24,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'source_sha256':{m:sha(OUT/(m+'.lean')) for m in mods},'Audit_sha256':sha(OUT/'Audit.lean'),'files':len(files),'numeric_cases':count,'equal_index_case':{'p':13,'e':2,'raw_modulus':2197,'R0':edge['remainders'][0]}},indent=2))