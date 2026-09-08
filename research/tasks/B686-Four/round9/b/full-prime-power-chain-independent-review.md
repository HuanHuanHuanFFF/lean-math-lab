# 完整反射和素数幂排除：B 独立源/量词/传递公理审查

作者 B / James；2026-09-08，01:23 后接单，01:35 检查点，01:40 冻结。

## 结论

**通过。在本次锁定的两个源码及实际加载环境上，原题的完整素数幂反射和子族排除确已 Lean 达成，不再需要调用者给接触证书。**

确切范围是所有自然数 k,n,m,p,a：

\[
k\ge2,\quad n+k\le m,\quad P_k(m)=4P_k(n),\quad p\text{ prime}
\quad\Longrightarrow\quad m+n+k+1\ne p^a.
\]

指数 a 包括 0；p 包括 2、3、5；高度、k、指数均无上界。不是全 B686 无解，因为 S 有多个不同素因子时仍未由此根排除。

本审查完整读取的数学源码仅为 A 的 `ReflectedPrimePower.lean`（392 行）和 main 的 `SumPrimePowerExclusion.lean`（128 行）。没有修改这两个文件，也没有修改 B 已冻结的 norm。只在 b/ 创建审查文档、日志、独立探针及复编 olean。
按 lean-research 验收要求，以下结论同时使用逐段数学复核、当前源码实际复编、展开后的根声明和传递公理守卫，不以主任务此前的成功报告代替执行证据。

## 1. 原题语义和隐藏量词

B 探针从已加载 Lean 环境实际输出（没有另读第三个数学源码）：

```lean
def B686Target.product : ℕ → ℕ → ℕ :=
fun k t => ∏ i ∈ Finset.Icc 1 k, (t + i)
def B686Reflected.reflectedSum : ℕ → ℕ → ℕ → ℕ :=
fun k n m => m + n + k + 1
```

消费者根 `B686Reflected.not_four_prime_power_reflected_sum` 的全部参数/前提实际为：

```lean
∀ (k n m p a : ℕ),
  2 ≤ k → n + k ≤ m → Nat.Prime p →
  reflectedSum k n m = p ^ a → product k m ≠ 4 * product k n
```

没有额外高位置、正性、U 的单位性、赋值或整除前提，也没有隐藏的全局 Fact 参数。A 根的 `@...` 类型亦已输出核对：高分支阈值是唯一相应分支条件，不是接触本身。

为精确确认用户要求的方向，B 探针实际证明了
`original_equation_sum_ne_prime_power`：从原乘积等式直接得 `reflectedSum k n m ≠ p^a`。
它只调用已审消费者根，未引入任何额外数学假设；01:30:28 UTC 最终探针实际编译通过。

## 2. A：高位置和单位不是输入证书

记 S=reflectedSum，a=v_p(S)，lambda=4(-1)^k，e=v_p(lambda-1)。

1. `signed_reflected_ratio_product` 从真实原等式证明 `∏(1-S/(n+i))=lambda`。位置属于 Icc 1 k，故每个分母 n+i>0；没有预设反射乘积为 lambda。
2. `reflectedLambda_valuation_nonneg` 把 lambda-1 识别为非零整数的有理数嵌入，得到 e≥0；高条件 a>L+e 因而保证 a-L>0。
3. `exists_high_position` 反证所有 v_p(n+i)≤L。此时每个 `f_i-1` 的赋值至少 a-L，有限乘积仍落在 `1+p^(a-L)` 邻域；用真实乘积等式就迫 e≥a-L，与高条件矛盾。因此高位置确实推出，不是入口参数。
4. `unique_high_position` 使用 `k<p^(L+1)`：两高位置会使 p^(L+1) 整除正的、严格小于 k 的位置差。两个 Nat 差分支均有明确顺序与正性，不借截断制造零差。
5. 对删去唯一高位置后的 U，所有其余位置赋值≤L 是由上一条推出。`ValGE` 显式把零单列为 `x=0 ∨ h≤v_p(x)`，避免将 `padicValRat p 0=0` 当无穷大使用。近 1 性进一步推出 U≠0 且 v_p(U)=0。
6. `U-lambda=(S/z)U` 由真实乘积关系推出；其非零由 S,z,U 非零推出。不同赋值相加给 `v_p(U-lambda)=e`，再得 `v_p(z)=a-e`。
7. R 非零由原题 `reflected_position_window` 证明：偶 k 时 R=S+3z>0；奇 k 时 R=S-5z<0。由 `R U=lambda*z*(U-1)` 再推出 U-1≠0，而非把 U-1 非零当假设。

因此最终赋值恒等式/不等式是真正由源条件导出的：

\[
v_p(R)=v_p(4)+(a-e)+v_p(U-1)
\ge2a-e-L+v_p(4).
\]

`original_high_contact_data` 的 hL 是足够上截断，允许一般 L；自然数消费者通过 `Nat.lt_pow_succ_log_self hp.one_lt k` **实际代入 L=Nat.log p k**，没有把任意大 L 偷换为对数。

## 3. p=2、整数减法和完整指数

- `hlamv` 实际证明 `v_p(lambda)=v_p(4)`，从未把 lambda 对所有 p 当成单位。弱接口完整保留 `p^(a+1+v_p(4))`；p=2 时该指数为 a+3。
- 核心下界 `2a-e-L+v_p(4)` 在 ℤ 中处理。高条件给 a≥L+e+1，因此 a-e 非负，而且 2a-e-L 不发生截断。
- `original_high_contact_nat` 的 Nat 精确位置等式由上述整数等式与高条件经 `omega` 转换；强接口的两次 Nat 减法亦受到同一高条件保护。
- `natAbs` 整除转换是从已得的整数整除经 `Int.natCast_dvd` 得到；目标 T=|R| 的严格正性早已由原题几何证明。

没有发现指数少算、p=2 丢因子、Nat 截断改变数学含义或零目标使整除空泛的问题。

## 4. 消费者：高、低分支覆盖全部指数

设 S=p^a。`padicValNat.prime_pow a` 给实际赋值 a，对 a=0 也成立。

### 高分支

阈值是 `Nat.log p k+v_p(c)<a`，其中 c=|lambda-1|。A 输出正 T 及
`p^(a+1+v_p(4))∣T`，所以 T≥S*p^(1+v_p(4))。

`contact_multiplier_at_least_three` 在 p=2 时实际算 v_2(4)=2，得到乘数 8；在其他素数时用 p≥3 得乘数至少 3。因此 T≥3S。

`contact_magnitude_lt` 从原题窗口 `2z<S<5z` 得 `2T<5S`：偶 k 的 T=S+3z；奇 k 的 T=5z-S。奇分支的 Nat 减法在使用 `Nat.cast_sub` 前已经有 S<5z 的顺序证明。
于是 6S≤2T<5S，矛盾。这里没有预设 U 的符号、T 上界或接触有效性。

### 低分支，无需奇偶分类

`reflectedCoefficient_eq_three_or_five` 保证 c 是≤5 的素数。低分支引理只需要 `c.Prime,c≤5`，其加强确实足够：

- p≠c 时 v_p(c)=0，故 S=p^a≤p^log_p(k)≤k，与 S>k²+1 矛盾。
- p=c 时 v_p(c)=1，故 S≤kp。结合 S>k²+1 迫 k<p，进而 log_p(k)=0、a≤1、S≤p=c≤5。
  但 k≥2 给 k²+1≥5，与严格 S>k²+1 矛盾。

没有隐藏使用“c≤2k-1”的奇偶陈述；只用严格二次大小界即闭合。
指数 0 自动处于低分支，也直接被 S=1 与 S>k²+1 排除。高/低分支是原 exponent 上的完整 `by_cases`，不遗漏临界相等 a=L+e。

## 5. 实际边界控制

B 探针用 `decide` 对真实 `product` 和 `reflectedSum` 实际证明：

- k=1,n=0,m=3：满足分离、倍率 4、S=5。故不能移除 k≥2。
- k=3,n=0,m=1：真实倍率 4、S=5，但不满足分离。故不能把定理写成所有 m>n。

两根各有可执行标准三公理守卫。它们检验假设确有必要，不是扫描，也不构造合乎全部原题条件的反例。

## 6. 实际复编、缓存一致性和公理

详见同目录 `full-prime-power-chain-recompile.log`，包含命令、完成状态、源码与 olean 哈希及完整探针输出。

- A 当前源码独立复编至 b/，**01:26:05 UTC 已取回退出 0、空输出**；原文件五个 guards 执行通过。
- main 当前源码独立复编至 b/，**01:28:07 UTC 已取回退出 0、空输出**；五个 guards 执行通过。
- 两个新 olean 分别与消费者/探针实际加载的 round9 缓存 SHA-256 一致，随后 `cmp -s` 均退出 0。故不是只编了新文本却审查旧导入声明。
- **01:30:28 UTC**，B 最终探针退出 0：展开真实定义、完整根类型，并执行六个额外 guards，包括原题方向根和两个边界例。输出仅为预期声明。
- 所有受审根的传递公理恰为 `[propext, Classical.choice, Quot.sound]`，未出现额外接触公理或 `sorryAx`。两源码占位符扫描无命中；两次源码哈希保持一致。

## 7. 发现、限制与交付判断

未发现需要 main/A 修复的源语义、量词、p=2、截断、分支覆盖或传递公理问题。此结论是上述明确源码版本的独立通过，不是同意已有信心，也不替未读取的后续修改背书。

本阶段没有审查 main 新任意 B 统一界、M9-9 支持组装、历史新颖性或全仓完整性；没有改任何他人文件、冻结 norm、依赖或共享入口，没有执行 git 写操作。
数学源码阅读范围严格为所派的两个文件；环境中既有定义的打印与传递公理检查不等于另读/重审其源码。

**可正式升级状态**：`原题 + S 为任意素数幂 ⇒ 矛盾` 已有无额外接触前提的 Lean 根；仍不能升级为完整 B686 无解。

**仍无界**：一般多素因子 S 的原题参数及高度。**下一检验**：main 后续统一 B 界应独立验收，不因本链通过而自动通过。B 本阶段全部要求已完成，等待后续派工。
