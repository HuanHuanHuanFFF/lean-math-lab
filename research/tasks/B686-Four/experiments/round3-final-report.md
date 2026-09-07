# B686 / Four 第三轮数学报告

2026-09-07，Astra max；约06:13 UTC开始，07:30 UTC停止新探索。

**原赏金题尚未解决。** 没有找到合法自然数三元组，也没有证明对全部k无解。
自然数k≥2、n≥0、m≥n+k及P_k(t)=∏_{i=1}^k(t+i)始终保持。
没有平台提交、外部联络或付费；本子线程未自行commit/push，主线程统一同步。
未改固定工具链或Math/Tests/Examples。

平台正向为True↔Exists，反向为¬(True↔Exists)；完整无解方向可匹配反向任务。
两任务ID分别为fc-8432eac9-variants-four-726b93de25-formalized-v1与
fc-8432eac9-variants-four-8357497acd-counterexample-v1。
没有借用上游开放定理占位证明。固定源平台包未在本轮重建，未运行完整平台比较器。

**本轮最强跨k结果：任何解必须m≥n+k+8。**

设d=m−n=k+h、K=2k+h、N=n+1。两个外块保留乘积是(2P_k(n))²。
h=0由Sylvester–Schur及外块素因子上界排除大n；h=1另用中心
n+k+1整除(1−4(−1)^k)k!，排除大n。小n时k≥5逐因子比值>4/3，
k≤4由下述Lean有限参数证书覆盖。

h=2..7引用Mukhopadhyay–Shorey,
[*Square free part of products of consecutive integers*, Theorem 3](https://publi.math.unideb.hu/paper/924/download/)。
本轮已直接核对其原文。主线程证明N<K²，本线程证明k≥5时K<N。
因此只需该定理的中间分支，总长上界κ(h)依次为8,9,11,15,16,24，
推出k≤8；小k的任意n已经Lean排除。早先较宽的k≤21,n≤575归约和
69120个原式核验保留作交叉证据，不依赖省略因子1等表示假设。

**证据边界：** 此跨全部k结论是引用公开数学定理的纸面证明加Lean有限余段；
Sylvester及该删项定理尚未在本地Lean形式化，所以它不是可直接提交的平台证明。

**第二个跨k结果：每个固定间隙h均可有效有限判定，包括奇数k。**

同一原文式(3)、(4)给K>293且N>K时，大于K的不同素因子至少
floor(3π(K)/4)−1个。由于N<K²，每个区间数小于(K+1)²，至多含一个
大于K的素因子，且指数为1；这些素因子只能落入h个缺项。
于是h≥floor(3π(K)/4)−1。

记s=floor((4h+7)/3)，p_r为第r个素数，令
B(h)=max(293,h+8,p_{s+1}−1)。任何原解满足
K≤B(h)、k≤floor((B(h)−h)/2)、n<B(h)²。
固定h只剩有限个k；每个(k,h)的n可用精确相邻变号与单调性完整判定。
该数量定理仍为文献依赖，未在Lean中建立。

这没有给h的上界。当h≥2k时π(K)≤h，现有数量界自动允许该区域；
固定k的实数交点n/d→1/(4^(1/k)−1)也与范围界相容。

**本线程新增且内核通过的文件。** 所列最终声明均带可失败#guard_msgs，
仅依赖propext、Classical.choice、Quot.sound或其子集。

| 文件 | 已证内容 | 未证内容 |
|---|---|---|
| lean/Round3TwoScaleGap.lean | 带符号平方余项的整数区间、主项/余项同时缩放不相容，共6项 | 任意k的多项式构造及全部有限余段 |
| lean/Round3K5PointWitnesses.lean | 18个互异有理仿射点、无穷远领先值、Howe–Zhu数值、整数迹障碍，共5项 | 曲线/Jacobian及代数几何背景 |
| lean/Round3SmallGapCertificates.lean | 160组相邻变号、所有k=2..21,h=0..7和任意n无解；k≥5的K<N | 公开删项和素因子数量定理 |
| lean/Round3GapDivisibility.lean | 逐因子同余、Icc倒序、任意缺项的整除必要条件，共3项 | 这些同余的无界同时不可解性 |

最后已证引理为B686Round3GapDivisibility.gap_factor_divides：
对任意自然k,n,h及1≤j≤h，原等式严格推出
(n+k+j:ℤ)∣P_k(h−j)−4(−1)^kP_k(j−1)。
没有假设右端非零；自然数减法由明确的j范围控制。证明使用整数乘积，
对自然参数正好是原乘积的整数强制转换，不是改域后的伪解。

统一命令为仓库根目录下
`bash scripts/lean-work.sh lake env lean research/tasks/B686-Four/lean/<文件名>.lean`。
GapDivisibility的早期接口及simp循环错误已修复；错误恢复输出未用于任何结论。

**其他保存的结构成果。**

- 对每个偶数k，平方根多项式截断给有效N(k)，所有解必有n<N(k)。
  清分母后A²−L²P=E，degE<degA；相对误差1/8使A(m)=2A(n)、E(m)=4E(n)
  与次数增长矛盾。通用纸面证明完整，值级Lean引理已验收；12个具体k的84个
  全尾部系数证书由主线程独立核验。没有证明所有k的有限余段均为空。
- k=5具体genus-2商曲线z²=9t⁶+64t⁵−200t³+64t+144：模11点数17、127，
  Frobenius式T⁴+5T³+15T²+55T+121。依
  [Howe–Zhu Theorem 6](https://arxiv.org/pdf/math/0002205)，其Jacobian绝对简单，
  排除这个商曲线在代数闭包上的椭圆商。没有排除原genus-6曲线其他商/Prym。
  模7有16点、已列20个有理点；由
  [Coleman界的准确陈述，Gajović Theorem 2](https://arxiv.org/pdf/2009.01084)
  得Jacobian秩≥2。只是否证普通rank<genus Chabauty捷径，不是完整有理点分类。
- 旧k5 CF文件的逼近常数与覆盖桥已补纸面证明。b≤10^50、104个CF项、653个
  分数、40个survivor、56个scale算术均复核；
  [Fatou–Grace Theorem 5.12](https://arxiv.org/html/2312.13988v1#S5.SS2)
  需平移α−1后应用。仍是有限分母范围，未形式化该CF覆盖定理。
- 旧parity_families文件缺失的2-adic唯一最低赋值论证已补齐。它只给两个无限
  k族的各自最终尾部排除，不能声称整个无限族已经无解。

**独立验收及本轮协作。**

主线程完成TargetBridge、PrimeSupport、GapBounds、完整k=12原题特例；
独立重算12个even fixtures、F7/F11/F121点数、有理点、有限gap原式与全部
160变号证书，并报告Math/Tests/Examples及固定库构建通过。这些文件归主线程，
本线程未修改。平台题面对齐与环境入口也由主线程负责。

自约07:22主线程验收版本之后需复核的Lean变化仅为新增GapDivisibility，
以及SmallGapCertificates最后两个公理guard；后者数学证明体未改。
另新增round3-gap-effective-bound-2026-09-07.json和
round3-prime-support-obstruction-2026-09-07.json及对应可复现脚本。
07:33 UTC主线程确认新增GapDivisibility已独立编译及guard通过，并用
Eratosthenes筛独立核对B(h)、用math.comb核对诊断非解；完整8个Lean文件、
5个独立算术审计的最终入口记录由主线程统一生成。

**明确失败实例与下一最小子目标。**

(k,n,m)=(5,182,241)满足所有现有范围界、h≥8及外块素因子≤d+k−1，
且位于实根相邻整数181,182之一，但原式差值−1878853680，明确不是解。
第一个缺项188的整除余数84，恰被新同余拒绝。
这已否证仅凭范围/素因子支持推出无解的想法；见指定诊断脚本/JSON。

全局缺口是在h≥8尤其h≥2k区域，控制原等式的整性或所有缺项同余的
同时可解性。扩大有限h、偶k证书或CF分母都不能填补该缺口。
下轮最高价值的具体入口是k=5的完整整点问题：先检查原genus-6曲线
Jacobian的4维Prym是否存在可用低维因子；本轮的绝对简单性结论只涉及
genus-2商，未覆盖这个Prym。若该入口也失败，再评估完整整点/Mordell–Weil
筛的可终止路径，不能把未知秩当作rank=2或把大分母无命中当作分类。

研究、Lean验收、文献依赖及平台提交状态均保持分离；未作新颖性声明。
逐步证明、实际失败、命令及覆盖范围详见exploration.md。

本线程最终公理guard核验全部通过，记录截至实际07:33 UTC。
