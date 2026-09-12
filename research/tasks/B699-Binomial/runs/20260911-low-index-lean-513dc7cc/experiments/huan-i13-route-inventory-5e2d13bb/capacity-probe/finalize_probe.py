from pathlib import Path
from fractions import Fraction as F
import json,hashlib,re,subprocess,datetime
OUT=Path(__file__).resolve().parent
ROOT=Path(r'D:/CodingProject/Math/.tools/worktrees/b699-huan-5e2d13bb')
RUN=ROOT/'research/tasks/B699-Binomial/runs/20260911-low-index-lean-513dc7cc'
OLD=ROOT/'research/tasks/B699-Binomial/runs/20260910-i13-closure-ad35779e/delivery'
assert not (OUT/'FREEZE.json').exists()
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def put(n,v):
 p=OUT/n;assert not p.exists();p.write_text(json.dumps(v,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
def write(n,s):
 p=OUT/n;assert not p.exists();p.write_text(s,encoding='utf-8')
parent=OUT.parent;pf=json.loads((parent/'FREEZE.json').read_text());assert all(sha(parent/n)==v['sha256'] for n,v in pf['files'].items())
g=json.loads((OUT/'probe-results.json').read_text())
error_good=g['m_with_both_source_rows_lt1_at_Y8191'];common_good=[m for m in error_good if m<=100]
assert common_good==[100]
min_floor={}
for delta in [0,1]:
 floors=[r['deltas'][delta]['values']['8230']['source_E_term']['log2_floor']-1 for r in g['all_rows'] if r['m']<=100]
 min_floor[delta]=min(floors);assert min_floor[delta]>=1
assert min_floor=={0:7,1:9}
put('coupled-summary.json',{'status':'EXACT_COUNTERCERTIFICATE_TO_FIXED_CAPACITY_TRIANGLE_INTERFACE','original_Y_bits':8191,'bad_Y_bits':8230,'same_m_for_both_deltas':True,'error_only_passing_m_at_original_Y':error_good,'joint_capacity_and_error_passing_m_at_original_Y':common_good,'joint_capacity_and_error_passing_m_at_bad_Y':[],'all_m_partition':{'m1_through100':'Both capacity conditions hold, but both deltas E contribution using Nq>=Y already exceeds1','m101_and_above':'Both capacity guarantees fail by small integer base inequalities and exponent monotonicity'},'uniform_lower_E_term_at_bad_Y':{'delta0_at_least':'128','delta1_at_least':'512'},'range_of_actual_finite_E_evaluations':[1,100],'not_claimed':['A counterexample to the cofactor cut','A counterexample to Common','G equals D','Uniform finite-m Q/E/G growth from sampled values','Impossibility for the same seed at larger Y0']})
verify='''from pathlib import Path
from fractions import Fraction as F
from math import comb,factorial
import json,hashlib,time
out=Path(__file__).resolve().parent
g=json.loads((out/'probe-results.json').read_text())
t0=time.perf_counter();P=243;Q=121;Y=1<<8230
assert 2**405<3**256<2**406 and 2**885<11**256<2**886
for H in [8191,8230]:
 assert H*679*256>406*35000*100
 assert H*593*256>886*14000*100
 assert 405*35000*101>H*679*256
 assert 885*14000*101>H*593*256
minimum={0:None,1:None};dig=hashlib.sha256();maxbits=0
# Direct binomial formula and explicit sum, not the generator recurrences/Horner.
for m in range(1,101):
 for delta in [0,1]:
  u=5*m-delta;v=2*m+delta-1;f=v//2;N=2*u+v+1
  D=F(factorial(u+f)*factorial(f),factorial(u)*factorial(v))
  E=sum((-1)**r*comb(u+r,r)*comb(N,2*u+r+1)*P**(v-r) for r in range(v+1))
  assert E>0
  eta=F(Y*E,(P*Q)**(7*m))/D
  assert eta>1
  if minimum[delta] is None or eta<minimum[delta][1]:minimum[delta]=(m,eta)
  maxbits=max(maxbits,eta.numerator.bit_length(),eta.denominator.bit_length())
  dig.update(str((m,delta,E,D.numerator,D.denominator,eta.numerator,eta.denominator)).encode())
assert minimum[0][0]==minimum[1][0]==100
assert minimum[0][1]>128 and minimum[1][1]>512
# Check the proposed homogeneous recurrence polynomial by independent evaluation
# at degree+1 points; its coefficients are explicitly positive.
a=g['uniform_bound_next_candidate']['cleared_difference_coefficients_m_ascending']
assert len(a)==6 and all(c>0 for c in a)
for m in range(8):
 lhs=3125*3*m*(24*m+23)
 rhs=11664*(24*m-1)*(2*m+1)
 for j in range(1,6):lhs*=6*m+j;rhs*=5*m+j
 assert lhs-rhs==sum(c*m**k for k,c in enumerate(a))
# Degree-seven cancellation was checked by exact coefficient convolution in the
# generator; these point evaluations are regression, not the proof of identity.
fz=out/'FREEZE.json'
if fz.exists():
 z=json.loads(fz.read_text());assert all(hashlib.sha256((out/n).read_bytes()).hexdigest()==v['sha256'] for n,v in z['files'].items())
res={'status':'PASS_INDEPENDENT_FINITE_E_AND_CAPACITY_CHECKS_NOT_LEAN','m_values':100,'deltas_each':2,'finite_E_values_checked':200,'minimum_m_by_delta':{str(d):minimum[d][0] for d in [0,1]},'minimum_E_term_floor':{str(d):minimum[d][1].numerator//minimum[d][1].denominator for d in [0,1]},'max_eta_integer_bits':maxbits,'trace_sha256':dig.hexdigest(),'seconds':time.perf_counter()-t0,'lean_invocations':0}
print(json.dumps(res,indent=2))
'''
write('verify_probe.py',verify)
r=subprocess.run([r'C:/Python314/python.exe','-B',str(OUT/'verify_probe.py')],text=True,capture_output=True);assert r.returncode==0,r.stdout+r.stderr
ind=json.loads(r.stdout);put('independent-check.json',ind);print(r.stdout)
paths=[RUN/'lean/RationalDivisor/Content.lean',RUN/'lean/RationalDivisor/Coefficients.lean',RUN/'lean/PadeInteger.lean',RUN/'lean/Pade/Rows.lean',RUN/'lean/HomRemainder/Remainder.lean',RUN/'lean/I11Edge/Capacity.lean',RUN/'lean/Growth/Affine.lean',RUN/'lean/Factorial/FactorialCommon.lean',OLD/'input/i13_cuts.json',OLD/'notes/PROOFS.md',OLD/'outputs/i13_cuts_certified.json',parent/'FREEZE.json',parent/'selected-cuts.json']
put('SOURCE_MAP.json',{'sources':[{'path':str(p),'sha256':sha(p),'bytes':p.stat().st_size} for p in paths],'old_constraint_source_row_zero_based':8,'old_i13_L1_input':'2827/2000 with strict m>74; not assumed for D','normalization':'Q/E source polynomials and two actual rationalDivisor values at the same m. Use accepted Gdelta>=Ddelta only as an upper-bound substitution, never Gdelta=Ddelta.','formulas':{'u':'5m-delta','v':'2m+delta-1','qHom':'sum_(r=0..u) choose(2u-r,u) choose(v+r,r)243^(u-r), abs of actual signed Qhom','eHom':'sum_(r=0..v) (-1)^r choose(u+r,r) choose(2u+v+1,2u+r+1)243^(v-r)','D0':'(6m-1)!(m-1)!/((5m)!(2m-1)!)','D1':'(6m-1)!m!/((5m-1)!(2m)!)','D1_over_D0':'5m/2','integer_gap_scale':'P^(7m)','source_error_bound_ratio':'2Y*eHom/(Ddelta*(P*Q)^(7m)) +24*2^(7m)*abs(qHom)/(Ddelta*P^(7m))','strong_failure_lower_envelope':'Y*eHom/(Ddelta*(P*Q)^(7m)); Nq>=Y, so each absolute triangle contribution is at least this when normalized by D','capacity3':'3^(35000m)<=Y^679','capacity11':'11^(14000m)<=Y^593'},'evidence_boundary':'All conclusions about failure refer to the fixed sufficient capacity and absolute-value-triangle certificate. No actual n,j,A,C counterexample is supplied; stronger actual G or different inequalities may succeed.','preserved_parent_files':12,'parent_file_hashes_unchanged':True,'new_Lean_runs':0})
write('NEXT_UNIFORM_BOUND.md','''# 值得形式化的下一条：保留一次分母的真实D下界

此处给纸面候选和精确多项式证书，未运行Lean。它不由有限m样本外推。

令R=11664/3125。对所有m≥1，实际定义给

    D0(m)=(6m−1)!(m−1)! / ((5m)!(2m−1)!),
    D1(m)=(6m−1)!m! / ((5m−1)!(2m)!)=(5m/2)D0(m).

直接阶乘消去给

    D0(m+1)/D0(m)
      = 3m/(2m+1) · ∏_{j=1}^5 (6m+j)/(5m+j).

所需不等式为此比值≥R(24m−1)/(24m+23)。m≥1时所有分母严格正。清分母后的左减右为

    3125·3m(24m+23)∏(6m+j)
      −11664(24m−1)(2m+1)∏(5m+j)
    =1399680 +11061720m +28359900m²
       +29947860m³ +14985000m⁴ +4860000m⁵.

这是生成器的精确整数系数卷积恒等式，六系数全正；不同实现另作8点回归，后者本身不是无限多项式恒等式的证明。正式化应直接ring核验该低次恒等式并证分母正，再用已验ElementaryRate的几何递推作用于H(m)=(24m−1)D0(m)。H(1)=23，遂得

    D0(m) ≥ 23 R^(m−1)/(24m−1),
    D1(m) ≥ (5m/2)·23 R^(m−1)/(24m−1).

通过已验rationalDivisor_le_qContent，可把同一界给实际两个qContent；无需假设有效G下界。必须保留这次分母，不能擅自把它换成D≥R^m。

此外各因子分别小于3/2与6/5，故D0(m+1)/D0(m)<R，给D0(m)≤R^(m−1)。上下界及D1/D0的线性因子说明两δ的真实指数率均为logR；本probe的gamma单位由此解释，L_D=R^(1/5)，绝不能把gamma本身当成L。

这条均匀界是下一项小而具体的Lean义务。它仍不能修复本次发现的原8192容量间隙，因为真实D本身已在那里不足以通过同一证书。后续应在保留原种子/c7d5/权重的条件下，先给更高共同阈值及全m的Q/E界、容量区间衔接，再决定是否投入该正式化；当前没有给出或接受新的Y0。
''')
write('REPORT.md','''# 固定(3,11)、c7d5在有理D下的共同容量检查

结论分两层：原321/407权重、原Y≥2^8191（来自n≥2^8192）的同一“容量保证＋两δ绝对值三角界”证书，不能直接将旧G输入换成实际有理D。一个完整的m选择缺口已被精确定位。但本种子/比例的渐近共同余量严格为正，因此没有否定更高阈值的路线，更没有得到原Padé约束或B699反例。

固定种子是243−2·121=1，即p3,q11,k0=5,l0=2,a1,b2,Dseed1；z=1/243,c7,d5。所测cut为A^1000≥Y^321或C^1000≥Y^407，窗口值在[Y,2Y]、差≤24。m在两δ间相同，u=5m−δ、v=2m+δ−1，m≥1。旧出版G条件m>74、L1=1.4135未作D的假设。

实际D为D0=(6m−1)!(m−1)!/((5m)!(2m−1)!)，D1=(5m/2)D0。两δ各用自己的D；没有使用“δ1≤δ0”之类替代。计算采用实际qMagnitude和eCoefficient的整数齐次求值，所有系数分别由组合数公式和精确整除递推交叉核对，不用近似Q/E常数作有限m裁决。

将已验Gδ≥Dδ代入原三角上界并除以整数间隙P^(7m)，得到

    ηδ=2Y·Ehomδ/[Dδ(PQ)^(7m)]
         +24·2^(7m)|Qhomδ|/[DδP^(7m)].

两δ均ηδ<1，才足以处理“至少一行非零”的已有桥。能力保证是P^(7000m)≤Y^679及Q^(7000m)≤Y^593；它们是从小余因子反设得到共同素数指数的已验充分条件，并非对所有真实指数的必要刻画。

在Y=2^8191，m100同时满足两容量及两行η<1。m101的误差本身也小，却过不了容量；不能把两个不同m或仅一个条件的成功拼起来。

在Y=2^8230，容量仍只保证m≤100。对此全部m=1..100，δ0、δ1的E项已分别至少为128、512，即使把Nq的系数降到其下限Y、把位移项删为0，也无法令同一绝对值三角上界<1。最小值均在m100，实际E项分别约141.385619356991和572.005557310645。独立计算直接按组合数公式作整数和，复核全部200个E值。m≥101则由小幂整数证书和幂单调统一排除容量，因此该Y的全部m≥1已被这项接口诊断覆盖。坏Y对应n=Y+12已在原高度域；这里没有构造实际反例的n,j或满足所有素数窗口约束的A,C。

容量证书只需要

    2^405 <3^256<2^406,
    2^885 <11^256<2^886.

再比较较小指数整数。例如Y=2^8230、m101时，405·35000·101−8230·679·256=1103480>0，885·14000·101−8230·593·256=2010160>0。由此无需计算或交内核展开百万位整数。最大basis仅886位；本次数值D/多项式整数最大5008位，独立交叉乘法证据最大位数另见independent-check.json。

渐近部分与有限部分分开。实际D的每m指数底数为R=11664/3125=3.73248，gamma=logR∈[1.317072892077,1.317072892078]；L_D=R^(1/5)，不是gamma。对真实核的内部唯一最大点，以整数平方根包围和有显式尾界的80项atanh级数给向外有理界，得到qRate≈1.674601277343、T≈56.95029803724、κT−1∈[0.005664867686,0.005664867687]。这说明并非负主项障碍。旧原形式的8191高度判据(κT−1)8191log2−T−log4却在[−26.173917746411,−26.173917746410]，也不能直接照搬。所有判定均使用Fraction和向外界，显示小数仅用于阅读。

R严格小于旧L1^5，且已测m1..101两个D都小于旧L1^(5m)。所以不能用当前D证明旧出版L1阈值；这不妨碍实际G更大，也不证明原G命题错误。

下一条可审查均匀命题见NEXT_UNIFORM_BOUND.md：D0≥23R^(m−1)/(24m−1)，D1=(5m/2)D0；实际阶乘步进的清分母差是六个正系数的五次多项式。它给纸面全m证明路线而不是样本外推，仍待Lean。随后需要更高的共同Y0、全部m的F/Q/E增长及容量区间衔接；本轮不选择新高度、不搜索新种子或c/d、不展开大证书。

最终边界：本探针否定原阈值下这一个D容量/三角证明接口，不否定原cut、不否定实际G、不否定所有初等方法。只有当新的统一阈值与全部其他i13边一并核准后，才可能转化为无界n尾部排除。当前没有新的原题接受，也未运行Lean。
''')
write('README.md','''# i13关键3/11有理D容量探针

固定原种子、c7d5、权重321/407和源Y0，不碰父目录冻结12文件。REPORT.md给精确结论与限制，PROBE_SCOPE.md锁定范围，probe-results.json保存双δ逐m结果和向外渐近界，coupled-summary.json区分单条件与共同可行m。verify_probe.py可只读重放200个E值及小幂容量证书；不导入生成器，不运行Lean。

当前结论：Y=2^8230出现同一容量/绝对值三角界的完整整数m缺口；原cut本身未被反驳。渐近斜率为正，更高阈值仍开放。NEXT_UNIFORM_BOUND.md给实际D保留一次分母的可形式化下一命题；不是已验Lean，也没有新的Y0。

生成器在本目录冻结后拒绝覆盖。SOURCE_MAP绑定实际系数、D、原约束、容量引理及父包；FREEZE绑定本包文件。只有本种子这一项探针，没有新seed/cd搜索或大证书。
''')
put('CHECKPOINT.json',{'owner':'/root/pade_construction','first_observed_start_utc':'2026-09-12T02:07:51Z','checkpoint_utc':'2026-09-12T02:27:51Z','checkpoint_not_deadline':True,'scope':'One fixed3/11,c7d5 common-capacity probe, no seed/weight/cd search','m_finite_range':[1,101],'all_m_at_bad_Y_covered_by_capacity_tail':True,'last_verified_reused_result':'actual rationalDivisor_le_qContent and actual source identities, no new Lean','exact_result':'Original8192 capacity+triangle uniform certificate fails with D; same fixed seed has positive asymptotic slope','next_proof_candidate':'allm D0>=23R^(m-1)/(24m-1) from an actual factorial step and positive polynomial; then recheck a higher uniform threshold before broader formalization','unbounded_work_remaining':['allm F/Q/E estimates and common Y0 for a revised edge','all remaining i13 edges and position-weighted consumer','original n,j coverage'],'lean_invocations':0})
assert all(sha(parent/n)==v['sha256'] for n,v in pf['files'].items())
files={p.name:{'sha256':sha(p),'bytes':p.stat().st_size} for p in sorted(OUT.iterdir()) if p.is_file() and p.name!='FREEZE.json'}
put('FREEZE.json',{'status':'FROZEN_EXACT_FIXED_SEED_CAPACITY_PROBE_NOT_LEAN','frozen_at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'owner':'/root/pade_construction','preserved_parent_manifest_sha256':sha(parent/'FREEZE.json'),'preserved_parent_files':12,'lean_invocations':0,'files':files})
print(json.dumps({'FREEZE_sha256':sha(OUT/'FREEZE.json'),'REPORT_sha256':sha(OUT/'REPORT.md'),'NEXT_uniform_sha256':sha(OUT/'NEXT_UNIFORM_BOUND.md'),'files':len(files),'parent_files_unchanged':True,'max_independent_integer_bits':ind['max_eta_integer_bits']},indent=2))