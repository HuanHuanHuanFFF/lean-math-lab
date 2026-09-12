from pathlib import Path
import json,re,hashlib,datetime,subprocess
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
assert OUT==RUN/'experiments/huan-i11-polynomial-homogeneous-probe-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def put(n,obj):
 p=OUT/n;assert not p.exists();p.write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def write(n,text):
 p=OUT/n;assert not p.exists();p.write_text(text,encoding='utf-8')
old='  rw [localCore, Polynomial.eval_comp, seedCore_eval,\n    complement_eval, factor_eval, leafMap_eval]'
new='  simp only [localCore, Polynomial.eval_comp]\n  rw [seedCore_eval, complement_eval, factor_eval, leafMap_eval]'
for name in ['Reduction.lean','build_candidate.py']:
 p=OUT/name;s=p.read_text(encoding='utf-8');assert s.count(old)==1;p.write_text(s.replace(old,new),encoding='utf-8')
base='research.tasks.«B699-Binomial».runs.«20260911-low-index-lean-513dc7cc»'
own=base+'.experiments.«huan-i11-polynomial-homogeneous-probe-5e2d13bb»'
oldns='Math.B699.I11ThreeTwoGrowth.ELeaf001'
ns='Math.B699.I11ELeaf001Homogeneous';repns='Math.B699.I11ELeaf001Replacement'
original=RUN/'lean/Growth/I11ThreeTwoLeaves/ELeaf001.lean'
s=original.read_text(encoding='utf-8')
assert sha(original)=='5e33a2f774a4f1fdf57e8bd9809483fc58c4123d478854d679fb9925d4887629'
prefix=s.split('theorem seed_parameter_bounds',1)[0]
assert (OUT/'Data.lean').read_text()==prefix.replace('namespace '+oldns,'namespace '+ns)+'end '+ns+'\n'
expected=s.replace(oldns,repns)
a=expected.index('theorem actual_gap_eq');b=expected.index('\ntheorem leafMap_eq_path',a)
expected=expected[:a]+f'theorem actual_gap_eq : Polynomial.C lam - localCore = gapExpansion := by\n  exact {ns}.actual_gap_eq\n'+expected[b:]
expected='import '+own+'.Reduction\n'+expected
assert (OUT/'ReplacementLeaf.lean').read_text()==expected
modules=['Data','Homogeneous','Reduction','ReplacementLeaf']
roots=[];theorems=[];declarations=[]
for mod in modules:
 text=(OUT/(mod+'.lean')).read_text(encoding='utf-8');mns=repns if mod=='ReplacementLeaf' else ns
 assert not re.search(r'\b(?:sorry|admit|native_decide|axiom)\b',text)
 assert not any(line.startswith('import ') and 'I11ThreeTwoLeaves.ELeaf001' in line for line in text.splitlines())
 for kind,name in re.findall(r'^(?:noncomputable )?(def|theorem) ([A-Za-z_][A-Za-z_0-9]*)',text,re.M):
  root=mns+'.'+name;assert root not in roots;roots.append(root)
  declarations.append({'module':mod,'kind':kind,'root':root})
  if kind=='theorem':theorems.append(root)
write('Audit.lean','import '+own+'.ReplacementLeaf\n\n'+'\n'.join('#check @'+r+'\n#print axioms '+r for r in roots)+'\n')
put('expected-axioms.json',{'allowed_axioms':['propext','Classical.choice','Quot.sound'],'candidate_public_theorems':theorems,'expected_print_roots':roots,'declarations':declarations,'status':'UNCOMPILED_CANDIDATE_ROOTS'})
auditor=(RUN/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py').read_text()
auditor=auditor.replace("        (OUT/'audit-selftest.json').write_text", "        assert not (OUT/'FREEZE.json').exists(), 'do not overwrite frozen evidence'\n        (OUT/'audit-selftest.json').write_text")
write('audit_axioms.py',auditor)
p=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],text=True,capture_output=True)
assert p.returncode==0,p.stdout+p.stderr
print(p.stdout)
source_paths=[original,RUN/'lean/Growth/I11ThreeTwoShared.lean',RUN/'lean/Growth/Affine.lean',RUN/'lean/Moment/Moment.lean',RUN/'experiments/huan-i11-elementary-finite-plan-5e2d13bb/qe-certificates/row-02.json',ROOT/'lean-toolchain',ROOT/'lake-manifest.json',Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/GroupWithZero/Defs.lean')]
inputs=[]
for p in source_paths:
 assert p.exists(),p
 inputs.append({'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size})
put('INPUT_SOURCES.json',{'sources':inputs,'source_status':'Original ELeaf001 same source is parent-reported accepted at 3072 MiB; imported prerequisites retained from current run. Candidate not compiled.'})
checks=json.loads((OUT/'exact-homogeneous-checks.json').read_text())
put('SOURCE_MAP.json',{'owner':'/root/pade_construction','scope':'One fixed ThreeTwo ELeaf001; no other leaf generated or changed','target_original_namespace':oldns,'candidate_namespace':ns,'replacement_namespace':repns,'target':'Polynomial.C lam - localCore = gapExpansion','constants':{'c':23,'d':15,'z':'1/9','leafA':'1/4','leafB':'3/8','degree':38,'lam':'46880976166089921083/79228162514264337593543950336','denominator':checks['common_denominator'],'scaledLambda':checks['scaled_lambda']},'homogeneous_identity':'K*(x+y)^38-(3*x+2*y)^15*(5*x+6*y)^15*(69*x+70*y)^8=sum(A_k*x^k*y^(38-k))','denominator_identity':'D=8^30*72^8','coefficient_identity':'A_k=D*gapCoeff_k; gapCoeff_k=(lambda-coreBernsteinCoeff_k)*choose(38,k)','dehomogenization':'y=1-x; x+y=1; exact source affine t=(3*x+2*(1-x))/8; denominator nonzero proved','data_prefix_exact':'Original prefix before seed_parameter_bounds, only namespace renamed and final namespace end added','replacement_exact':'Original file, only namespace renamed, one helper import prepended and actual_gap_eq proof body replaced','source_correspondence_checks':{'data_prefix_exact':True,'replacement_exact':True,'all39_integer_coefficients_match':True,'original_JSON_mapping_match':True,'no_original_leaf_import':True},'candidate_layers':[{'module':m,'sha256':sha(OUT/(m+'.lean'))} for m in modules],'audit_order':['HomogeneousAudit.lean','ReductionAudit.lean','ReplacementLeafAudit.lean','Audit.lean'],'candidate_status':'UNCOMPILED; no Lean invocations; no measured object-size or memory reduction','parent_reported_baseline':{'same_original_source_sha256':sha(original),'1536_MiB':'kernel OOM at actual_gap_eq','3072_MiB':'complete acceptance reported by parent','seconds':20.822,'new_object_MiB':14.358,'axioms':'within std3','evidence_boundary':'parent status message, not a benchmark of this candidate'},'next_check':'Optional serialized HomogeneousAudit then ReductionAudit then ReplacementLeafAudit under parent verification; compare peak memory/object sizes only after actual success','frontier':'No change to mathematical coverage; original leaf already accepted at 3072 MiB. This is a bounded optional resource fallback.'})
put('static-review.json',{'status':'PASS_STATIC_SOURCE_AND_EXACT_INTEGER_CHECKS_ONLY','implementation_modules':len(modules),'public_theorems':len(theorems),'public_named_roots':len(roots),'data_prefix_exact':True,'replacement_same_other_proof_text':True,'forbidden_tokens_in_lean':[],'original_leaf_not_imported':True,'final_affine_step':'simp only localCore/eval_comp, then explicit eval identities','lean_invocations':0,'exact_python_check':'exact-homogeneous-checks.json; all39 coefficients and 30 rational samples','failed_probe':'An initial assumption that JSON entries already represented raw gap coefficients was rejected; exact representation check identifies core normalized Bernstein coefficients. This was a representation mismatch, not a counterexample.'})
readme='''# 单叶齐次化资源候选（未运行 Lean）

本包只替代 ThreeTwo 的 ELeaf001.actual_gap_eq 证明方式，数学目标、λ、区间 [1/4,3/8] 和 39 个 gap 系数均保持原值。原同字节源码已由主任务报告在 3072 MiB 下通过（20.822 秒，新增对象 14.358 MiB，公理在 std3 内）；1536 MiB 曾在该等式内核验收时内存不足。因此本包是可选备用方案，不阻塞已通过的主线，也没有带来新的原题覆盖。

原核为 t^15(1−t)^15(1−t/9)^8，区间代换 t=(3x+2y)/8、x+y=1。先在独立 x,y 上证明齐次整数恒等式：

    K(x+y)^38 − (3x+2y)^15(5x+6y)^15(69x+70y)^8
      = Σ A_k x^k y^(38−k).

D=8^30·72^8=894045416874100774833775661901846480420864（140 位），K=Dλ=529025545333459515807345893179392，A_k=D·gapCoeff_k 最大 144 位。39 项全部由整数卷积精确核对，并与原 Lean 和原 JSON 对齐；另外 30 个有理点检查均通过。JSON 中的条目实际是核的归一化 Bernstein 系数，故对应式是 gapCoeff_k=(λ−coreBernsteinCoeff_k)·choose(38,k)，不能直接把 JSON 当 gap 系数。本包记录了这一表示诊断。

Data.lean 保留原数据前缀，只换命名空间。Homogeneous.lean 使用整数系数、独立变量的 ring 证明。Reduction.lean 先分别清除 λ、核、39 项系数的固定分母，再代 y=1−x，以明确一次式恒等式和非零 D 消去得到原 Polynomial 等式。高次代换之后不使用 ring 展开。ReplacementLeaf.lean 是另一独立命名空间的完整原叶副本，只替换 actual_gap_eq 的证明，检查与原定义布局的接合；它不导入原 ELeaf001，避免依赖原有昂贵证明或形成循环。

候选含完整证明文本，无 sorry、admit、axiom 或 native_decide。尚未运行 Lean，故不能宣称这些新证明已通过，也不能宣称内存、对象大小或速度实际改善。预期减少有理数展开中间项只是待测资源假说，齐次 ring 自身仍有成本。

建议由主任务串行按 HomogeneousAudit、ReductionAudit、ReplacementLeafAudit 三个入口验收，再按需要运行 Audit.lean 全部公开根。audit_axioms.py 只校验实际日志，拒绝编译错误、sorryAx、缺根和额外公理；其自测是合成日志检查，不是 Lean 接受。INPUT_SOURCES、SOURCE_MAP、exact-homogeneous-checks、static-review 与 FREEZE 绑定来源和边界。

开始时间 2026-09-11 22:52:06 UTC；20 分钟是检查点而非总截止。到检查点候选证明文本已完成，本次仅补静态复核与冻结。后续最小动作是可选的单叶低内存实际试验；若不需要，可直接保留方法记录，不扩其他叶。
'''
write('README.md',readme)
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_SINGLE_LEAF_RESOURCE_CANDIDATE','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'public_roots':len(roots),'public_theorems':len(theorems),'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'implementation':{m:sha(OUT/(m+'.lean')) for m in modules},'Audit':sha(OUT/'Audit.lean'),'public_roots':len(roots),'public_theorems':len(theorems),'files':len(files)},indent=2))