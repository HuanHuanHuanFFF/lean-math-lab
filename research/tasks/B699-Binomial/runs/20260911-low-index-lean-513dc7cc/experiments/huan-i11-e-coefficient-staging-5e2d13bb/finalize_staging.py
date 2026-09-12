from pathlib import Path
import json,hashlib,re,datetime,subprocess
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OUT=Path(__file__).resolve().parent
assert OUT==RUN/'experiments/huan-i11-e-coefficient-staging-5e2d13bb'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def put(n,v):
 p=OUT/n;assert not p.exists();p.write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
first=json.loads((OUT/'FIRST_PROBE_FREEZE.json').read_text())
assert all(sha(OUT/n)==v['sha256'] for n,v in first['files'].items())
# This explicit cast simplification only modifies unfrozen layers.
for name in ['RatSum.lean','build_staging.py']:
 p=OUT/name;s=p.read_text();old='norm_num [rationalDelta0Sum]';new='norm_num [rationalDelta0Sum, Int.coe_castRingHom]';assert s.count(old)==1;p.write_text(s.replace(old,new),encoding='utf-8')
ns='Math.B699.I11ECoefficientStaging'
for file,theorem,ty in [
 ('ClosedEvalAudit.lean','closed_e_delta0','''(Math.B699.PadeConstruction.coefficientPolynomial 7
    (Math.B699.I11InitialCapComputation.fastECoefficient 15 7 15)).eval₂
      (Int.castRingHom ℚ) (1 / 9) = (13515592997264 : ℚ) / 1594323'''),
 ('ActualEvalAudit.lean','actual_e_delta0','''Math.B699.PadeGrowthNormalization.actualE 23 15 0 1 (1 / 9) =
    (13515592997264 : ℚ) / 1594323''')]:
 p=OUT/file;s=p.read_text();s+='\n#check ('+ns+'.'+theorem+' :\n  '+ty+')\n';p.write_text(s,encoding='utf-8')
auditor=(RUN/'experiments/huan-i11-two-five-final-consumers-5e2d13bb/audit_axioms.py').read_text()
auditor=auditor.replace("        (OUT/'audit-selftest.json').write_text", "        assert not (OUT/'FREEZE.json').exists(), 'do not overwrite frozen evidence'\n        (OUT/'audit-selftest.json').write_text")
write('audit_axioms.py',auditor)
r=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'audit_axioms.py'),'--self-test'],text=True,capture_output=True)
assert r.returncode==0,r.stdout+r.stderr
print(r.stdout)
source_paths=[RUN/'lean/PadeInteger.lean',RUN/'lean/I11InitialCapComputation/ChooseFast.lean',RUN/'lean/Growth/Normalization.lean',RUN/'lean/I11InitialCapRevision/ClosedEval.lean',RUN/'lean/I11InitialCapRevision/Bridge.lean',RUN/'lean/I11InitialCapComputation/ThreeTwo.lean',Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/Polynomial/Eval/Defs.lean'),Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Defs.lean'),Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean'),Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Data/Int/Cast/Lemmas.lean'),Path(r'D:/CodingProject/Math/.tools/pi5e2d/mathlib/Mathlib/Tactic/NormNum/NatFactorial.lean'),ROOT/'lean-toolchain',ROOT/'lake-manifest.json']
inputs=[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in source_paths]
assert inputs[0]['sha256']=='8aa4bdbd7b3751fe96bd4d953ee68ab5b7fd2fa374cb5ce623d7d460d444044b'
assert inputs[1]['sha256']=='d45b47e493c592c57af8c612796edf5b989e7a5f01b8995abd4be7d402f6dec5'
evpath=RUN/'verification/20260912T000041034985Z/evidence.json';ev=json.loads(evpath.read_text())
failure_records=[]
for rec in ev['compile_records']:
 logpath=ROOT/rec['log'];log=logpath.read_text(encoding='utf-8-sig')
 failure_records.append({k:rec.get(k) for k in ['source','seconds','exit_code','failure','log','source_sha256_before']})
 failure_records[-1]['diagnostic_lines']=[l for l in log.splitlines() if any(x in l.lower() for x in ['memory','error','sorryax','excessive'])]
 failure_records[-1]['log_sha256']=sha(logpath)
put('INPUT_SOURCES.json',{'sources':inputs,'actual_failure_evidence':{'path':str(evpath),'sha256':sha(evpath),'success':ev['success'],'memory_mb':ev['memory_mb'],'compiled_count':ev['compiled_count'],'reused_count':ev['reused_count'],'records':failure_records},'accepted_choose_fast':'Parent reports accepted; exact source also appears in reused closure of the recorded ClosedEval failure. Candidate acceptance is separate.'})
mods=['Coeff0','EvalBridge','Coefficients','RatSum','ClosedEval','ActualEval']
audit_targets={'Coeff0Audit':'ZeroAudit','EvalBridgeAudit':'EvalAudit','CoefficientsAudit':'CoeffAudit','RatSumAudit':'RatAudit','ClosedEvalAudit':'ClosedAudit','ActualEvalAudit':'ActualAudit','Audit':'Audit'}
mapping={m+'.lean':'lean/I11ECoefficientStaging/'+m+'.lean' for m in mods}
mapping.update({s+'.lean':'lean/I11ECoefficientStaging/'+t+'.lean' for s,t in audit_targets.items()})
put('SOURCE_MAP.json',{'owner':'/root/pade_construction','scope':'Only actual ThreeTwo E delta0, m=1, eight coefficients','namespace':ns,'short_target_mapping':mapping,'import_rule':'Map only this package own experiment imports to lean.I11ECoefficientStaging; keep accepted run imports unchanged. Audit files may use the mapped short basenames. No shared source edits by subagent.','exact_closed_target':'(coefficientPolynomial 7 (fastECoefficient 15 7 15)).eval2 (Int.castRingHom Rat) (1/9) = 13515592997264/1594323','exact_actual_target':'actualE 23 15 0 1 (1/9) = 13515592997264/1594323','parameters':{'delta':0,'m':1,'A':15,'B':7,'C':15,'coefficient_count':8},'proof_pipeline':[{'module':'Coeff0','operation':'one closed integer coefficient, norm_num factorial quotient','first_independent_probe':True},{'module':'EvalBridge','operation':'generic n,a,f,z polynomial-to-sum identity; degree7 expansion with a,f,z symbolic; generic coefficient substitution','first_independent_probe':True},{'module':'Coefficients','operation':'remaining seven independent integer coefficient certificates'},{'module':'RatSum','operation':'eight literal integer casts into Rat, powers at most7; no direct Polynomial or Pade import; norm_num only pure rational arithmetic'},{'module':'ClosedEval','operation':'instantiate proved symbolic substitution with all8 coefficient proofs, Eq.trans pure Rat sum; no rw/simp/norm_num on concrete polynomial'},{'module':'ActualEval','operation':'accepted actualE_eq_fast specialized at small natural parameters, Eq.trans closed_e_delta0'}],'audit_order':['ZeroAudit','EvalAudit','CoeffAudit','RatAudit','ClosedAudit','ActualAudit','Audit'],'remaining_unproved_by_this_candidate':['Lean elaboration and kernel acceptance of all new layers','delta1 actual E initialization and cap connection','No original Common theorem is claimed by this arithmetic probe'],'failure_interpretation':'Prior ClosedEval failure rules out actualE bridging as the sole cause. It does not yet prove whether concrete Polynomial reduction, coefficient computation or pure Rat calculation dominates. Separate probes distinguish these cases.','resource_claim':'No measured improvement: no Lean invocations. Result magnitudes are only27bit coefficients and a44bit numerator; size alone does not explain OOM.','public_roots':15,'public_theorems':14,'candidate_status':'UNCOMPILED_FULL_PROOF_TEXT_NO_PLACEHOLDERS'})
# Minimal read-only checker for frozen data and proof-source correspondence.
checker='''from pathlib import Path
from fractions import Fraction
from math import comb,factorial
import json,re,hashlib
out=Path(__file__).resolve().parent
d=json.loads((out/'exact-checks.json').read_text())
c=[(-1)**r*comb(15+r,r)*comb(38,31+r) for r in range(8)]
f=[(-1)**r*(factorial(15+r)//(factorial(r)*factorial(15)))*(factorial(38)//(factorial(31+r)*factorial(7-r))) for r in range(8)]
assert c==f==d['coefficients']
assert sum((Fraction(v,9**r) for r,v in enumerate(c)),Fraction())==Fraction(13515592997264,1594323)
text=(out/'Coeff0.lean').read_text()+(out/'Coefficients.lean').read_text()
found={int(r):int(v) for r,v in re.findall(r'fastECoefficient 15 7 15 (\\d+) = \\((-?\\d+) : ℤ\\)',text)}
assert found==dict(enumerate(c))
rs=(out/'RatSum.lean').read_text()
terms=[(int(v),int(r)) for v,r in re.findall(r'\\(Int.castRingHom ℚ\\) \\((-?\\d+) : ℤ\\) \\* \\(1 / 9 : ℚ\\) \\^ (\\d+)',rs)]
assert terms==[(v,r) for r,v in enumerate(c)]
for name in ['ClosedEval.lean','ActualEval.lean']:
 code=(out/name).read_text();assert not re.search(r'^\\s+(?:rw|simp|simp_all|norm_num|decide|native_decide)\\b',code,re.M)
 assert '13515592997264 : ℚ' in code and '/ 1594323' in code
for p in out.glob('*.lean'):
 assert not re.search(r'\\b(?:sorry|admit|axiom|native_decide)\\b',p.read_text())
freeze=out/'FREEZE.json'
if freeze.exists():
 data=json.loads(freeze.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in data['files'].items())
print(json.dumps({'status':'PASS_EXACT_STATIC_CHECKS_ONLY','coefficient_count':8,'coefficients':c,'actual_target_unchanged':True,'lean_invocations':0}))
'''
write('check_data.py',checker)
c=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'check_data.py')],text=True,capture_output=True)
assert c.returncode==0,c.stdout+c.stderr
put('static-checks.json',json.loads(c.stdout))
put('CHECKPOINT.json',{'started_utc':'2026-09-12T00:03:41Z','checkpoint_utc':'2026-09-12T00:23:41Z','checkpoint_is_not_deadline':True,'status':'Complete single-delta proof text and exact checks before checkpoint; no Lean runs','expected_frontier_change':'If accepted, restore the exact E delta0 m=1 value needed by the final ThreeTwo edge. Other E row and downstream checks remain separate.','actual_frontier_change':'None yet: new source uncompiled; only finite integer/rational diagnostics passed.'})
write('README.md','''# ThreeTwo E 初值分层探针（仅 δ=0，未运行 Lean）

本包保留原目标 actualE 23 15 0 1 (1/9)=13515592997264/1594323。它只改变证明组织，不改变系数、m、δ、λ、上界或高度阈值。全部文件位于本独占实验目录，原失败源码与已验源均未修改。

已读取的真实失败证据为 verification/20260912T000041034985Z/evidence.json：ClosedEval 去掉 actualE 后，1536 MiB 仍在 12.752 秒内报 kernel excessive memory，产生 sorryAx 因而严格未接受。这个事实排除了 actualE 桥接是唯一原因，尚不能单独归因于 Polynomial、系数或 Rat 实现。主任务另报告原具体求值在3072 MiB也失败；本包不把增加内存作为方案。

八个真实整数系数依次为 12620256、−44170896、68264112、−60233040、32697936、−10899312、2062032、−170544。它们最大27位；组合数与阶乘商独立计算一致。按9^r除后求和为13515592997264/1594323；共同分母9^7=4782969下的整数分子是40546778991792。以上是精确有限Python检查，不是Lean接受。

按以下顺序串行验收，能区分瓶颈；短目标映射见 SOURCE_MAP：

1. Coeff0Audit：只核验第0个实际整数系数，导入已验ChooseFast。
2. EvalBridgeAudit：先对符号n、a、f、z证明coefficientPolynomial求值等于系数和；再只展开八项求和，系数函数仍是符号。最后证明带八个系数等式输入的通用代入步骤。
3. CoefficientsAudit：另七个实际整数系数各有单独定理。
4. RatSumAudit：独立文件仅含八个字面整数映到Rat、1/9的小幂与加法，直接导入Rat/NormNum，不直接导入Polynomial或Padé模块。
5. ClosedEvalAudit：给通用代入步骤实际提供全部八个已证系数，再以Eq.trans连接纯Rat和。对具体Polynomial目标不运行rw、simp或norm_num。
6. ActualEvalAudit：以已验actualE_eq_fast和Eq.trans还原原目标，包含精确类型断言。
7. Audit：全部15个公开根、14条定理的打印审计。audit_axioms.py拒绝缺根、错误、sorryAx及额外公理；audit-selftest只使用合成日志。

FIRST_PROBE_FREEZE的Coeff0和EvalBridge前缀已先行冻结；全包保留其同字节源码。所有候选均有完整证明文本，无sorry、axiom、native_decide，不用系数或求值假设替代最终实际常数。

本轮没有运行Lean，也没有实际内存收益数据。若Coeff0失败，应先解决单系数归约；若EvalBridge失败，应解决符号求值API；若RatSum失败，问题已被隔离到纯Rat小表达式；若前四层都通过而ClosedEval失败，则继续诊断泛型特化时的definitional equality。不要把任一未验层标为通过。

本包仅δ0；δ1九项初值与两δ实际cap接合仍须完成。原i11边、初始高度和B原题的接受状态由主任务的完整验收决定，本包的有限检查不增加原题覆盖。
''')
assert all(sha(OUT/n)==v['sha256'] for n,v in first['files'].items())
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_UNCOMPILED_DELTA0_STAGED_CANDIDATE','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','lean_invocations':0,'implementation_modules':6,'public_theorems':14,'public_roots':15,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'sources':{m:sha(OUT/(m+'.lean')) for m in mods},'Audit':sha(OUT/'Audit.lean'),'files':len(files),'first_prefix_unchanged':True},indent=2))