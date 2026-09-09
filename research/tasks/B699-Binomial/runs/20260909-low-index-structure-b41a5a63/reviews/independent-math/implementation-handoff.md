# 新角色：两个完整小素数大幂的 Lean 桥

该文件属于数学初审完成后的新实现委派，不修改或替代已冻结的 `review.md`、审查快照与独立来源身份。实现者现在为作者角色，本新源码不能依靠此前独立审查获得独立代码接受。

Owner: independent_math_review，Astra / Max。委派后首次 clock 为 2026-09-09 07:27:30 UTC，首稿要求约 07:50 前；共同原始总截止仍为 10:59:09 UTC，未延期。独占写入仅本文件与 `../../lean/LargeSmallPowers.lean`。不运行 Lean、重计算、Git，不派生角色；主线程独占编译和其他源码。

## 锁定接口与前沿作用

通用目标：有限自然数集合 S、f:ℕ→ℕ、n>0、M>0、2≤|S|、逐项 f≤n，以及明确整数不等式

`n^|S| ≤ M^(|S|−1) ∏_(p∈S) f(p)`

推出存在两个不同 p,q∈S，分别满足 `n≤M f(p)`、`n≤M f(q)`。这里只处理两个因子，不泛化任意 ell。

实际二项式消费者取 `S=(range i).filter Nat.Prime`、`f(p)=p^((n.choose i).factorization p)`。精确证明该全素数乘积等于已存在的 `smallPrimePart n i`。p=i 不在 S 中。hU 是可以直接由整数运算表达的大小前提，并非重命名待证素数存在结论；主线程正在从三窗口必要条件、Bernoulli 和 M-CERT 推出它。

单独这个模块不消除新的原题未知区；它解除已审 151 指标纸面链中“从 M-CERT 得到至少两种小素数”的形式化依赖。后续任意小素数完整幂定位、区间证书及原题装配由其他拥有者承担。

## 首稿与证明构造

首稿路径：[LargeSmallPowers.lean](../../lean/LargeSmallPowers.lean)，首稿 SHA256 `2ed55e4a8be53589ed8fc82d89cc877c8281a291b34c4c35bfd88e94badf7aa2`，130 行。来源基线 `7fd3928656489afe2c80698f0a09d1d933444186`，只导入旧 `SmallPartBound`；不依赖正在验收的 `ThreeWindowSize`。

1. `nat_prod_lt_pow_of_pointwise_lt`：每个自然数因子 g<n，则 g≤n−1；非空乘积至多 `(n−1)^|S|<n^|S|`。这避免了在严格乘积引理中偷偷增加所有因子为正的假设。
2. `scaled_prod_lt_of_all_but_one_small`：删去 distinguished p，erase 的基数为 |S|−1≥1；将 M 移入剩余每个因子，乘积严格小于 `n^(|S|−1)`，再用 f(p)≤n。
3. `exists_two_large_factors_of_scaled_prod`：若存在一个大因子就以它为 distinguished；否则任取 S 中一个元素。否定两大因子使 erase 上每项都小，和明确乘积前提矛盾。
4. `small_prime_part_eq_prod_small_primes`：用 `Finset.prod_subset` 扩写；新增的每个素数不在实际 factorization 支撑上，故指数为 0，其幂为 1。该等式不需要额外 n/i 假设。
5. `exists_two_large_small_prime_powers`：保留要求的合法域参数，逐项 `Nat.pow_factorization_choose_le hn`，调用通用引理并展开素数集合成员关系。

hM 在通用证明中实际上不需要，源码仍保留请求的正 M 接口（标为 `_hM`）；实际消费者的 hi、hin 也保留请求的合法域形式（标为 `_hi`、`_hin`），没有用额外弱化条件替代 hU。

## 静态核对与当前接受状态

已读取固定共享 mathlib 的 `Finset.prod_le_pow_card`、`Nat.pow_lt_pow_left`、`Finset.mul_prod_erase`、`Finset.card_erase_of_mem`、`Finset.prod_subset`、`Nat.support_factorization` 的真实签名。源码启用 `autoImplicit false`、`relaxedAutoImplicit false`，末尾 5 个实际 `#print axioms`；没有占位证明或新公理。

首稿已发给主线程开发编译。**当前尚未拿到编译结果**；静态接口核对不等于 Lean 通过。收到日志后只修改本模块，验收由主线程另存新闭包证据。下一步：修复编译报错（如有），随后核对实际公理输出及原题消费者声明。
## 第二个实现委派：完整幂到小余因子区间

新的委派后首次 clock 为 2026-09-09 07:40:04 UTC，首稿要求约 08:05 前；共同原始截止不变。主线程已经通知 `LargeSmallPowers.lean` 开发编译 exit 0、5 项实际公理均为标准项，最终接受仍须其 fresh 闭包证据。本实现者未运行该编译。该文件从通知起冻结，不再修改。

新增独占：[SmallPowerIntervals.lean](../../lean/SmallPowerIntervals.lean)。首稿 109 行，SHA256 `4ee5805b0a37e4ce4b370b6f91895312b75917170943a6970799d4fb4f011d02`。依赖前一冻结模块与另一作者的 `SmallPrimeLocalization.lean`；后者实际接口 `binomial_prime_power_localization` 给任意素数的完整指数 `v_p C(n,i)+v_p(i)` 在正母窗口项中的整除。其 transitive 旧 `#guard_msgs` 引起的验收计数问题由主线程处理，不作为本实现的数学假设或修复范围。

已写接口：

- `exists_small_cofactor_of_localized_power`：n≥i≥1、a<i、p>0，完整幂 Q 整除 n−a，且 n≤M*p^e，推出 n=AQ+a、A≥1、A*p^v_p(i)≤M。由整除取 A，正母窗口排除 A=0，再按 p^e>0 精确消去。generic 不排除 p=i，也不要求 e>0。
- `exists_small_cofactor_div_of_localized_power`：同一结果的准确自然数商界 `A≤M/(p^v_p(i))`。
- `interval_power_le_of_representation` 与 `interval_power_lt_upper_of_representation`：给后续全幂枚举 Q≤n 与 n<upper⇒Q<upper。
- `binomial_power_interval_of_large_power`：M<n 使实际 binomial 指数 e>0；调用另一角色的完整定位和本模块 cofactor 桥。该单素数消费者仍包含 p=i。
- `exists_two_small_prime_power_intervals`：用实际 U 的显式整数下界得到两个不同 p,q<i；两边分别保留完整实际 e>0、偏移 a<i、余因子 A≥1、`A*p^v_p(i)≤M` 和精确 n 表示。

本模块没有实现层划分、对数枚举、区间 checker、Bernoulli 或 M-CERT 推导；这些由主线程及后续证书消费者负责。它解除的依赖是“已获两个大完整小素数幂 ⇒ 两种颜色的短区间表示”，仍不单独消除新的原题未知区域。

静态核对了固定 Lean 自然数 API `Nat.le_of_mul_le_mul_right` 与 `Nat.le_div_iff_mul_le` 的真实签名，以及所有调用的当前项目声明；启用两个 autoImplicit 选项，末尾 6 个实际公理打印，没有占位证明。首稿已交主线程，**SmallPowerIntervals 尚待开发编译反馈**。全部历史独立数学审查文件维持冻结；本段为后续作者角色的实现记录。