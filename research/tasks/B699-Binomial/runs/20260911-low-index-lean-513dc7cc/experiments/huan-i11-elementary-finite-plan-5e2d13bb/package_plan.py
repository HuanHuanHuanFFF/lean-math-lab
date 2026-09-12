from pathlib import Path
from datetime import datetime,timezone
from fractions import Fraction as F
import hashlib,json
OUT=Path(__file__).resolve().parent
RUN=OUT.parent.parent
TUNED=json.loads((OUT/'finite-height-joint-tuning.json').read_text())
PLAN=TUNED['selected_plan']
CHECK=json.loads((OUT/'independent-finite-check.json').read_text())
UNIFORM=json.loads((OUT/'finite-plan-results.json').read_text())['selected_plan']
INPUTS=json.loads((OUT/'finite-inputs.json').read_text())
for path,item in json.loads((OUT/'INPUT_SOURCES.json').read_text())['sources'].items():
    assert hashlib.sha256(Path(path).read_bytes()).hexdigest()==item['sha256'],path
additional=[RUN/'experiments/huan-i18-adoption-5e2d13bb/code/vendor/rational_intervals.py',
            RUN/'experiments/huan-G-rational-weight-test-5e2d13bb/check_rational_weights.py',
            RUN/'experiments/huan-pade-growth-certificates-5e2d13bb/PartitionGrowth.lean']
(OUT/'ADDITIONAL_SOURCES.json').write_text(json.dumps({'utc':datetime.now(timezone.utc).isoformat(),
    'sources':{str(p):{'bytes':p.stat().st_size,'sha256':hashlib.sha256(p.read_bytes()).hexdigest()} for p in additional}},indent=2)+'\n',encoding='utf-8')

obligations=[
 {'suggested_name':'rationalD_num_dvd_qContent','owner':'other mathematical agent, coordinated by primary',
  'target':'For every u,v in Nat, the reduced positive numerator of rationalD(u,v) divides actual qContent u v u.',
  'basis':'the actual per-prime-power floor inequality and qMagnitude identity; not a G lower-bound hypothesis'},
 {'suggested_name':'i11_D_step_exact','target':'For each of the 12 listed delta/parity tracks and all k>=k_min, D(q(k+1)+rho)=D(qk+rho)*N(k)/T(k).',
  'basis':'actual factorial_add_cast, guarded Nat subtractions and floor(v/2) identities; explicit positive denominator factors'},
 {'suggested_name':'i11_D_rough_step','target':'For every track, D_next >= R_infinity*((k+1)/(k+2))^2*D_current for all k>=k_min.',
  'basis':'D-rough-step-certificates.json positive coefficients; actual initial m=1 or2'},
 {'suggested_name':'i11_D_mid_step','target':'For every track, D_next >= L_mid^(d*q)*D_current for all k>=K.',
  'basis':'selected finite shifted-factor polynomial certificates, reconstructed independently'},
 {'suggested_name':'i11_D_binary_block_bound','target':'The rough lower bound gives initial ratio >=2^(-T); Bernoulli gives R^block_B>=2; compose to normalized ratio>=2 after (T+1)*block_B steps.',
  'basis':'small exact rationals only; no evaluation of D at large K or expansion of the large block power'},
 {'suggested_name':'i11_D_lower_bound_all_m','target':'For each of the five c,d, both delta=0/1 and all m>=the listed m0, rationalD(d*m-delta,(c-d)*m+delta-1)>=2*L_target^(d*m).',
  'basis':'split m mod q and use all 12 tracks; no asymptotic/stirling/theta input'},
 {'suggested_name':'factorial_strict_k_9_5, factorial_strict_k_23_15, factorial_strict_k_11_7','target':'Actual F(c,d,delta,m)<K_delta*beta(c,d)^m for both delta and every m>=1.',
  'basis':'new exact positive coefficient certificates in the three QE files; imported common skeleton is accepted, these instances are not'},
 {'suggested_name':'i11_QE_growth_trees','target':'Build actual GrowthTree instances for five Q cores and five E cores, with both delta weights; then apply the accepted actual moment and source-coefficient correspondence.',
  'basis':'81 independently checked dyadic leaves; a partition is not a global BernsteinCone assertion'},
 {'suggested_name':'i11_finite_row_height','target':'Prove all five exact Omega and selector/height inequalities at H=15359, preserving original seed signs and both deltas.',
  'basis':'Python rational-log enclosures currently verified; reify their series/tail certificates in Lean or replace by exact finite integer inequalities'},
 {'suggested_name':'i11_full_source_height_consumer','target':'From an original i11 counterexample with every legal n,j and prime boundary p>=11, derive n<2^15360 using the actual rows and r=3,s=7.',
  'basis':'actual IntegerBridge and original consumer translation; never assume HeightValid as a substitute'},
 {'suggested_name':'i11_final_bounded_coverage','target':'Eliminate all remaining legal n,j below the proved height by accepted uniform witnesses, a verified descent, and complete bounded certificates.',
  'basis':'no CRT intersections, descent, or terminal exhaustion were run here'}]
(OUT/'LEAN_OBLIGATIONS.json').write_text(json.dumps({'status':'suggested statement names, not existing or accepted new declarations','obligations':obligations},ensure_ascii=False,indent=2)+'\n',encoding='utf-8')

report=r'''# i11 初等 G 的具体有限参数计划

**有限参数已具体化并通过精确检查，但 i11 尚未完成。** 保留五行的同一组 c,d 和有理 `L_target,L_mid` 后，有限高度下共同调整两端权重得到

\[
H_n=15360,\quad H_Y=15359,\quad S=640,\quad
(r,s,\lambda,E)=(3,7,11,84),\quad\Delta=40.
\]

全部32取向通过，全局高度整数余量为310360，五行两delta的有限m0、Omega和height条件均严格通过。D的实际统一起点最多224；推导只用小基础项、正系数证书和Bernoulli，不使用Stirling或theta。

覆盖仍有明显成本：继承旧CRT尺寸接口后，37,136个幂族产生487,789,034个不同素数族对，乘21个位移为 **10,243,569,714个朴素步骤**。这只是尺寸计数，不是可直接执行或已完成的覆盖。

## 最终五行参数

种子取向始终满足 `P=p^k,Q=q^l,a0P-b0Q=D0>0`。所有L均为精确有理数，不把显示小数或gamma当底数。

| p,q；k,l | a0,b0,D0 | c,d | wp,wq | L_target | L_mid | m0 |
|---|---|---|---|---|---|---|
'''
for row in PLAN['rows']:
    s=row['seed']
    report+=f"| {s['p']},{s['q']}；{s['k0']},{s['l0']} | {s['a']},{s['b']},{s['D0']} | {s['c']},{s['d']} | {row['wp']},{row['wq']} | {row['L_target']} | {row['L_mid']} | {row['D_threshold_m0']} |\n"
report+=r'''
这些m0支持纸面目标 `D_m>=2 L_target^(dm)` 对**全部m>=m0、delta=0/1**成立；作为原消费者输入时保守要求m>m0。G/D的实际整性桥由另一数学代理处理，接受后可得到实际内容G的严格L_target下界。

## 从真实阶乘比得到全m的离散证书

令b=c-d，取q=1（b偶）或q=2（b奇），m=qk+rho。q=1只取rho=0；q=2分rho=0/1，delta始终分别保留。此时

\[
u=dqk+d\rho-\delta,\quad v=bqk+b\rho+\delta-1,\quad
f=(bq/2)k+\lfloor(b\rho+\delta-1)/2\rfloor,
\quad D_m=\frac{(u+f)!f!}{u!v!}.
\]

每个阶乘参数都为固定整数仿射式。用升阶乘展开，`D_{m+q}/D_m=N(k)/T(k)` 是明确的正整数线性因子乘积之比，没有设置递推假设。q=1或rho=0从k=1起，q=2,rho=1从k=0起，确保所有源下标非负。

十二轨道首先都有

\[
D_{m+q}\ge R_\infty\left(\frac{k+1}{k+2}\right)^2D_m.
\]

差多项式在x=k-k_min上的系数全非负。R_infinity是N/T的首项系数比，且q=1时 `R_infinity^2=beta/4^c`，q=2时 `R_infinity=beta/4^c`，均为可直接比较的有理数。基础m只有1或2，正式D基础项最大的阶乘为18!；值仅包括1、4、5/2、204/35、306/7、3/2、4/3、14/3。

随后对每轨道找到K，使

\[
D_{m+q}\ge L_{mid}^{dq}D_m\quad(k\ge K).
\]

证书是 `den(L_mid^(dq))*N - num(L_mid^(dq))*T` 在x=k-K上的非负系数展开。实际K最多44。`L_mid^(dq)<R_infinity` 已作精确有理比较，不依赖渐近数值。

把粗递推望远镜相乘，在K处无需计算D(K)即可得到

\[
\frac{D_{qK+\rho}}{L_{target}^{d(qK+\rho)}}\ge
 C_0:=\frac{D_{qk_{min}+\rho}}{L_{target}^{d(qk_{min}+\rho)}}
       \left(\frac{k_{min}+1}{K+1}\right)^2.
\]

这里略去的因子 `(R_infinity/L_target^(dq))^(K-k_min)` 大于等于1。选小整数T使`2^T C0>=1`，再置 `R=(L_mid/L_target)^(dq)`，选B使`1+B(R-1)>=2`。Bernoulli给`R^B>=2`。在K后走 `(T+1)B` 步即可保证归一化比值至少2；不需要展开这个大块幂。

| c,d | delta | q,rho | K | m_small | T | B | 本轨道阈值 |
|---|---|---|---|---|---|---|---|
'''
for t in CHECK['D_track_checks']:
    report+=f"| {t['c']},{t['d']} | {t['delta']} | {t['q']},{t['rho']} | {t['K']} | {t['m_small']} | {t['power_T']} | {t['block_B']} | {t['threshold_m']} |\n"
report+=r'''
308个D差多项式系数已由独立检查器直接重乘平移后的真实因子重建。有限递推抽检中也计算过适中阶乘（最高493!），但它们不是全m证明的基础；没有用m_small处的大阶乘值或巨大块次幂作唯一验收。

## Q/E和新Factorial前置

五行的10个实际core重新生成了81个dyadic叶区间，用另一种Bernstein因子端点算法重建通过。lambda向上压缩到96位二进制网格，提案相对松弛为1/100000。每种delta单独计算实际 `K_delta=2F_delta(1)/beta`、weight moment和 `C_Q=K_delta*J_Q/lambda_Q,C_E=K_delta*J_E/lambda_E`。

| c,d | Q/E叶数 | max C_Q（显示） | max C_E（显示） | Factorial状态 |
|---|---|---|---|---|
'''
for item in INPUTS['rows']:
    report+=f"| {item['c']},{item['d']} | {item['leaves_Q']}/{item['leaves_E']} | {item['CQ_display']:.10f} | {item['CE_display']:.10f} | {item['factorial_status']} |\n"
report+=r'''
所有20个两delta常数都通过精确 `<1` 比较。新(9,5)、(23,15)、(11,7)的同型实际阶乘前因子正系数证书已生成，但尚未Lean接受；(5,4)、(5,3)可复用已有实际界。81个叶分段不能直接当全局BernsteinCone假设，仍需构造真实GrowthTree并通过实际moment/source对应应用它。

## 有限高度与调整记录

先检查统一降权3/4/5/6，保存于 `finite-plan-results.json`。统一降权6给S638、Delta18、所需整数bits至少16890，建议17408。随后**固定该方案全部L_target/L_mid与D证书**，只按每个有限高度共同选择两端权重。选择器必须同时超过G起点、系数和height三个精确阈值；因此两端权重来自同一个有限选择器，未拼接不同参数。

固定L方案的整数高度二分首次通过为15148；取整到15360后得到上表权重。旧统一方案原文件保留，关系见 `finite-height-joint-tuning.json`。全部32取向给S640；通用消费者没有位置互异假设，已涵盖碰撞，另外六对碰撞诊断也均不削弱S。

全局检查为

\[
15360\cdot40-1000\cdot11\cdot26-11(1000+640)=310360>0.
\]

逐行使用实际Omega有理值和log的有理包围，检查`m_lower>m0`、系数间隔、`selector*T-1>0`及有限height间隔。最小`m_lower-m0`约1.93896，最小height间隔约0.441299；这些显示数不用于裁决。全部精确余量存于最终计划并已独立重算。

## 证据强度与未完成事项

- **精确有理/整数证书：** 十二轨道N/T、粗/常数步进的非负系数、小基础值、2^T常数、Bernoulli线性不等式、L_mid^(dq)<R_infinity、81个QE叶与两delta常数、32取向及全局整数余量。它们可供Lean逐项核验，目前不等于新Lean接受。
- **对数检查：** 采用固定源码的有理atanh级数与显式尾项，向72位网格外包围；不是浮点或无误差界的“高精度”计算。选择L时用过双精度exp提出六位小数，之后由精确比较、实际多项式证书和有理log区间裁决。仍需在Lean重建这些数值证书，或改为更粗的纯整数有限不等式。
- **纸面推导：** D的12轨道拼接、两个望远镜过程与Bernoulli组合、实际G的接入、有限height原消费者及CRT尺寸接口。没有以新的axiom、HeightValid或假设G下界代替应证内容。

`LEAN_OBLIGATIONS.json`列出了建议的具体声明和准确量词，名称只是建议，尚非新可导入定理。另一代理负责D的valuation/qMagnitude整除；本目录仅提供有限参数和递推证书计划。还需新三对Factorial、20个带delta权重的实际增长实例、有限数值证书及全域原题反例推出高度的Lean消费者，保留全部合法n,j及p>=11（包括p=11）。最后仍须覆盖高度以下的全部剩余情形。

## 覆盖成本与最小下一统计

在旧继承的normalized-K尺寸接口中，本方案使用r=3,s=7，K为小阶乘乘积，delta=7，根指数33。只用有理log区间得到M<=2^3262和H>2M，不计算巨大H或M的完整数值。第一层幂族数为

| p | 幂族数 |
|---|---|
'''
for p,count in PLAN['coverage_sizing']['family_counts'].items():report+=f'| {p} | {count} |\n'
report+=r'''
合计37,136族、487,789,034个不同素数族对、10,243,569,714个朴素位移步骤，较旧统一17408方案的13,156,926,531步有所降低，仍不宜直接启动全笛卡尔CRT。没有跑CRT相交、剪枝、下降或终端检查；继承接口的尺寸计算也不是新的完整覆盖证明。是否能通过区间/统一素数见证显著减少实际列表，尚无本轮数据支持。

`COVERAGE_NEXT_CHECK.md`提出最小只读测试：先验证已有i11统一素数见证的实际全j覆盖范围，再用保守幂族区间壳统计剩余族及区间可能相交的族对，仅做排序/扫描计数，不生成大pair列表或运行CRT。若缺少适用于i11的已验全j见证，不扣减任何区间。先报告计数，再由主线程决定压缩或继续优化。

本轮所有写入仅本目录，无Lean/Git或旧目录变更。现在得到的是可审查、可执行证明义务明确的有限计划；完整i11仍未解决，原题计数不增加。
'''
(OUT/'REPORT.md').write_text(report,encoding='utf-8')
(OUT/'COVERAGE_NEXT_CHECK.md').write_text('''# 建议的下一项最小只读覆盖统计（本轮未执行）

1. 只读定位已经接受的 i11 统一素数见证，绑定实际声明、源 SHA 和 std3 验收；素数边界要求 p>=11。只有对某个 n 区间覆盖全部合法 j 的证据才能删除整个 n 区间。若只覆盖 n,j 的矩形或带状子域，保留二维约束，不能提升为全 j。
2. 把可删除的完整 n 区间合并。当前只知道它们可能存在，尚未找到并采用具体列表，因此本轮尺寸没有扣减任何统一见证覆盖。
3. 用尺寸证书中的 M 外包围构造每个 p^h 家族的保守 n 区间壳：下端至少 max(M_lower+1,p^h)，上端至多 min(2^15360-1,M_upper*p^h+10)。约37,136个族；仅统计完全被接受见证覆盖的壳及剩余壳，部分覆盖要分割并保留保守边界。
4. 对剩余壳按端点排序，用扫描/二分统计不同素数壳可能相交的对数，不物化笛卡尔pair列表、不求CRT逆元、不枚举系数a或n。报告原始数、可靠剔除数、仍需精确相交的保守上界和内存峰值。
5. 若没有全j见证或缩减不明显，明确回报，不把假设剪枝率乘进预计成本。统计本身不证明终端覆盖，也不自动授权大CRT；由主线程根据该检查点另行决定。
''',encoding='utf-8')
final={'utc':datetime.now(timezone.utc).isoformat(),'status':'frozen finite proof plan; no new Lean or original-problem acceptance',
       'selected_plan':PLAN,'source_tuning_sha256':hashlib.sha256((OUT/'finite-height-joint-tuning.json').read_bytes()).hexdigest(),
       'independent_check_sha256':hashlib.sha256((OUT/'independent-finite-check.json').read_bytes()).hexdigest(),
       'uniform_plan_preserved':'finite-plan-results.json','lean_obligations':'LEAN_OBLIGATIONS.json',
       'coverage_next_check':'COVERAGE_NEXT_CHECK.md','worker_lean_invocations':0,'new_original_indices':[]}
(OUT/'FINAL_PLAN.json').write_text(json.dumps(final,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
readme=(OUT/'README.md').read_text(encoding='utf-8-sig')
readme+='\n最终检查点：B_n=15360、B_Y=15359，五行权重248/252、60/330、226/268、354/228、352/216，m0=141/224/160/129/149，S640、Delta40、全局整数余量310360。308个D系数独立重建通过，D正式基础项最大18!；81个QE叶独立通过。详情见 REPORT.md、FINAL_PLAN.json 和 LEAN_OBLIGATIONS.json。覆盖仍估计10,243,569,714朴素步骤，未执行；原题仍未完成。旧统一6降权方案保留，最终只改变联合权重与高度。\n'
(OUT/'README.md').write_text(readme,encoding='utf-8')
files=[]
for path in sorted(OUT.rglob('*')):
    if path.is_file() and path.name!='FREEZE_V1.json':
        raw=path.read_bytes();files.append({'path':path.relative_to(OUT).as_posix(),'bytes':len(raw),'sha256':hashlib.sha256(raw).hexdigest()})
manifest={'utc':datetime.now(timezone.utc).isoformat(),'owner':'/root/pade_construction','status':'frozen finite i11 parameter/certificate plan; not Lean accepted or covered',
          'files':files,'height_bits_n':15360,'S':640,'Delta':40,'D_uniform_thresholds':[141,224,160,129,149],
          'worker_lean_invocations':0,'new_original_indices':[]}
p=OUT/'FREEZE_V1.json';p.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
print(json.dumps({'report_sha256':hashlib.sha256((OUT/'REPORT.md').read_bytes()).hexdigest(),
                  'final_plan_sha256':hashlib.sha256((OUT/'FINAL_PLAN.json').read_bytes()).hexdigest(),
                  'independent_check_sha256':hashlib.sha256((OUT/'independent-finite-check.json').read_bytes()).hexdigest(),
                  'freeze_sha256':hashlib.sha256(p.read_bytes()).hexdigest(),'file_count':len(files),
                  'certificate_bytes':sum(f['bytes'] for f in files if f['path'].startswith('qe-certificates/'))},ensure_ascii=False,indent=2))
