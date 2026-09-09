# Sampling 三个条件消费者的独立审查

日期：2026-09-08。审查者：`/root/b686_centered`，未参与本次两份 sampling 源码的实现。
主线程指定只读数学源码、核对既有 fresh 证据，仅写本报告；本次未重编译、
未修改共享源码、未新增测试或公理。

结论：指定范围内未发现实质性数学错误、量词收窄、隐藏前提或验收哈希失配。
三个最终消费者均是明确携带 `FixedTestSamplingEstimate` 的条件定理。
本审查不证明 MRSTT，不把论文到该采样估计的接口标为已关闭。

## 实际审查范围

完整阅读本批 `lean/sampling/HeightAssembly.lean` 和
`lean/sampling/HeightCorollaries.lean`，包括内部长度有界引理。
为核对接口，完整阅读旧批 `20260908-reflected-sum-9bad0b9/main/`
中的 `OriginalDiscrepancy.lean`、`SmoothTestFunction.lean`、
`PhaseInterface.lean`，并检查 `PrimeSynchronization.lean` 的原题乘积定义、
`WeightedGeometry.lean` 的积分换元和下界消费者。
另外对照旧纸面报告 `prime-synchronization-theorem.md` 的统一阈值和量词段。
未对旧闭包中全部几何基础引理重新作独立数学审查。

## 假设与下界衔接

`FixedTestSamplingEstimate δ` 的准确量词顺序是

```text
∃ C ≥ 0, ∃ K₀, ∀ k n m : ℕ,
  K₀ ≤ k → 2 ≤ k →
  n ≤ exp((log(2k))^(3/2−δ)) →
  m ≤ exp((log(2k))^(3/2−δ)) →
  samplingDiscrepancy k n m ≤ C·(2k)/(log(2k))².
```

这里 C 和 K₀ 在所有 k,n,m 之前选择；它们可依赖 δ，不能依赖候选三元组。
谓词只定义了分析误差上界，没有假定目标高度结论，也没有偷偷把上界限于
满足原方程的三元组。它尚无证明，实际消费者以 `hE` 明确接收该命题。
固定测试函数的具体 C³ 范数、一般实相位采样定理及其到这里的实例化仍是
外部形式化义务；本审查不判断这些未完成义务已由定义自动满足。

上下界使用同一个 `B686Round9.samplingDiscrepancy`：固定函数
`mismatchTest(u,v)` 在素数区间 `[2k,4k]` 上的采样和，与
`∫[2k,4k] mismatchTest(n/t,m/t)/log(t)` 的差的绝对值。
`mismatchTest` 由明确常数的两个周期光滑截断构造，不含 k,n,m 参数。
乘积 `blockProduct k n` 准确为 `∏ i ∈ Icc 1 k, (n+i)`。

旧结果 `original_sampling_discrepancy_lower` 的假设仅为 k≥802、
n+k≤m 和原题倍率 4 方程；没有采样估计或函数存在性假设。
其 `k/(160 log(4k))` 下界经过 `log(4k)≤2 log(2k)` 正确放宽为
`k/(320 log(2k))`。两分母均已证明为正，不存在除法换向或零分母遗漏。

## 三个最终消费者

| 声明 | 已核对的实际范围和量词 |
|---|---|
| `height_bound_of_fixed_test_estimate` | 每个实数 0<δ<1/2，给定该 δ 的 `hE`，存在统一 K，使所有自然数 k,n,m 在 k≥2、k≥K、n+k≤m 和原方程下满足 `(log(2k))^(3/2−δ) < log(m)`。 |
| `polynomial_height_solutions_finite` | 给定 `FixedTestSamplingEstimate (1/4)`，对每个实数 C>0，全部满足 k≥2、n+k≤m、原方程和 m≤k^C 的自然数三元组集合有限。 |
| `inverse_height_of_fixed_test_estimates` | 给定每个 0<δ<1/2 的估计组成的族，对每个实数 η>0，存在统一 K，使所有原题三元组在 k≥K 时满足 `k < exp((log m)^(2/3+η))`。 |

这些声明没有增加偶数、四整除、上界区间或测试函数构造前提。
自然数 n=0 没有被声明额外排除；证明所需 m>0 来自 k≥2 与 n+k≤m。

高度结论的证明取 K 同时覆盖 802、采样阈值 K₀ 和
`exp(640C+1)` 的自然数上界，因而 `log(2k)>640C`，选择过程不涉及 n,m。
否定严格高度结论得到 m≤heightCutoff；由 n≤m 得到 n 的相同高度条件。
合并上下界后只会得到 `log(2k)≤640C`，矛盾。高度阈值取等号的情形
也包含在此反证中。

多项式推论先通过 δ=1/4 的高度结论证明长度 k 有界。
取 `M=max(C,1)+1`，使 `M>C`；`log(2k)≥M⁴` 后，
`(log(2k))^(1/4)≥M>C`，与 `log(m)≤C log(k)≤C log(2k)` 冲突。
接着取自然数上界覆盖 K^C，同时控制 m 和 n≤m，嵌入
`Iic K × (Iic M × Iic M)`，实际得到了全部三元组有限，
而非只证明可能的长度有限。C>0 保证 k^C 对 k 的单调性。
量词是 `∀ C>0, ∃ K(C)`；没有声称一个 K 同时适用于所有 C。

逆高度推论选择 `δ=min(1/4,η/4)`，因 η>0 保证 0<δ<1/2，
并证明 `(3/2−δ)(2/3+η)≥1`。再把阈值提高到使 `log(2k)≥1`，
即可对原严格高度不等式取正指数 `2/3+η`，并比较幂次。
所有涉及实数幂的非负底数和正指数条件都有局部证明；无需增加
`log m≥1` 作为外部假设。所得 K 可依赖 η 及所选 δ 的估计，
仍在所有 k,n,m 之前选择。

## 既有 fresh 证据与当前字节核对

检查 `verification/sampling/20260908T105855Z/evidence.json`，其 SHA256 为
`12b00786c7ca1e88be224e2a1382e222546f10fd1c4ec276da8071c463c8bc9d`。
该记录的 `success=true`、`exit_code=0`、`build.fresh=true`，17 个项目
源码编译记录均为 exit 0。记录中的搜索路径是该次新对象根，固定依赖包
对象由缓存链接提供，没有声称全部第三方包也从源码重编。

本次用 Python `hashlib.sha256` 实际重读17份当前源码，逐一比较
`source_closure.source_sha256` 及各编译记录的编译前后哈希：全部相等。
还重读17份编译日志及 source-policy 日志，全部匹配所记 SHA256；
9个记录的 manifest pin 与当前 manifest 一致，记录的 toolchain 与
当前 `lean-toolchain` 一致。源码检查没有产生任何新 Lean 对象。

| 关键源码 | 当前 SHA256，与 fresh 记录一致 |
|---|---|
| `HeightAssembly.lean` | `5fb3640ad603fff09741c840f8d460b7bfe3ce385e85ea9d3fd951b38df4ea48` |
| `HeightCorollaries.lean` | `56a06f0ae6e797efa473bf0c5329298aea236dba3e3985a2f56dc5c95d8afd47` |
| `OriginalDiscrepancy.lean` | `624a3db443466f515093ef56248cd3d25da33e45f7bb02ef0d004a7cf59620db` |

完整17份清单沿用上述 evidence.json，本次核对没有修改原证据。
版本为 Lean 4.33.1，commit `819816b2e0a3bf405af45ae5c7af2491d8f5bee6`；
当前 manifest SHA256 为
`fdbefe6c9b737713c8b9c602643afa154f49dda4f48bfc4d2f64183fdea728a0`。

两个最终根包含 1+2 个 `#guard_msgs in #print axioms`，分别覆盖上述三个
最终消费者，期望列表均且仅为 `[propext, Classical.choice, Quot.sound]`。
这些 guard 的源码哈希匹配且所在编译 exit 0，故既有记录确实约束了
传递公理消息，而非仅有不检查输出的打印。源闭包 policy 亦通过。
本次没有重跑 guard、没有执行新的故意失败用例，也没有运行外部独立内核。
标准三公理审计证明的是这些条件定理没有引入额外公理；它不消除声明
中显式的 `hE`。

可以接受本批的下游条件组装与两个条件推论。剩余分析接口状态保持
未完成；本审查没有得到无条件高度定理或完整 B686 结论。
