# 旧零边界 log2/log3/log5 区间候选

本包只提供三个旧对数盒的 Lean 候选及精确来源对照，不接55对距离数据、不证明三个B699原题指标。Owner `/root/critical_finite_audit`，开始2026-09-12 10:23:27 UTC，20分钟检查点10:43:27 UTC，无总时限；所有产物只在本目录。未运行Lean，旧审计、旧证书和共享/排队源保持不变。

## 稳定接口与原端点

命名空间 `Math.B699.ZeroBoundaryLogBoxes`。建议集成到当前run的 `lean/ZeroBoundaryLogBoxes`，只映射本包内部导入前缀，不改变数学定义或其他来源。

共享接口是 `logLower (a : Nat) : Rat`、`logUpper (a : Nat) : Rat`，不是三pilot专用LUT。定义对全部自然数稳定，数学应用限定正整数；本次精确对照a=1..64，Lean候选仅覆盖a=2、3、5。后继添加其他输入的证明无需修改既有端点定义。

设

`S_m(z)=Σ(k=0..m−1) z^(2k+1)/(2k+1)`，

`smallLower(z)=2S96(z)`，

`smallUpper(z)=2S96(z)+2z^193/[193(1−z²)]`。

对于a>0，`k=Nat.log2 a`，`P=2^k`，`z=(a−P)/(a+P)`。定义

`logLower(a)=k·smallLower(1/3)+smallLower(z)`，

`logUpper(a)=k·smallUpper(1/3)+smallUpper(z)`。

这与旧checker的逐次乘2找P、分别包围log2和log(a/P)的公式完全相同；没有把旧96项上界换成较宽区间。原输入为旧run零边界 `check_log_certificate.py`，SHA256 `25374AD229541F0968C26F64ECBEA21684DADFB6D4E49E29D2500FBA51C5DFFE`；所消费旧证书SHA256为 `F51D4E1EF908527837BBB9A7620A039C0B264CF9EC2BE66D20618B7E445B4932`，terms=96、M0=2^53。两个文件仅读，不修改。

`exact-endpoints.json` 保存全部64对既约分数的分子、分母、k、P和z，不截断十进制。独立的递推累加实现逐项与原checker的 `log_interval(a,96)` 相等；共128个端点。该调用没有启动旧完整 `check` 或任何CF生成。

## 解析桥与二倍因子

固定mathlib版本为 `0df444a360eaa60ab8c11dca51a86af692955474`。实际已存在 `Mathlib.Analysis.SpecialFunctions.Log.Deriv` 的源码和olean。采用其两个原API：

- `Real.sum_range_le_log_div`：`S_m(z)≤(1/2)log((1+z)/(1−z))`；
- `Real.log_div_le_sum_range_add`：`(1/2)log((1+z)/(1−z))≤S_m(z)+z^(2m+1)/(1−z²)`。

条件是实数0≤z<1。`finite_series_bounds` 先通过 `Rat.cast_sum/div/pow/natCast` 将有限有理和送入实数；再显式将两条不等式都乘2。得到

`2S_m(z)≤log(realRatio z)≤2S_m(z)+2z^(2m+1)/(1−z²)`，

其中 `realRatio z=(1+(z:Real))/(1−(z:Real))`。每次乘2用正数乘法单调性，等式整理只用ring，不把半对数误当作完整log。

`old_box_of_finite_comparison` 的下界用m=96；上界用m=102及明确的有限有理前提

`coarseUpper 102 z≤smallUpper z`。

只核四个z：0、1/3、1/5、1/9。它们全部精确通过，最大闭分数925位二进制；`Finite.lean` 使用 `decide +kernel` 候选证明这些有理比较，不计算实数log。m=100不足的诊断在原冻结审计中保留，本包不重写它。无需新建精细atanh尾界或使用无限级数求和工具。

## 缩放与全部侧条件

三个原参数是：

| a | k | P | z | t=(1+z)/(1−z) | a=2^k t |
|---|---:|---:|---|---|---|
|2|1|2|0|1|2=2·1|
|3|1|2|1/5|3/2|3=2·3/2|
|5|2|4|1/9|5/4|5=4·5/4|

`Finite.lean` 给三个实际Nat.log2/缩放/归一化的闭值等式，`Pilots.lean` 再给三个实数规范化等式。它们不留下假定的log值。

对四个z都有0≤z<1，因此1+z>0、1−z>0、1−z²>0；具体有理参数在精确对照中全部检查。`realRatio_pos` 显式证明正分子和正分母的商为正。mathlib有限上下界从0≤z<1提供尾界分母侧条件；Rat到Real的除法同态不需要新增除法公理。

`scaled_log_box` 使用 `Real.log_mul` 时显式提供 `2^k≠0` 与 `realRatio z≠0`，随后使用 `Real.log_pow` 得 `log a=k log2+log(realRatio z)`。由于k是自然数，k≥0，两个盒可以分别正倍相加。它的所有可变数学前提是有限比较、0≤z<1与规范化等式，均由三个pilot消除。

最终三个声明没有任何参数或假设：

```lean
theorem log_two_bounds :
  (logLower 2 : Real) ≤ Real.log 2 ∧ Real.log 2 ≤ (logUpper 2 : Real)
theorem log_three_bounds :
  (logLower 3 : Real) ≤ Real.log 3 ∧ Real.log 3 ≤ (logUpper 3 : Real)
theorem log_five_bounds :
  (logLower 5 : Real) ≤ Real.log 5 ∧ Real.log 5 ≤ (logUpper 5 : Real)
```

这里展示的是已写出的候选接口；本子任务未编译它们，不报告Lean接受。

## 文件、审计和验收顺序

实现模块：

- `Definitions.lean`：9个稳定有理端点/缩放定义；
- `Finite.lean`：4个m102比较和3组闭归一化值；
- `Bridge.lean`：realRatio定义与6条通用桥；
- `Pilots.lean`：3条实数规范化等式、3个无假设log盒。

共29个公开根，其中10个定义、19个定理。`TypedAudit.lean` 有29个完整类型检查，统一 `Audit.lean` 对全部29根 `#print axioms`；各层另有独立Audit，方便主任务逐层排查。公理白名单仅propext、Classical.choice、Quot.sound。日志解析器实际拒绝缺根、重复根、sorryAx、自定义公理、error日志五种负控。

直接数学库导入有7项，对应olean均实际存在：Rat.BigOperators、Nat.Log、Log.Deriv、Rat.Cast.Order、Linarith、NormNum、Ring。每项源SHA、olean路径/大小与候选目标映射保存在 `SOURCE_MAP.json`。未调用Lake，不下载或补建缓存。

建议主任务串行先验 `DefinitionsAudit`、`BridgeAudit`，随后 `FiniteAudit`，最后 `PilotsAudit`、`TypedAudit` 和统一 `Audit`。有限比较计算的是至多925位的有理数；其实际Lean内核费用尚未测量。`Finite.lean` 的递归/heartbeat上限是候选设置，不是通过证据。

`prepare_candidate.py` 只用标准库、只写本目录；`--freeze` 绑定本包完整文件SHA。冻结后默认调用只读核对，不改任何产物；`--log <Audit日志>` 只检验完整29根及白名单，不代替编译。初次静态/精确打包测得约0.47秒，退出码0；具体最终运行时和脚本SHA在 `exact-checks.json`。

## 实际前沿与交接

完成了可集成源码文本、原端点精确对照、有限比较诊断、typed/axiom入口和来源记录。未做任何Lean调用；29根均保持“候选未编译”。没有修改旧96项证书或旧审计，没有接Matveev/PNT、没有构造完整55对表或距离分支、没有增加原题完整指标。

下一项是主任务对本包的真实串行内核验收。若有API/表达式或资源问题，应保留本冻结候选，在主任务允许的新修订中处理；不要回写旧证书端点来迎合较宽估计。
