# 第八轮独立分支：方法边界与可复用证书

本分支没有找到倍率4的合法见证，也没有排除新的无界参数区域。成果是两个可复核的方法边界、一个倍率2的对照族，以及对主任务初等素数界的独立纸面审核。不能把辅助命题的Lean通过表述成B686全题的Lean通过。

## 任务与时间

- 唯一所有权：本目录。没有修改旧源、共享库、依赖或入口，没有commit/push/发布。
- 全轮起点/原截止：2026-09-07 18:16:34 / 18:46:34 UTC；分支冻结目标18:40 UTC，无延期。
- 独立输入和首次路线见[first-memo.md](first-memo.md)；首次memo18:20 UTC发给主任务，此前未读历史路线。
- 首次交换后，主任务指出第七轮已有更强gcd/组合数界；实际阅读[第七轮界](../../round7/a/explicit-bound.md)。因此没有继续把同一大素数配对包装成新排除。
- 数学研究、形式化、AI复核、新颖性、发表状态分开；新颖性未作完整检索，无首次性主张。

## 1. 精确局部lcm容量可以达到2k−1次增长

设k≥2，Q=2k−1。对每个素数p≤Q取最小e_p使p^{e_p}>Q，令

    M = ∏_{p≤Q} p^{e_p},    d = k+Mt,    t≥1。

差值区间[d−k+1,d+k−1]恰是Mt+1,...,Mt+Q。对p≤Q及1≤i≤Q，

    v_p(Mt) ≥ e_p > v_p(i),
    v_p(Mt+i) = v_p(i)。

所以该区间乘积的小素数部分恰为Q!。令Δ=binom(Mt+Q,Q)，则Δ没有≤Q的素因子。任何p>Q在长Q区间至多出现一次，因此

    lcm(Mt+1,...,Mt+Q) 的 >Q 部分 = Δ。

这是每个固定k都成立的无限族恒等式；纸面证明完整，尚未Lean化。精确运算脚本[lcm_capacity_exact.py](lcm_capacity_exact.py)对k∈{2,3,5,8,10},t∈{1,2,5}共15组直接计算lcm再去掉小素数，与组合数独立核对，结果均相等；原始结果见[lcm-capacity-exact.json](lcm-capacity-exact.json)。有限计算是该一般证明的诊断，不代替一般证明。

当k固定、t→∞时，该精确容量是d^{2k−1}/Q!的主项。对任何n/d→a>0，下块P_k(n)是a^k d^k的主项，故容量与P_k(n)之比趋于无穷（k≥2）。将第七轮的小素数因子也乘入，只会使大d更宽松。

**准确局限：**这反驳仅凭该局部lcm/rough-part容量表达式在所有d上获得更小次数的统一上界；不反驳加入位置匹配相容性、倍率4、平方类或其他信息的新方法。该d族没有声称满足原方程，也没有声称精确gcd达到这个容量。

主任务在交换后独立核对该推导，并同意作为方法边界保留。

## 2. 具体平方根多项式近似在三次尺度上仍可能误差过大

对偶数k=2r，置x=n+(k+1)/2，

    F_k(x)=∏_{j=1}^r(x²−(j−1/2)²)。

令F_k=x^{2r}∑f_j x^{-2j}，c_0=1，

    c_j = (f_j−∑_{i=1}^{j−1}c_i c_{j−i})/2。

截到j=floor(r/2)得到sqrt(P_k(n))的有理多项式部分A_k(n)。对固定k，R_k(n)=A_k(n)−sqrt(P_k(n))趋于0。若要以数值小于格距的取整来强制A_k(m)=2A_k(n)，必须取得足够小的误差界；这并非自动由n约为k³以上得到。

格距计算不是只取单项式分母。令D清除A_k(0),...,A_k(r)的分母（有限差分保证D A_k对所有整数输入取整数），取

    g=gcd(D A_k(0),...,D A_k(r)),  s_k=g/D。

有限差分说明s_k是全部整数输入值生成的最大有理格距。[sqrt_lattice_diagnostic.py](sqrt_lattice_diagnostic.py)按精确有理数计算k=2..160的偶数，原始表见[sqrt-lattice-diagnostic.json](sqrt-lattice-diagnostic.json)。前置的[sqrt_tail_diagnostic.py](sqrt_tail_diagnostic.py)只看单项式分母，已被实际格距检查改进；其浮点首尾项门槛仅是启发诊断，不能当作严格尾项上界。

为避免依赖浮点首项，进一步生成[sqrt_rounding_exact.py](sqrt_rounding_exact.py)与[sqrt-rounding-exact-certificate.json](sqrt-rounding-exact-certificate.json)。每项直接乘原题全部因子并用有符号整数平方比较验证R_k(k³)/s_k的下取整：

| k | n=k³ | s_k | floor(R_k(n)/s_k) |
|---|---:|---:|---:|
|10|1000|5/256|4|
|14|2744|7/2048|1069|
|20|8000|25/8|1|
|24|13824|2592|0，且R>s_k/3|
|32|32768|49152|2987|
|40|64000|80000|924918018|

另外核验k=64,80,128,160；精确大整数在JSON中。不以这些有限样本断言所有大k的渐近规律。

[SqrtRoundingBoundary.lean](SqrtRoundingBoundary.lean)核验了k=10的完整残差恒等式，以及n=1000时

    0 < A_10(n)−5s,
    (A_10(n)−5s)² < P_10(n) < (A_10(n)−4s)²,
    s=5/256。

因此对应实平方根误差严格在4s与5s之间。Lean检查对象是有理数恒等式与平方比较；实平方根的解释是附带的初等纸面推论。直接实平方根版本因缺少Mathlib.Analysis.Real.Sqrt.olean未编译，诊断保存在[SqrtRoundingBoundary-missing-sqrt-dependency.log](SqrtRoundingBoundary-missing-sqrt-dependency.log)；没有下载依赖。成功版的传递公理为propext、Classical.choice、Quot.sound，没有sorryAx。

这说明“上述A_k在n≥k³已自动达到取整精度”这个辅助猜测是假的。现有d>k²/250000只给三次尺度的n下界，无法直接与这组未经改进的近似拼接来闭合全部k。**不**推出其他Runge方法、其他近似或额外同余约束不可能成功。主任务已告知历史有k10/12/16/20/24的固定长度研究，本分支没有重复主张新的固定k排除。

## 3. 倍率2的Pell对照：系数信息不能被忽略

令(m_0,n_0)=(19,13)，递推

    m'=3m+4n+9,    n'=2m+3n+6。

直接多项式展开得

    P_2(m')−2P_2(n')=P_2(m)−2P_2(n)。

初值P_2(19)=420=2·210=2P_2(13)，故每项倍率均为2。间距d'=m+n+3≥d+3，因此不受上界限制。等价的经典Pell方程是(2m+3)²−2(2n+3)²=−1，递推来自乘以3+2sqrt2。

[PellCapacityBoundary.lean](PellCapacityBoundary.lean)给出递推、逐项倍率2恒等式和d_t≥t+6的证明。最终编译与公理状态见对应log及verify脚本；暂未把gcd渐近结论Lean化。

纸面上由正根渐近m/n→sqrt2，得到n/d→1+sqrt2及gcd(P_2(n),P_2(m))=P_2(n)约为(1+sqrt2)²d²。因此忽略倍率平方性的全体k通用gcd上界不能在k=2处取得固定常数乘d^{2−ε}。这只对系数无关方法给出边界；不能用倍率2的族当作倍率4的见证，也不能据此排除专门处理k≥3的方法。

## 4. 对主任务初等素数界的独立复核

按主任务额外要求，在18:33−18:35 UTC内阅读[初等素数界](../main/elementary-prime-bound.md)。纸面核对通过：周期计数、5个例外素数、floor(t)、θ与Σlog(k/p)分拆、积分端点、k=250000边界、所有严格号均无发现的错误。独立整数计算得到

    max_{0≤r<2310}(77C(r)−16r)=194，在r=113取得；C(2309)=480。
    4(68/25)^11 = 241167.0303755... <250000。
    2·1.387+16/77 = 2.9817922... <2.99。
    104/250000 = 0.000416 <0.001。

log k≤13k/A（A=250000）从log(k/A)≤k/A−1、logA<13及k/A≥1推出。没有将纸面审核当成完整Lean检查；建议后续Lean桥明确π(t)=π(floor t)的类型约定。

## 下次真正有信息增益的检查

1. 保留位置匹配约束而非仅取差值lcm：同一个n必须同时满足被选素数幂的余数条件，且两侧每一项的因子分配相容。先构造会通过lcm容量、却不能形成相容配对的显式族，再决定是否有统一工具。
2. 若继续偶数k，需换近似、增加模条件或证明某个无限k族的格距/残差界；单纯再提高有限尾项实验上限不改变决策。
3. 主任务的轮筛+Chebyshev路线经过这次独立纸面核对，下一项是周期计数与积分的Lean桥，而非更多浮点常数估计。


## 最终验证与检查点

- 最后实际检查点：2026-09-07 18:38:14 UTC；距全轮起点21分40秒，早于分支18:40冻结目标与全轮18:46:34截止，无延期。
- Python 3.14.0、SymPy 1.14.0；Lean pinned `leanprover/lean4:v4.33.1`；mathlib pinned `0df444a360eaa60ab8c11dca51a86af692955474`。
- 最终命令：`pwsh -File research/tasks/B686-Four/round8/independent/verify.ps1`。脚本内部对两文件分别调用现有 `scripts/lake.ps1 env lean <绝对源路径>`，两次exit 0，核对四个定理的精确传递公理集合，记录在[verification.log](verification.log)。没有修改accepted library，未运行全仓verify，也未把它宣称已通过。
- Sqrt两个定理：`propext, Classical.choice, Quot.sound`；Pell倍率关系：`propext`；Pell间距增长：`propext, Quot.sound`。任何未预期的公理或缺失审计都会使本目录verify失败。
- 额外环境/工程失败：Pell初版请求不存在的`Mathlib.Tactic.Omega.olean`，改用Lean自带`Lean.Elab.Tactic.Omega`；初版对已展开恒等式调用omega触发200000-heartbeat `isDefEq`超时，改为明确的`Nat.add_right_cancel`后通过。这些是依赖/API与证明工程障碍，非数学反例。
- 源、数据与验证脚本的SHA256记录见[artifact-hashes.json](artifact-hashes.json)。
- 研究状态：两条方法边界已记录；全题待定。形式化状态：四个辅助定理接受；一般lcm族与素数界审核仍纸面。复核状态：AI主任务交叉核对容量族、独立分支核对素数界，无人类同行评审。新颖性未定，未发表。
