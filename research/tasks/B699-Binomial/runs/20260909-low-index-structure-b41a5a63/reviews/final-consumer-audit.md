# 最终消费者源码逻辑复核

记录时间：2026-09-09 09:10:16 UTC。审查开始于 2026-09-09 09:01:35 UTC，要求在 09:25 UTC 前交付；共同研究原截止仍为 10:59:09 UTC，没有延期。

**结论：当前源码连接没有发现逻辑阻断。最终定理声明准确覆盖 i=29 或 35≤i≤184 的全部自然数 n,j，只要求 i<j≤n/2；结论保留素数阈值 p≥i。初审中的四类 Lean 接口缺口，在当前源码中均已有证明实现和有限证书消费者。**

本结论是源码逻辑复核，**不是本角色宣称已经完成内核编译**。本角色没有运行 Lean、Python 数学复算或大规模计算。8 份有限数据的每条素数/整数证书是否已实际完成内核归约，应以主线程对本报告所列源码哈希执行的完整新闭包编译及实际传递公理审计为准。源码中的 `by decide` 是待执行或已由其他角色执行的证明程序，不能由“审读过源码”代替其成功运行记录。

## 审查身份、来源与精确目标

审查者为本任务树的 `independent_math_review`。必须保留来源边界：本角色先前写过 `LargeSmallPowers.lean`、`SmallPowerIntervals.lean`、`PrimePowerEnumeration.lean`，所以本次属于对最终装配的新源码逻辑复核，不能包装成对这三个模块的 fresh 作者独立审查。此前纸面独立审查及其快照保持冻结，本报告不修改其身份或结论。对新的最终连接，审查者逐项从实际声明和证明体重建了下述推理，没有将主线程编译成功的口头通知作为数学前提。

主线程提供的源基线为 main `7fd3928656489afe2c80698f0a09d1d933444186`，当前分支提交标识为 `c323aa9b4bc45843cf271c311b062947b3042518`。本次读的是实际工作树，包含主线程说明已经修正的 `FiniteCover.lean`；以末尾文件哈希锁定审读对象，不能把工作树修正冒充该提交中已经存在的内容。本角色未修改任何数学模块、数据、Git 或其他审查记录，只写本文件，也没有派生角色。

[最终声明](../lean/LowIndexComplete.lean)是：

```lean
theorem common_of_low_index_finite_cover {n i j : ℕ}
    (hiIndex : i = 29 ∨ 35 ≤ i ∧ i ≤ 184)
    (hij : i < j) (hjn : j ≤ n / 2) :
    ∃ p : ℕ, p.Prime ∧ i ≤ p ∧
      p ∣ Nat.gcd (n.choose i) (n.choose j)
```

自然数除法 n/2 就是下取整；gcd 整除与同时整除两项等价。指标限制本身蕴含 1≤i。没有额外有限 n/j 上界，也没有把 noCommon、枚举完整性或论文结论留在最终定理的假设中。该声明不是完整 B699：其他指标仍属别的研究范围。

## 连接审查

### 1. 完整大素数部分、p=i 与统一大小

[ThreeWindowWeights](../lean/ThreeWindowWeights.lean) 的实际避免部分 D 是无条件对象；`actual_prime_part_three_window_transfer` 仅在 noCommon 分支通过已证明的定义对应把 D 换成实际完整大素数部分 V。`prime_power_three_positions` 显式使用 `Q=p^(e+[p=i])`，再降到完整 p^e，不丢 e，也不删除 p=i。

[ThreeWindowSize](../lean/ThreeWindowSize.lean) 中 `windowConstant` 含完整阶乘乘积，`windowDegree` 为三个窗口次数之和。child 与 mother 的缩放上界分别保留其阶乘；`four_mul_product_le_square` 给 4jk≤(j+k)²，故 `three_window_scaled_upper` 的因子 2^(2*windowSum s) 及指数正确。noCommon 下先由整除与 Z>0 得 V^λ≤Z，再得到 K V^λ≤n^E。此界已经消去全部 j，末端每个 (i,n) 的严格比较可以排除所有合法 j。

这里没有假设 D=V 对任意输入成立，也没有用根基或平方自由部分替换完整 V。

### 2. 高度尾部不是有限扫描外推

[HeightCertificate](../lean/HeightCertificate.lean) 的 `noCommon_scaled_choose` 从真实 U·V=C(n,i)、U≤n^t 和上一项完整 V 界得 K C(n,i)^λ≤n^heightExponent。

`common_of_height_certificate` 先从 N 处完整下降阶乘的严格整数证书推出 K C(N,i)^λ>N^heightExponent；再采用已有且有证明体的 `B699Power.choose_ratio_lower_bound`，其真实结论是 n^i C(N,i)≤N^i C(n,i)。`power_cross_mono` 在 heightExponent≤iλ 时给正确方向的交叉幂不等式。最后只消去 n 的正幂；n>0 来自原题合法域。

[RegisteredHeights](../lean/RegisteredHeights.lean) 的 `HeightRowValid` 实际核验 i≥2、r<i、0<s<i、λ>0、i≤N、degree 界及严格 CERT。N 是 [HeightCertificateData](../lean/HeightCertificateData.lean) 中 `10^n0Power10`，不是浮点实数。注册表的各行真值证明及总表对应均写成普通 `decide` 或已经有证明的行定理装配，`common_of_registered_height` 把这些真值转换成所需命题。

虽然比值引理所在路径含 `eees-chain`，这里采用的是已写出的初等自然数归纳证明，不是 EEES 参数、旧论文的新公理或未交付的判别式接口。由此处理的是所有 n≥N。

### 3. M-CERT 给真实 U 下界，并强迫两个不同素数

[CofactorCover](../lean/CofactorCover.lean) 的 Bernoulli 桥使用完全离散的下降积误差不等式。n≥i(i−1) 时通过正 n 消去得到 n^i≤2(n)_i，factorial 与 2 的幂均保留。

`noCommon_small_part_lower_of_certificate` 的参数 d 不被当作任意“有利指数”。在最终层消费者中，注册高度的 degree 界保证

`iλ = heightExponent + (iλ−heightExponent)`。

因此自然数减法没有截掉负差后伪造恒等式。层 M-CERT 的指数为 λ(t−1)，由 H≤n 升到 n 处后，使用 K>0、n>0、λ>0 精确消去公共因子和幂，所得结论正是

`n^t ≤ M^(t−1) * smallPrimePart n i`。

[LargeSmallPowers](../lean/LargeSmallPowers.lean) 将真实 smallPrimePart 扩写成全部 p<i 的素数乘积，缺失项确实补 p^0=1。至多一个大因子的严格乘积反证允许零因子，未暗加 f>0 假设。最终的两素数结论是 p≠q，而非同一素数的两个指数。

### 4. 完整幂位置到可计算枚举没有代理前提

[SmallPrimeLocalization](../lean/SmallPrimeLocalization.lean) 采用旧 B686 中已给证明的最大赋值删除界；母窗口转换为 n−i+1,…,n 后，阶乘赋值相减留下完整 `v_p C(n,i)+v_p(i)`。该引理接受任意素数，包括 p=i。

[SmallPowerIntervals](../lean/SmallPowerIntervals.lean) 的通用余因子引理从正母窗口排除 A=0，用 p^e>0 精确消去，给

`n=A*p^(e+v_p(i))+a`，`a<i`，`A≥1`，`A*p^v_p(i)≤M`。

M<n 与 n≤M*p^e 确保实际 e>0。进入小素数集合时才要求 p<i；这不影响另一条大素数部分链中的 p=i。

[PrimePowerEnumeration](../lean/PrimePowerEnumeration.lean) 的列表只在 p<i、raw exponent≤log_p upper 和有限余因子范围上循环。`power_interval_list_complete` 由 A≥1 和实际表示推出 Q≤n<upper，再证明指数、amin、amax 与 `List.range'` 的成员关系。lower=max lo(AQ)、upper=min(layer.upper−1)(AQ+i−1) 确实夹住 n。

放松的 amin=max 1((lo−i)/Q) 至多增添一个本应为空的片段；它不会漏掉实际位置。最终 `activePowerIntervalList` 删除 lower>upper 的条目，而真实含 n 的 I、J 都有 lower≤n≤upper，因此通过已写出的成员证明保留下来。

### 5. 区间 checker 的真值确实蕴含覆盖

[IntervalCover](../lean/IntervalCover.lean) 的 `coverCheck_sound` 对列表归纳，检查跳过已在左边的区间、遇到缺口失败、覆盖到底成功或从 b+1 接续。它的声音性不依赖一条隐藏的“列表已经排序”假设：错误排序可能使 checker 拒绝，但不会令其接受未覆盖 n。空目标区间 hi<lo 虽返回 true，却不可能同时满足 lo≤n≤hi。

`pairCoverCheck` 遍历两个列表成员；同色可以跳过，异色必须检查交集 `[max lower, min upper]`。`pairCoverCheck_sound` 使用实际获得的 I、J 及颜色不等，返回某个 good bounds 成员包含 n。不存在把“所有区间的并”错当成“至少两种颜色的交”的连接。

### 6. 好区间的两个证人都返回原题

[LargeDivisorWitness](../lean/LargeDivisorWitness.lean) 的 topPrime 检查要求 p 为素数且 `p≤segment.lower≤segment.upper<p+i`。对其中的合法 n，这给 n−i<p≤n，旧 `common_of_top_prime` 对全部合法 j 适用。无需额外信任筛法或 JSON 的“素数”标签。

largeDivisor 检查严格限制为单点，并验证 D>0、D 与 (i−1)! 互素、i!*D 整除 (n)_i、以及 n^E<KD^λ。由 factorial 正值先消去 i! 得 D∣C(n,i)。与 (i−1)! 互素意味着 D 的素因子全部≥i；`large_divisor_dvd_prime_part` 真正证明 D∣V，继而 D≤V，足以把严格比较转到 V。

这里的 D 是一项显式行除数见证，不需要等于 V，也不需要等于前述实际避免部分 D。源码没有在不同含义之间作未经证明的替换。使用 (i−1)! 而非 i!，准确保留了 p=i。

### 7. 所有 n 的三分与层 upper 开端点

[FiniteCover](../lean/FiniteCover.lean) 的 `finiteCoverRowCheck` 逐项检查：高度记录确在注册表、全部 good 证人、低段覆盖、中间层覆盖、每层算术与异色交集覆盖。

`CoverLayer.bounds=(lower,upper−1)` 对应原半开层 `[lower,upper)`。层算术显式要求 lower<upper，因而从 n≤upper−1 转成 n<upper 不会遇到 upper=0 的自然数截断漏洞。每层还要求 M<lower、i(i−1)≤lower、i≤lower；它们准确提供 Bernoulli、正指数及枚举前提。层可以重叠，也不必由证明假设“恰好二进制”；computed coverCheck 的声音性足以保证无洞。

`common_of_finite_cover_row_checked` 的分支为：

1. n≥n0：调用已注册的无界高度定理。
2. n<n0 且 n<i(i−1)：由 i<j≤n/2 得 n≥2i+2，调用完整低段 `[2i+2,i(i−1)−1]` 的 good 覆盖。
3. 其余 n：位于 `[i(i−1),n0−1]`，通过层覆盖获得一个实际层，再由该层的 M-CERT、实际双色成员、pair checker 与 good 证人反驳 noCommon。

两个连接端点 n=i(i−1) 与 n=n0 分别由中间层和尾部分支包含；不存在漏掉某个合法小 n 或枚举上端的步骤。

### 8. 151 个指标与最终 i 替换

八个 Coverage 文件都将 `coverRowsXX.all finiteCoverRowCheck=true` 写为普通 `by decide`，随后 [LowIndexComplete](../lean/LowIndexComplete.lean) 通过 `List.all_append` 装配总检查。不是把 Python 的 true 字段直接声明为 Lean 公理。

本角色仅作静态文本提取，确认八份源数据按拼接次序恰有 151 个 height.i：Coverage00 为 29 与 35–52，之后依次为 53–71、72–90、91–109、110–128、129–147、148–166、167–184。与最终明列指标表完全相同。没有重算每个大整数或见证。

最终定理由 `hiIndex` 取得 i 在总表的成员资格，再从 `List.mem_map` 得到某一 row 与 `row.height.i=i`。`subst i` 同时替换域约束与目标里的 i；调用行定理后结论仍为 `i≤p` 和原始两个 choose 的 gcd 整除。没有用另一个指标行证明当前 i，也没有只返回一个代理的 Common 对象而缺少原题消费者。

## 发现与接受界限

- **数学/源码连接阻断：未发现。** 没有待补的结构猜想、代理完备性前提或旧论文新公理进入最后定理。
- **本角色编译证据：无。** 本次未运行 Lean，也未执行 8 个大数据 `decide`。应由主线程确认全部注册高度、Coverage00–07、FiniteCover 修正版及最终 LowIndexComplete 在对应源码哈希上完成新闭包编译，并检查最终定理的实际传递公理。不能仅凭各文件写着 `by decide` 宣布运行接受。
- **独立性边界：已有作者参与。** 本次有价值的是最终连接的逐项逻辑复核及精确范围核对；不能替代另一 fresh 审查者对本角色早前所写三个模块的作者独立检查。

本次静态扫描覆盖以下 22 个本轮文件，未命中 `sorry`、`admit`、`sorryAx`、`native_decide`、显式新增 `axiom`、`debug.skipKernelTC` 或 `implemented_by` 标记。静态扫描不替代传递公理审计。

## 审读快照 SHA256

| 本轮 lean/ 下的路径 | SHA256 |
|---|---|
| [ThreeWindowWeights.lean](../lean/ThreeWindowWeights.lean) | `17ee0024b94bcb5e1ba0b05f5a0a4229dd8a0e5816c3a83385ba8c45eced6c99` |
| [ThreeWindowSize.lean](../lean/ThreeWindowSize.lean) | `4da6cb312eca31e38fb39bc88ff3bbce771ef0a5bb9c9278d925e36d4002c047` |
| [HeightCertificate.lean](../lean/HeightCertificate.lean) | `256a2e13903b7b2b42e5bea2b32c20e2c5df1af4019b9f05931b117ae462bc4d` |
| [CofactorCover.lean](../lean/CofactorCover.lean) | `2805041e81314db94f7c7d7837f651a2d64b1c41bf231ca628514d2c18d101c3` |
| [LargeSmallPowers.lean](../lean/LargeSmallPowers.lean) | `2ed55e4a8be53589ed8fc82d89cc877c8281a291b34c4c35bfd88e94badf7aa2` |
| [SmallPrimeLocalization.lean](../lean/SmallPrimeLocalization.lean) | `663b2129a3b18e1ad8003be7cfef6792caf8375e986284b228f098921a8b6477` |
| [SmallPowerIntervals.lean](../lean/SmallPowerIntervals.lean) | `4ee5805b0a37e4ce4b370b6f91895312b75917170943a6970799d4fb4f011d02` |
| [PrimePowerEnumeration.lean](../lean/PrimePowerEnumeration.lean) | `00888c3d00cfdb722a48a9ef5b257e172dde26f5cdab9a241025078e0923da6e` |
| [IntervalCover.lean](../lean/IntervalCover.lean) | `eb5b7d8b26101991cf31310739b0319bdc3d2d20f46656f63c48185ef97934b3` |
| [LargeDivisorWitness.lean](../lean/LargeDivisorWitness.lean) | `8123d5ec2a766974bf9cad0753b0261405ef71548cd3dee625fead65ef0c39f0` |
| [FiniteCover.lean](../lean/FiniteCover.lean) | `c5e4a998c58d8c5195fa326d4318915706b64da5c06129ddb47a90766c1e2e8d` |
| [LowIndexComplete.lean](../lean/LowIndexComplete.lean) | `47ed7ce37a9a4e62ac86d45afe7c41cc102cc51004cf566d6d95927930124d69` |
| [RegisteredHeights.lean](../lean/RegisteredHeights.lean) | `9c1c887fa9c6b385ebf356fda79802701068d65111de29aedf82042bbe0f698c` |
| [HeightCertificateData.lean](../lean/HeightCertificateData.lean) | `4028f101e9d3e21bb9a3abbcba49dab686260df2e1f303b253503be6f1dcf27a` |
| [coverage/Coverage00.lean](../lean/coverage/Coverage00.lean) | `9bd4411903f56e1272a71872a27f01d20f5365d157840ec0718d763eb059b1ea` |
| [coverage/Coverage01.lean](../lean/coverage/Coverage01.lean) | `7d89eac5cfddf1c535e4a68c4acd9836206c428bbe2dec9c222d0f9e7e22e9e3` |
| [coverage/Coverage02.lean](../lean/coverage/Coverage02.lean) | `11b8f6c9deb31a8d24e0461615744be1a0b305055d2aa8b058a556ca99e6c35b` |
| [coverage/Coverage03.lean](../lean/coverage/Coverage03.lean) | `171738296262e9c6d5e03e1c8801d8fabfaa8b4d1a37e14a2bd2495e87bed8c2` |
| [coverage/Coverage04.lean](../lean/coverage/Coverage04.lean) | `f33b7964a4af1d4e75bd5a3bafa1979689bc60376f82683aded39a821e108846` |
| [coverage/Coverage05.lean](../lean/coverage/Coverage05.lean) | `a18f599a1375b68b0b5f774306c9611ce55cdad0176787c1624c396f9cd47468` |
| [coverage/Coverage06.lean](../lean/coverage/Coverage06.lean) | `97023898cd9ecc19dd5819bcccc75f5a015e6234d4fcaebee395d7c36c400c6c` |
| [coverage/Coverage07.lean](../lean/coverage/Coverage07.lean) | `2c909f358071e3efbb732d1a782d562926687735e7d4dd8b8b407ed48815a576` |

最后核对状态：上述源码连接复核已经完成。下一项接受动作属于主线程的完整内核运行和实际公理核对；若源码哈希变化，应重审变化涉及的接口，不能自动沿用本报告。