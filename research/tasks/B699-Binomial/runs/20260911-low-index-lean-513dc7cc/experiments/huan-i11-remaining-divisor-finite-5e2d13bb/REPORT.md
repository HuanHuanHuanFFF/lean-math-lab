# 剩余两组实际 G 下界候选

已生成共同归一化工具及两组完整 Actual/Certificates/Bounds/Threshold/Audit，目标分别为全δ0/1、全m>=160和全m>=149的真实 qContent 指数下界。没有把实际 G、阶乘 step 或目标下界留作最终前提；没有修改原固定 Lt/Lm 或门槛。

所有新源码仍未编译，前置 Adjacent 仍按上一包冻结候选记账。本任务没有运行 Lean/Git/下载，也没有修改上一包或集成源码。起点2026-09-11 20:16:35 UTC，共享检查点20:36:35 UTC，是检查点而非总截止。

| 实际边 / 参数 | Lt | Lm | D0(1) | K,loss,block | m0 |
|---|---|---|---|---|---:|
| (3,2), c23d15 | 41069/31250 | 132309/100000 | 204/35 | 30,12,10 | 160 |
| (5,7), c11d7 | 1303943/1000000 | 661613/500000 | 4/3 | 29,11,10 | 149 |

精确声明及每组源 SHA 在 ThreeTwo/REPORT.md 和 FiveSeven/REPORT.md。两组主根分别是 `Math.B699.I11DivisorThreeTwo.qContent_lower` 与 `Math.B699.I11DivisorFiveSeven.qContent_lower`；同 namespace 还给出实际 bftContent_lower。每个目标只有 delta 属于0/1与 m 达固定门槛的输入。

## 共用的归一化/固定阈值证明

Common.lean 对正有理序列F，正目标倍率rate，粗倍率inf和中段倍率mid证明可复用工具。若实际粗步为 `F(k+1)>=F(k)*inf*((k+1)/(k+2))^2`，rate<=inf，则 A(k)=F(k)/rate^k 满足去掉倍率后的粗步。由k=1望远镜到K：

`A(K)>=F(1)/rate*4/(K+1)^2`。

若这个有限右端乘2^loss至少1，且K后实际中段步成立，那么 A(K+n)>=A(K)*(mid/rate)^n。`1<=mid/rate` 和 `2<=1+B*(mid/rate-1)` 通过已验 ElementaryRate 的 Bernoulli 块界，给出 n>=B*(loss+1) 时 A(K+n)>=2>1。所有分母都有显示正性。

这个通用工具保留有意义的实际步前提，而两个具体 Threshold 文件逐项用真实 factorial recurrence、原正系数多项式身份和固定有限有理计算供给，因此没有把消费者当成对实际下界的证明。`rate=Lt^d` 的幂等式最后精确转成 Lt^(dm)。

相邻δ只调用先前 `rationalDivisor_adjacent_odd_even` 和 `_ge`：u>=1时 D(u-1,2r+2)=(u/2)D(u,2r+1)，比较需要u>=2。这里u=dm>=2，r=(c-d)m/2-1>=0；两组都覆盖所有m>=1。G的链为 G1>=D1>=D0，并不要求实际两行G单调。保留反例 u2,r0：D0=D1=1，但G0=3,G1=1。

## 实际来源与有限检查

冻结 FINAL_PLAN SHA 为 `7ab80d1357ef87aafa1ead6fbdef0b4dadf851c09c77185c27a7f03fa4b5ab62`；采用 rows[2],rows[4]。独立匹配 other-edge-reuse/reuse-data 的相同行 seed/Lt/Lm/G_m0，并使用 FINAL_PLAN δ0中段证书及 D-rough-step-certificates δ0粗证书。全部读取输入实际字节见 SOURCE_BINDINGS.json。

旧 generator 只通过 AST 读取三个已有数学证明模板，没有导入或执行它，不会写旧目录。所有斜率先替换成互不干扰的标记；独立检查又从新 Lean 源解析 N/T 因子、Horner 多项式以及四段 factorial-add 步长，与真实公式逐项核对。新文件统一LF，SHA取实际文件字节。

独立 check.py 的固定范围结果：

- ThreeTwo：5105个实际 q_h/D 检查，49个原正多项式系数。
- FiveSeven：2231个实际 q_h/D 检查，25个原正多项式系数。
- 合计7336个实际系数、74个完整身份中的正系数，约1.62秒。两组的m0两δ实际G下界、m0+1实际D下界均通过小范围交叉检查。
- 改 rough 系数或把中段位移K改成K-1，完整多项式身份被拒绝。相邻G单调的错误结论有显式反例。
- 无 sorry/admit/自造axiom/native_decide/ofReduceBool；静态检查不代替编译或传递axiom审计。

实际序列/系数测试最大m只到m0+1及其一步；不做无界扫描、完整覆盖或参数优化。记录的数值范围不能据以宣称全 m 证明通过。

## 采用与交付边界

本地基础采用并核对当前完整源码闭包与公开std3审计：rational-divisor-content（20260911T164308982718Z，8根）、elementary-rate（20260911T114251997480Z，5根）、FactorialCommon经factorial-extra-5-4闭包（20260911T075443956395Z）。后者仅采用 common 的阶乘展开API，不采用c5d4特殊常数。

前置 Adjacent 精确字节SHA：`955a2c080be0e7df880c15fae829c908cac19797872c5e27880a61945fbe3f2b`。当前实验引用上一冻结源，未来对应 `lean/I11DivisorSevenTwo/Adjacent.lean`；Common未来建议为 `lean/I11DivisorRemaining/Common.lean`。其余模块/入口的独立映射在 INTEGRATION_MAP.json。没有写入这些未来目标。

共有Common五个公开根和两组各37根，总79个；每组可单独用自身Audit验收，总Audit也能覆盖全部。逐条名字和实际源行见 DECLARATIONS.json。剩余直接依赖是前置 Adjacent、Common及两组新增源码的真实串行 Lean 验收。没有新数学数据前提，但未验代码不能当已验库。

若候选全部通过，它们将补齐这两条实际边的 elementary G 输入；仍不等于实际边、完整五边初始高度或CRT终端消费者已完成。此轮候选与有限测试没有新增B原题验收，B仍0/19，不提出新颖性结论。
